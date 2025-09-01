ConfigCL = {}

ConfigCL.Disable = {
    NPCDrops = true,
    AimAssist = true,
    PistolWhipping = true,
    StealthMovement = true,
    HealthRegeneration = true,

    VehicleRadio = true,
    VehicleMelee = true,
    VehicleWeapon = true,
    VehicleAbility = true,
    VehicleSeatShuffle = true,
}

ConfigCL.DiscordPresence = {
    AppId = GetConvar('kyg:discord:appId', '0'),
    Asset = {
        Small = json.decode(GetConvar('kyg:discord:smallAssets', '["logo_server", "Castaway\'s Hope"]')),
        Large = json.decode(GetConvar('kyg:discord:LargeAssets', '["logo_server", "Castaway\'s Hope"]'))
    },
    Action = json.decode(GetConvar('kyg:discord:actionButtons', '[["Discord", "https://discord.gg/XGaNQZ8R2e"], ["Connect", "fivem://connect/0.0.0.0:30120"]]')),
    Interval = GetConvarInt('kyg:discord:refreshInterval', 60),
    SetRichPresence = function(playerLoaded, playerTotal)
        if playerLoaded then
            return ('%s Residents in the City'):format(playerTotal.citizen)
        else
            return 'Selecting characters..'
        end
    end
}

ConfigCL.CantHandleAction = function()
    -- if exports.kyg_ui:isMenuOpened() or exports.kyg_ui:isClothingMenuOpened() or exports.ox_lib:isZoneCreatorActive() then
    --     return true
    -- end
    return false
end

ConfigCL.SetMapZoomDataLevel = function()
    SetMapZoomDataLevel(0, 0.96, 0.9, 0.08, 0.0, 0.0) -- Level 0
    SetMapZoomDataLevel(1, 1.6, 0.9, 0.08, 0.0, 0.0) -- Level 1
    SetMapZoomDataLevel(2, 8.6, 0.9, 0.08, 0.0, 0.0) -- Level 2
    SetMapZoomDataLevel(3, 12.3, 0.9, 0.08, 0.0, 0.0) -- Level 3
    SetMapZoomDataLevel(4, 24.3, 0.9, 0.08, 0.0, 0.0) -- Level 4
    SetMapZoomDataLevel(5, 55.0, 0.0, 0.1, 2.0, 1.0) -- ZOOM_LEVEL_GOLF_COURSE
    SetMapZoomDataLevel(6, 450.0, 0.0, 0.1, 1.0, 1.0) -- ZOOM_LEVEL_INTERIOR
    SetMapZoomDataLevel(7, 4.5, 0.0, 0.0, 0.0, 0.0) -- ZOOM_LEVEL_GALLERY
    SetMapZoomDataLevel(8, 11.0, 0.0, 0.0, 2.0, 3.0) -- ZOOM_LEVEL_GALLERY_MAXIMIZE
    lib.requestScaleformMovie('minimap')
end