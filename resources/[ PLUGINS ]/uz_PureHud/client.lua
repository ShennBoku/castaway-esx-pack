local Wait = Wait
local GetPedArmour = GetPedArmour
local GetEntityModel = GetEntityModel
local GetEntityCoords = GetEntityCoords
local GetEntityHealth = GetEntityHealth
local IsEntityInWater = IsEntityInWater
local GetStreetNameAtCoord = GetStreetNameAtCoord
local GetPlayerSprintStaminaRemaining = GetPlayerSprintStaminaRemaining
local GetPlayerUnderwaterTimeRemaining = GetPlayerUnderwaterTimeRemaining
local PlayerLoaded, hunger, thirst, stress, seatbeltOn, SpeedType = false, 0, 0, 0, false, Customize.SpeedometerTypeKMH and 3.6 or 2.23694

local function SendReactMessage(action, data)
    SendNUIMessage({ action = action, data = data })
end

local function FirstSetUp(xPlayer)
    SendReactMessage('setFirstSetUp', {
        ID = GetPlayerServerId(PlayerId()),
        ServerName = Customize.ServerName,
        AlwaysOnMinimap = Customize.AlwaysOnMinimap,
        SpeedType = Customize.SpeedometerTypeKMH and 'km/h' or 'mp/h',
        MoneyType = Customize.MoneyType,
        StreetDisplay = Customize.StreetDisplay,
        UIColor = Customize.UIColor,
        Display = Customize.Display,
        StressDisplay = Customize.Stress,
        setVisible = true
    })

    local bankAccount = 0
    local playerAccounts = ESX.PlayerData.accounts or xPlayer.accounts or {}
    for i = 1, #playerAccounts do
        if playerAccounts[i].name == 'bank' then
            bankAccount = playerAccounts[i].money
            break
        end
    end
    SendReactMessage('setMoney', bankAccount)

    TriggerEvent('esx_status:getAllStatus', function(StatusData)
        for i = 1, #StatusData, 1 do
            if StatusData[i].name == 'hunger' then
                hunger = StatusData[i].percent
            elseif StatusData[i].name == 'thirst' then
                thirst = StatusData[i].percent
            elseif StatusData[i].name == 'stress' then
                stress = StatusData[i].percent
            end
        end

        SendReactMessage('setUpdateNeeds', { Hunger = hunger, Thirst = thirst })
        SendReactMessage('setUpdateStress', stress)
    end)
end

local function LoadRectMinimap()
    local defaultAspectRatio = 1920/1080 -- Don't change this.
    local resolutionX, resolutionY = GetActiveScreenResolution()
    local aspectRatio = resolutionX/resolutionY
    local minimapOffset = aspectRatio > defaultAspectRatio and (((defaultAspectRatio - aspectRatio) / 3.6) - 0.008) or 0

    lib.requestStreamedTextureDict('squaremap')
    SetMinimapClipType(0)
    AddReplaceTexture('platform:/textures/graphics', 'radarmasksm', 'squaremap', 'radarmasksm')
    AddReplaceTexture('platform:/textures/graphics', 'radarmask1g', 'squaremap', 'radarmasksm')
    -- 0.0 = nav symbol and icons left
    -- 0.1638 = nav symbol and icons stretched
    -- 0.216 = nav symbol and icons raised up
    SetMinimapComponentPosition('minimap', 'L', 'B', 0.0 + minimapOffset, -0.047, 0.1638, 0.183)

    -- icons within map
    SetMinimapComponentPosition('minimap_mask', 'L', 'B', 0.0 + minimapOffset, 0.0, 0.128, 0.20)

    -- -0.01 = map pulled left
    -- 0.025 = map raised up
    -- 0.262 = map stretched
    -- 0.315 = map shorten
    SetMinimapComponentPosition('minimap_blur', 'L', 'B', -0.01 + minimapOffset, 0.025, 0.262, 0.300)

    SetBlipAlpha(GetNorthRadarBlip(), 0)
    SetRadarBigmapEnabled(true, false)
    SetMinimapClipType(0)
    Wait(0)
    SetRadarBigmapEnabled(false, false)
