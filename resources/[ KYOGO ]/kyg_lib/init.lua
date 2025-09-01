if GetResourceState('kyg_lib') ~= 'started' then error('^1kyg_lib must be started before this resource.^0', 0) end

local kyg = exports.kyg_lib:getCoreObject()
local ckyg = exports.kyg_lib:getCoreConfig()

kyg.currentResourceName = GetCurrentResourceName()

if not IsDuplicityVersion() then -- Only register this event for the client
    if ckyg.Framework == 'esx' then
        AddEventHandler('esx:setPlayerData', function(key, val, last)
            if GetInvokingResource() ~= 'es_extended' then return end
            kyg.plyData[key] = val
        end)

        RegisterNetEvent('esx:playerLoaded', function(xPlayer)
            kyg.plyData = xPlayer
        end)

        RegisterNetEvent('esx:onPlayerLogout', function()
            kyg.plyData = nil
        end)
    elseif ckyg.Framework == 'qb' then
        local Core = exports['qb-core']:GetCoreObject({ 'PlayerData' })
        kyg.plyData = Core.PlayerData

        RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
            kyg.plyData = exports['qb-core']:GetPlayerData()
            while not kyg.plyData.id do
                Wait(500)
                kyg.plyData = exports['qb-core']:GetPlayerData()
            end
        end)

        RegisterNetEvent('QBCore:Player:SetPlayerData', function(value)
            kyg.plyData = value
        end)

        RegisterNetEvent('QBCore:Client:OnJobUpdate', function(value)
            kyg.plyData.job = value
        end)

        RegisterNetEvent('QBCore:Client:OnGangUpdate', function(value)
            kyg.plyData.gang = value
        end)

        RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
            kyg.plyData = nil
        end)
    end
end

_ENV.kyg = kyg
_ENV.ckyg = ckyg