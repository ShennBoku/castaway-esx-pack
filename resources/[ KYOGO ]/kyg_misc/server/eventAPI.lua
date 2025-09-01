-- :: Ped Action Events
RegisterNetEvent('kyg_misc:tacklePlayer', function(plyId)
    local xTarget = ESX.GetPlayerFromId(plyId)
    if xTarget then
        TriggerClientEvent('kyg_misc:gotTackled', plyId)
    end
end)
-- ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;


-- :: Vehicle Action Events
-- ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;