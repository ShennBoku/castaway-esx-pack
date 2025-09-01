if not ESX.GetConfig().Multichar then return end

local playerId = PlayerId()
local mp_m_freemode_01, mp_f_freemode_01 = `mp_m_freemode_01`, `mp_f_freemode_01`
local hidingPlayers, canRelog, cam, spawned = false, true, nil, nil
local setupCharacter, characterOptions, characterDeleteConfirmation, selectCharacterMenu
local Characters = {}

CreateThread(function()
    while true do
        if NetworkIsPlayerActive(playerId) then
            DoScreenFadeOut(0)
            Wait(500)
            TriggerEvent("esx_multicharacter:SetupCharacters")
            break
        end

        Wait(500)
    end
end)

---@param model string | number
---@param coords vector3 | table | vector4
---@param heading? number
---@param cb? function
local function spawnPlayer(model, coords, heading, cb)
    exports.kyg_lib:spawnPlayer({
        x = coords.x,
        y = coords.y,
        z = coords.z,
        heading = heading or coords.w or coords.heading,
        model = model
    }, cb and cb())
end

local function startLoop()
    if hidingPlayers then return end

    hidingPlayers = true

    MumbleSetVolumeOverride(playerId, 0.0)

    CreateThread(function()
        local keysToKeepEnabled = { 18, 27, 172, 173, 174, 175, 176, 177, 187, 188, 191, 201, 108, 109 }
        local playerPedId

        while hidingPlayers do
            playerPedId = PlayerPedId()

            SetEntityVisible(playerPedId, false, false)
            SetLocalPlayerVisibleLocally(true)
            SetPlayerInvincible(playerId, true)

            ThefeedHideThisFrame()
            HideHudComponentThisFrame(11)
            HideHudComponentThisFrame(12)
            HideHudComponentThisFrame(21)
            HideHudAndRadarThisFrame()

            DisableAllControlActions(0)

            for i = 1, #keysToKeepEnabled do
                EnableControlAction(0, keysToKeepEnabled[i], true)
            end

            local vehicles = GetGamePool("CVehicle")
            for i = 1, #vehicles do
                SetEntityLocallyInvisible(vehicles[i])
            end

            Wait(0)
        end

        MumbleSetVolumeOverride(playerId, -1.0)
        SetEntityVisible(playerPedId, true, false)
        SetPlayerInvincible(playerId, false)
        FreezeEntityPosition(playerPedId, false)

        Wait(10000)

        canRelog = true
    end)

    CreateThread(function()
        local hiddenPlayers = {}

        while hidingPlayers do
            local players = GetActivePlayers()

            for i = 1, #players do
                local player = players[i]

                if player ~= playerId and not hiddenPlayers[player] then
                    hiddenPlayers[player] = true

                    NetworkConcealPlayer(player, true, true)
                end
            end

            Wait(500)
        end

        for player in pairs(hiddenPlayers) do
            NetworkConcealPlayer(player, false, false)
        end
    end)
end

function setupCharacter(index)
    canRelog = false

    spawnPlayer(Characters[index].model or mp_m_freemode_01, Config.Spawn, Config.Spawn.w)

    if Characters[index] then
        local skin = Characters[index].skin or Config.Default

        if not Characters[index].model then
            if Characters[index].sex == _U("female") then skin.sex = 1 else skin.sex = 0 end
        end

        TriggerEvent("skinchanger:loadSkin", skin)
    end

    DoScreenFadeIn(500)

    while not IsScreenFadedIn() do Wait(0) end

    spawned = index
    local playerPedId = PlayerPedId()

    FreezeEntityPosition(playerPedId, true)
    SetPedAoBlobRendering(playerPedId, true)
    SetEntityAlpha(playerPedId, 255, false)

    SendNUIMessage({
        action = "openui",
        character = Characters[spawned]
    })
end

