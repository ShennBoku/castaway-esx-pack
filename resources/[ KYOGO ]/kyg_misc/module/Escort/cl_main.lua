local function clearEmote()
    if HasAnimDictLoaded('amb@world_human_drinking@coffee@male@base') then RemoveAnimDict('amb@world_human_drinking@coffee@male@base') end
    if HasAnimDictLoaded('mp_arresting') then RemoveAnimDict('mp_arresting') end
end

local function playEscort(draggedType)
    local animDict, animClip, animLength, controlFlag
    if draggedType == 'escorting' then
        animDict, animClip, animLength, controlFlag = 'amb@world_human_drinking@coffee@male@base', 'base', -1, 51
    elseif draggedType == 'escorted' then
        animDict, animClip, animLength, controlFlag = 'mp_arresting', 'idle', -1, 49
    end

    if animDict and IsEntityPlayingAnim(cache.ped, animDict, animClip, 3) ~= 1 then
        lib.playAnim(cache.ped, animDict, animClip, 8.0, -8.0, animLength, controlFlag, 0, false, 0, false)
    end
end

local function imEscorted()
    CreateThread(function()
        while (LocalPlayer.state.isEscorted or 0) > 0 do
            Wait(3)

            DisableAllControlActions(0)
            DisablePlayerFiring(cache.ped, true)

            EnableControlAction(0, 1, true) -- MOUSE RIGHT
            EnableControlAction(0, 2, true) -- MOUSE DOWN
            EnableControlAction(0, 26, true) -- C
            EnableControlAction(0, 245, true) -- T
            EnableControlAction(0, 249, true) -- N

            EnableControlAction(0, 199, true) -- P
            EnableControlAction(0, 200, true) -- ESC

            if (LocalPlayer.state.isEscorted or 0) > 0 and not kyg.player.isDead() then
                playEscort('escorted')
            end
        end
    end)
end

local function imEscorting()
    CreateThread(function()
        while (LocalPlayer.state.isEscorting or 0) > 0 do
            Wait(3)

            DisablePlayerFiring(cache.ped, true)
            DisableControlAction(0, 24, true) -- Attack
            DisableControlAction(0, 257, true) -- Attack 2
            DisableControlAction(0, 25, true) -- Aim
            DisableControlAction(0, 263, true) -- Melee Attack 1

            DisableControlAction(0, 59, true) -- Disable steering in vehicle
            DisableControlAction(0, 71, true) -- Disable driving forward in vehicle
            DisableControlAction(0, 72, true) -- Disable reversing in vehicle

            DisableControlAction(0, 264, true) -- Disable melee
            DisableControlAction(0, 257, true) -- Disable melee
            DisableControlAction(0, 140, true) -- Disable melee
            DisableControlAction(0, 141, true) -- Disable melee
            DisableControlAction(0, 142, true) -- Disable melee
            DisableControlAction(0, 143, true) -- Disable melee

            if (LocalPlayer.state.isEscorting or 0) > 0 and not kyg.player.isDead() then
                playEscort('escorting')
            end
        end
    end)
end

RegisterNetEvent('kyg_escort:sync', function(action, playerId)
    if action == 'escorting' then
        ClearPedTasksImmediately(cache.ped)
        clearEmote() Wait(100)
        playEscort('escorting')
        imEscorting()
    elseif action == 'escorted' then
        ClearPedTasksImmediately(cache.ped)
        clearEmote() Wait(100)
        local pedInFront = kyg.ped.getFromSID(playerId)
        AttachEntityToEntity(cache.ped, pedInFront, 1816, 0.25, 0.49, 0.0, 0.0, 0.0, 0.0, false, false, false, true, 2, true)
        playEscort('escorted')
        imEscorted()
    end
end)

RegisterNetEvent('kyg_escort:forceStop', function(fromClient)
    if (LocalPlayer.state.isEscorted or 0) > 0 then
        if not fromClient then TriggerServerEvent('kyg_escort:forceStop', (LocalPlayer.state.isEscorted or 0)) end
        LocalPlayer.state:set('isEscorted', 0, true)
        DetachEntity(cache.ped, true, true)
        ClearPedTasksImmediately(cache.ped)
    elseif (LocalPlayer.state.isEscorting or 0) > 0 then
        if not fromClient then TriggerServerEvent('kyg_escort:forceStop', (LocalPlayer.state.isEscorting or 0)) end
        LocalPlayer.state:set('isEscorting', 0, true)
        ClearPedTasksImmediately(cache.ped)
    end
end)

RegisterNetEvent('kyg_escort:start', function(data)
    if (LocalPlayer.state.isEscorting or 0) > 0 then TriggerEvent('kyg_escort:forceStop') return end
    if not (kyg.canAction(nil, { 'vehicle' }) and kyg.player.isJobs({ 'police', 'ambulance' })) then return end
        
    local plyId, plyPed, plyCoord = lib.getClosestPlayer(GetEntityCoords(cache.ped), 1.5, false)
    if data and data.entity then plyPed = data.entity end

    if plyPed and not (IsPedInAnyVehicle(plyPed, false) or IsPedRagdoll(plyPed) or IsPedRunningRagdollTask(plyPed)) then
        TriggerServerEvent('kyg_escort:start', kyg.player.getSID(plyPed))
    end
end)