kyg.addCommand('idlecam', { help = 'Toggle Idle Camera', params = {
    { name = 'status', help = 'on/off', optional = false, type = 'string' }
}}, function(source, args, raw)
    if args.status:lower() == 'on' then
        DisableIdleCamera(false)
        SetPedCanPlayAmbientAnims(cache.ped, true)
        SetResourceKvpInt('idleCamToggle', 2)
        lib.notify({ description = 'Idle camera has been turned on, your camera will move or focus in any direction when there is no movement from you.', type = 'warning' })
    elseif args.status:lower() == 'off' then
        DisableIdleCamera(true)
        SetPedCanPlayAmbientAnims(cache.ped, false)
        SetResourceKvpInt('idleCamToggle', 1)
        lib.notify({ description = 'The idle camera has been turned off, your camera will not move or focus in any direction.', type = 'warning' })
    end
end)

AddStateBagChangeHandler('isLoggedIn', ('player:%s'):format(cache.serverId), function(_, _, value)
    if type(value) == 'boolean' and value == true then
        local idleCamKvp = GetResourceKvpInt('idleCamToggle')
        if idleCamKvp == 1 then
            DisableIdleCamera(true)
            SetPedCanPlayAmbientAnims(cache.ped, false)
        elseif idleCamKvp == 2 then
            DisableIdleCamera(false)
            SetPedCanPlayAmbientAnims(cache.ped, true)
        end
    end
end)