function characterOptions(characters, slots, selectedCharacter)
    lib.registerContext({
        id = 'esx_multicharacter:characterOptions',
        title = ('Char: %s %s'):format(characters[selectedCharacter.id].firstname, characters[selectedCharacter.id].lastname),
        canClose = false,
        onBack = function()
            lib.hideContext()
            Wait(100)
            selectCharacterMenu(characters, slots)
        end,
        options = {
            {
                title = _U(characters[selectedCharacter.id].disabled and 'char_disabled' or 'char_play'),
                disabled = characters[selectedCharacter.id].disabled,
                onSelect = function()
                    if characters[selectedCharacter.id].disabled then return end
                    SendNUIMessage({ action = 'closeui' })

                    lib.hideContext()

                    TriggerServerEvent('esx_multicharacter:CharacterChosen', selectedCharacter.id, false)
                end,
                icon = characters[selectedCharacter.id].disabled and 'fa-solid fa-xmark' or 'fa-solid fa-play',
                description = _U(characters[selectedCharacter.id].disabled and 'char_disabled_description' or 'char_play_description')
            }, {
                title = _U('char_delete'),
                disabled = not Config.CanDelete,
                onSelect = function(data)
                    characterDeleteConfirmation(characters, slots, selectedCharacter, selectedCharacter.id)
                end,
                icon = 'fa-solid fa-xmark',
                description = _U('char_delete_description')
            },
            {
                title = _U('return'),
                onSelect = function()
                    selectCharacterMenu(characters, slots)
                end,
                icon = 'fa-solid fa-arrow-left',
                description = _U('return_description')
            }
        }
    })
    lib.showContext('esx_multicharacter:characterOptions')
end

function characterDeleteConfirmation(characters, slots, selectedCharacter, value)
    lib.registerContext({
        id = 'esx_multicharacter:characterDeleteConfirmation',
        title = _U('char_delete_confirmation'),
        canClose = false,
        onBack = function()
            lib.hideContext()
            Wait(100)
            characterOptions(characters, slots, selectedCharacter)
        end,
        options = {
            { title = _U('char_delete'), onSelect = function()
                spawned = false
                lib.hideContext()
                TriggerServerEvent('esx_multicharacter:DeleteCharacter', value)
            end, icon = 'fa-solid fa-xmark', description = _U('char_delete_yes_description') },
            { title = _U('return'), onSelect = function()
                characterOptions(characters, slots, selectedCharacter)
            end, icon = 'fa-solid fa-arrow-left', description = _U('char_delete_no_description') }
        }
    })
    lib.showContext('esx_multicharacter:characterDeleteConfirmation')
end

