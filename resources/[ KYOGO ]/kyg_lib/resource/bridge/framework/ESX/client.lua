---@diagnostic disable: duplicate-set-field
if Config.Framework ~= 'esx' then return end

ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(playerData)
    LocalPlayer.state:set('isLoggedIn', true, false)
    svar.playerData = playerData
    svar.playerLoaded = true
    HandlePlayerLoaded()
end)

AddEventHandler('esx:setPlayerData', function(key, val)
    if GetInvokingResource() ~= 'es_extended' then return end
    svar.playerData[key] = val
end)

RegisterNetEvent('esx:onPlayerDeath', function()
    svar.isDead = true
    LocalPlayer.state:set('dead', true, true)
    Entity(cache.ped).state:set('dead', true, true)
end)

RegisterNetEvent('esx:onPlayerSpawn', function()
    svar.isDead = false
    LocalPlayer.state:set('dead', false, true)
    Entity(cache.ped).state:set('dead', false, true)
end)

RegisterNetEvent('esx:playerLogout')
AddEventHandler('esx:playerLogout', function()
    LocalPlayer.state:set('isLoggedIn', false, false)
    svar.playerLoaded = false
    svar.playerData = {}
    svar.isDead = false
    svar.cache = {}
    HandlePlayerUnloaded()
end)

AddEventHandler('esx:pauseMenuActive', function(isPauseMenu)
    svar.inPauseMenu = isPauseMenu
end)

function kyogo.getPlayerData()
    return ESX.PlayerData
end

function kyogo.getIdentifier()
    return ESX.PlayerData.identifier
end