AddEventHandler('esx:playerDropped', function(playerId, exitReason)
    local plyPed = GetPlayerPed(playerId)
    local plyPos = GetEntityCoords(plyPed)
    local plyIdtf = kyg.player.getIdentifiers(playerId)

    TriggerClientEvent('kyg:exitLog', -1, playerId, plyPos, plyIdtf, exitReason or 'Exiting')
end)