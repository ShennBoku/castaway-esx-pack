IsProne = false
local isCrouched = false
local isCrawling = false
local inAction = false
local proneType = 'onfront'
local lastKeyPress = 0
local forceEndProne = false

-- Crouching --

local function ResetCrouch()
    ResetPedStrafeClipset(cache.ped)
    ResetPedWeaponMovementClipset(cache.ped)
    SetPedMaxMoveBlendRatio(cache.ped, 1.0)
    SetPedCanPlayAmbientAnims(cache.ped, true)

    local walkstyle = GetResourceKvpString('walkstyle')
    if walkstyle ~= nil then
        lib.requestAnimSet(walkstyle, GetGameTimer() + 5000)
        SetPedMovementClipset(cache.ped, walkstyle, 0.5)
        RemoveClipSet(walkstyle)
    else
        ResetPedMovementClipset(cache.ped, 0.5)
    end

    RemoveAnimSet('move_ped_crouched')
end

local function CrouchLoop()
    while isCrouched do
        if not CanPlayerCrouchCrawl(cache.ped) then
            isCrouched = false
            break
        end

        if IsPlayerAiming(cache.playerId) then
            SetPedMaxMoveBlendRatio(cache.ped, 0.15)
        end

        SetPedCanPlayAmbientAnims(cache.ped, false)

        DisableControlAction(0, 36, true)
        if IsPedUsingActionMode(cache.ped) == 1 then
            SetPedUsingActionMode(cache.ped, false, -1, 'DEFAULT_ACTION')
        end

        DisableFirstPersonCamThisFrame()

        if Config.FpsMode == true then
            DisableControlAction(2, 25, true) -- disables the aim control action entirely while crouched
        end

        Wait(1)
    end

    TriggerEvent('crouch_crawl:onCrouch', false)
    ResetCrouch()
end

local function StartCrouch()
    isCrouched = true
    lib.requestAnimSet('move_ped_crouched', GetGameTimer() + 5000)

    if GetPedStealthMovement(cache.ped) ~= 0 then
        SetPedStealthMovement(cache.ped, false, 'DEFAULT_ACTION')
        Wait(100)
    end

    if GetFollowPedCamViewMode() == 4 then
        SetFollowPedCamViewMode(0) -- THIRD_PERSON_NEAR
    end

    SetPedMovementClipset(cache.ped, 'move_ped_crouched', 0.6)
    SetPedStrafeClipset(cache.ped, 'move_ped_crouched_strafing')

    -- For other scripts to use
    TriggerEvent('crouch_crawl:onCrouch', true)

    CreateThread(CrouchLoop)
end

---@param playerPed number
---@return boolean success
local function AttemptCrouch(playerPed)
    if CanPlayerCrouchCrawl(playerPed) and IsPedHuman(playerPed) then
        StartCrouch()
        return true
    else
        return false
    end
end

---Disables a control until it's key has been released
---@param padIndex integer
---@param control integer
local function DisableControlUntilReleased(padIndex, control)
    CreateThread(function()
        while IsDisabledControlPressed(padIndex, control) do
            DisableControlAction(padIndex, control, true)
            Wait(1)
        end
    end)
end

