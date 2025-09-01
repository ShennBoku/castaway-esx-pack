fx_version 'cerulean'

game 'gta5'
name 'kyg_assets'
lua54 'yes'
author 'kygteam'
discord 'https://discord.gg/bfdmZCNmMp'
description 'KYG Assets Pack'
this_is_a_map 'yes'

client_scripts {
    'module/RageUI/RMenu.lua',
    'module/RageUI/menu/RageUI.lua',
    'module/RageUI/menu/Menu.lua',
    'module/RageUI/menu/MenuController.lua',
    'module/RageUI/components/*.lua',
    'module/RageUI/menu/elements/*.lua',
    'module/RageUI/menu/items/*.lua',
    'module/RageUI/menu/panels/*.lua',
    'module/RageUI/menu/windows/*.lua',

    'module/PolyZone/client.lua',
    'module/PolyZone/BoxZone.lua',
    'module/PolyZone/EntityZone.lua',
    'module/PolyZone/CircleZone.lua',
    'module/PolyZone/ComboZone.lua',
    'module/PolyZone/creation/client/*.lua',

    'module/InteractSound/client.lua',
}

server_scripts {
    'module/PolyZone/creation/server/*.lua',
    'module/PolyZone/server.lua',

    'module/InteractSound/server.lua',
}

ui_page 'public/index.html'

data_file 'SCALEFORM_DLC_FILE' 'stream/Minimap/int3232302352.gfx'

-- GTA5 Vehicles
-- data_file 'HANDLING_FILE' 'stream/GTA5 Vehicles/**/handling.meta'
-- data_file 'VEHICLE_METADATA_FILE' 'stream/GTA5 Vehicles/**/vehicles.meta'
-- data_file 'CARCOLS_FILE' 'stream/GTA5 Vehicles/**/carcols.meta'
-- data_file 'VEHICLE_VARIATION_FILE' 'stream/GTA5 Vehicles/**/carvariations.meta'
-- data_file 'VEHICLE_LAYOUTS_FILE' 'stream/GTA5 Vehicles/**/vehiclelayouts.meta'
-- data_file 'DLCTEXT_FILE' 'stream/GTA5 Vehicles/**/dlctext.meta'
-- data_file 'CARCONTENTUNLOCKS_FILE' 'stream/GTA5 Vehicles/**/contentunlocks.meta'
-- data_file 'WEAPONINFO_FILE_PATCH' 'stream/GTA5 Vehicles/**/vehicleweapons_*.meta'

-- data_file 'AUDIO_SYNTHDATA' 'stream/GTA5 Vehicles/b2944 (San Andreas Mercenaries - mp2023_01)/_AudioFiles/dlcmp2023_1_amp.dat'
-- data_file 'AUDIO_GAMEDATA' 'stream/GTA5 Vehicles/b2944 (San Andreas Mercenaries - mp2023_01)/_AudioFiles/dlcmp2023_1_game.dat'
-- data_file 'AUDIO_SOUNDDATA' 'stream/GTA5 Vehicles/b2944 (San Andreas Mercenaries - mp2023_01)/_AudioFiles/dlcmp2023_1_sounds.dat'
-- data_file 'AUDIO_WAVEPACK' 'stream/GTA5 Vehicles/b2944 (San Andreas Mercenaries - mp2023_01)/_AudioFiles/sfx/dlc_mp2023_1'

-- data_file 'AUDIO_SYNTHDATA' 'stream/GTA5 Vehicles/b3095 (The Chop Shop - mp2023_02)/_AudioFiles/dlc23_2_amp.dat'
-- data_file 'AUDIO_GAMEDATA' 'stream/GTA5 Vehicles/b3095 (The Chop Shop - mp2023_02)/_AudioFiles/dlc23_2_game.dat'
-- data_file 'AUDIO_SOUNDDATA' 'stream/GTA5 Vehicles/b3095 (The Chop Shop - mp2023_02)/_AudioFiles/dlc23_2_sounds.dat'
-- data_file 'AUDIO_WAVEPACK' 'stream/GTA5 Vehicles/b3095 (The Chop Shop - mp2023_02)/_AudioFiles/sfx/dlc_23_2'

-- data_file 'AUDIO_SYNTHDATA' 'stream/GTA5 Vehicles/b3258 (Bottom Dollar Bounties - mp2024_01)/_AudioFiles/dlc24-1_amp.dat'
-- data_file 'AUDIO_GAMEDATA' 'stream/GTA5 Vehicles/b3258 (Bottom Dollar Bounties - mp2024_01)/_AudioFiles/dlc24-1_game.dat'
-- data_file 'AUDIO_SOUNDDATA' 'stream/GTA5 Vehicles/b3258 (Bottom Dollar Bounties - mp2024_01)/_AudioFiles/dlc24-1_sounds.dat'
-- data_file 'AUDIO_WAVEPACK' 'stream/GTA5 Vehicles/b3258 (Bottom Dollar Bounties - mp2024_01)/_AudioFiles/sfx/dlc_24-1'
-- ##################################################################################################################################################################;

files {
    'meta/*.meta',
    'public/**',

    -- 'stream/GTA5 Vehicles/**/*.meta',
    -- 'stream/GTA5 Vehicles/**/_AudioFiles/*.dat10.rel',
    -- 'stream/GTA5 Vehicles/**/_AudioFiles/*.dat151.rel',
    -- 'stream/GTA5 Vehicles/**/_AudioFiles/*.dat54.rel',
    -- 'stream/GTA5 Vehicles/**/_AudioFiles/sfx/**/*.awc',
}

data_file 'WEAPON_ANIMATIONS_FILE' 'meta/weaponanimations.meta'