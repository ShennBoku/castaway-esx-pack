AddStateBagChangeHandler('dead', ('player:%s'):format(cache.serverId), function(_, _, value)
    if type(value) ~= 'boolean' then return end
    svar.isDead = value
end)

AddStateBagChangeHandler('laststand', ('player:%s'):format(cache.serverId), function(_, _, value)
    if type(value) ~= 'boolean' then return end
    svar.inLastStand = value
end)