end

RegisterNetEvent('esx:playerLoaded', function (xPlayer, skin)
    FirstSetUp(xPlayer)
    LoadRectMinimap()
    PlayerLoaded = true
end)

CreateThread(function() -- Online Players
    if ESX.IsPlayerLoaded() then
        PlayerLoaded = true
        Wait(500)
        FirstSetUp()
        LoadRectMinimap()
    end

    local wait = 2000
    while true do
        if PlayerLoaded then
            local total = kyg.player.total()
            SendReactMessage('setPlayersUpdate', total.citizen)
            wait = Customize.OnlinePlayersRefreshTime or 25000
        else wait = 5000 end
        Wait(wait)
    end
end)

-- ! Health
local LastHealth
CreateThread(function()
    local wait
    while true do
        if PlayerLoaded then
            local Health = math.floor((GetEntityHealth(cache.ped)/2))
            if cache.vehicle then wait = 250 else wait = 650 end
            if Health ~= LastHealth then
                if GetEntityModel(cache.ped) == `mp_f_freemode_01` and Health ~= 0 then Health = (Health+13) end
                SendReactMessage('setHealth', Health)
                LastHealth = Health
            else wait = wait + 1200 end
        else Wait(2000) end
        Wait(wait)
    end
end)

-- ! Armour
local LastArmour
CreateThread(function()
    while true do
        if PlayerLoaded then
            local Armour = GetPedArmour(cache.ped)
            if Armour ~= LastArmour then
                SendReactMessage('setArmour', Armour)
                Wait(2500)
                LastArmour = Armour
            else Wait(4321) end
        else Wait(2000) end
    end
end)

-- ! Stamina
Citizen.CreateThread(function()
    local wait, LastOxygen
    while true do
        local newoxygen = GetPlayerSprintStaminaRemaining(cache.playerId)
        if cache.vehicle then wait = 2100 end
        if LastOxygen ~= newoxygen then
            wait = 125
            if IsEntityInWater(cache.ped) then
                oxygen = GetPlayerUnderwaterTimeRemaining(cache.playerId) * 10
            else
                oxygen = 100 - GetPlayerSprintStaminaRemaining(cache.playerId)
            end
            LastOxygen = newoxygen
            SendReactMessage('setStamina', math.ceil(oxygen))
        else wait = 1850 end
        Citizen.Wait(wait)
    end
end)


-- ? Status
RegisterNetEvent('hud:client:UpdateNeeds', function(newHunger, newThirst) -- Triggered in kyg_fw
    hunger, thirst = newHunger, newThirst
    SendReactMessage('setUpdateNeeds', { Hunger = hunger, Thirst = thirst })
end)

RegisterNetEvent('hud:client:UpdateStress', function(newStress) -- Triggered in kyg_fw
    stress = newStress
    SendReactMessage('setUpdateStress', stress)
end)

RegisterNetEvent('esx_status:set', function (stType, stVal)
    stVal = stVal >= 0 and (stVal <= 1000000 and stVal or 1000000) or 0
    if stType == 'hunger' then
        hunger = (stVal / 1000000) * 100
        SendReactMessage('setUpdateNeedsHunger', hunger)
    elseif stType == 'thirst' then
        thirst = (stVal / 1000000) * 100
        SendReactMessage('setUpdateNeedsThirst', thirst)
    elseif stType == 'stress' then
        stress = (stVal / 1000000) * 100
        SendReactMessage('setUpdateStress', stress)
    end
end)



