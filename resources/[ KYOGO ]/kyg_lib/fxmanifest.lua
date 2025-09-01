fx_version 'cerulean'

game 'gta5'
name 'kyg_lib'
lua54 'yes'
author 'kygteam'
version '1.0.0'
discord 'https://discord.gg/bfdmZCNmMp'
description 'Kyogo Library | Site: https://www.kyogo.space'
use_experimental_fxv2_oal 'yes'

dependencies { 'oxmysql', 'ox_lib', 'kyg_assets' }

shared_scripts {
    '@ox_lib/init.lua',

    'setting.lua',
    'config/*.lua',

    'resource/bridge/shared.lua',
    'resource/bridge/**/**/shared.lua',

    'resource/shared/*.lua',

    'resource/function/**/shared.lua',
    'resource/function/**/callback.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'resource/bridge/server.lua',
    'resource/bridge/**/**/server.lua',

    'resource/server/*.lua',
    'resource/function/**/server.lua',
}

client_scripts {
    'resource/bridge/client.lua',
    'resource/bridge/**/**/client.lua',

    'resource/client/*.lua',
    'resource/function/**/client.lua',
}

files {
    'init.lua',
    'locales/*.json',

    'web/app.js',
    'web/index.html',
}

ox_lib 'locale'
ui_page 'web/index.html'


-- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --
-- ::                                         you can set the configuration below, simply by adding or removing comments                                         :: --
-- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: --


-- :: Remove the comments below to use the default chat
files { 'module/chat/style.css' }
chat_theme 'kyg' { styleSheet = 'module/chat/style.css', msgTemplates = {
    default = '<b>[ ! ] {0}</b><span>{1}</span>'
}}
-- :: Stop here


-- :: Remove the comments below to use the built-in spawnmanager
client_script 'module/core/spawnmanager.lua'
provide 'spawnmanager'
-- :: Stop here


-- :: Remove the comments below to use the built-in sessionmanager
server_script 'module/core/sessionmanager.lua'
provide 'sessionmanager'
-- :: Stop here


-- :: Remove the comments below to use the built-in basic-gamemode
-- client_script 'module/core/basic-gamemode.lua'
-- provide 'basic-gamemode'
-- :: Stop here


-- :: Remove the comments below to use the built-in hardcap
-- shared_scripts 'module/core/hardcap.lua'
-- provide 'hardcap'
-- :: Stop here


-- :: Remove the comments below to use the default loadingscreen (Kyogo Island).
files { 'web/loadscreen/**' }
loadscreen 'web/loadscreen/index.html'
server_script 'web/loadscreen/handover.js'
loadscreen_cursor 'yes'
loadscreen_manual_shutdown 'yes'
-- :: Stop here