if not GetResourceState('monitor'):find('start') then return end

AddEventHandler('txAdmin:events:healedPlayer', function(eventData)
    local target = eventData.id or false
    local invResource = GetInvokingResource()
    if not (invResource == 'monitor' or invResource == 'kyg_misc') or type(eventData) ~= 'table' or type(target) ~= 'number' then return end

    if target ~= -1 then
        TriggerClientEvent('ars_ambulancejob:healPlayer', target, { revive = Player(target).state.laststand or Player(target).state.dead or false, heal = true })
    elseif target == -1 then
        local xPlayers = ESX.GetExtendedPlayers()
        for i = 1, #xPlayers do
            if xPlayers[i] then
                xPlayers[i].triggerEvent('ars_ambulancejob:healPlayer', { revive = Player(xPlayers[i].source).state.laststand or Player(xPlayers[i].source).state.dead or false, heal = true })
            end
        end
    end
end)