-- ? Speedometer
local LastSpeed, LastRpm, LastEngine, LastLight, LastSeatbelt
local LastFuel = 0
Citizen.CreateThread(function()
    DisplayRadar(false)
    local wait
    while true do
        if PlayerLoaded then
            if cache.vehicle then
                SendReactMessage('setSpedometer', true)
                wait = 90
                local LightVal, LightLights, LightHighlights  = GetVehicleLightsState(cache.vehicle)
                Light = false
                if LightLights == 1 and LightHighlights == 0 or LightLights == 1 and LightHighlights == 1 then Light = true end
                local Speed, Rpm, Fuel, Engine = GetEntitySpeed(cache.vehicle), GetVehicleCurrentRpm(cache.vehicle), getFuelLevel(cache.vehicle), GetIsVehicleEngineRunning(cache.vehicle)
                local VehGear = GetVehicleCurrentGear(cache.vehicle)
                if (Speed == 0 and VehGear == 0) or (Speed == 0 and VehGear == 1) then VehGear = 'N' elseif Speed > 0 and VehGear == 0 then VehGear = 'R' end
                if LastSeatbelt ~= seatbeltOn or LastSpeed ~= Speed or LastRpm ~= Rpm or LastFuel ~= Fuel or LastEngine ~= Engine or LastLight ~= Light then
                    SendReactMessage('Speed', {
                        Speed = ("%.1d"):format(math.ceil(Speed * SpeedType)),
                        Rpm = Rpm,
                        Gear = VehGear,
                        Fuel = Fuel,
                        EngineDamage = GetVehicleEngineHealth(cache.vehicle) / 10,
                        Engine = Engine,
                        Seatbelt = seatbeltOn,
                        Light = Light,
                    })
                    LastSpeed, LastRpm, LastFuel, LastEngine, LastLight = Speed, Rpm, Fuel, Engine, Light
                    LastSeatbelt = seatbeltOn
                else wait = 175
                end
                DisplayRadar(true)
            else
                SendReactMessage('setSpedometer', false)
                DisplayRadar((Customize.AlwaysOnMinimap) and true or false)
                -- if not Customize.AlwaysOnMinimap then DisplayRadar((not Customize.AlwaysOnMinimap) and false or true) end
                wait = 2750
            end
        else
            Citizen.Wait(2000)
        end
        Citizen.Wait(wait)
    end
end)


local lastFuelUpdate = 0
function getFuelLevel(vehicle)
    local updateTick = GetGameTimer()
    if (updateTick - lastFuelUpdate) > 2000 then
        lastFuelUpdate = updateTick
        LastFuel = math.floor(Customize.GetVehFuel(vehicle))
    end
    return LastFuel
end

if Customize.StreetDisplay then
    local LastStreet1, LastStreet2
    CreateThread(function()
        local wait = 2500
        while true do
            local Coords = GetEntityCoords(cache.ped)
            local Street1, Street2 = GetStreetNameAtCoord(Coords.x, Coords.y, Coords.z)
            if cache.vehicle then wait = 1700 else wait = 4000 end

            local StreetName1 = GetLabelText(GetNameOfZone(Coords.x, Coords.y, Coords.z))
            local StreetName2 = GetStreetNameFromHashKey(Street1)
            if Street1 ~= LastStreet1 or Street2 ~= LastStreet2 then
                SendReactMessage('setStreet', { Street1 = StreetName1, Street2 = StreetName2 })
                LastStreet1, LastStreet2 = StreetName1, StreetName2
            else wait = wait + 2100 end
            Wait(wait)
        end
    end)
end



