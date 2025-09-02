local carriedData, carryingData = {}, {}

local function clearEmote()
    if HasAnimDictLoaded('anim@heists@box_carry@') then RemoveAnimDict('anim@heists@box_carry@') end
    if HasAnimDictLoaded('amb@code_human_in_car_idles@generic@ps@base') then RemoveAnimDict('amb@code_human_in_car_idles@generic@ps@base') end
    if HasAnimDictLoaded('anim@sports@ballgame@handball@') then RemoveAnimDict('anim@sports@ballgame@handball@') end
    if HasAnimDictLoaded('veh@boat@speed@fps@base') then RemoveAnimDict('veh@boat@speed@fps@base') end
    if HasAnimDictLoaded('missfinale_c2mcs_1') then RemoveAnimDict('missfinale_c2mcs_1') end
    if HasAnimDictLoaded('nm') then RemoveAnimDict('nm') end
    if HasAnimDictLoaded('anim@heists@box_carry@') then RemoveAnimDict('anim@heists@box_carry@') end
    if HasAnimDictLoaded('amb@code_human_in_car_idles@generic@ps@base') then RemoveAnimDict('amb@code_human_in_car_idles@generic@ps@base') end
    if HasAnimDictLoaded('timetable@amanda@ig_3') then RemoveAnimDict('timetable@amanda@ig_3') end
    if HasAnimDictLoaded('timetable@ron@ig_3_couch') then RemoveAnimDict('timetable@ron@ig_3_couch') end
    if HasAnimDictLoaded('mx@piggypack_a') then RemoveAnimDict('mx@piggypack_a') end
    if HasAnimDictLoaded('mx@piggypack_b') then RemoveAnimDict('mx@piggypack_b') end
end

local function playCarry(animDict, animClip, animLength, controlFlag, useOtherValidation)
    local isPlaying = useOtherValidation and (not (IsEntityPlayingAnim(cache.ped, animDict, animClip, useOtherValidation) ~= 1)) or (GetEntityAnimCurrentTime(cache.ped, animDict, animClip) > 0.0)
    if not isPlaying then
        lib.playAnim(cache.ped, animDict, animClip, 8.0, -8.0, animLength, controlFlag, 0, false, 0, false)
    end
end

local function imCarried()
    CreateThread(function()
        while LocalPlayer.state.isCarried > 0 do
            Wait(5)

            DisablePlayerFiring(cache.ped, true)
            DisableControlAction(0, 24, true) -- Attack
            DisableControlAction(0, 257, true) -- Attack 2
            DisableControlAction(0, 25, true) -- Aim
            DisableControlAction(0, 263, true) -- Melee Attack 1

            DisableControlAction(0, 264, true) -- Disable melee
            DisableControlAction(0, 257, true) -- Disable melee
            DisableControlAction(0, 140, true) -- Disable melee
            DisableControlAction(0, 141, true) -- Disable melee
            DisableControlAction(0, 142, true) -- Disable melee
            DisableControlAction(0, 143, true) -- Disable melee

            DisableControlAction(0, 73, true) -- Disable clearing animation

            if LocalPlayer.state.isCarried > 0 then
                playCarry(carriedData.animation.dict, carriedData.animation.clip, carriedData.animation.length, carriedData.animation.controlFlag, carriedData.animation.validation)
            else ClearPedTasksImmediately(cache.ped) break end
        end
    end)
end

local function imCarrying()
    CreateThread(function()
        while LocalPlayer.state.isCarrying > 0 do
            Wait(5)

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

            DisableControlAction(0, 73, true) -- Disable clearing animation

            if LocalPlayer.state.isCarrying > 0 then
                playCarry(carryingData.animation.dict, carryingData.animation.clip, carryingData.animation.length, carryingData.animation.controlFlag, carryingData.animation.validation)
            else ClearPedTasksImmediately(cache.ped) break end
        end
    end)
end

RegisterNetEvent('kyg_carry:sync', function(action, data)
    if action == 'carrying' then
        ClearPedTasksImmediately(cache.ped)
        clearEmote() Wait(100)
        carryingData = data
        playCarry(carryingData.animation.dict, carryingData.animation.clip, carryingData.animation.length, carryingData.animation.controlFlag, carryingData.animation.validation)
        imCarrying()
    elseif action == 'carried' then
        ClearPedTasksImmediately(cache.ped)
        clearEmote() Wait(100)
        carriedData = data
        local pedInFront = kyg.ped.getFromSID(data.carrying)
        AttachEntityToEntity(cache.ped, pedInFront, (carriedData.bone > 0 and GetPedBoneIndex(pedInFront, carriedData.bone) or carriedData.bone), carriedData.position.x, carriedData.position.y, carriedData.position.z, carriedData.rotation.x, carriedData.rotation.y, carriedData.rotation.z, false, false, false, true, 1, true)
        playCarry(carriedData.animation.dict, carriedData.animation.clip, carriedData.animation.length, carriedData.animation.controlFlag, carriedData.animation.validation)
        imCarried()
    end
end)

RegisterNetEvent('kyg_carry:forceStop', function(fromClient)
    if (LocalPlayer.state.isCarried or 0) > 0 then
        if not fromClient then TriggerServerEvent('kyg_carry:forceStop', (LocalPlayer.state.isCarried or 0)) end
        LocalPlayer.state:set('isCarried', 0, true)
        DetachEntity(cache.ped, true, false)
        ClearPedTasksImmediately(cache.ped)
    elseif (LocalPlayer.state.isCarrying or 0) > 0 then
        if not fromClient then TriggerServerEvent('kyg_carry:forceStop', (LocalPlayer.state.isCarrying or 0)) end
        LocalPlayer.state:set('isCarrying', 0, true)
        ClearPedTasksImmediately(cache.ped)
    end
end)

RegisterNetEvent('kyg_carry:start', function(data)
    if (LocalPlayer.state.isCarrying or 0) > 0 or (LocalPlayer.state.isCarried or 0) > 0 then TriggerEvent('kyg_carry:forceStop') return end
    if not kyg.canAction(nil, { 'vehicle' }) then return end
        
    local plyId, plyPed, plyCoord = lib.getClosestPlayer(GetEntityCoords(cache.ped), 1.5, false)
    if data.entity then plyPed = data.entity end

    if plyPed and not (IsPedInAnyVehicle(plyPed, false) or IsPedRagdoll(plyPed) or IsPedRunningRagdollTask(plyPed)) then
        TriggerServerEvent('kyg_carry:start', kyg.player.getSID(plyPed), data.carryType)
    end
end)