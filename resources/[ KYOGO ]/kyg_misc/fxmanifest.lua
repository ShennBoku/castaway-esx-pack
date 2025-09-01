fx_version 'cerulean'

game 'gta5'
name 'kyg_misc'
lua54 'yes'
author 'kygteam'
version '1.0.0'
discord 'https://discord.gg/bfdmZCNmMp'
description 'Miscellaneous System | Site: https://www.kyogo.space'

shared_scripts {
    '@ox_lib/init.lua',
    '@kyg_lib/init.lua',

    'shared/*.lua',
    'module/**/sh_*.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua',
    'module/**/sv_*.lua',
}

client_scripts {
    'client/*.lua',
    'module/**/cl_*.lua',
}