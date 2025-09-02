lib.addCommand('carry', false, function(source, args, raw)
    TriggerClientEvent('kyg_carry:start', source, { carryType = 'normal1' })
end)

lib.addCommand('carry2', false, function(source, args, raw)
    TriggerClientEvent('kyg_carry:start', source, { carryType = 'normal2' })
end)

lib.addCommand('carry3', false, function(source, args, raw)
    TriggerClientEvent('kyg_carry:start', source, { carryType = 'pback1' })
end)

lib.addCommand('carry4', false, function(source, args, raw)
    TriggerClientEvent('kyg_carry:start', source, { carryType = 'pback2' })
end)

lib.addCommand('carrykid', false, function(source, args, raw)
    TriggerClientEvent('kyg_carry:start', source, { carryType = 'kid1' })
end)

lib.addCommand('carrykid2', false, function(source, args, raw)
    TriggerClientEvent('kyg_carry:start', source, { carryType = 'kid2' })
end)