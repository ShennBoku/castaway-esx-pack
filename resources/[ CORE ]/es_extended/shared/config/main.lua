Config = {}

local txAdminLocale = GetConvar('txAdmin-locale', 'en')
local esxLocale = GetConvar('esx:locale', 'invalid')
Config.Locale = (esxLocale ~= 'invalid') and esxLocale or (txAdminLocale ~= 'custom' and txAdminLocale) or 'en'

-- For ox inventory, this will automatically be adjusted, do not change! For other inventories, leave as false unless specifically instructed to change.
Config.CustomInventory = false

Config.Accounts = {
    bank = { label = 'Bank', round = true },
    money = { label = 'Cash', round = true },
    salary = { label = 'Salary', round = true },
    additional = { label = 'Additional', round = true },
    black_money = { label = 'Marked Money', round = true },
}

Config.AccountsMax = {
    Add = 1000000000, -- Total money per account that can be added once.
    Del = 1000000000, -- Total money per account that can be deducted once.
    Total = 968500000000000 -- The total money per account that a player can have.
}

Config.StartingAccountMoney = {}
Config.StartingInventoryItems = false -- table/false

Config.DefaultSpawns = { -- If you want to have more spawn positions and select them randomly uncomment commented code or add more locations
    { x = 222.2027, y = -864.0162, z = 30.2922, heading = 1.0 },
    --{x = 224.9865, y = -865.0871, z = 30.2922, heading = 1.0},
    --{x = 227.8436, y = -866.0400, z = 30.2922, heading = 1.0},
    --{x = 230.6051, y = -867.1450, z = 30.2922, heading = 1.0},
    --{x = 233.5459, y = -868.2626, z = 30.2922, heading = 1.0}
}

Config.AdminGroups = {
    ['owner'] = true,
    ['admin'] = true,
    ['staff'] = true,
}

Config.ValidCharacterSets = { -- Only enable additional charsets if your server is multilingual. By default everything is false.
    ['el'] = false, -- Greek
    ['sr'] = false, -- Cyrillic
    ['he'] = false, -- Hebrew
    ['ar'] = false, -- Arabic
    ['zh-cn'] = false -- Chinese, Japanese, Korean
}

Config.EnablePaycheck = true -- enable paycheck
Config.LogPaycheck = false -- Logs paychecks to a nominated Discord channel via webhook (default is false)
Config.EnableSocietyPayouts = false -- pay from the society account that the player is employed at? Requirement: esx_society
Config.MaxWeight = 24 -- the max inventory weight without a backpack
Config.PaycheckInterval = 7 * 60000 -- how often to receive paychecks in milliseconds
Config.SaveDeathStatus = true -- Save the death status of a player
Config.EnableDebug = false -- Use Debug options?

Config.DefaultJobDuty = true -- A players default duty status when changing jobs
Config.OffDutyPaycheckMultiplier = 0.125 -- The multiplier for off duty paychecks. 0.5 = 50% of the on duty paycheck

Config.Multichar = true
Config.Identity = true -- Select a character identity data before they have loaded in (this happens by default with multichar)
Config.DistanceGive = 2.5 -- Max distance when giving items, weapons etc.

Config.AdminLogging = false -- Logs the usage of certain commands by those with group.admin ace permissions (default is false)

-------------------------------------
-- DO NOT CHANGE BELOW THIS LINE !!!
-------------------------------------
if GetResourceState('ox_inventory') ~= 'missing' then
    Config.CustomInventory = 'ox'
end

Config.EnableDefaultInventory = Config.CustomInventory == false -- Display the default Inventory ( F2 )
Config.Identifier = GetConvar('esx:identifier', 'license')