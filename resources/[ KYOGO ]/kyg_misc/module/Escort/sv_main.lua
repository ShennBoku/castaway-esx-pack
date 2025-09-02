RegisterNetEvent('kyg_escort:start', function(playerId)
    if not source then lib.print.error('Failed to get source on \'kyg_escort:start\'') return end
    if kyg.player.isValid(source) and kyg.player.isValid(playerId) then
        local xPS = Player(source).state
        if (xPS.isEscorting or 0) > 0 then return lib.notify(source, { description = 'You are already escorting someone.', type = 'error' })
        elseif (xPS.isEscorted or 0) > 0 then return lib.notify(source, { description = 'You are already being escorted.', type = 'error' }) end

        local xTS = Player(playerId).state
        if (xTS.isEscorted or 0) > 0 then return lib.notify(source, { description = 'Citizen is already being escorted.', type = 'error' })
        elseif (xTS.isEscorting or 0) > 0 then return lib.notify(source, { description = 'Citizen is already escorting someone.', type = 'error' }) end

        local xPP, xTP = kyg.ped.info(GetPlayerPed(source)), kyg.ped.info(GetPlayerPed(playerId))
        if xPP.category == 'adult' and xTP.category == 'adult' then
            Player(source).state.isEscorting = playerId
            TriggerClientEvent('kyg_escort:sync', source, 'escorting', playerId)
            Player(playerId).state.isEscorted = source
            TriggerClientEvent('kyg_escort:sync', playerId, 'escorted', source)
        else return lib.notify(source, { description = 'You can only escort adults.', type = 'error' }) end
    end
end)

RegisterNetEvent('kyg_escort:forceStop', function(target)
    if not kyg.player.isValid(target) then return end
    TriggerClientEvent('kyg_escort:forceStop', target, true)
end)

RegisterNetEvent('kyg_escort:playerDropped', function(mySource)
    if type(mySource) ~= 'number' then return end
    local escorting, escorted = Player(mySource).state.isEscorting or 0, Player(mySource).state.isEscorted or 0
    if escorting > 0 then TriggerClientEvent('kyg_escort:forceStop', escorting, true)
    elseif escorted > 0 then TriggerClientEvent('kyg_escort:forceStop', escorted, true) end
end)

lib.addCommand('escort', false, function(source, args, raw)
    TriggerClientEvent('kyg_escort:start', source)
end)