local function CrouchKeyPressed()
    if not LocalPlayer.state.canEmote then return end

    if inAction then
        return
    end

    if IsPauseMenuActive() or IsNuiFocused() then
        return
    end

    if isCrouched then
        isCrouched = false
        local crouchKey = GetControlInstructionalButton(0, `+crouch` | 0x80000000, false)
        local lookBehindKey = GetControlInstructionalButton(0, 26, false) -- INPUT_LOOK_BEHIND

        if crouchKey == lookBehindKey then
            DisableControlUntilReleased(0, 26) -- INPUT_LOOK_BEHIND
        end

        return
    end

    if not CanPlayerCrouchCrawl(cache.ped) or not IsPedHuman(cache.ped) then
        return
    end

    local crouchKey = GetControlInstructionalButton(0, `+crouch` | 0x80000000, false)
    local lookBehindKey = GetControlInstructionalButton(0, 26, false) -- INPUT_LOOK_BEHIND
    local duckKey = GetControlInstructionalButton(0, 36, false) -- INPUT_DUCK

    if crouchKey == lookBehindKey then
        DisableControlUntilReleased(0, 26) -- INPUT_LOOK_BEHIND
    end

    if crouchKey == duckKey then
        if Config.CrouchOverrideStealthMode then
            DisableControlAction(0, 36, true) -- Disable INPUT_DUCK this frame
        elseif not IsProne then
            local timer = GetGameTimer()

            if GetPedStealthMovement(cache.ped) ~= 0 and timer - lastKeyPress < 1000 then
                DisableControlAction(0, 36, true) -- Disable INPUT_DUCK this frame
                lastKeyPress = 0
            else
                lastKeyPress = timer
                return
            end
        end
    end

    StartCrouch()

    if IsProne then
        inAction = true
        IsProne = false
        PlayAnimOnce(cache.ped, 'get_up@directional@transition@prone_to_knees@crawl', 'front', nil, nil, 780)
        Wait(780)
        inAction = false
    end
end


-- Crawling --

---@param playerPed number
---@return boolean
local function ShouldPlayerDiveToCrawl(playerPed)
    if IsPedRunning(playerPed) or IsPedSprinting(playerPed) then
        return true
    end

    return false
end

---Stops the player from being prone
---@param force boolean If forced then no exit anim is played
local function stopPlayerProne(force)
    IsProne = false
    forceEndProne = force
end

---@param playerPed number
---@param heading number|nil
---@param blendInSpeed number|nil
local function PlayIdleCrawlAnim(playerPed, heading, blendInSpeed)
    local playerCoords = GetEntityCoords(playerPed)
    TaskPlayAnimAdvanced(playerPed, 'move_crawl', proneType..'_fwd', playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, heading or GetEntityHeading(playerPed), blendInSpeed or 2.0, 2.0, -1, 2, 1.0, false, false)
end

---@param forceEnd boolean
local function PlayExitCrawlAnims(forceEnd)
    if not forceEnd then
        inAction = true
        local animDict, animName, waitTime
        if proneType == 'onfront' then
            animDict, animName, waitTime = 'get_up@directional@transition@prone_to_knees@crawl', 'front', 780
        else
            animDict, animName, waitTime = 'get_up@directional@transition@prone_to_seated@crawl', 'back', 950
        end

        PlayAnimOnce(cache.ped, animDict, animName, nil, nil, waitTime)
        if not isCrouched then
            Wait(waitTime)
            PlayAnimOnce(cache.ped, 'get_up@directional@movement@from_'..(proneType == 'onfront' and 'knees' or 'seated')..'@standard', 'getup_l_0', nil, nil, 1300)
        end
    end
end

-- Crawls one 'step' forward/backward
---@param playerPed number
---@param type string
---@param direction string
local function Crawl(playerPed, type, direction)
    isCrawling = true

    lib.playAnim(playerPed, 'move_crawl', type..'_'..direction, 8.0, -8.0, -1, 2, 0.0, false, 0, false)
    local time = {
        ['onfront'] = {
            ['fwd'] = 820,
            ['bwd'] = 990
        },
        ['onback'] = {
            ['fwd'] = 1200,
            ['bwd'] = 1200
        }
    }

    SetTimeout(time[type][direction], function()
        isCrawling = false
    end)
end

-- Flips the player when crawling
---@param playerPed number
local function CrawlFlip(playerPed)
    inAction = true
    local heading = GetEntityHeading(playerPed)

    proneType = proneType == 'onfront' and 'onback' or 'onfront'

    if proneType == 'onback' then
        PlayAnimOnce(playerPed, 'get_up@directional_sweep@combat@pistol@front', 'front_to_prone', 2.0)
        ChangeHeadingSmooth(playerPed, -18.0, 3600)
    else
        PlayAnimOnce(playerPed, 'move_crawlprone2crawlfront', 'back', 2.0, nil, -1)
        ChangeHeadingSmooth(playerPed, 12.0, 1700)
    end

    PlayIdleCrawlAnim(playerPed, heading + 180.0)
    Wait(400)
    inAction = false
