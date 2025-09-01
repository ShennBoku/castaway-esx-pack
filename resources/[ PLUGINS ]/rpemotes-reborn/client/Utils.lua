LocalPlayer.state:set('canEmote', true, true) -- Allow emotes to be played by default

function FirstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

function IsPlayerAiming(player)
    return (IsPlayerFreeAiming(player) or IsAimCamActive() or IsAimCamThirdPersonActive()) and
    tonumber(GetSelectedPedWeapon(player)) ~= tonumber(GetHashKey('WEAPON_UNARMED'))
end

function CanPlayerCrouchCrawl(playerPed)
    if not IsPedOnFoot(playerPed) or IsPedJumping(playerPed) or IsPedFalling(playerPed) or IsPedInjured(playerPed) or IsPedInMeleeCombat(playerPed) or IsPedRagdoll(playerPed) then
        return false
    end
    return true
end

function PlayAnimOnce(playerPed, animDict, animName, blendInSpeed, blendOutSpeed, duration, startTime)
    lib.playAnim(playerPed, animDict, animName, blendInSpeed or 2.0, blendOutSpeed or 2.0, duration or -1, 0, startTime or 0.0, false, 0, false)
    RemoveAnimDict(animDict)
end

function ChangeHeadingSmooth(playerPed, amount, time)
    local times = math.abs(amount)
    local test = amount / times
    local wait = time / times
    for _i = 1, times do
        Wait(wait)
        SetEntityHeading(playerPed, GetEntityHeading(playerPed) + test)
    end
end

function PairsByKeys(t, f)
    local a = {}
    for n in pairs(t) do
        table.insert(a, n)
    end
    table.sort(a, f)
    local i = 0             -- iterator variable
    local iter = function() -- iterator function
        i = i + 1
        if a[i] == nil then
            return nil
        else
            return a[i], t[a[i]]
        end
    end
    return iter
end

function TableHasKey(table, key)
    return table[key] ~= nil
end

function GetPedInFront()
    local plyPos = GetEntityCoords(cache.ped, false)
    local plyOffset = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 1.3, 0.0)
    local rayHandle = StartShapeTestCapsule(plyPos.x, plyPos.y, plyPos.z, plyOffset.x, plyOffset.y, plyOffset.z, 10.0, 12, cache.ped, 7)
    local _, _, _, _, ped2 = GetShapeTestResult(rayHandle)
    return ped2
end

function NearbysOnCommand(source, args, raw)
    local NearbysCommand = ''
    for a in PairsByKeys(RP.Shared) do
        NearbysCommand = ('%s%s, '):format(NearbysCommand, a)
    end

    lib.notify({ description = locale('emotemenucmd') })
    lib.notify({ description = NearbysCommand })
end

function GetClosestPlayer()
    local pedCoords = GetEntityCoords(cache.ped, false)
    local closestDistance = -1

    local playerId, playerPed, playerCoords = lib.getClosestPlayer(pedCoords, 5.0, false)
    if playerId then closestDistance = #(pedCoords - playerCoords) end
    return playerId, closestDistance
end

function GetPlayers()
    local players = {}
    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end

    return players
end

-- Function that'll check if player is already proning, using news cam or else

---@param ignores? table | nil key string is the ignored value
function IsInActionWithErrorMessage(ignores)
    lib.print.debug(ignores)
    lib.print.debug('IsProne', IsProne)
    lib.print.debug('IsUsingNewscam', IsUsingNewscam)
    lib.print.debug('IsUsingBinoculars', IsUsingBinoculars)
    if (ignores == nil) then ignores = {} end

    if not ignores['IsProne'] and IsProne then
        lib.notify({ description = locale('no_anim_crawling'), type = 'error' })
        return true
    end
    if not ignores['IsUsingNewscam'] and IsUsingNewscam then
        -- TODO: use specific error message
        lib.notify({ description = locale('no_anim_right_now'), type = 'error' })
        return true
    end
    if not ignores['IsUsingBinoculars'] and IsUsingBinoculars then
        -- TODO: use specific error message
        lib.notify({ description = locale('no_anim_right_now'), type = 'error' })
        return true
    end

    return false
end

function HideHUDThisFrame()
    HideHelpTextThisFrame()
    HideHudAndRadarThisFrame()
    HideHudComponentThisFrame(19) -- weapon wheel
    HideHudComponentThisFrame(1)  -- Wanted Stars
    HideHudComponentThisFrame(2)  -- Weapon icon
    HideHudComponentThisFrame(3)  -- Cash
    HideHudComponentThisFrame(4)  -- MP CASH
    HideHudComponentThisFrame(13) -- Cash Change
    HideHudComponentThisFrame(11) -- Floating Help Text
    HideHudComponentThisFrame(12) -- more floating help text
    HideHudComponentThisFrame(15) -- Subtitle Text
    HideHudComponentThisFrame(18) -- Game Stream
end

function SetupButtons(button)
    local scaleform = lib.requestScaleformMovie('instructional_buttons')
    PushScaleformMovieFunction(scaleform, 'CLEAR_ALL')
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, 'SET_CLEAR_SPACE')
    PushScaleformMovieFunctionParameterInt(200)
    PopScaleformMovieFunctionVoid()

    for i, btn in pairs(button) do
        PushScaleformMovieFunction(scaleform, 'SET_DATA_SLOT')
        PushScaleformMovieFunctionParameterInt(i - 1)
        ScaleformMovieMethodAddParamPlayerNameString(GetControlInstructionalButton(0, btn.key, true))
        BeginTextCommandScaleformString('STRING')
        AddTextComponentScaleform(locale(btn.text))
        EndTextCommandScaleformString()
        PopScaleformMovieFunctionVoid()
    end

    PushScaleformMovieFunction(scaleform, 'DRAW_INSTRUCTIONAL_BUTTONS')
    PopScaleformMovieFunctionVoid()

    return scaleform