-- Stress
if Customize.Stress then
    CreateThread(function() -- Speeding
        while true do
            if PlayerLoaded then
                if cache.vehicle then
                    local speed = GetEntitySpeed(cache.vehicle) * SpeedType
                    local stressSpeed = seatbeltOn and Customize.MinimumSpeed or Customize.MinimumSpeedUnbuckled
                    if speed >= stressSpeed then
                        TriggerEvent('esx_status:add', 'stress', math.random(1000, 3000))
                    end
                end
            end
            Wait(10000)
        end
    end)
    
    local function IsWhitelistedWeaponStress(weapon)
        if weapon then for _, v in pairs(Customize.WhitelistedWeaponStress) do
            if weapon == v then
                return true
            end
        end end
        return false
    end
    
    CreateThread(function() -- Shooting
        while true do
            if PlayerLoaded then
                local weapon = GetSelectedPedWeapon(cache.ped)
                if weapon ~= `WEAPON_UNARMED` then
                    if IsPedShooting(cache.ped) and not IsWhitelistedWeaponStress(weapon) then
                        if math.random() < Customize.StressChance then
                            TriggerEvent('esx_status:add', 'stress', math.random(1000, 3000))
                        end
                    end
                else
                    Wait(1000)
                end
            end
            Wait(8)
        end
    end)
    
    -- Stress Screen Effects
    
    function GetBlurIntensity(stresslevel)
        for _, v in pairs(Customize.Intensity) do
            if stresslevel >= v.min and stresslevel <= v.max then
                return v.intensity
            end
        end
        return 1500
    end
    
    function GetEffectInterval(stresslevel)
        for _, v in pairs(Customize.EffectInterval) do
            if stresslevel >= v.min and stresslevel <= v.max then
                return v.timeout
            end
        end
        return 60000
    end
    
    CreateThread(function()
        while true do
            local effectInterval = GetEffectInterval(stress)
            if stress >= 100 then
                local BlurIntensity = GetBlurIntensity(stress)
                local FallRepeat = math.random(2, 4)
                local RagdollTimeout = FallRepeat * 1750
                TriggerScreenblurFadeIn(1000.0)
                Wait(BlurIntensity)
                TriggerScreenblurFadeOut(1000.0)
    
                if not IsPedRagdoll(cache.ped) and IsPedOnFoot(cache.ped) and not IsPedSwimming(cache.ped) then
                    SetPedToRagdollWithFall(cache.ped, RagdollTimeout, RagdollTimeout, 1, GetEntityForwardVector(cache.ped), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
                end
    
                Wait(1000)
                for _ = 1, FallRepeat, 1 do
                    Wait(750)
                    DoScreenFadeOut(200)
                    Wait(1000)
                    DoScreenFadeIn(200)
                    TriggerScreenblurFadeIn(1000.0)
                    Wait(BlurIntensity)
                    TriggerScreenblurFadeOut(1000.0)
                end
            elseif stress >= Customize.MinimumStress then
                local BlurIntensity = GetBlurIntensity(stress)
                TriggerScreenblurFadeIn(1000.0)
                Wait(BlurIntensity)
                TriggerScreenblurFadeOut(1000.0)
            end
            Wait(effectInterval)
        end
    end)

end

-- ? seatbelt
RegisterNetEvent('seatbelt:client:ToggleSeatbelt', function() -- Triggered in smallresources
    seatbeltOn = not seatbeltOn
    TriggerEvent('InteractSound_CL:PlayOnOne', seatbeltOn and 'buckle' or 'unbuckle', 0.25)
end)

exports('SeatbeltState', function(state)
    seatbeltOn = state
    TriggerEvent('InteractSound_CL:PlayOnOne', seatbeltOn and 'buckle' or 'unbuckle', 0.25)
end)

-- ? Money

RegisterNetEvent('esx:setAccountMoney', function(account)
    if account.name == 'bank' then
        SendReactMessage('setBankMoney', account.money)
    end
end)


-- ? Map

-- Minimap update
CreateThread(function()
    while true do
        SetRadarBigmapEnabled(false, false)
        SetRadarZoom(1000)
        Wait(500)
    end
end)

CreateThread(function()
    lib.requestScaleformMovie('minimap')
    SetRadarBigmapEnabled(true, false)
    Wait(1)
    SetRadarBigmapEnabled(false, false)
end)