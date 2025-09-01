-----------------------------------------------------------------------------------------------------
-- Shared Emotes Syncing  ---------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------

RegisterNetEvent("ServerEmoteRequest", function(target, emotename, etype)
    if not Player(source).state.canEmote then return end

    local ped = GetPlayerPed(source)

    if target == -1 then
        return
    end
    local tped = GetPlayerPed(target)
    local pedcoord = GetEntityCoords(ped)
    local targetcoord = GetEntityCoords(tped)

    local distance = #(pedcoord - targetcoord)

    if distance > 3 then
        return
    end

    TriggerClientEvent("ClientEmoteRequestReceive", target, emotename, etype, source)
end)

RegisterNetEvent("ServerValidEmote", function(target, requestedemote, otheremote)
    local ped = GetPlayerPed(source)

    if target == -1 then
        return
    end
    local tped = GetPlayerPed(target)
    local pedcoord = GetEntityCoords(ped)
    local targetcoord = GetEntityCoords(tped)

    local distance = #(pedcoord - targetcoord)

    if distance > 3 then
        return
    end

    TriggerClientEvent("SyncPlayEmote", source, otheremote, target)
    TriggerClientEvent("SyncPlayEmoteSource", target, requestedemote, source)
end)

RegisterNetEvent("ServerEmoteCancel", function(target)
    TriggerClientEvent("SyncCancelEmote", target, source)
end)

--#region ptfx
RegisterNetEvent("rpemotes:ptfx:sync", function(asset, name, offset, rot, bone, scale, color)
    if type(asset) ~= "string" or type(name) ~= "string" or type(offset) ~= "vector3" or type(rot) ~= "vector3" then
        print("[rpemotes] ptfx:sync: invalid arguments for source:", source)
        return
    end

    local srcPlayerState = Player(source).state

    srcPlayerState:set("ptfxAsset", asset, true)
    srcPlayerState:set("ptfxName", name, true)
    srcPlayerState:set("ptfxOffset", offset, true)
    srcPlayerState:set("ptfxRot", rot, true)
    srcPlayerState:set("ptfxBone", bone, true)
    srcPlayerState:set("ptfxScale", scale, true)
    srcPlayerState:set("ptfxColor", color, true)
    srcPlayerState:set("ptfxPropNet", false, true)
    srcPlayerState:set("ptfx", false, true)
end)

RegisterNetEvent("rpemotes:ptfx:syncProp", function(propNet)
    local srcPlayerState = Player(source).state
    if propNet then
        -- Prevent infinite loop to get entity
        local waitForEntityToExistCount = 0
        while waitForEntityToExistCount <= 100 and not DoesEntityExist(NetworkGetEntityFromNetworkId(propNet)) do
            Wait(10)
            waitForEntityToExistCount = waitForEntityToExistCount + 1
        end

        -- If below 100 then we could find the loaded entity
        if waitForEntityToExistCount < 100 then
            srcPlayerState:set("ptfxPropNet", propNet, true)
            return
        end
    end
    -- If we reach this point then we couldn"t find the entity
    srcPlayerState:set("ptfxPropNet", false, true)
end)
--#endregion ptfx


-----------------------------------------------------------------------------------------------------
-- Keybinding  --------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------

RegisterNetEvent('rp:ServerKeybindCreate', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return end

    xPlayer.setMeta('emotebind', { num4 = '', num5 = '', num6 = '', num7 = '', num8 = '', num9 = '' })
    lib.print.info('Keybinds created for ' .. xPlayer.name .. '!')

    TriggerClientEvent('rp:ClientKeybindGet', src, 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '')
end)

RegisterNetEvent('rp:ServerKeybindGrab', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return end

    if xPlayer.metadata.emotebind then
        local bind = xPlayer.metadata.emotebind
        TriggerClientEvent('rp:ClientKeybindGet', src, 'num4', bind.num4, 'num5', bind.num5, 'num6', bind.num6, 'num7', bind.num7, 'num8', bind.num8, 'num9', bind.num9)
    else
        TriggerClientEvent('rp:ClientKeybindGet', src, 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '')
    end
end)

RegisterNetEvent('rp:ServerKeybindUpdate', function(key, emote)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return end

    local bind = xPlayer.metadata.emotebind or {}
    if bind and bind[key] then
        bind[key] = emote
    else
        bind = { num4 = '', num5 = '', num6 = '', num7 = '', num8 = '', num9 = '' }
        bind[key] = emote
    end

    xPlayer.setMeta('emotebind', bind)
    lib.notify(src, { description = 'Binding your emote: ' .. emote .. ' to key: ' .. key })
end)

RegisterServerEvent('rp:ServerKeybindDelete')
AddEventHandler('rp:ServerKeybindDelete', function(key)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return end

    local bind = xPlayer.metadata.emotebind or {}
    if bind and bind[key] then
        bind[key] = ''
    else
        bind = { num4 = '', num5 = '', num6 = '', num7 = '', num8 = '', num9 = '' }
        bind[key] = ''
    end

    xPlayer.setMeta('emotebind', bind)
    lib.notify(src, { description = 'Deleting your bind: ' .. key })
end)
