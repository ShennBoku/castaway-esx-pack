fx_version 'cerulean'

game 'gta5'
name 'rpemotes-reborn'
lua54 'yes'
version '1.8.5'
discord 'https://discord.gg/bfdmZCNmMp'
description 'rpemotes-reborn'

use_experimental_fxv2_oal 'yes'

dependencies { '/server:6683', '/onesync' }

shared_scripts {
    '@ox_lib/init.lua',
    '@es_extended/imports.lua',
    '@kyg_lib/init.lua',
    'shared/config.lua',
    'shared/animals.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/Server.lua',
    'server/Updates.lua',
}

client_scripts {
    'NativeUI.lua',
    'client/Utils.lua',
    'client/AnimationList.lua',
    'client/Binoculars.lua',
    'client/Crouch.lua',
    'client/Emote.lua',
    'client/EmoteMenu.lua',
    'client/Expressions.lua',
    'client/Keybinds.lua',
    'client/NewsCam.lua',
    'client/Pointing.lua',
    'client/Syncing.lua',
    'client/Walk.lua',
}

files {
    'header.png',
    'locales/*.json',
    'client/animation/*.lua',
    'stream/conditionalanims.meta',
}

ox_lib 'locale'

data_file 'CONDITIONAL_ANIMS_FILE' 'stream/conditionalanims.meta'

--- Base YTYPs
data_file 'DLC_ITYP_REQUEST' 'stream/rpemotesreborn_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/brummie_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/bzzz_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/bzzz_camp_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/apple_1.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/kaykaymods_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/knjgh_pizzas.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/natty_props_lollipops.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/ultra_ringcase.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/pata_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/vedere_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/pnwsigns.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/pprp_icefishing.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/scully_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/samnick_prop_lighter01.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/bzzz_murderpack.ytyp'
