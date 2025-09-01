local Inventory = require 'modules.inventory.server'
local Items = require 'modules.items.server'

AddEventHandler('QBCore:Server:OnPlayerUnload', server.playerDropped)

AddEventHandler('QBCore:Server:OnJobUpdate', function(source, job)
	local inventory = Inventory(source)
	if not inventory then return end
	inventory.player.groups[inventory.player.job] = nil
	inventory.player.job = job.name
	inventory.player.groups[job.name] = job.grade.level
end)

AddEventHandler('QBCore:Server:OnGangUpdate', function(source, gang)
	local inventory = Inventory(source)
	if not inventory then return end
	inventory.player.groups[inventory.player.gang] = nil
	inventory.player.gang = gang.name
	inventory.player.groups[gang.name] = gang.grade.level
end)

AddEventHandler('onResourceStart', function(resource)
	if resource ~= 'qb-weapons' or resource ~= 'qb-shops' then return end
	StopResource(resource)
end)

local QBCore

---@param item SlotWithItem?
---@return SlotWithItem?
local function setItemCompatibilityProps(item)
	if not item then return end

	item.info = item.metadata
	item.amount = item.count
	return item
end

local function setupPlayer(player)
    local playerConvert = {
        name = ('%s %s'):format(player.PlayerData.charinfo.firstname, player.PlayerData.charinfo.lastname),
        source = player.PlayerData.source,
        inventory = player.PlayerData.items,
        identifier = player.PlayerData.citizenid
    }
    server.setPlayerInventory(playerConvert)

    Inventory.SetItem(playerConvert.source, 'money', player.PlayerData.money.cash)

    QBCore.Functions.AddPlayerMethod(player.PlayerData.source, 'AddItem', function(item, amount, slot, info)
        return Inventory.AddItem(player.PlayerData.source, item, amount, info, slot)
    end)

    QBCore.Functions.AddPlayerMethod(player.PlayerData.source, 'RemoveItem', function(item, amount, slot)
        return Inventory.RemoveItem(player.PlayerData.source, item, amount, nil, slot)
    end)

    QBCore.Functions.AddPlayerMethod(player.PlayerData.source, 'GetItemBySlot', function(slot)
        return setItemCompatibilityProps(Inventory.GetSlot(player.PlayerData.source, slot))
    end)

    QBCore.Functions.AddPlayerMethod(player.PlayerData.source, 'GetItemByName', function(itemName)
        return setItemCompatibilityProps(Inventory.GetSlotWithItem(player.PlayerData.source, itemName))
    end)

    QBCore.Functions.AddPlayerMethod(player.PlayerData.source, 'GetItemsByName', function(itemName)
        return setItemCompatibilityProps(Inventory.GetSlotsWithItem(player.PlayerData.source, itemName))
    end)

    QBCore.Functions.AddPlayerMethod(player.PlayerData.source, 'ClearInventory', function(filterItems)
        Inventory.Clear(player.PlayerData.source, filterItems)
    end)

    QBCore.Functions.AddPlayerMethod(player.PlayerData.source, 'SetInventory', function()
        -- ox_inventory's item structure is not compatible with qb-inventory's one so we don't support it
        error('Player.Functions.SetInventory is unsupported for ox_inventory. Try ClearInventory, then add the desired items.')
    end)
end

AddEventHandler('QBCore:Server:PlayerLoaded', setupPlayer)

SetTimeout(500, function()
    lib.checkDependency('qb-core', '1.3.0', true)

	QBCore = exports['qb-core']:GetCoreObject()

	server.UseItem = QBCore.Functions.UseItem
	server.GetPlayerFromId = QBCore.Functions.GetPlayer

	for _, player in pairs(QBCore.Functions.GetQBPlayers()) do
        setupPlayer(player)
	end
end)

server.accounts.black_money = 0

---@diagnostic disable-next-line: duplicate-set-field
function server.setPlayerData(player)
	local groups = {
		[player.job.name] = player.job.grade.level,
        [player.gang.name] = player.gang.grade.level
	}

	return {
		source = player.source,
		name = ('%s %s'):format(player.charinfo.firstname, player.charinfo.lastname),
		groups = groups,
		sex = player.charinfo.gender,
		dateofbirth = player.charinfo.birthdate,
	}
end

---@diagnostic disable-next-line: duplicate-set-field
function server.syncInventory(inv)
    if not inv or not inv.id then return lib.print.error('Error: Inventory or Inventory ID is nil') end

	local accounts = Inventory.GetAccountItemCounts(inv)
    if accounts then
        local player = server.GetPlayerFromId(inv.id)
        if player then
            player.Functions.SetPlayerData('items', inv.items)
            if accounts.money and accounts.money ~= player.Functions.GetMoney('cash') then
                player.Functions.SetMoney('cash', accounts.money, 'Sync money with inventory')
            end
        else
            lib.print.error('Error: Player not found for ID: ' .. inv.id)
        end
    end
end

---@diagnostic disable-next-line: duplicate-set-field
function server.hasLicense(inv, name)
	return false
end

---@diagnostic disable-next-line: duplicate-set-field
function server.buyLicense(inv, license)
	return false, 'can_not_afford'
end

--- Takes traditional item data and updates it to support ox_inventory, i.e.
--- ```
--- Old: {1:{"name": "cola", "amount": 1, "label": "Cola", "slot": 1}, 2:{"name": "burger", "amount": 3, "label": "Burger", "slot": 2}}
--- New: [{"slot":1,"name":"cola","count":1}, {"slot":2,"name":"burger","count":3}]
---```
---@diagnostic disable-next-line: duplicate-set-field
function server.convertInventory(playerId, items)
	if type(items) == 'table' then
		local player = server.GetPlayerFromId(playerId)
		local returnData, totalWeight = table.create(#items, 0), 0
		local slot = 0

		if player then
			for name in pairs(server.accounts) do
				local hasThis = false
				for _, data in pairs(items) do
					if data.name == name then
						hasThis = true
					end
				end

				if not hasThis then
					local amount = player.Functions.GetMoney(name == 'money' and 'cash' or name)

					if amount then
						items[#items + 1] = { name = name, amount = amount }
					end
				end
			end
		end

		for _, data in pairs(items) do
			local item = Items(data.name)

			if item?.name then
				local metadata, count = Items.Metadata(playerId, item, data.info, data.amount or data.count or 1)
				local weight = Inventory.SlotWeight(item, {count = count, metadata = metadata})
				totalWeight += weight
				slot += 1
				returnData[slot] = {name = item.name, label = item.label, weight = weight, slot = slot, count = count, description = item.description, metadata = metadata, stack = item.stack, close = item.close}
			end
		end

		return returnData, totalWeight
	end
end

---@diagnostic disable-next-line: duplicate-set-field
function server.isPlayerBoss(playerId)
	local Player = QBCore.Functions.GetPlayer(playerId)
	return Player.PlayerData.job.isboss or Player.PlayerData.gang.isboss
end