end

function HandleZoomAndCheckRotation(cam, fov)
    local zoomspeed = 10.0 -- camera zoom speed
    local lPed = PlayerPedId()

    local fov_max = 70.0
    local fov_min = 10.0 -- max zoom level (smaller fov is more zoom)
    local speed_lr = 8.0 -- speed by which the camera pans left-right
    local speed_ud = 8.0 -- speed by which the camera pans up-down

    local zoomvalue = (1.0 / (fov_max - fov_min)) * (fov - fov_min)
    local rightAxisX = GetDisabledControlNormal(0, 220)
    local rightAxisY = GetDisabledControlNormal(0, 221)
    local rotation = GetCamRot(cam, 2)

    if rightAxisX ~= 0.0 or rightAxisY ~= 0.0 then
        local new_z = rotation.z + rightAxisX * -1.0 * (speed_ud) * (zoomvalue + 0.1)
        local new_x = math.max(math.min(20.0, rotation.x + rightAxisY * -1.0 * (speed_lr) * (zoomvalue + 0.1)), -29.5)
        SetCamRot(cam, new_x, 0.0, new_z, 2)
    end

    if not (IsPedSittingInAnyVehicle(lPed)) then
        if IsControlJustPressed(0, 241) then -- Scrollup
            fov = math.max(fov - zoomspeed, fov_min)
        end
        if IsControlJustPressed(0, 242) then
            fov = math.min(fov + zoomspeed, fov_max) -- ScrollDown
        end
        local current_fov = GetCamFov(cam)
        if math.abs(fov - current_fov) < 0.1 then
            fov = current_fov
        end
        SetCamFov(cam, current_fov + (fov - current_fov) * 0.05)
    else
        if IsControlJustPressed(0, 17) then -- Scrollup
            fov = math.max(fov - zoomspeed, fov_min)
        end
        if IsControlJustPressed(0, 16) then
            fov = math.min(fov + zoomspeed, fov_max) -- ScrollDown
        end
        local current_fov = GetCamFov(cam)
        if math.abs(fov - current_fov) < 0.1 then -- the difference is too small, just set the value directly to avoid unneeded updates to FOV of order 10^-5
            fov = current_fov
        end
        SetCamFov(cam, current_fov + (fov - current_fov) * 0.05) -- Smoothing of camera zoom
    end

    return fov
end

----------------------------------------------------------------------

ShowPed = false

function PreviewAnimationOnPed(zoom)
    if not Config.PreviewPed then return end

    if not ShowPed then
        CreateThread(function()
            local coords = GetEntityCoords(cache.ped) - vector3(0.0, 0.0, 10.0)
            ClonedPed = CreatePed(26, GetEntityModel(cache.ped), coords.x, coords.y, coords.z, 0, false, false)
            ClonePedToTarget(cache.ped, ClonedPed)

            SetEntityInvincible(ClonedPed, true)
            SetEntityLocallyVisible(ClonedPed)
            NetworkSetEntityInvisibleToNetwork(ClonedPed, true)
            SetEntityCanBeDamaged(ClonedPed, false)
            SetBlockingOfNonTemporaryEvents(ClonedPed, true)
            SetEntityAlpha(ClonedPed, 254, false)
            SetEntityCollision(ClonedPed, false, false)

            ShowPed = true

            local positionBuffer = {}
            local bufferSize = 5

            while ShowPed do
                local screencoordsX = zoom and 0.6 or 0.65135417461395
                local screencoordsY = zoom and 1.9 or 0.77

                if Config.MenuPosition == "left" then
                    screencoordsX = 1.0 - screencoordsX
                end

                local world, normal = GetWorldCoordFromScreenCoord(screencoordsX, screencoordsY)
                local depth = zoom and 2.0 or 3.5
                local target = world + normal * depth
                local camRot = GetGameplayCamRot(2)

                table.insert(positionBuffer, target)
                if #positionBuffer > bufferSize then
                    table.remove(positionBuffer, 1)
                end

                local averagedTarget = vector3(0, 0, 0)
                for _, position in ipairs(positionBuffer) do
                    averagedTarget = averagedTarget + position
                end
                averagedTarget = averagedTarget / #positionBuffer

                SetEntityCoords(ClonedPed, averagedTarget.x, averagedTarget.y, averagedTarget.z, false, false, false, true)
                local heading_offset = Config.MenuPosition == "left" and 170.0 or 190.0
                SetEntityHeading(ClonedPed, camRot.z + heading_offset)
                SetEntityRotation(ClonedPed, camRot.x * (-1), 0.0, camRot.z + 170.0, 2, false)

                Wait(4)
            end

            DeleteEntity(ClonedPed)
            ClonedPed = nil
        end)
    end
end

function StopPreviewAnimationOnPed()
    if not Config.PreviewPed then return end

    if ClonedPed then
        ShowPed = false
        ClearPedTaskPreview()
        DeleteEntity(ClonedPed)
    end
end

function ClearPedTaskPreview()
    if not Config.PreviewPed then return end

    if ClonedPed then
        DestroyAllProps(true)
        ClearPedTasksImmediately(ClonedPed)
    end
end
