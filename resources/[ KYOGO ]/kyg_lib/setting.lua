---@class Config
Config = {}

--[[
    The current system will detect if you use qb-core or es_extended,
    Please keep in mind that this code is automatic, do not edit if
    you do not know how to do it.
]]

local esxHas = GetResourceState('es_extended') == 'started'
local qbHas = GetResourceState('qb-core') == 'started'
Config.Framework = esxHas and 'esx' or qbHas and 'qb' or 'none'

local oxInvHas = GetResourceState('ox_inventory') == 'started'
Config.Inventory = oxInvHas and 'ox' or 'none'

Config.Identifier = 'steam'

Config.IsProduction = GetConvarInt('kyg:isProduction', 0) == 1