end

local function CrawlLoop()
    Wait(400)

    while IsProne do
        if not CanPlayerCrouchCrawl(cache.ped) or IsEntityInWater(cache.ped) then
            ClearPedTasks(cache.ped)
            stopPlayerProne(true)
            break
        end

        local forward, backwards = IsControlPressed(0, 32), IsControlPressed(0, 33) -- INPUT_MOVE_UP_ONLY, INPUT_MOVE_DOWN_ONLY
        if not isCrawling then
            if forward then -- Forward
                Crawl(cache.ped, proneType, 'fwd')
            elseif backwards then -- Back
                Crawl(cache.ped, proneType, 'bwd')
            end
        end

        -- Moving left/right
        if IsControlPressed(0, 34) then -- INPUT_MOVE_LEFT_ONLY
            if isCrawling then
                local headingDiff = forward and 1.0 or -1.0
                SetEntityHeading(cache.ped, GetEntityHeading(cache.ped) + headingDiff)
            else
                inAction = true
                if proneType == 'onfront' then
                    local playerCoords = GetEntityCoords(cache.ped)
                    TaskPlayAnimAdvanced(cache.ped, 'move_crawlprone2crawlfront', 'left', playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, GetEntityHeading(cache.ped), 2.0, 2.0, -1, 2, 0.1, false, false)
                    ChangeHeadingSmooth(cache.ped, -10.0, 300)
                    Wait(700)
                else
                    PlayAnimOnce(cache.ped, 'get_up@directional_sweep@combat@pistol@left', 'left_to_prone')
                    ChangeHeadingSmooth(cache.ped, 25.0, 400)
                    PlayIdleCrawlAnim(cache.ped)
                    Wait(600)
                end
                inAction = false
            end
        elseif IsControlPressed(0, 35) then -- INPUT_MOVE_RIGHT_ONLY
            if isCrawling then
                local headingDiff = backwards and 1.0 or -1.0
                SetEntityHeading(cache.ped, GetEntityHeading(cache.ped) + headingDiff)
            else
                inAction = true
                if proneType == 'onfront' then
                    local playerCoords = GetEntityCoords(cache.ped)
                    TaskPlayAnimAdvanced(cache.ped, 'move_crawlprone2crawlfront', 'right', playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, GetEntityHeading(cache.ped), 2.0, 2.0, -1, 2, 0.1, false, false)
                    ChangeHeadingSmooth(cache.ped, 10.0, 300)
                    Wait(700)
                else
                    PlayAnimOnce(cache.ped, 'get_up@directional_sweep@combat@pistol@right', 'right_to_prone')
                    ChangeHeadingSmooth(cache.ped, -25.0, 400)
                    PlayIdleCrawlAnim(cache.ped)
                    Wait(600)
                end
                inAction = false
            end
        end

        if not isCrawling then
            if IsControlPressed(0, 22) then -- INPUT_JUMP
                CrawlFlip(cache.ped)
            end
        end

        Wait(1)
    end

    TriggerEvent('crouch_crawl:onCrawl', false)

    PlayExitCrawlAnims(forceEndProne)

    isCrawling = false
    inAction = false
    forceEndProne = false
    proneType = 'onfront'
    SetPedConfigFlag(cache.ped, 48, false) -- CPED_CONFIG_FLAG_BlockWeaponSwitching

    RemoveAnimDict('move_crawl')
    RemoveAnimDict('move_crawlprone2crawlfront')
end

