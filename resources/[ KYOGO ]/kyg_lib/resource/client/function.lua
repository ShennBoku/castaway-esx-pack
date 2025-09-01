local isControlPressed = IsControlPressed
local disableControlAction = DisableControlAction
local hideFrameHudComponent = HideHudComponentThisFrame

local pedStealthMov = { get = GetPedStealthMovement, set = SetPedStealthMovement }
local setMultiplierThisFrame = {
    ped = SetPedDensityMultiplierThisFrame,
    veh = SetVehicleDensityMultiplierThisFrame,
    rVeh = SetRandomVehicleDensityMultiplierThisFrame,
    pVeh = SetParkedVehicleDensityMultiplierThisFrame,
    scenario = SetScenarioPedDensityMultiplierThisFrame
}

function HandlePlayerLoaded()
    if svar.playerHandled then return end
    svar.playerHandled = true
    svar.cache.idleSecond = 0

    -- 1ms loop
    CreateThread(function()
        while svar.playerLoaded do
            Wait(1)

            -- Detecting if player pressed WASD
            svar.cache.pressWASD = isControlPressed(0, 32) or isControlPressed(0, 34) or isControlPressed(0, 33) or isControlPressed(0, 35)

            -- Population
            if Config.Population.Use then
                setMultiplierThisFrame.ped(Config.Population.Ped.Enabled and Config.Population.Ped.Density or 0.0)
                setMultiplierThisFrame.veh(Config.Population.Vehicle.Enabled and Config.Population.Vehicle.Density or 0.0)
                setMultiplierThisFrame.rVeh(Config.Population.Vehicle.Enabled and Config.Population.Vehicle.Density or 0.0)
                setMultiplierThisFrame.pVeh(Config.Population.ParkedVehicle.Enabled and Config.Population.ParkedVehicle.Density or 0.0)
                setMultiplierThisFrame.scenario(Config.Population.Ped.Enabled and Config.Population.Ped.DensityInt or 0.0, Config.Population.Ped.Enabled and Config.Population.Ped.DensityExt or 0.0)
            end

            if ConfigCL.Disable.StealthMovement and pedStealthMov.get(cache.ped) then
                pedStealthMov.set(cache.ped, false, 'DEFAULT_ACTION')
            end

            if ConfigCL.Disable.PistolWhipping and cache.weapon then
                disableControlAction(1, 140, true)
                disableControlAction(1, 141, true)
                disableControlAction(1, 142, true)
            end

            if cache.vehicle then
                if ConfigCL.Disable.VehicleMelee then
                    disableControlAction(1, 345, true)
                    disableControlAction(1, 346, true)
                    disableControlAction(1, 347, true)
                end

                if ConfigCL.Disable.VehicleWeapon then
                    hideFrameHudComponent(19)
                    disableControlAction(1, 66, true)
                    disableControlAction(1, 67, true)
                    disableControlAction(1, 68, true)
                end

                if ConfigCL.Disable.VehicleAbility then
                    disableControlAction(1, 106, true) -- Mouse Control
                    disableControlAction(1, 350, true) -- Jump
                    disableControlAction(1, 351, true) -- Rocket Boost
                end

                if ConfigCL.Disable.VehicleRadio then
                    disableControlAction(1, 81, true) -- Next Radio
                    disableControlAction(1, 82, true) -- Previous Radio
                    disableControlAction(1, 83, true) -- Next Radio Track
                    disableControlAction(1, 84, true) -- Previous Radio Track
                    disableControlAction(1, 85, true) -- Radio Wheel
                end
            end
        end

        svar.playerHandled = false
    end)

    -- 1 second loop
    CreateThread(function()
    end)
end

function HandlePlayerUnloaded()
    -- ?
end

function HandleResourceStopped(resName)
    if resName then
        -- Delete Spawned Ped
        if kyg.systemCached.createdPedData[resName] ~= nil and next(kyg.systemCached.createdPedData[resName]) ~= nil then
            for pedId, pedData in pairs(kyg.systemCached.createdPedData[resName]) do
                kyg.util.deletePed(pedId, resName)
            end
        end

        -- Delete Created Blip
        if kyg.systemCached.createdBlipData[resName] ~= nil and next(kyg.systemCached.createdBlipData[resName]) ~= nil then
            for blipName, blipData in pairs(kyg.systemCached.createdBlipData[resName]) do
                kyg.util.deleteBlip(blipName, resName)
            end
        end
    end
end