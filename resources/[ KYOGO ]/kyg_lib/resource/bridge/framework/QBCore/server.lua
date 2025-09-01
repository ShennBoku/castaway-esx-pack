---@diagnostic disable: duplicate-set-field
if Config.Framework ~= 'qb' then return end

QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('hospital:server:SetDeathStatus', function(deathStatus)
    if not source then return end
    Player(source).state:set('dead', deathStatus, true)
    Entity(GetPlayerPed(source)).state:set('dead', deathStatus, true)
end)

function kyogo.usableItem(name, cb)
    QBCore.Functions.CreateUseableItem(name, cb)
end

function kyogo.getPlayers(source)
    return QBCore.Functions.GetQBPlayers()
end

function kyogo.getPlyFromID(source)
    return QBCore.Functions.GetPlayer(source)
end

function kyogo.getPlyFromIdentifier(identifier)
    return QBCore.Functions.GetPlayerByCitizenId(identifier)
end

function kyogo.getAccountMoney(Player, name)
    return Player.Functions.GetMoney(name)
end

function kyogo.addAccountMoney(Player, name, amount, reason)
    Player.Functions.AddMoney(name, amount, reason)
end

function kyogo.removeAccountMoney(Player, name, amount, reason)
    Player.Functions.RemoveMoney(name, amount, reason)
end