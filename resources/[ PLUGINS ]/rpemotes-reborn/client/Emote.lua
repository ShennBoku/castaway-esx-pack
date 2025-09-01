-- You probably shouldn't touch these.
local ChosenDict = ''
local ChosenAnimOptions = false
local PlayerGender = 'male'
local PlayerProps = {}
local PlayerParticles = {}
local PreviewPedProps = {}
local PtfxNotif = false
local PtfxPrompt = false
local AnimationThreadStatus = false
local CheckStatus = false
local CanCancel = true
local InExitEmote = false
local ExitAndPlay = false
local EmoteCancelPlaying = false
local currentEmote = {}
local attachedProp
IsInAnimation = false
CurrentAnimationName = nil
CurrentTextureVariation = nil
InHandsup = false

-- Remove emotes if needed

local emoteTypes = {
    Shared = '🤼 ',
    Dances = '',
    AnimalEmotes = '🐶 ',
    Emotes = '',
    PropEmotes = '📦 '
}

for emoteType, prefix in pairs(emoteTypes) do
    for emoteName, emoteData in pairs(RP[emoteType]) do
        if prefix ~= '' then emoteData[3] = prefix..emoteData[3] end
        local shouldRemove = false

        if Config.AdultEmotesDisabled and emoteData.AdultAnimation then
            shouldRemove = true
        elseif emoteData[1] and not ((emoteData[1] == 'Scenario') or (emoteData[1] == 'ScenarioObject') or (emoteData[1] == 'MaleScenario')) and not DoesAnimDictExist(emoteData[1]) then
            shouldRemove = true
        end

        if shouldRemove then
            RP[emoteType][emoteName] = nil
        end
    end
end

if not Config.AnimalEmotesEnabled then
    RP.AnimalEmotes = {}
end

local function RunAnimationThread()
    if AnimationThreadStatus then return end
    AnimationThreadStatus = true
    CreateThread(function()
        local sleep
        while AnimationThreadStatus and (IsInAnimation or PtfxPrompt) do
            sleep = 500

            if IsInAnimation then
                sleep = 0
                if IsPlayerAiming(cache.playerId) then EmoteCancel() end
                if not Config.AllowPunching then
                    DisableControlAction(2, 140, true)
                    DisableControlAction(2, 141, true)
                    DisableControlAction(2, 142, true)
                end
            end

            if PtfxPrompt and ChosenAnimOptions then
                sleep = 0

                if not PtfxNotif then
                    lib.notify({ description = ChosenAnimOptions.PtfxInfo })
                    PtfxNotif = true
                end

                if IsControlPressed(0, 47) then
                    PtfxStart()
                    Wait(ChosenAnimOptions.PtfxWait)
                    if ChosenAnimOptions.PtfxCanHold then
                        while IsControlPressed(0, 47) and IsInAnimation and AnimationThreadStatus do
                            Wait(5)
                        end
                    end
                    PtfxStop()
                end
            end

            Wait(sleep)
        end
    end)
end

local function CheckStatusThread(dict, anim)
    CreateThread(function()
        if CheckStatus then CheckStatus = false Wait(10) end
        CheckStatus = true

        while not IsEntityPlayingAnim(cache.ped, dict, anim, 3) do Wait(5) end
        while CheckStatus and IsInAnimation do
            if not IsEntityPlayingAnim(cache.ped, dict, anim, 3) then
                lib.print.debug('Animation ended')
                DestroyAllProps()
                EmoteCancel()
                break
            end
            Wait(1)
        end
    end)
end

if Config.EnableCancelKeybind then
    lib.addKeybind({
        name = 'emotecancel',
        description = locale('cancel_emote'),
        defaultKey = Config.CancelEmoteKey,
        onPressed = EmoteCancel,
    })
end

-----------------------------------------------------------------------------------------------------
-- Commands / Events --------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------

