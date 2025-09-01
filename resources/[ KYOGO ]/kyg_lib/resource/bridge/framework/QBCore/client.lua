---@diagnostic disable: duplicate-set-field
if Config.Framework ~= 'qb' then return end

QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    svar.playerData = QBCore.Functions.GetPlayerData()
    svar.playerLoaded = true
    HandlePlayerLoaded()
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(value)
    svar.playerData = value
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(value)
    svar.playerData.job = value
end)

RegisterNetEvent('QBCore:Client:OnGangUpdate', function(value)
    svar.playerData.gang = value
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload')
AddEventHandler('QBCore:Client:OnPlayerUnload', function()
    svar.playerLoaded = false
    svar.playerData = {}
    svar.isDead = false
    svar.cache = {}
    HandlePlayerUnloaded()
end)

function kyogo.getPlayerData()
    return QBCore.PlayerData
end

function kyogo.getIdentifier()
    return QBCore.PlayerData.citizenid
end