local function CrawlKeyPressed()
    if not LocalPlayer.state.canEmote then return end

    if inAction then
        return
    end

    if IsPauseMenuActive() or IsNuiFocused() then
        return
    end

    if IsProne then
        IsProne = false
        return
    end

    if IsInAnimation then
        EmoteCancel()
    end

    local wasCrouched = false
    if isCrouched then
        isCrouched = false
        wasCrouched = true
    end

    if not CanPlayerCrouchCrawl(cache.ped) or IsEntityInWater(cache.ped) or not IsPedHuman(cache.ped) then
        return
    end
    inAction = true

    if Pointing then
        Pointing = false
    end

    if InHandsup then
        return
    end

    if IsInActionWithErrorMessage({['IsProne'] = true}) then
        return
    end

    IsProne = true
    SetPedConfigFlag(cache.ped, 48, true) -- CPED_CONFIG_FLAG_BlockWeaponSwitching

    if GetPedStealthMovement(cache.ped) ~= 0 then
        SetPedStealthMovement(cache.ped, false, 'DEFAULT_ACTION')
        Wait(100)
    end

    lib.requestAnimDict('move_crawl', 2000)
    lib.requestAnimDict('move_crawlprone2crawlfront', 2000)

    if ShouldPlayerDiveToCrawl(cache.ped) then
        PlayAnimOnce(cache.ped, 'explosions', 'react_blown_forwards', nil, 3.0)
        Wait(1100)
    elseif wasCrouched then
        PlayAnimOnce(cache.ped, 'amb@world_human_sunbathe@male@front@enter', 'enter', nil, nil, -1, 0.3)
        Wait(1500)
    else
        PlayAnimOnce(cache.ped, 'amb@world_human_sunbathe@male@front@enter', 'enter')
        Wait(3000)
    end

    if CanPlayerCrouchCrawl(cache.ped) and not IsEntityInWater(cache.ped) then
        PlayIdleCrawlAnim(cache.ped, nil, 3.0)
    end

    TriggerEvent('crouch_crawl:onCrawl', true)

    inAction = false
    CreateThread(CrawlLoop)
end


-- Commands & KeyMapping --
if Config.CrouchEnabled then
    if Config.CrouchKeybindEnabled then
        RegisterKeyMapping('+crouch', locale('crouch'), 'keyboard', Config.CrouchKeybind)
        RegisterCommand('+crouch', function() CrouchKeyPressed() end, false)
        RegisterCommand('-crouch', function() end, false) -- This needs to be here to prevent warnings in chat
    end
    RegisterCommand('crouch', function()
        if not LocalPlayer.state.canEmote then return end

        if isCrouched then
            isCrouched = false
            return
        end

        AttemptCrouch(cache.ped)
    end, false)
    TriggerEvent('chat:addSuggestion', '/crouch', locale('crouch'))
end

if Config.CrawlEnabled then
    if Config.CrawlKeybindEnabled then
        RegisterKeyMapping('+crawl', locale('crawl'), 'keyboard', Config.CrawlKeybind)
        RegisterCommand('+crawl', function() CrawlKeyPressed() end, false)
        RegisterCommand('-crawl', function() end, false) -- This needs to be here to prevent warnings in chat
    end
    RegisterCommand('crawl', function() CrawlKeyPressed() end, false)
    TriggerEvent('chat:addSuggestion', '/crawl', locale('crawl'))
end


-- Exports --

---Returns if the player is crouched
---@return boolean
local function IsPlayerCrouched()
	return isCrouched
end
exports('IsPlayerCrouched', IsPlayerCrouched)

---Returns if the player is prone (both when laying still and when moving)
---@return boolean
local function IsPlayerProne()
	return IsProne
end
exports('IsPlayerProne', IsPlayerProne)

---Returns if the player is crawling (only when moving forward/backward)
---@return boolean
local function IsPlayerCrawling()
	return isCrawling
end
exports('IsPlayerCrawling', IsPlayerCrawling)

---Returns either 'onfront' or 'onback', this can be used to check if the player is on his back or on his stomach. NOTE: This will still return a string even if the player is not prone. Use IsPlayerProne() to check if the player is prone.
---@return string
local function GetPlayerProneType()
	return proneType
end
exports('GetPlayerProneType', GetPlayerProneType)

-- Useful to call if the player gets handcuffed etc.
exports('StopPlayerProne', stopPlayerProne)