CreateThread(function()
    kyg.addCommand({ 'e', 'emote' }, { help = locale('play_emote'), params = {
        { name = 'emoteName', help = locale('help_command') },
        { name = 'textureVariation', help = locale('help_variation'), optional = true },
    }}, function(source, args, raw)
        EmoteCommandStart(source, { args.emoteName, args.textureVariation }, raw)
    end)

    if Config.SqlKeybinding then
        kyg.addCommand({ 'emotebind', 'bindemote' }, { help = locale('link_emote_keybind'), params = {
            { name = 'key', help = 'num4, num5, num6, num7. num8, num9. Numpad 4-9!' },
            { name = 'emoteName', help = locale('help_command') },
        }}, function(source, args, raw)
            EmoteBindStart(source, { args.key, args.emoteName }, raw)
        end)

        kyg.addCommand('emotebinds', { help = locale('show_emote_keybind') }, function(source, args, raw)
            EmoteBindsList()
        end)

        kyg.addCommand({ 'emoteunbind', 'unbindemote' }, { help = locale('remove_emote_keybind'), params = {
            { name = 'key', help = 'num4, num5, num6, num7. num8, num9. Numpad 4-9!' },
        }}, function(source, args, raw)
            DeleteEmote(source, { args.key })
        end)
    end

    kyg.addCommand({ 'emotes', 'emoteui', 'emotemenu' }, { help = locale('open_menu_emote') }, function(source, args, raw)
        OpenEmoteMenu()
    end)

    if Config.MenuKeybindEnabled then
        lib.addKeybind({
            name = 'emotemenu',
            description = locale('open_menu_emote'),
            defaultKey = Config.MenuKeybind,
            onPressed = OpenEmoteMenu,
        })
    end

    kyg.addCommand({ 'emotecancel', 'emotescancel' }, { help = locale('cancel_emote') }, function(source, args, raw)
        EmoteCancel()
    end)
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        StopPreviewAnimationOnPed()
        DestroyAllProps()
        ClearPedTasksImmediately(cache.ped)
        DetachEntity(cache.ped, true, false)
        ResetPedMovementClipset(cache.ped, 0.8)
    end
end)

-----------------------------------------------------------------------------------------------------
------ Functions and stuff --------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
local scenarioObjects = {
    GetHashKey('p_amb_coffeecup_01'),
    GetHashKey('p_amb_joint_01'),
    GetHashKey('p_cs_ciggy_01'),
    GetHashKey('p_cs_ciggy_01b_s'),
    GetHashKey('p_cs_clipboard'),
    GetHashKey('prop_curl_bar_01'),
    GetHashKey('p_cs_joint_01'),
    GetHashKey('p_cs_joint_02'),
    GetHashKey('prop_acc_guitar_01'),
    GetHashKey('prop_amb_ciggy_01'),
    GetHashKey('prop_amb_phone'),
    GetHashKey('prop_beggers_sign_01'),
    GetHashKey('prop_beggers_sign_02'),
    GetHashKey('prop_beggers_sign_03'),
    GetHashKey('prop_beggers_sign_04'),
    GetHashKey('prop_bongos_01'),
    GetHashKey('prop_cigar_01'),
    GetHashKey('prop_cigar_02'),
    GetHashKey('prop_cigar_03'),
    GetHashKey('prop_cs_beer_bot_40oz_02'),
    GetHashKey('prop_cs_paper_cup'),
    GetHashKey('prop_cs_trowel'),
    GetHashKey('prop_fib_clipboard'),
    GetHashKey('prop_fish_slice_01'),
    GetHashKey('prop_fishing_rod_01'),
    GetHashKey('prop_fishing_rod_02'),
    GetHashKey('prop_notepad_02'),
    GetHashKey('prop_parking_wand_01'),
    GetHashKey('prop_rag_01'),
    GetHashKey('prop_scn_police_torch'),
    GetHashKey('prop_sh_cigar_01'),
    GetHashKey('prop_sh_joint_01'),
    GetHashKey('prop_tool_broom'),
    GetHashKey('prop_tool_hammer'),
    GetHashKey('prop_tool_jackham'),
    GetHashKey('prop_tennis_rack_01'),
    GetHashKey('prop_weld_torch'),
    GetHashKey('w_me_gclub'),
    GetHashKey('p_amb_clipboard_01')
}

local function cleanScenarioObjects(isClone)
    local ped = isClone and ClonedPed or cache.ped

    local playerCoords = GetEntityCoords(ped)
    for i = 1, #scenarioObjects do
        local deleteScenarioObject = GetClosestObjectOfType(playerCoords.x, playerCoords.y, playerCoords.z, 1.0, scenarioObjects[i], false, true, true)
        if DoesEntityExist(deleteScenarioObject) then
            SetEntityAsMissionEntity(deleteScenarioObject, false, false)
            DeleteObject(deleteScenarioObject)
        end
    end
