local Inventory

if Config.CustomInventory ~= 'ox' then return end

local function kygKick(player, reasonShort, reasonLong)
    print(('^7[^5KYG^7] ^2%s has been kicked from server, reason:^0\n^8%s^0'):format(player.identifier, reasonLong))
    if player.group ~= 'admin' then
        player.kick('[🦭] KYG Secure: ' .. reasonShort)
    end
    return 0
end

AddEventHandler('ox_inventory:loadInventory', function(module)
    Inventory = module
end)

Core.PlayerFunctionOverrides.OxInventory = {
    getInventory = function(self)
        return function(minimal)
            if not minimal then
                return self.inventory
            end

            local minimalInventory = {}

            for k, v in pairs(self.inventory) do
                if v.count and v.count > 0 then
                    local metadata = v.metadata

                    if v.metadata and next(v.metadata) == nil then
                        metadata = nil
                    end

                    minimalInventory[#minimalInventory + 1] = {
                        name = v.name,
                        count = v.count,
                        slot = k,
                        metadata = metadata,
                    }
                end
            end

            return minimalInventory
        end
    end,

    getLoadout = function()
        return function()
            return {}
        end
    end,

    setAccountMoney = function(self)
        return function(accountName, money, reason)
            accountName, reason = accountName:lower(), reason or 'unknown'
            if money < 0 then return error(('Tried To Set Account ^5%s^1 For Player ^5%s^1 To An Invalid Number -> ^5%s^1'):format(accountName, self.identifier, money)) end

            local account = self.getAccount(accountName)
            if not account then return error(('Tried To Set Invalid Account ^5%s^1 For Player ^5%s^1!'):format(accountName, self.identifier)) end

            if money > Config.AccountsMax.Total then
                return kygKick(self, 'Money fraud detected.', 'Money Fraud Detected, amount over ' .. ESX.Math.GroupDigits(Config.AccountsMax.Total) .. '.')
            end

            local balBefore = self.accounts[account.index].money
            money = account.round and ESX.Math.Round(money) or money
            self.accounts[account.index].money = money

            local transactionId = 0
            if accountName == 'bank' then
                local logType = self.accounts[account.index].money < balBefore and '-' or '+'
                local createTransaction = MySQL.prepare.await("INSERT INTO kyg_banking (`identifier`, `citizenid`, `status`, `balance`, `nextbal`, `amount`, `note`) VALUES (?, ?, ?, ?, ?, ?, ?)", {
                    self.identifier, self.ssn, logType, balBefore, self.accounts[account.index].money, money, reason
                })

                if type(createTransaction) == 'number' then
                    transactionId = createTransaction
                else
                    error(('Failed To Insert Transaction ^5%s^1 For Player ^5%s^1. Return Value -> ^5%s^1'):format(self.identifier, json.encode(createTransaction)))
                end
            end

            self.triggerEvent('esx:setAccountMoney', account)
            TriggerEvent('esx:setAccountMoney', self.source, accountName, money, reason)
            if Inventory.accounts[accountName] then
                Inventory.SetItem(self.source, accountName, money)
            end
            return transactionId
        end
    end,

    addAccountMoney = function(self)
        return function(accountName, money, reason)
            accountName, reason = accountName:lower(), reason or 'unknown'
            if money < 1 then return error(('Tried To Set Account ^5%s^1 For Player ^5%s^1 To An Invalid Number -> ^5%s^1'):format(accountName, self.identifier, money)) end

            local account = self.getAccount(accountName)
            if not account then return error(('Tried To Set Invalid Account ^5%s^1 For Player ^5%s^1!'):format(accountName, self.identifier)) end

            if money > Config.AccountsMax.Add then
                return kygKick(self, 'Money fraud detected.', 'Money Fraud Detected, add amount over ' .. ESX.Math.GroupDigits(Config.AccountsMax.Add) .. '.')
            end

            local balBefore = self.accounts[account.index].money
            money = account.round and ESX.Math.Round(money) or money
            if balBefore + money > Config.AccountsMax.Total then
                return kygKick(self, 'Money fraud detected.', 'Money Fraud Detected, amount over ' .. ESX.Math.GroupDigits(Config.AccountsMax.Total) .. '.')
            end
            self.accounts[account.index].money = self.accounts[account.index].money + money

            local transactionId = 0
            if accountName == 'bank' then
                local createTransaction = MySQL.prepare.await("INSERT INTO kyg_banking (`identifier`, `citizenid`, `status`, `balance`, `nextbal`, `amount`, `note`) VALUES (?, ?, ?, ?, ?, ?, ?)", {
                    self.identifier, self.ssn, '+', balBefore, self.accounts[account.index].money, money, reason
                })

                if type(createTransaction) == 'number' then
                    transactionId = createTransaction
                else
                    error(('Failed To Insert Transaction ^5%s^1 For Player ^5%s^1. Return Value -> ^5%s^1'):format(self.identifier, json.encode(createTransaction)))
                end
            end

            self.triggerEvent('esx:setAccountMoney', account)
            TriggerEvent('esx:addAccountMoney', self.source, accountName, money, reason)
            if Inventory.accounts[accountName] then
                Inventory.AddItem(self.source, accountName, money)
            end
            return transactionId
        end
    end,

    removeAccountMoney = function(self)
        return function(accountName, money, reason)
            accountName, reason = accountName:lower(), reason or 'unknown'
            if money < 1 then return error(('Tried To Set Account ^5%s^1 For Player ^5%s^1 To An Invalid Number -> ^5%s^1'):format(accountName, self.identifier, money)) end

            local account = self.getAccount(accountName)
            if not account then return error(('Tried To Set Invalid Account ^5%s^1 For Player ^5%s^1!'):format(accountName, self.identifier)) end

            if money > Config.AccountsMax.Del then
                return kygKick(self, 'Money fraud detected.', 'Money Fraud Detected, remove amount over ' .. ESX.Math.GroupDigits(Config.AccountsMax.Del) .. '.')
            end

            local balBefore = self.accounts[account.index].money
            money = account.round and ESX.Math.Round(money) or money
            if balBefore + money > Config.AccountsMax.Total then
                return kygKick(self, 'Money fraud detected.', 'Money Fraud Detected, amount over ' .. ESX.Math.GroupDigits(Config.AccountsMax.Total) .. '.')
            end
            self.accounts[account.index].money = self.accounts[account.index].money - money

            local transactionId = 0
            if accountName == 'bank' then
                local createTransaction = MySQL.prepare.await("INSERT INTO kyg_banking (`identifier`, `citizenid`, `status`, `balance`, `nextbal`, `amount`, `note`) VALUES (?, ?, ?, ?, ?, ?, ?)", {
                    self.identifier, self.ssn, '-', balBefore, self.accounts[account.index].money, money, reason
                })

                if type(createTransaction) == 'number' then
                    transactionId = createTransaction
                else
                    error(('Failed To Insert Transaction ^5%s^1 For Player ^5%s^1. Return Value -> ^5%s^1'):format(self.identifier, json.encode(createTransaction)))
                end
            end

            self.triggerEvent('esx:setAccountMoney', account)
            TriggerEvent('esx:removeAccountMoney', self.source, accountName, money, reason)
            if Inventory.accounts[accountName] then
                Inventory.RemoveItem(self.source, accountName, money)
            end
            return transactionId
        end
    end,

    getInventoryItem = function(self)
        return function(name, metadata)
            return Inventory.GetItem(self.source, name, metadata)
        end
    end,

    addInventoryItem = function(self)
        return function(name, count, metadata, slot)
            return Inventory.AddItem(self.source, name, count or 1, metadata, slot)
        end
    end,

    removeInventoryItem = function(self)
        return function(name, count, metadata, slot)
            return Inventory.RemoveItem(self.source, name, count or 1, metadata, slot)
        end
    end,

    setInventoryItem = function(self)
        return function(name, count, metadata)
            return Inventory.SetItem(self.source, name, count, metadata)
        end
    end,

    canCarryItem = function(self)
        return function(name, count, metadata)
            return Inventory.CanCarryItem(self.source, name, count, metadata)
        end
    end,

    canSwapItem = function(self)
        return function(firstItem, firstItemCount, testItem, testItemCount)
            return Inventory.CanSwapItem(self.source, firstItem, firstItemCount, testItem, testItemCount)
        end
    end,

    setMaxWeight = function(self)
        return function(newWeight)
            self.maxWeight = newWeight
            self.triggerEvent('esx:setMaxWeight', self.maxWeight)
            return Inventory.SetMaxWeight(self.source, newWeight)
        end
    end,

    addWeapon = function()
        return function() end
    end,

    addWeaponComponent = function()
        return function() end
    end,

    addWeaponAmmo = function()
        return function() end
    end,

    updateWeaponAmmo = function()
        return function() end
    end,

    setWeaponTint = function()
        return function() end
    end,

    getWeaponTint = function()
        return function() end
    end,

    removeWeapon = function()
        return function() end
    end,

    removeWeaponComponent = function()
        return function() end
    end,

    removeWeaponAmmo = function()
        return function() end
    end,

    hasWeaponComponent = function()
        return function()
            return false
        end
    end,

    hasWeapon = function()
        return function()
            return false
        end
    end,

    hasItem = function(self)
        return function(name, metadata)
            return Inventory.GetItem(self.source, name, metadata)
        end
    end,

    getWeapon = function()
        return function() end
    end,

    syncInventory = function(self)
        return function(weight, maxWeight, items, money)
            self.weight, self.maxWeight = weight, maxWeight
            self.inventory = items

            if not money then return end
            for accountName, amount in pairs(money) do
                local account = self.getAccount(accountName)

                if account and ESX.Math.Round(account.money) ~= amount then
                    account.money = amount
                    self.triggerEvent('esx:setAccountMoney', account)
                    TriggerEvent('esx:setAccountMoney', self.source, accountName, amount, 'Sync account with item')
                end
            end
        end
    end,
}
