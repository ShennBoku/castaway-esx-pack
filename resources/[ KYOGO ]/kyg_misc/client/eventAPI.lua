-- :: Menu Events
RegisterNetEvent('kyg_misc:openFPSMenu', function()
    lib.registerContext({
        id = 'kyg_misc:fpsMenu',
        title = 'FPS Menu',
        options = {
            { title = 'Basic', onSelect = function() SetTimecycleModifier() ClearTimecycleModifier() ClearExtraTimecycleModifier() end, icon = 'fas fa-star' },
            { title = 'FPS Boost', onSelect = function() SetTimecycleModifier('yell_tunnel_nodirect') end, icon = 'fas fa-star' },
            { title = 'View & Mono Lights', onSelect = function() SetTimecycleModifier('MP_Powerplay_blend') SetExtraTimecycleModifier('reflection_correct_ambient') end, icon = 'fas fa-star' },
            { title = 'View & Improved Lights', onSelect = function() SetTimecycleModifier('tunnel') end, icon = 'fas fa-star' },
        },
    })
    lib.showContext('kyg_misc:fpsMenu')
end)
-- ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;


-- :: Ped Action Events
RegisterNetEvent('kyg_misc:gotTackled', function()
    local tackledTime = math.random(6000, 10000)
    SetPedToRagdoll(cache.ped, tackledTime, tackledTime, 0, 0, 0, 0)
end)
-- ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;