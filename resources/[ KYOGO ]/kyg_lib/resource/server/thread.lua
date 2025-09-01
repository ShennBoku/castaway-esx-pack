SetMapName(locale('SRVLIST_MAPNAME'))
SetGameType(locale('SRVLIST_GAMETYPE'))

CreateThread(function()
    local uptimeStart = os.time()
    lib.print.debug('Framework setted to: ' .. Config.Framework)

    while true do
        Wait(1000 * 60)

        if ConfigSV.ShowUptime then
            local uptime = os.difftime(os.time(), uptimeStart)
            local hours = math.floor(uptime / 3600)
            local minutes = math.floor((uptime - (hours * 3600)) / 60)
            SetConvarServerInfo('Uptime', hours > 0 and ('%d Hours %02d Minutes'):format(hours, minutes) or ('%d Minutes'):format(minutes))
        end
    end
end)