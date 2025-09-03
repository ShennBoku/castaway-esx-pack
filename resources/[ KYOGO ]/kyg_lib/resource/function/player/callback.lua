if IsClientSide then
    lib.callback.register('kyg:getWaypoint', function() return kyg.player.getWaypoint() end)
end

if IsServerSide then
    -- Player
    lib.callback.register('kyg:getPlayerName', function(source, playerId) return kyg.player.getName(playerId) end)
    lib.callback.register('kyg:getListPlayer', function(source) return kyg.player.getList() end)
    lib.callback.register('kyg:getTotalPlayer', function(source) return kyg.player.total() end)
    lib.callback.register('kyg:getPlayerIdentifier', function(source, playerId, identifierType) return kyg.player.getIdentifiers(playerId, identifierType) end)
end