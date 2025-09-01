local cachedTransaction = {}
CreateThread(function()
    Wait(500)
    if not LoadResourceFile('Renewed-Banking', 'web/public/build/bundle.js') or GetCurrentResourceName() ~= 'Renewed-Banking' then
        error(locale('ui_not_built'))
        return StopResource('Renewed-Banking')
    end
end)

local function getBankData(source, transactionData)
    local xPlayer = ESX.GetPlayerFromId(source)
    if not xPlayer then return {} end

    local trxData = {}
    if transactionData then
        trxData = transactionData
    else
        local searchTrx = MySQL.query.await('SELECT *, UNIX_TIMESTAMP(`time`) AS `unix` FROM `kyg_banking` WHERE `identifier` = ? ORDER BY `id` DESC', { xPlayer.identifier })
        for i = 1, #searchTrx do
            local row = searchTrx[i]
            local trxId = string.format('%010d', row.id)
    
            trxData[#trxData + 1] = {
                trans_id = ('%s-%s-%s'):format(trxId:sub(1, 3), trxId:sub(4, 6), trxId:sub(7, 10)),
                title = locale('personal_acc') .. xPlayer.ssn,
                amount = row.amount,
                trans_type = row.status == '+' and 'deposit' or 'withdraw',
                receiver = '',
                message = row.note,
                issuer = xPlayer.name,
                time = row.unix
            }
        end
        cachedTransaction[xPlayer.ssn] = trxData
    end

    local bankData = {}
    bankData[#bankData + 1] = {
        id = xPlayer.ssn,
        type = locale('personal'),
        name = xPlayer.name,
        frozen = 0,
        amount = xPlayer.getAccount('bank').money,
        cash = xPlayer.getAccount('money').money,
        transactions = trxData,
    }

    local bankJobAccount = exports.kyg_fw:GetSharedAccount('society_' .. xPlayer.job.name)
    if bankJobAccount and xPlayer.job.grade_isBoss then
        bankData[#bankData + 1] = {
            id = xPlayer.job.name,
            type = locale('org'),
            name = bankJobAccount.name,
            frozen = 0,
            amount = bankJobAccount.money,
            transactions = {},
            auth = {},
            creator = nil
        }
    end

    return bankData
end

lib.callback.register('renewed-banking:server:initalizeBanking', function(source)
    local bankData = getBankData(source)
    return bankData
end)

-- Events
local function sanitizeMessage(message)
    if type(message) ~= 'string' then message = tostring(message) end
    message = message:gsub("'", "''"):gsub("\\", "\\\\")
    return message
end

lib.callback.register('Renewed-Banking:server:deposit', function(source, data)
    local xPlayer = ESX.GetPlayerFromId(source)
    local amount = tonumber(data.amount)
    if not amount or amount < 1 then
        lib.notify(source, { title = locale('bank_name'), description = locale('invalid_amount', 'deposit'), type = 'error' })
        return false
    end

    if data.comment and data.comment ~= '' then data.comment = sanitizeMessage(data.comment) end
    data.comment = locale('kyg.money_reason', data.kygLoc.shortname, (data.comment ~= '' and data.comment or locale('comp_transaction', xPlayer.name, 'deposited', math.groupdigits(amount))))

    if xPlayer.getMoney() >= amount then
        xPlayer.removeMoney(amount, data.comment)

        local transactionId = 0
        local societyAccount = exports.kyg_fw:GetSharedAccount('society_' .. data.fromAccount)
        if societyAccount then
            societyAccount.addMoney(amount)
        else
            transactionId = xPlayer.addAccountMoney('bank', amount, data.comment)
        end
        transactionId = string.format('%010d', transactionId)

        if not cachedTransaction[xPlayer.ssn] then cachedTransaction[xPlayer.ssn] = {} end
        table.insert(cachedTransaction[xPlayer.ssn], 1, {
            trans_id = ('%s-%s-%s'):format(transactionId:sub(1, 3), transactionId:sub(4, 6), transactionId:sub(7, 10)),
            title = locale('personal_acc') .. xPlayer.ssn,
            amount = amount,
            trans_type = 'deposit',
            receiver = '',
            message = data.comment,
            issuer = xPlayer.name,
            time = os.time()
        })

        local bankData = getBankData(source, cachedTransaction[xPlayer.ssn])
        return bankData
    else
        TriggerClientEvent('Renewed-Banking:client:sendNotification', source, locale('not_enough_money'))
        return false
    end
end)

lib.callback.register('Renewed-Banking:server:withdraw', function(source, data)
    local xPlayer = ESX.GetPlayerFromId(source)
    local amount = tonumber(data.amount)
    if not amount or amount < 1 then
        lib.notify(source, { title = locale('bank_name'), description = locale('invalid_amount', 'withdraw'), type = 'error' })
        return false
    end
    if not data.comment or data.comment == '' then data.comment = locale('comp_transaction', xPlayer.name, 'withdrawed', amount) else sanitizeMessage(data.comment) end
    local societyAccount = exports.kyg_fw:GetSharedAccount('society_' .. data.fromAccount)

    local canWithdraw = false
    if societyAccount then
        canWithdraw = societyAccount.money >= amount and societyAccount.removeMoney(amount) or false
    else
        canWithdraw = xPlayer.getAccount('bank').money >= amount and xPlayer.removeAccountMoney('bank', amount, data.comment) or false
    end

    if canWithdraw then
        xPlayer.addMoney(amount, data.comment)
        local bankData = getBankData(source)
        return bankData
    else
        TriggerClientEvent('Renewed-Banking:client:sendNotification', source, locale('not_enough_money'))
        return false
    end
end)

lib.callback.register('Renewed-Banking:server:transfer', function(source, data)
    local xPlayer = ESX.GetPlayerFromId(source)
    local amount = tonumber(data.amount)
    if not amount or amount < 1 then
        lib.notify(source, { title = locale('bank_name'), description = locale('invalid_amount', 'transfer'), type = 'error' })
        return false
    end

    if not data.comment or data.comment == '' then data.comment = locale('comp_transaction', xPlayer.name, 'transfered', amount) else sanitizeMessage(data.comment) end
    local societyAccount = exports.kyg_fw:GetSharedAccount('society_' .. data.fromAccount)
    
    if societyAccount then
        local xTarget = ESX.GetPlayerFromIdentifier(source)
        if not xTarget then
            TriggerClientEvent('Renewed-Banking:client:sendNotification', source, locale('fail_transfer'))
            return false
        end

        if societyAccount.money >= amount then
            societyAccount.removeMoney(amount)
            xTarget.addAccountMoney('bank', amount, data.comment)
        else
            TriggerClientEvent('Renewed-Banking:client:sendNotification', source, locale('not_enough_money'))
            return false
        end
    else
        local bankAmount = xPlayer.getAccount('bank').money
        local xTarget = ESX.GetPlayerFromIdentifier(source)
        if not xTarget then
            TriggerClientEvent('Renewed-Banking:client:sendNotification', source, locale('fail_transfer'))
            return false
        end

        if bankAmount >= amount then
            xPlayer.removeAccountMoney('bank', amount, data.comment)
            xTarget.addAccountMoney('bank', amount, data.comment)
        else
            TriggerClientEvent('Renewed-Banking:client:sendNotification', source, locale('not_enough_money'))
            return false
        end
    end

    local bankData = getBankData(source)
    return bankData
end)