end
exports('cleanScenarioObjects', cleanScenarioObjects)

function EmoteCancel(force)
    LocalPlayer.state:set('currentEmote', nil, true)
    EmoteCancelPlaying = true

    -- Don't cancel if we are in an exit emote
    if InExitEmote then return end

    if not CanCancel and force ~= true then return end
    if ChosenDict == 'MaleScenario' and IsInAnimation then
        ClearPedTasksImmediately(cache.ped)
        IsInAnimation = false
        lib.print.debug('Forced scenario exit')
    elseif ChosenDict == 'Scenario' and IsInAnimation then
        ClearPedTasksImmediately(cache.ped)
        IsInAnimation = false
        lib.print.debug('Forced scenario exit')
    end

    PtfxNotif = false
    PtfxPrompt = false
    Pointing = false

    if IsInAnimation then
        if LocalPlayer.state.ptfx then PtfxStop() end
        DetachEntity(cache.ped, true, false)
        CancelSharedEmote()

        if ChosenAnimOptions and ChosenAnimOptions.ExitEmote then
            -- If the emote exit type is not specified, it defaults to Emotes
            local options = ChosenAnimOptions
            local ExitEmoteType = options.ExitEmoteType or 'Emotes'

            -- Checks that the exit emote actually exists
            if not RP[ExitEmoteType] or not RP[ExitEmoteType][options.ExitEmote] then
                lib.print.debug('Exit emote was invalid')
                IsInAnimation = false
                ClearPedTasks(cache.ped)
                return
            end
            OnEmotePlay(RP[ExitEmoteType][options.ExitEmote], ExitEmoteType)
            lib.print.debug('Playing exit animation')

            -- Check that the exit emote has a duration, and if so, set InExitEmote variable
            local animationOptions = RP[ExitEmoteType][options.ExitEmote].AnimationOptions
            if animationOptions and animationOptions.EmoteDuration then
                InExitEmote = true
                SetTimeout(animationOptions.EmoteDuration, function()
                    InExitEmote = false
                    DestroyAllProps()
                    ClearPedTasks(cache.ped)
                    EmoteCancelPlaying = false
                end)
                return
            end
        else
            IsInAnimation = false
            ClearPedTasks(cache.ped)
            EmoteCancelPlaying = false
        end
        DestroyAllProps()
    end
    cleanScenarioObjects(false)
    AnimationThreadStatus = false
    CheckStatus = false
end

function PtfxThis(asset)
    lib.requestNamedPtfxAsset(asset)
    UseParticleFxAsset(asset)
end

function PtfxStart()
    LocalPlayer.state:set('ptfx', true, true)
end

function PtfxStop()
    LocalPlayer.state:set('ptfx', false, true)
end

