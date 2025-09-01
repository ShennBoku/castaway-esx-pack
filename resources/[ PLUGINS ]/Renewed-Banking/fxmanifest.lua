fx_version 'cerulean'
game 'gta5'
version '2.1.4'

description 'Renewed Banking'
Author "uShifty#1733"
version '2.1.4'

lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua',
    '@es_extended/imports.lua',
    '@kyg_lib/init.lua',
    'config.lua',
}

client_scripts {
    'client/main.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}

ui_page 'web/public/index.html'

files {
    'web/public/index.html',
    'web/public/**/*',
    'locales/*.json'
}

ox_libs { 'locale', 'math' }