function selectCharacterMenu(characters, slots)
    local firstCharacter = next(characters)
    local oxElements = {}

    local onCharacterSelected = function(data)
        if data.new then
            local slot
            for i = 1, slots do if not characters[i] then
                slot = i
                break
            end end
            lib.hideContext()

            TriggerServerEvent('esx_multicharacter:CharacterChosen', slot, true)
            TriggerEvent('esx_identity:showRegisterIdentity')

            local playerPedId = PlayerPedId()
            SetPedAoBlobRendering(playerPedId, false)
            SetEntityAlpha(playerPedId, 0, false)

            SendNUIMessage({ action = 'closeui' })
        else
            local playerPedId = PlayerPedId()
            SetPedAoBlobRendering(playerPedId, true)
            ResetEntityAlpha(playerPedId)

            characterOptions(characters, slots, data)
            setupCharacter(data.id)
        end
    end

    for _, v in pairs(characters) do
        if not v.model and v.skin then
            if v.skin.model then            v.model = v.skin.model
            elseif v.skin.sex == 1 then     v.model = mp_f_freemode_01
            else                            v.model = mp_m_freemode_01
            end
        end
        if not spawned then setupCharacter(firstCharacter) end

        oxElements[#oxElements + 1] = {
            title = ('%s %s'):format(v.firstname, v.lastname),
            disabled = false,
            readOnly = false,
            onSelect = onCharacterSelected,
            icon = 'fa-regular fa-user',
            args = { id = v.id }
        }
    end

    if #oxElements - 1 < slots then
        oxElements[#oxElements + 1] = {
            title = _U('create_char'),
            onSelect = onCharacterSelected,
            icon = 'fa-solid fa-plus',
            args = { id = (#oxElements + 1), new = true }
        }
    end

    lib.registerContext({
        id = 'esx_multicharacter:selectCharacterMenu',
        title =  _U('select_char'),
        canClose = false,
        options = oxElements
    })
    lib.showContext('esx_multicharacter:selectCharacterMenu')
end

RegisterNetEvent("esx_multicharacter:SetupCharacters")
AddEventHandler("esx_multicharacter:SetupCharacters", function()
    ESX.PlayerLoaded = false
    ESX.PlayerData = {}

    spawned = false
    cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)

    local playerPedId = PlayerPedId()

    spawnPlayer(GetEntityModel(playerPedId), Config.Spawn)

    DoScreenFadeOut(0)

    playerPedId = PlayerPedId()

    local offset = GetOffsetFromEntityInWorldCoords(playerPedId, 0, 1.7, 0.4)

    SetCamActive(cam, true)
    RenderScriptCams(true, false, 1, true, true)
    SetCamCoord(cam, offset.x, offset.y, offset.z)
    PointCamAtCoord(cam, Config.Spawn.x, Config.Spawn.y, Config.Spawn.z + 1.3)

    startLoop()

    ShutdownLoadingScreen()
    ShutdownLoadingScreenNui()

    TriggerEvent("esx:loadingScreenOff")
    TriggerServerEvent("esx_multicharacter:SetupCharacters")
end)

RegisterNetEvent("esx_multicharacter:SetupUI")
AddEventHandler("esx_multicharacter:SetupUI", function(data, slots)
    local character = next(data)
    Characters = data
    slots = slots

    if not character then
        SendNUIMessage({
            action = "closeui"
        })

        spawnPlayer(mp_m_freemode_01, Config.Spawn, Config.Spawn.w, function()
            canRelog = false

            local playerPedId = PlayerPedId()

            SetPedAoBlobRendering(playerPedId, false)
            SetEntityAlpha(playerPedId, 0, false)

            TriggerServerEvent("esx_multicharacter:CharacterChosen", 1, true)
            TriggerEvent("esx_identity:showRegisterIdentity")
        end)
    else
        selectCharacterMenu(Characters, slots)
    end
end)

AddEventHandler("esx:playerLoaded", function(xPlayer, isNew, skin)
    local spawn = xPlayer.coords or Config.Spawn

    if isNew or not skin or #skin == 1 then
        local finished = false
        local model = (type(xPlayer.sex) == "string" and xPlayer.sex:lower() == "f") and mp_f_freemode_01 or mp_m_freemode_01
        skin = Config.Default[xPlayer.sex]
        skin.sex = model == mp_m_freemode_01 and 0 or 1
        local playerPedId = PlayerPedId()

        DoScreenFadeOut(0)

        while not IsScreenFadedOut() do Wait(0) end

        spawnPlayer(model, GetEntityCoords(playerPedId), GetEntityHeading(playerPedId))

        TriggerEvent("skinchanger:loadSkin", skin, function()
            playerPedId = PlayerPedId()

            SetPedAoBlobRendering(playerPedId, true)
            ResetEntityAlpha(playerPedId)

            TriggerEvent("esx_skin:openSaveableMenu", function()
                finished = true
            end, function()
                finished = true
            end)
        end)

        repeat Wait(200) until finished
    end

    SetCamActive(cam, false)
    RenderScriptCams(false, false, 0, true, true)

    cam = nil

    DoScreenFadeOut(0)

    while not IsScreenFadedOut() do Wait(0) end

    spawnPlayer(GetEntityModel(PlayerPedId()), spawn)

    if isNew then
        TriggerEvent("skinchanger:getSkin", function(playerSkin)
            TriggerEvent("skinchanger:loadSkin", playerSkin)
        end)
    else
        TriggerEvent("skinchanger:loadSkin", skin or Characters[spawned].skin)
    end

    TriggerServerEvent("esx:onPlayerSpawn")

    TriggerEvent("esx:onPlayerSpawn")
    TriggerEvent("esx:restoreLoadout")

    Characters, hidingPlayers, canRelog = {}, false, true
end)

AddEventHandler("esx:onPlayerLogout", function()
    DoScreenFadeOut(1000)

    spawned = false

    TriggerEvent("esx_multicharacter:SetupCharacters")
    TriggerEvent("esx_skin:resetFirstSpawn")
end)

if Config.Relog then
    RegisterCommand("relog", function()
        if canRelog then
            canRelog = false

            TriggerServerEvent("esx_multicharacter:relog")
        end
    end, false)
end
