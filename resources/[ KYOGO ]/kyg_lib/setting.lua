---@class Config
Config = {}

--[[
    The current system will detect if you use qb-core or es_extended,
    Please keep in mind that this code is automatic, do not edit if
    you do not know how to do it.
]]

local esxHas = GetResourceState('es_extended') ~= 'missing'
local qbHas = GetResourceState('qb-core') ~= 'missing'
Config.Framework = esxHas and 'esx' or qbHas and 'qb' or 'none'

local oxInvHas = GetResourceState('ox_inventory') ~= 'missing'
Config.Inventory = oxInvHas and 'ox' or 'none'

Config.Identifier = GetConvar('kyg:identifier', 'none')
if Config.Framework == 'esx' then
    Config.Identifier = GetConvar('esx:identifier', 'license')
end

Config.IsProduction = GetConvarInt('kyg:isProduction', 0) == 1