
RegisterNetEvent('kyg_carry:start', function(playerId, carryType)
    if not source then kyg.printLog('Failed to get source on \'kyg_carry:start\'.') return end

    local plyExst, tgtExst = kyg.player.isValid(source), kyg.player.isValid(playerId)
    if plyExst and tgtExst then
        local xPS = Player(source).state
        if (xPS.isCarrying or 0) > 0 then return lib.notify(source, { description = 'You are already carrying someone.', type = 'error' })
        elseif (xPS.isCarried or 0) > 0 then return lib.notify(source, { description = 'You are already being carried.', type = 'error' }) end

        local xTS = Player(playerId).state
        if (xTS.isCarried or 0) > 0 then return lib.notify(source, { description = 'Citizen is already being carried.', type = 'error' })
        elseif (xTS.isCarrying or 0) > 0 then return lib.notify(source, { description = 'Citizen is already carrying someone.', type = 'error' }) end

        local carryingData, carriedData
        local xPP, xTP = kyg.ped.info(GetPlayerPed(source)), kyg.ped.info(GetPlayerPed(playerId))

        if xPP.category == 'adult' then
            if carryType == 'kid1' then
                if xTP.category ~= 'baby' then return lib.notify(source, { description = 'Citizen is not a baby.', type = 'error' }) end
                carryingData, carriedData = {
                    carried = playerId,
                    animation = { dict = 'anim@heists@box_carry@', clip = 'idle', length = 100000, controlFlag = 49, validation = 35 }
                }, {
                    bone = 0,
                    carrying = source,
                    position = vec3(0.015, 0.28, 0.81),
                    rotation = vec3(0.5, 0.5, 0.0),
                    animation = { dict = 'amb@code_human_in_car_idles@generic@ps@base', clip = 'base', length = 100000, controlFlag = 33, validation = 35 }
                }
            elseif carryType == 'kid2' then
                if xTP.category ~= 'baby' then return lib.notify(source, { description = 'Citizen is not a baby.', type = 'error' }) end
                carryingData, carriedData = {
                    carried = playerId,
                    animation = { dict = 'anim@sports@ballgame@handball@', clip = 'ball_idle', length = 100000, controlFlag = 49, validation = 35 }
                }, {
                    bone = 0,
                    carrying = source,
                    position = vec3(-0.15, -0.3, 0.9),
                    rotation = vec3(0.5, 0.5, 0.0),
                    animation = { dict = 'veh@boat@speed@fps@base', clip = 'sit_idle', length = 100000, controlFlag = 33, validation = 35 }
                }
            elseif carryType == 'normal1' then
                carryingData, carriedData = {
                    carried = playerId,
                    animation = { dict = 'missfinale_c2mcs_1', clip = 'fin_c2_mcs_1_camman', length = 100000, controlFlag = 49, validation = 35 }
                }, {
                    bone = 40269,
                    carrying = source,
                    position = vec3(-0.14, 0.15, 0.14),
                    rotation = vec3(0.0, -59.0, -4.5),
                    animation = { dict = 'nm', clip = 'firemans_carry', length = 100000, controlFlag = 33, validation = 35 }
                }
            elseif carryType == 'normal2' then
                carryingData, carriedData = {
                    carried = playerId,
                    animation = { dict = 'anim@heists@box_carry@', clip = 'idle', length = 100000, controlFlag = 49, validation = 35 }
                }, {
                    bone = 28252,
                    carrying = source,
                    position = vec3(0.350, 0.15, -0.15),
                    rotation = vec3(-42.50, -22.50, 22.50),
                    animation = { dict = 'amb@code_human_in_car_idles@generic@ps@base', clip = 'base', length = 100000, controlFlag = 33, validation = 35 }
                }
            elseif carryType == 'pback1' then
                carryingData, carriedData = {
                    carried = playerId,
                    animation = { dict = 'timetable@amanda@ig_3', clip = 'ig_3_base_tracy', length = 100000, controlFlag = 49, validation = 35 }
                }, {
                    bone = 0,
                    carrying = source,
                    position = vec3(-0.01, 0.2, 0.83),
                    rotation = vec3(0.5, 0.5, 0.0),
                    animation = { dict = 'timetable@ron@ig_3_couch', clip = 'base', length = 100000, controlFlag = 33, validation = 35 }
                }
            elseif carryType == 'pback2' then
                carryingData, carriedData = {
                    carried = playerId,
                    animation = { dict = 'mx@piggypack_a', clip = 'mxclip_a', length = 100000, controlFlag = 49, validation = 35 }
                }, {
                    bone = 0,
                    carrying = source,
                    position = vec3(0.0200, -0.4399, 0.4200),
                    rotation = vec3(0.0, 0.0, 0.0),
                    animation = { dict = 'mx@piggypack_b', clip = 'mxanim_b', length = 100000, controlFlag = 33, validation = 35 }
                }
            end
        end

        if carryingData and carriedData then
            Player(source).state.isCarrying = playerId
            TriggerClientEvent('kyg_carry:sync', source, 'carrying', carryingData)
            Player(playerId).state.isCarried = source
            TriggerClientEvent('kyg_carry:sync', playerId, 'carried', carriedData)
        else lib.notify(source, { description = 'Carry type is not valid.', type = 'error' }) end
    elseif plyExst and not tgtExst then
        lib.notify(source, { description = 'Citizen is not ready.', type = 'error' })
    end
end)

RegisterNetEvent('kyg_carry:forceStop', function(target)
    if kyg.player.isValid(target) then TriggerClientEvent('kyg_carry:forceStop', target, true) end
end)

RegisterNetEvent('kyg_carry:playerDropped', function(mySource)
    if type(mySource) ~= 'number' then return end
    local carrying, carried = Player(mySource).state.isCarrying or 0, Player(mySource).state.isCarried or 0
    if carrying > 0 then TriggerClientEvent('kyg_escort:forceStop', carrying, true)
    elseif carried > 0 then TriggerClientEvent('kyg_escort:forceStop', carried, true) end
end)