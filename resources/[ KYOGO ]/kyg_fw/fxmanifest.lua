fx_version 'cerulean'

game 'gta5'
name 'kyg_fw'
lua54 'yes'
discord 'https://discord.gg/bfdmZCNmMp'
description 'ESX Core & Addons'

dependencies { 'oxmysql', 'ox_lib', 'es_extended', 'kyg_lib' }

shared_scripts {
    '@ox_lib/init.lua',
    '@es_extended/imports.lua',
    '@es_extended/locale.lua',
	'@es_extended/locales/en.lua',
    '@kyg_lib/init.lua',

    'config/*.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua'
}

client_scripts {
    'common.lua',
    'client/*.lua',
}

ui_page 'frame/base.html'
files { 'frame/*' }

local listMod = {}
local function loadMod(moduleName, moduleData)
    if listMod[moduleName] then return print(("The '%s' module has been recalled, make sure 1 module is only 1 call."):format(moduleName)) end
    listMod[moduleName] = true
    moduleData = moduleData or {}

    if moduleData.locale then
        shared_script('modules/' .. moduleName .. '/locales/*.lua')
    end

    if moduleData.shared then
        shared_script('modules/' .. moduleName .. '/shared/*.lua')
    end

    if moduleData.server then
        server_script('modules/' .. moduleName .. '/server/*.lua')
    end

    if moduleData.client then
        client_script('modules/' .. moduleName .. '/client/*.lua')
    end

    if moduleData.nui then
        if type(moduleData.nui) == 'table' then
            for i = 1, #moduleData.nui do
                file('modules/'.. moduleName .. '/nui/' .. moduleData.nui[i])
            end
        else
            file('modules/'.. moduleName .. '/nui/*')
            file('modules/'.. moduleName .. '/nui/**/*')
        end
    end
end

-- TODO :: CALL MODULES
loadMod('esx_menu_default', { locale = false, shared = false, server = false, client = true, nui = true })
loadMod('esx_menu_dialog', { locale = false, shared = false, server = false, client = true, nui = true })
loadMod('esx_menu_list', { locale = false, shared = false, server = false, client = true, nui = true })
loadMod('esx_status', { locale = false, shared = true, server = true, client = true, nui = true })
loadMod('esx_textui', { locale = false, shared = false, server = false, client = true, nui = true })
loadMod('esx_context', { locale = false, shared = false, server = false, client = true, nui = true })
loadMod('esx_society', { locale = true, shared = true, server = true, client = true, nui = false })
loadMod('esx_progressbar', { locale = false, shared = false, server = false, client = true, nui = true })