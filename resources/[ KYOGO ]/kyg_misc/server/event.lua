AddEventHandler('esx:playerDropped', function(playerId, exitReason)
    local plyPed = GetPlayerPed(playerId)
    local plyPos = GetEntityCoords(plyPed)
    local plyIdtf = kyg.player.getIdentifiers(playerId)

    -- Cancel Some Actions below
    TriggerEvent('kyg_carry:playerDropped', playerId)
    TriggerEvent('kyg_escort:playerDropped', playerId)

    TriggerClientEvent('kyg:exitLog', -1, playerId, plyPos, plyIdtf, exitReason or 'Exiting')
end)