AddStateBagChangeHandler('ptfx', '', function(bagName, key, value, _unused, replicated)
    local plyId = tonumber(bagName:gsub('player:', ''), 10)

    -- We stop here if we don't need to go further
    -- We don't need to start or stop the ptfx twice
    if (PlayerParticles[plyId] and value) or (not PlayerParticles[plyId] and not value) then return end

    -- Only allow ptfx change on players
    local ply = GetPlayerFromServerId(plyId)
    if ply == 0 then return end

    local plyPed = GetPlayerPed(ply)
    if not DoesEntityExist(plyPed) then return end

    local stateBag = Player(plyId).state

    if value then
        -- Start ptfx
        local asset = stateBag.ptfxAsset
        local name = stateBag.ptfxName
        local offset = stateBag.ptfxOffset
        local rot = stateBag.ptfxRot
        local boneIndex = stateBag.ptfxBone and GetPedBoneIndex(plyPed, stateBag.ptfxBone) or
        GetEntityBoneIndexByName(name, 'VFX')
        local scale = stateBag.ptfxScale or 1
        local color = stateBag.ptfxColor
        local propNet = stateBag.ptfxPropNet
        local entityTarget = plyPed

        if propNet then
            local propObj = NetToObj(propNet)
            if DoesEntityExist(propObj) then entityTarget = propObj end
        end
        PtfxThis(asset)
        PlayerParticles[plyId] = StartNetworkedParticleFxLoopedOnEntityBone(name, entityTarget, offset.x, offset.y, offset.z, rot.x, rot.y, rot.z, boneIndex, scale + 0.0, false, false, false)
        if color then
            if color[1] and type(color[1]) == 'table' then
                local randomIndex = math.random(1, #color)
                color = color[randomIndex]
            end
            SetParticleFxLoopedAlpha(PlayerParticles[plyId], color.A)
            SetParticleFxLoopedColour(PlayerParticles[plyId], color.R / 255, color.G / 255, color.B / 255, false)
        end
        lib.print.debug('Started PTFX: ' .. PlayerParticles[plyId])
    else
        lib.print.debug('Stopped PTFX: ' .. PlayerParticles[plyId])
        StopParticleFxLooped(PlayerParticles[plyId], false)
        RemoveNamedPtfxAsset(stateBag.ptfxAsset)
        PlayerParticles[plyId] = nil
    end
end)

function EmoteMenuStart(name, category, textureVariation)
    if category == 'dances' then
        if RP.Dances[name] ~= nil then
            OnEmotePlay(RP.Dances[name], name)
        end
    elseif category == 'animals' then
        if RP.AnimalEmotes[name] ~= nil then
            CheckAnimalAndOnEmotePlay(RP.AnimalEmotes[name], name)
        end
    elseif category == 'props' then
        if RP.PropEmotes[name] ~= nil then
            OnEmotePlay(RP.PropEmotes[name], name, textureVariation)
        end
    elseif category == 'emotes' then
        if RP.Emotes[name] ~= nil then
            OnEmotePlay(RP.Emotes[name], name)
        end
    elseif category == 'expression' then
        if RP.Expressions[name] ~= nil then
            SetPlayerPedExpression(RP.Expressions[name][1], true)
        end
    end
end

function EmoteMenuStartClone(name, category)
    if category == 'dances' then
        if RP.Dances[name] then
            OnEmotePlayClone(RP.Dances[name])
        end
    elseif category == 'props' then
        if RP.PropEmotes[name] then
            OnEmotePlayClone(RP.PropEmotes[name])
        end
    elseif category == 'emotes' then
        if RP.Emotes[name] then
            OnEmotePlayClone(RP.Emotes[name])
        end
    elseif category == 'expression' then
        if RP.Expressions[name] then
            SetFacialIdleAnimOverride(ClonedPed, RP.Expressions[name][1], 0)
        end
    end
end

function EmoteCommandStart(source, args, raw)
    if #args > 0 then
        if kyg.player.isDead() then
            return lib.notify({ description = locale('dead'), type = 'error' })
        elseif (IsPedSwimming(cache.ped) or IsPedSwimmingUnderWater(cache.ped)) and not Config.AllowInWater then
            return lib.notify({ description = locale('swimming'), type = 'error' })
        end

        local name = args[1]:lower()
        if name == 'c' then
            if IsInAnimation then EmoteCancel() end
            return
        end

        local emote = RP.Emotes[name] or RP.Dances[name] or RP.AnimalEmotes[name] or RP.PropEmotes[name] or RP.Expressions[name] or RP.Exits[name]
        if emote then
            if RP.AnimalEmotes[name] then
                if Config.AnimalEmotesEnabled then
                    CheckAnimalAndOnEmotePlay(RP.AnimalEmotes[name], name)
                else
                    lib.notify({ description = locale('animaldisabled'), type = 'error' })
                end
                return
            end

            if RP.PropEmotes[name] and RP.PropEmotes[name].AnimationOptions.PropTextureVariations then
                if #args > 1 then
                    local textureVariation = tonumber(args[2])
                    if (RP.PropEmotes[name].AnimationOptions.PropTextureVariations[textureVariation] ~= nil) then
                        OnEmotePlay(RP.PropEmotes[name], name, textureVariation - 1)
                        return
                    else
                        local str = ''
                        for k, v in ipairs(RP.PropEmotes[name].AnimationOptions.PropTextureVariations) do
                            str = ('%s\n(%s) - %s'):format(str, k, v.Name)
                        end

                        lib.notify({ description = locale('invalidvariation', str), type = 'error' })
                        OnEmotePlay(RP.PropEmotes[name], name, 0)
                        return
                    end
                end
            end

            OnEmotePlay(emote, name)
        else
            lib.notify({ description = locale('notvalidemote', name), type = 'error' })
        end
    end
end

function CheckAnimalAndOnEmotePlay(emoteData, name)
    local isValidPet = false

    if name:sub(1, 4) == 'bdog' then
        for _, model in ipairs(BigDogs) do if IsPedModel(cache.ped, GetHashKey(model)) then
            isValidPet = true
            break
        end end
    elseif name:sub(1, 4) == 'sdog' then
        for _, model in ipairs(SmallDogs) do if IsPedModel(cache.ped, GetHashKey(model)) then
            isValidPet = true
            break
        end end
    end

    if isValidPet then
        OnEmotePlay(emoteData, name)
    else
        lib.notify({ description = locale('notvalidpet'), type = 'error' })
    end
end

---@param isClone boolean | nil
function DestroyAllProps(isClone)
    if isClone then
        for _, v in pairs(PreviewPedProps) do
            DeleteEntity(v)
        end
        PreviewPedProps = {}
    else
        for _, v in pairs(PlayerProps) do
            DeleteEntity(v)
        end
        PlayerProps = {}
    end
    lib.print.debug('Destroyed Props for ' .. (isClone and 'clone' or 'player'))
end

function AddProp(prop1, bone, off1, off2, off3, rot1, rot2, rot3, textureVariation, isClone)
    local target = isClone and ClonedPed or cache.ped
    local x, y, z = table.unpack(GetEntityCoords(target))

    if not IsModelValid(prop1) then
        lib.print.debug(tostring(prop1) .. ' is not a valid model!')
        return false
    end

    prop1 = lib.requestModel(prop1)
    attachedProp = CreateObject(prop1, x, y, z + 0.2, not isClone, true, true)
    if textureVariation ~= nil then
        SetObjectTextureVariation(attachedProp, textureVariation)
    end

    if isClone then
        AttachEntityToEntity(attachedProp, target, GetPedBoneIndex(target, bone), off1, off2, off3, rot1, rot2, rot3, true, true, false, true, 1, true)
        table.insert(PreviewPedProps, attachedProp)
    else
        AttachEntityToEntity(attachedProp, target, GetPedBoneIndex(target, bone), off1, off2, off3, rot1, rot2, rot3, true, true, false, true, 1, true)
        table.insert(PlayerProps, attachedProp)
    end

    SetModelAsNoLongerNeeded(prop1)
    lib.print.debug('Added prop to ' .. (isClone and 'clone' or 'player'))
    return true
end

function CheckGender()
    local pedInfo = kyg.ped.info(cache.ped, 'gender')
    if pedInfo == 'male' or pedInfo == 'female' then
        PlayerGender = pedInfo
    else
        PlayerGender = 'male'
    end

    lib.print.debug('Set gender as = (' .. PlayerGender .. ')')
end

function OnEmotePlay(emoteData, name, textureVariation)
    if not LocalPlayer.state.canEmote then return end

    cleanScenarioObjects(false)

    InVehicle = IsPedInAnyVehicle(cache.ped, true)
    Pointing = false

    if not Config.AllowedInCars and InVehicle then
        return
    end

    if not DoesEntityExist(cache.ped) then
        return false
    end

    if Config.AdultEmotesDisabled and emoteData.AdultAnimation then
        return lib.notify({ description = locale('adultemotedisabled'), type = 'error' })
    end

    if InExitEmote then
        return false
    end

    if Config.CancelPreviousEmote and IsInAnimation and not ExitAndPlay and not EmoteCancelPlaying then
        ExitAndPlay = true
        lib.print.debug('Canceling previous emote and playing next emote')
        PlayExitAndEnterEmote(emoteData, name, textureVariation)
        return
    end


    local animOption = emoteData.AnimationOptions
    if InVehicle then
        if animOption and animOption.NotInVehicle then
            return lib.notify({ description = locale('not_in_a_vehicle'), type = 'error' })
        end
    elseif animOption and animOption.onlyInVehicle then
        return lib.notify({ description = locale('in_a_vehicle'), type = 'error' })
    end

    if ChosenAnimOptions?.ExitEmote and animOption and animOption.ExitEmote then
        if not (animOption and ChosenAnimOptions.ExitEmote == animOption.ExitEmote) and RP.Exits[ChosenAnimOptions.ExitEmote][2] ~= emoteData[2] then
            return
        end
    end

    if IsInActionWithErrorMessage() then
        return false
    end

    ChosenDict = emoteData[1]
    local anim = emoteData[2]
    CurrentAnimationName = name
    LocalPlayer.state:set('currentEmote', name, true)
    CurrentTextureVariation = textureVariation
    ChosenAnimOptions = animOption

    if Config.DisarmPlayer and cache.weapon then
        TriggerEvent('ox_inventory:disarm', true)
    end

    if animOption and animOption.Prop then
        DestroyAllProps()
    end

    if ChosenDict == 'MaleScenario' or ChosenDict == 'Scenario' or ChosenDict == 'ScenarioObject' then
        if InVehicle then return end
        CheckGender()
        ClearPedTasks(cache.ped)
        DestroyAllProps()
        if ChosenDict == 'MaleScenario' then
            if PlayerGender == 'male' then
                TaskStartScenarioInPlace(cache.ped, anim, 0, true)
                lib.print.debug('Playing scenario = (' .. anim .. ')')
            else
                EmoteCancel()
                lib.notify({ description = locale('maleonly'), type = 'error' })
                return
            end
        elseif ChosenDict == 'ScenarioObject' then
            local BehindPlayer = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, -0.5, -0.5)
            TaskStartScenarioAtPosition(cache.ped, anim, BehindPlayer.x, BehindPlayer.y, BehindPlayer.z, GetEntityHeading(cache.ped), 0, true, false)
            lib.print.debug('Playing scenario = (' .. anim .. ')')
        else
            TaskStartScenarioInPlace(cache.ped, anim, 0, true)
            lib.print.debug('Playing scenario = (' .. anim .. ')')
        end

        IsInAnimation = true
        RunAnimationThread()
        return
    end

    -- Small delay at the start
    if animOption and animOption.StartDelay then
        Wait(animOption.StartDelay)
    end

    if not lib.requestAnimDict(ChosenDict, 2000) then
        return lib.notify({ description = locale('notvalidemote', name), type = 'error' })
    end

    local movementType = 0 -- Default movement type

    if InVehicle then
        if animOption and animOption.FullBody then
            movementType = 35
        else
            movementType = 51
        end
    elseif animOption then
        if animOption.EmoteMoving then
            movementType = 51
        elseif animOption.EmoteLoop then
            movementType = 1
        elseif animOption.EmoteStuck then
            movementType = 50
        end
    end

    lib.print.debug("Animation flag = (" .. movementType .. ")")

    if animOption then
        if animOption.PtfxAsset then
            Ptfx1, Ptfx2, Ptfx3, Ptfx4, Ptfx5, Ptfx6, PtfxScale = table.unpack(animOption.PtfxPlacement)
            PtfxNotif = false
            PtfxPrompt = true
            RunAnimationThread()
            TriggerServerEvent('rpemotes:ptfx:sync', animOption.PtfxAsset, animOption.PtfxName, vec3(Ptfx1, Ptfx2, Ptfx3), vec3(Ptfx4, Ptfx5, Ptfx6), animOption.PtfxBone, PtfxScale, animOption.PtfxColor)
        else
            PtfxPrompt = false
        end
    end

    if IsPedUsingAnyScenario(cache.ped) or IsPedActiveInScenario(cache.ped) then
        ClearPedTasksImmediately(cache.ped)
    end

    lib.playAnim(cache.ped, ChosenDict, anim, animOption?.BlendInSpeed or 5.0, animOption?.BlendOutSpeed or 5.0, animOption?.EmoteDuration or -1, movementType, 0, false, 0, false)
    RemoveAnimDict(ChosenDict)

    IsInAnimation = true
    RunAnimationThread()

    if not (animOption and animOption.Prop) then
        CheckStatusThread(ChosenDict, anim)
    end

    local currentEmoteTable = emoteData
    for _, tabledata in pairs(RP) do
        for command, emotedata in pairs(tabledata) do
            if emotedata == emoteData then
                table.insert(currentEmoteTable, command)
                break
            end
        end
    end
    currentEmote = currentEmoteTable

    if animOption and animOption.Prop then
        PropPl1, PropPl2, PropPl3, PropPl4, PropPl5, PropPl6 = table.unpack(animOption.PropPlacement)

        Wait(animOption and animOption.EmoteDuration or 0)

        if not AddProp(animOption.Prop, animOption.PropBone, PropPl1, PropPl2, PropPl3, PropPl4, PropPl5, PropPl6, textureVariation, false) then return end

        if animOption.SecondProp then
            SecondPropPl1, SecondPropPl2, SecondPropPl3, SecondPropPl4, SecondPropPl5, SecondPropPl6 = table.unpack(animOption.SecondPropPlacement)
            if not AddProp(animOption.SecondProp, animOption.SecondPropBone, SecondPropPl1, SecondPropPl2, SecondPropPl3, SecondPropPl4, SecondPropPl5, SecondPropPl6, textureVariation, false) then
                DestroyAllProps()
                return
            end
        end

        -- Ptfx is on the prop, then we need to sync it
        if not animOption then return end
        if animOption.PtfxAsset and not animOption.PtfxNoProp then
            TriggerServerEvent('rpemotes:ptfx:syncProp', ObjToNet(attachedProp))
        end
    end
