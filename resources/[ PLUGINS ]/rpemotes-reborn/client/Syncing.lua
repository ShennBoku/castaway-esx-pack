local isRequestAnim = false
local requestedemote = ''
local targetPlayerId

if Config.SharedEmotesEnabled then
    kyg.addCommand('nearby', { help = locale('shareemotesinfo'), params = {
        { name = 'emoteName', help = locale('help_command'), type = 'string', optional = true },
    }}, function(source, args, raw)
        if not LocalPlayer.state.canEmote then return end
        if IsPedInAnyVehicle(cache.ped, true) then
            lib.notify({ description = locale('not_in_a_vehicle'), type = 'error' })
        end

        args.emoteName = (args.emoteName or ''):lower()
        if args.emoteName ~= '' then
            local playerId, playerPed, playerCoords = lib.getClosestPlayer(GetEntityCoords(cache.ped), 3.0, false)
            if playerId then
                if RP.Shared[args.emoteName] ~= nil then
                    local targetId = GetPlayerServerId(playerId)
                    local _, _, ename = table.unpack(RP.Shared[args.emoteName])
                    TriggerServerEvent('ServerEmoteRequest', targetId, args.emoteName)
                    lib.notify({ description = ('%s (%s)'):format(locale('sentrequestto', targetId), ename) })
                else
                    lib.notify({ description = locale('notvalidsharedemote', args.emoteName), type = 'error' })
                end
            else
                lib.notify({ description = locale('nobodyclose'), type = 'error' })
            end
        else
            NearbysOnCommand()
        end
    end)
end

RegisterNetEvent('SyncPlayEmote', function(emote, player)
    EmoteCancel()
    Wait(300)
    targetPlayerId = player
    local plyServerId = GetPlayerFromServerId(player)

    if IsPedInAnyVehicle(GetPlayerPed(plyServerId ~= 0 and plyServerId or GetClosestPlayer()), true) then
        return lib.notify({ description = locale('not_in_a_vehicle'), type = 'error' })
    end

    -- wait a little to make sure animation shows up right on both clients after canceling any previous emote
    if RP.Shared[emote] then
        local options = RP.Shared[emote].AnimationOptions
        if options and options.Attachto then
            local targetEmote = RP.Shared[emote][4]
            if not targetEmote or not RP.Shared[targetEmote] or not RP.Shared[targetEmote].AnimationOptions or not RP.Shared[targetEmote].AnimationOptions.Attachto then
                local pedInFront = GetPlayerPed(plyServerId ~= 0 and plyServerId or GetClosestPlayer())
                AttachEntityToEntity(cache.ped, pedInFront, GetPedBoneIndex(pedInFront, options.bone or -1), options.xPos or 0.0, options.yPos or 0.0, options.zPos or 0.0, options.xRot or 0.0, options.yRot or 0.0, options.zRot or 0.0, false, false, false, true, 1, true)
            end
        end

        OnEmotePlay(RP.Shared[emote], emote)
        return
    elseif RP.Dances[emote] then
        OnEmotePlay(RP.Dances[emote], emote)
        return
    else
        lib.print.debug("SyncPlayEmote : Emote not found")
    end
end)

RegisterNetEvent("SyncPlayEmoteSource", function(emote, player)
    local plyServerId = GetPlayerFromServerId(player)
    local pedInFront = GetPlayerPed(plyServerId ~= 0 and plyServerId or GetClosestPlayer())

    if IsPedInAnyVehicle(cache.ped, true) or IsPedInAnyVehicle(pedInFront, true) then
        return lib.notify({ description = locale('not_in_a_vehicle'), type = 'error' })
    end

    local options = RP.Shared[emote] and RP.Shared[emote].AnimationOptions or RP.Dances[emote] and RP.Dances[emote].AnimationOptions
    if options then
        if (options.Attachto) then
            AttachEntityToEntity(cache.ped, pedInFront, GetPedBoneIndex(pedInFront, options.bone or -1), options.xPos or 0.0, options.yPos or 0.0, options.zPos or 0.0, options.xRot or 0.0, options.yRot or 0.0, options.zRot or 0.0, false, false, false, true, 1, true)
        end
    end

    local coords = GetOffsetFromEntityInWorldCoords(pedInFront, (options?.SyncOffsetSide or 0) + 0.0, (options?.SyncOffsetFront or 1) + 0.0, (options?.SyncOffsetHeight or 0) + 0.0)
    local heading = GetEntityHeading(pedInFront)
    SetEntityHeading(cache.ped, heading - (options?.SyncOffsetHeading or 180) + 0.0)
    SetEntityCoordsNoOffset(cache.ped, coords.x, coords.y, coords.z)
    EmoteCancel()
    Wait(300)

    targetPlayerId = player
    if RP.Shared[emote] ~= nil then
        OnEmotePlay(RP.Shared[emote], emote)
        return
    elseif RP.Dances[emote] ~= nil then
        OnEmotePlay(RP.Dances[emote], emote)
        return
    end
end)

RegisterNetEvent("SyncCancelEmote", function(player)
    if targetPlayerId and targetPlayerId == player then
        targetPlayerId = nil
        EmoteCancel()
    end
end)

function CancelSharedEmote()
    if targetPlayerId then
        TriggerServerEvent("ServerEmoteCancel", targetPlayerId)
        targetPlayerId = nil
    end
end

RegisterNetEvent("ClientEmoteRequestReceive", function(emotename, etype, target)
    isRequestAnim = true
    local displayed = (etype == 'Dances') and select(3, table.unpack(RP.Dances[emotename])) or select(3, table.unpack(RP.Shared[emotename]))

    PlaySound(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", false, 0, true)
    lib.notify({ description = locale('doyouwanna', displayed) })
    -- The player has now 10 seconds to accept the request
    local timer = 10 * 1000
    while isRequestAnim do
        Wait(5)
        timer = timer - 5
        if timer <= 0 then
            isRequestAnim = false
            lib.notify({ description = locale('refuseemote') })
        end

        if IsControlJustPressed(1, 246) then
            isRequestAnim = false
            local otheremote = RP.Shared[emotename] and RP.Shared[emotename][4] or RP.Dances[emotename] and RP.Dances[emotename][4] or emotename
            TriggerServerEvent("ServerValidEmote", target, emotename, otheremote)
        elseif IsControlJustPressed(1, 182) then
            isRequestAnim = false
            lib.notify({ description = locale('refuseemote') })
        end
    end
end)
