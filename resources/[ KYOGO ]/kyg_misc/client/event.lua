AddEventHandler('esx:enteringVehicle', function(vehicle, plate, seat, netId)
    local taskCleared = false

    if kyg.player.isHandsup() then
        LocalPlayer.state:set('isHandsup', false)
        ClearPedTasks(cache.ped)
        taskCleared = true
    end
    if exports['rpemotes-reborn']:IsPlayerPointing() then ExecuteCommand('pointing') end
    if exports['rpemotes-reborn']:IsPlayerPointing() then ExecuteCommand('crouch') end
    if exports['rpemotes-reborn']:IsPlayerProne() then exports['rpemotes-reborn']:StopPlayerProne() end

    if taskCleared then
        TaskEnterVehicle(cache.ped, vehicle, -1, seat, 1.0, 1)
    end
end)

RegisterNetEvent('kyg:exitLog', function(id, crds, identifier, reason, name)
    local displaying = true

    local function ExitLog1(x, y, z, text)
        local onScreen, _x, _y = World3dToScreen2d(x, y, z)
        SetTextScale(0.45, 0.45)
        SetTextFont(4)
        SetTextProportional(true)
        SetTextColour(255, 255, 255, 215)
        SetTextDropShadow(0, 0, 0, 0, 255)
        SetTextOutline()
        SetTextEntry('STRING')
        SetTextCentre(true)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end local function ExitLog2(x, y, z, text)
        local onScreen, _x, _y = World3dToScreen2d(x, y, z)
        SetTextScale(0.45, 0.45)
        SetTextFont(4)
        SetTextProportional(true)
        SetTextColour(255, 0, 0, 215)
        SetTextEntry('STRING')
        SetTextCentre(true)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end

    CreateThread(function()
        Wait(20000)
        displaying = false
    end)

    CreateThread(function()
        while displaying do
            Wait(5)
            local pcoords = GetEntityCoords(cache.ped)
            if #(crds - pcoords) < 15.0 then
                ExitLog2(crds.x, crds.y, crds.z+0.15, name .. ' exit from server.')
                if identifier.discord ~= '' then
                    ExitLog1(crds.x, crds.y, crds.z, '[DISCORD] ' .. identifier.discord .. "\nReason: " .. reason)
                else
                    ExitLog1(crds.x, crds.y, crds.z, '[STEAM] ' .. identifier.steam .. "\nReason: " .. reason)
                end
            else
                Wait(2000)
            end
        end
    end)
end)