end

function OnEmotePlayClone(emoteData)
    if not Config.PreviewPed then return end

    cleanScenarioObjects(true)

    if not DoesEntityExist(ClonedPed) then
        return false
    end

    if InExitEmote then
        return false
    end

    if Config.CancelPreviousEmote and not ExitAndPlay and not EmoteCancelPlaying then
        ExitAndPlay = true
        lib.print.debug("Canceling previous emote and playing next emote")
        return
    end

    local animOption = emoteData.AnimationOptions

    local dict, anim = table.unpack(emoteData)

    if animOption and animOption.Prop then
        DestroyAllProps(true)
    end

    if dict == 'MaleScenario' or dict == 'Scenario' or dict == 'ScenarioObject' then
        CheckGender()
        ClearPedTasks(ClonedPed)
        DestroyAllProps(true)
        if dict == 'MaleScenario' then
            if PlayerGender == 'male' then TaskStartScenarioInPlace(ClonedPed, anim, 0, true) end
        elseif dict == 'ScenarioObject' then
            local BehindPlayer = GetOffsetFromEntityInWorldCoords(ClonedPed, 0.0, -0.5, -0.5)
            TaskStartScenarioAtPosition(ClonedPed, anim, BehindPlayer.x, BehindPlayer.y, BehindPlayer.z, GetEntityHeading(ClonedPed), 0, true, false)
        elseif dict == 'Scenario' then
            TaskStartScenarioInPlace(ClonedPed, anim, 0, true)
        end
        return
    end

    if not lib.requestAnimDict(dict, 2000) then
        return lib.notify({ description = locale('notvalidemote', name), type = 'error' })
    end

    local movementType = 0 -- Default movement type

    if animOption then
        if animOption.EmoteMoving then
            movementType = 51
        elseif animOption.EmoteLoop then
            movementType = 1
        elseif animOption.EmoteStuck then
            movementType = 50
        end
    end

    if IsPedUsingAnyScenario(ClonedPed) or IsPedActiveInScenario(ClonedPed) then
        ClearPedTasksImmediately(ClonedPed)
    end

    TaskPlayAnim(ClonedPed, dict, anim, 5.0, 5.0, animOption and animOption.EmoteDuration or -1, movementType, 0, false, false, false)
    RemoveAnimDict(dict)

    if animOption and animOption.Prop then
        local PropPl1, PropPl2, PropPl3, PropPl4, PropPl5, PropPl6 = table.unpack(animOption.PropPlacement)

        Wait(animOption and animOption.EmoteDuration or 0)

        if not AddProp(animOption.Prop, animOption.PropBone, PropPl1, PropPl2, PropPl3, PropPl4, PropPl5, PropPl6, nil, true) then return end

        if animOption.SecondProp then
            local SecondPropPl1, SecondPropPl2, SecondPropPl3, SecondPropPl4, SecondPropPl5, SecondPropPl6 = table.unpack(animOption.SecondPropPlacement)

            if not AddProp(animOption.SecondProp, animOption.SecondPropBone, SecondPropPl1, SecondPropPl2, SecondPropPl3, SecondPropPl4, SecondPropPl5, SecondPropPl6, nil, true) then
                DestroyAllProps(true)
                return
            end
        end
    end
