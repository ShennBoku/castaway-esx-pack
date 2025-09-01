local svar = {
    cache = {},

    isDead = false,
    inLastStand = false,
    inPauseMenu = false,

    playerId = PlayerId(),
    playerData = {},
    playerLoaded = false,
    playerHandled = false,
}

_ENV.svar = svar

kyg.systemCached = {}
kyg.systemCached.createdPedData = {}
kyg.systemCached.createdBlipData = {}