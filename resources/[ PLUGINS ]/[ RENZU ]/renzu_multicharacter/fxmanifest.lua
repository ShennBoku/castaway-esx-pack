fx_version 'cerulean'
lua54 'yes'
game 'gta5' 
--shared_script '@renzu_shield/init.lua'
ui_page {
    'web/index.html',
}

shared_scripts {
	'@ox_lib/init.lua',
	'@es_extended/imports.lua',
	'@kyg_lib/init.lua',
	'config.lua'
}

client_scripts {
	'default_skin.lua',
	'client/main.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/framework/*.lua',
	'server/*.lua'
}

files {
	'web/index.html',
	'web/script.js',
	'web/style.css',
	'web/logo.png',
	'web/loading.gif',
	'web/ped.jpg',
}

dependencies {
	'/server:5848',
	'/onesync',
	'oxmysql',
}