end

function PlayExitAndEnterEmote(emoteName, name, textureVariation)
    local ped = cache.ped
    if not CanCancel then return end
    if ChosenDict == "MaleScenario" and IsInAnimation then
        ClearPedTasksImmediately(ped)
        IsInAnimation = false
        lib.print.debug("Forced scenario exit")
    elseif ChosenDict == "Scenario" and IsInAnimation then
        ClearPedTasksImmediately(ped)
        IsInAnimation = false
        lib.print.debug("Forced scenario exit")
    end

    PtfxNotif = false
    PtfxPrompt = false
    Pointing = false

    if LocalPlayer.state.ptfx then
        PtfxStop()
    end
    DetachEntity(ped, true, false)
    CancelSharedEmote()

    if ChosenAnimOptions?.ExitEmote then
        -- If the emote exit type is not spesifed it defaults to Emotes
        local options = ChosenAnimOptions
        local ExitEmoteType = options.ExitEmoteType or 'Emotes'

        -- Checks that the exit emote actually exists
        if not RP[ExitEmoteType] or not RP[ExitEmoteType][options.ExitEmote] then
            lib.print.debug("Exit emote was invalid")
            ClearPedTasks(ped)
            IsInAnimation = false
            return
        end
        OnEmotePlay(RP[ExitEmoteType][options.ExitEmote], ExitEmoteType)
        lib.print.debug("Playing exit animation")

        -- Check that the exit emote has a duration, and if so, set InExitEmote variable
        local animationOptions = RP[ExitEmoteType][options.ExitEmote].AnimationOptions
        if animationOptions and animationOptions.EmoteDuration then
            InExitEmote = true
            SetTimeout(animationOptions.EmoteDuration, function()
                InExitEmote = false
                DestroyAllProps(true)
                ClearPedTasks(ped)
                OnEmotePlay(emoteName, name, textureVariation)
                ExitAndPlay = false
            end)
            return
        end
    else
        ClearPedTasks(ped)
        IsInAnimation = false
        ExitAndPlay = false
        DestroyAllProps(true)
        OnEmotePlay(emoteName, name, CurrentTextureVariation)
    end
