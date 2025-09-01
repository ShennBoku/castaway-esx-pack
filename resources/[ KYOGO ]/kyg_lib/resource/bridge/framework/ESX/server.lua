---@diagnostic disable: duplicate-set-field
if Config.Framework ~= 'esx' then return end

ESX = exports['es_extended']:getSharedObject()

AddEventHandler('esx:playerLoaded', function(_, xPlayer)
    Player(xPlayer.source).state:set('isLoggedIn', true, true)
end)

AddEventHandler('esx:playerDropped', function(playerId)
    Player(playerId).state:set('isLoggedIn', false, true)
end)

function kyogo.usableItem(name, cb)
    ESX.RegisterUsableItem(name, cb)
end

function kyogo.getPlayers()
    return ESX.GetExtendedPlayers()
end

function kyogo.getPlyFromID(source)
    return ESX.GetPlayerFromId(source)
end

function kyogo.getPlyFromIdentifier(identifier)
    return ESX.GetPlayerFromIdentifier(identifier)
end

function kyogo.getAccountMoney(xPlayer, name)
    local moneyData = xPlayer.getAccounts()
    return moneyData[name].money
end

function kyogo.addAccountMoney(xPlayer, name, amount, reason)
    xPlayer.addAccountMoney(name, amount, reason)
end

function kyogo.removeAccountMoney(xPlayer, name, amount, reason)
    xPlayer.removeAccountMoney(name, amount, reason)
end