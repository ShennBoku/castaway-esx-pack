fx_version 'cerulean'

description 'UZStore'
author 'UZ#5751'
version '1.0.0'
repository 'https://discord.gg/8zhnDMMfNk'

lua54 'yes'

game 'gta5'

ui_page 'resources/build/index.html'

shared_scripts {
    '@ox_lib/init.lua',
    '@es_extended/imports.lua',
    '@kyg_lib/init.lua',
    'Customize.lua'
}

client_scripts {
    'client.lua'
}

-- server_script 'server.lua'

files {
    'resources/build/index.html',
    'resources/build/**/*',
}