end

exports('EmoteCommandStart', function(emoteName, textureVariation) EmoteCommandStart(nil, { emoteName, textureVariation }, nil) end)
exports('EmoteCancel', EmoteCancel)
exports('CanCancelEmote', function(State) CanCancel = State == true end)
exports('IsPlayerInAnim', function() return LocalPlayer.state.currentEmote end)
exports('getCurrentEmote', function() return currentEmote end)

-- Door stuff
local openingDoor = false
AddEventHandler('CEventOpenDoor', function(unk1)
    if unk1[1] ~= cache.ped then return end
    if ShowPed then return end
    if not IsInAnimation then return end

    if openingDoor then return end
    openingDoor = true
    while IsPedOpeningADoor(cache.ped) do Wait(100) end
    openingDoor = false

    Wait(200)

    local emote = RP.Emotes[CurrentAnimationName] or RP.PropEmotes[CurrentAnimationName] or RP.Dances[CurrentAnimationName] or RP.AnimalEmotes[CurrentAnimationName]
    if not emote then return end

    ClearPedTasks(cache.ped)
    DestroyAllProps()
    OnEmotePlay(emote, CurrentAnimationName, CurrentTextureVariation)
end)

local isBumpingPed, timeout = false, 500
AddEventHandler('CEventPlayerCollisionWithPed', function(unk1)
    if unk1[1] ~= cache.ped then return end
    if not IsInAnimation then return end

    if isBumpingPed then
        timeout = 500
        return
    end
    isBumpingPed = true
    timeout = 500
    -- We wait a bit to avoid collision with the ped resetting the animation again

    while timeout > 0 do
        Wait(100)
        timeout = timeout - 100
    end

    if not IsInAnimation then return end
    local emote = RP.Emotes[CurrentAnimationName] or RP.PropEmotes[CurrentAnimationName] or RP.Dances[CurrentAnimationName] or RP.AnimalEmotes[CurrentAnimationName]
    if not emote then return end

    isBumpingPed = false
    ClearPedTasks(cache.ped)
    Wait(125)
    DestroyAllProps()
    OnEmotePlay(emote, CurrentAnimationName, CurrentTextureVariation)
end)