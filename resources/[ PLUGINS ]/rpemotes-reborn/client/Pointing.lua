Pointing = false

local function IsPlayerAiming(player)
    return IsPlayerFreeAiming(player) or IsAimCamActive() or IsAimCamThirdPersonActive()
end

local function CanPlayerPoint()
    if not DoesEntityExist(cache.ped) or IsPedOnAnyBike(cache.ped) or IsPlayerAiming(cache.playerId) or IsPedFalling(cache.ped) or IsPedInjured(cache.ped) or IsPedInMeleeCombat(cache.ped) or IsPedRagdoll(cache.ped) or not IsPedHuman(cache.ped) then
        return false
    end
    return kyg.canAction(nil, { 'vehicle' })
end

local function PointingStopped()
    RequestTaskMoveNetworkStateTransition(cache.ped, 'Stop')
    SetPedConfigFlag(cache.ped, 36, false)
    if not IsPedInjured(cache.ped) then ClearPedSecondaryTask(cache.ped) end
    RemoveAnimDict('anim@mp_point')
    if Config.PersistentEmoteAfterPointing and IsInAnimation then
        local emote = RP.Emotes[CurrentAnimationName] or RP.PropEmotes[CurrentAnimationName] or RP.Dances[CurrentAnimationName] or RP.AnimalEmotes[CurrentAnimationName]
        if not emote then return end

        Wait(400)
        DestroyAllProps()
        OnEmotePlay(emote, CurrentAnimationName, CurrentTextureVariation)
    end
end

local function PointingThread()
    CreateThread(function()
        while Pointing do
            Wait(1)

            if not CanPlayerPoint() then
                Pointing = false
                break
            end

            local camPitch = GetGameplayCamRelativePitch()
            if camPitch < -70.0 then
                camPitch = -70.0
            elseif camPitch > 42.0 then
                camPitch = 42.0
            end

            camPitch = (camPitch + 70.0) / 112.0

            local camHeading = GetGameplayCamRelativeHeading()
            local cosCamHeading = math.cos(camHeading)
            local sinCamHeading = math.sin(camHeading)

            if camHeading < -180.0 then
                camHeading = -180.0
            elseif camHeading > 180.0 then
                camHeading = 180.0
            end

            camHeading = (camHeading + 180.0) / 360.0
            local coords = GetOffsetFromEntityInWorldCoords(cache.ped, (cosCamHeading * -0.2) - (sinCamHeading * (0.4 * camHeading + 0.3)), (sinCamHeading * -0.2) + (cosCamHeading * (0.4 * camHeading + 0.3)), 0.6)
            local _, blocked = GetShapeTestResult(StartShapeTestCapsule(coords.x, coords.y, coords.z - 0.2, coords.x, coords.y, coords.z + 0.2, 0.4, 95, cache.ped, 7))

            SetTaskMoveNetworkSignalFloat(cache.ped, 'Pitch', camPitch)
            SetTaskMoveNetworkSignalFloat(cache.ped, 'Heading', (camHeading * -1.0) + 1.0)
            SetTaskMoveNetworkSignalBool(cache.ped, 'isBlocked', blocked)
            SetTaskMoveNetworkSignalBool(cache.ped, 'isFirstPerson', GetCamViewModeForContext(GetCamActiveViewModeContext()) == 4)
        end

        PointingStopped()
    end)
end

local function StartPointing()
    if IsInActionWithErrorMessage() or not CanPlayerPoint() then return print('DOR 0') end

    Pointing = not Pointing
    if Pointing and lib.requestAnimDict('anim@mp_point', 2000) then
        SetPedConfigFlag(cache.ped, 36, true)
        TaskMoveNetworkByName(cache.ped, 'task_mp_pointing', 0.5, false, 'anim@mp_point', 24)
        DestroyAllProps()
        PointingThread()
    end
end

-- Commands & KeyMapping --
if Config.PointingEnabled then
    kyg.addCommand('pointing', { help = locale('pointing') }, function(source, args, raw)
        if cache.vehicle and not Config.PointingKeybindInCarEnabled then return end
        StartPointing()
    end)

    if Config.PointingKeybindEnabled then
        lib.addKeybind({
            name = 'kyg_emotes:pointing',
            description = locale('pointing'),
            defaultKey = Config.PointingKeybind,
            onReleased = function(self)
                self:disable(true)
                ExecuteCommand('pointing')
                Wait(1000)
                self:disable(false)
            end
        })
    end
end

-- Exports --

---@return boolean
local function IsPlayerPointing()
    return Pointing
end
exports('IsPlayerPointing', IsPlayerPointing)
