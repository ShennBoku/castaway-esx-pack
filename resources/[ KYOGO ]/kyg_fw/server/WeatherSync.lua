local CurrentWeather = cfgWeather.StartWeather
local baseTime = cfgWeather.BaseTime
local timeOffset = cfgWeather.TimeOffset
local freezeTime = cfgWeather.FreezeTime
local blackout = cfgWeather.Blackout
local newWeatherTimer = cfgWeather.NewWeatherTimer

--- Is the source a client or the server
--- @param src string | number - source to check
--- @return int - source
local function getSource(src)
    return src == '' and 0 or src
end

--- Does source have permissions to run admin commands
--- @param src number - Source to check
--- @return boolean - has permission
local function isAllowedToChange(src)
    return src == 0 or IsPlayerAceAllowed(src, 'command')
end

--- Sets time offset based on minutes provided
--- @param minute number - Minutes to offset by
local function shiftToMinute(minute) timeOffset = timeOffset - (((baseTime+timeOffset) % 60) - minute) end

--- Sets time offset based on hour provided
--- @param hour number - Hour to offset by
local function shiftToHour(hour) timeOffset = timeOffset - ((((baseTime+timeOffset)/60) % 24) - hour) * 60 end

--- Triggers event to switch weather to next stage
local function nextWeatherStage()
    if CurrentWeather == 'CLEAR' or CurrentWeather == 'CLOUDS' or CurrentWeather == 'EXTRASUNNY' then
        CurrentWeather = (math.random(1, 5) > 2) and 'CLEARING' or 'OVERCAST' -- 60/40 chance
    elseif CurrentWeather == 'CLEARING' or CurrentWeather == 'OVERCAST' then
        local new = math.random(1, 6)
        if new == 1 then
            CurrentWeather = (CurrentWeather == 'CLEARING') and 'FOGGY' or 'RAIN'
        elseif new == 2 then
            CurrentWeather = 'CLOUDS'
        elseif new == 3 then
            CurrentWeather = 'CLEAR'
        elseif new == 4 then
            CurrentWeather = 'EXTRASUNNY'
        elseif new == 5 then
            CurrentWeather = 'SMOG'
        else
            CurrentWeather = 'FOGGY'
        end
    elseif CurrentWeather == 'THUNDER' or CurrentWeather == 'RAIN' then
        CurrentWeather = 'CLEARING'
    elseif CurrentWeather == 'SMOG' or CurrentWeather == 'FOGGY' then
        CurrentWeather = 'CLEAR'
    else
        CurrentWeather = 'CLEAR'
    end
    TriggerEvent('qb-weathersync:server:RequestStateSync')
end

--- Switch to a specified weather type
--- @param weather string - Weather type from cfgWeather.AvailableWeatherTypes
--- @return boolean - success
local function setWeather(weather)
    local validWeatherType = false
    for _, weatherType in pairs(cfgWeather.AvailableWeatherTypes) do if weatherType == string.upper(weather) then
        validWeatherType = true
    end end
    if not validWeatherType then return false end
    CurrentWeather = string.upper(weather)
    newWeatherTimer = cfgWeather.NewWeatherTimer
    TriggerEvent('qb-weathersync:server:RequestStateSync')
    return true
end

--- Sets sun position based on time to specified
--- @param hour number|string - Hour to set (0-24)
--- @param minute number|string `optional` - Minute to set (0-60)
--- @return boolean - success
local function setTime(hour, minute)
    local argh = tonumber(hour)
    local argm = tonumber(minute) or 0
    if argh == nil or argh > 24 then
        kyg.printLog('Invalid Time!')
        return false
    end
    shiftToHour((argh < 24) and argh or 0)
    shiftToMinute((argm < 60) and argm or 0)
    kyg.printLog(('Changing time to %s:%s.'):format(argh, argm))
    TriggerEvent('qb-weathersync:server:RequestStateSync')
    return true
end

--- Sets or toggles blackout state and returns the state
--- @param state boolean `optional` - enable blackout?
--- @return boolean - blackout state
local function setBlackout(state)
    if state == nil then state = not blackout end
    blackout = state
    TriggerEvent('qb-weathersync:server:RequestStateSync')
    return blackout
end

--- Sets or toggles time freeze state and returns the state
--- @param state boolean `optional` - Enable time freeze?
--- @return boolean - Time freeze state
local function setTimeFreeze(state)
    if state == nil then state = not freezeTime end
    freezeTime = state
    TriggerEvent('qb-weathersync:server:RequestStateSync')
    return freezeTime
end

--- Sets or toggles dynamic weather state and returns the state
--- @param state boolean `optional` - Enable dynamic weather?
--- @return boolean - Dynamic Weather state
local function setDynamicWeather(state)
    if state == nil then state = not cfgWeather.DynamicWeather end
    cfgWeather.DynamicWeather = state
    TriggerEvent('qb-weathersync:server:RequestStateSync')
    return cfgWeather.DynamicWeather
end

--- Retrieves the current time from worldtimeapi.org
--- @return number - Unix time
local function retrieveTimeFromApi(callback)
    Citizen.CreateThread(function()
        PerformHttpRequest('http://worldtimeapi.org/api/ip', function(statusCode, response)
            if statusCode == 200 then
                local data = json.decode(response)
                if data == nil or data.unixtime == nil then
                    callback(nil)
                else
                    callback(data.unixtime)
                end
            else
                callback(nil)
            end
        end, 'GET', nil, nil)
    end)
end

-- EVENTS
RegisterNetEvent('qb-weathersync:server:RequestStateSync', function()
    TriggerClientEvent('qb-weathersync:client:SyncWeather', -1, CurrentWeather, blackout)
    TriggerClientEvent('qb-weathersync:client:SyncTime', -1, baseTime, timeOffset, freezeTime)
end)

RegisterNetEvent('qb-weathersync:server:setWeather', function(weather)
    local src = getSource(source)
    if isAllowedToChange(src) then
        local success = setWeather(weather)
        if src > 0 then
            lib.notify(src, { description = success and 'Weather Updated!' or 'Invalid Weather!' })
        end
    end
end)

RegisterNetEvent('qb-weathersync:server:setTime', function(hour, minute)
    local src = getSource(source)
    if isAllowedToChange(src) then
        local success = setTime(hour, minute)
        if src > 0 then
            lib.notify(src, { description = success and ('Changing time to %s:%s.'):format(hour, minute or '00') or 'Invalid Time!' })
        end
    end
end)

RegisterNetEvent('qb-weathersync:server:toggleBlackout', function(state)
    local src = getSource(source)
    if isAllowedToChange(src) then
        local newstate = setBlackout(state)
        if src > 0 then
            lib.notify(src, { description = newstate and 'Blackout enabled.' or 'Blackout disabled.' })
        end
    end
end)

RegisterNetEvent('qb-weathersync:server:toggleFreezeTime', function(state)
    local src = getSource(source)
    if isAllowedToChange(src) then
        local newstate = setTimeFreeze(state)
        if src > 0 then
            lib.notify(src, { description = newstate and 'Time stopped.' or 'Time started.' })
        end
    end
end)

RegisterNetEvent('qb-weathersync:server:toggleDynamicWeather', function(state)
    local src = getSource(source)
    if isAllowedToChange(src) then
        local newstate = setDynamicWeather(state)
        if src > 0 then
            lib.notify(src, { description = newstate and 'Dynamic weather enabled.' or 'Dynamic weather disabled.' })
        end
    end
end)

-- COMMANDS
lib.addCommand('freezetime', { help = 'Freeze City Time.', restricted = 'group.admin' }, function(source, args, raw)
    if source ~= 0 then if isAllowedToChange(source) then
        local newstate = setTimeFreeze()
        lib.notify(source, { description = newstate and 'Time Freezed' or 'Time Unfreezed', type = 'success' })
    end else
        local newstate = setTimeFreeze()
        kyg.printLog(newstate and 'Time Freezed' or 'Time Unfreezed')
    end
end)

lib.addCommand('freezeweather', { help = 'Freeze City Weather.', restricted = 'group.admin' }, function(source, args, raw)
    if source ~= 0 then if isAllowedToChange(source) then
        local newstate = setDynamicWeather()
        lib.notify(source, { description = newstate and 'Dynamic weather enabled.' or 'Dynamic weather disabled.', type = 'success' })
    end else
        local newstate = setDynamicWeather()
        kyg.printLog(newstate and 'Dynamic weather enabled.' or 'Dynamic weather disabled.')
    end
end)

lib.addCommand('weather', { help = 'Change Weather.', restricted = 'group.admin' }, function(source, args, raw)
    if source == 0 then
        local validWeatherType = false
        if NaturalDisastersActive then
            lib.notify(source, { type = 'error', description = 'Natural disasters are active, you can\'t change the weather.' })
        elseif args[1] == nil then
            lib.notify(source, { type = 'error', description = 'Invalid syntax, correct syntax: weather [weather type]' })
        else
            local success = setWeather(args[1])
            kyg.printLog(success and 'Weather will change to: ' .. string.lower(args[1]) or 'Invalid weather type')
        end
    elseif isAllowedToChange(source) then
        local validWeatherType = false
        if NaturalDisastersActive then
            lib.notify(source, { type = 'error', description = 'Natural disasters are active, you can\'t change the weather.' })
        elseif args[1] == nil then
            lib.notify(source, { type = 'error', description = 'Invalid syntax, correct syntax: weather [weather type]' })
        else
            local success = setWeather(args[1])
            lib.notify(source, { type = 'success', description = success and 'Weather will change to: ' .. string.lower(args[1]) or 'Invalid weather type' })
        end
    end
end)

lib.addCommand('blackout', { help = 'Set City Blackout.', restricted = 'group.admin' }, function(source, args, raw)
    if source ~= 0 then if isAllowedToChange(source) then
        local newstate = setBlackout()
        lib.notify(source, { description = newstate and 'Blackout enabled.' or 'Blackout disabled.', type = 'success' })
    end else
        local newstate = setBlackout()
        kyg.printLog(newstate and 'Blackout enabled.' or 'Blackout disabled.')
    end
end)

local kygChangeTimeInProgress = false
local function kygChangeTime(source, newHour, newMinute)
    if not (tonumber(newHour) ~= nil and tonumber(newMinute) ~= nil) then
        if source == 0 then kyg.printLog('Incorrect hours and minutes!')
        else lib.notify(source, { type = 'error', description = 'Incorrect hours and minutes!' }) end
        return
    elseif source ~= 0 and not isAllowedToChange(source) then
        lib.notify(source, { type = 'error', description = 'You don\'t have permission to use this command.' })
        return
    elseif kygChangeTimeInProgress then
        if source == 0 then kyg.printLog('Time change already in progress!')
        else lib.notify(source, { type = 'error', description = 'Time change already in progress!' }) end
        return
    end

    kygChangeTimeInProgress = true
    local argh, argm = tonumber(newHour), tonumber(newMinute)
    if (argh > 23 or argh < 0) or (argm > 59 or argm < 0) then
        if source == 0 then kyg.printLog('Incorrect hours and minutes!')
        else lib.notify(source, { type = 'error', description = 'Incorrect hours and minutes!' }) end
        kygChangeTimeInProgress = false
        return
    end

    if source == 0 then kyg.printLog('Changing time to ' .. argh .. ':' .. argm)
    else lib.notify(source, { type = 'info', description = 'Changing time to ' .. argh .. ':' .. argm }) end

    local curh, curm = math.floor(((baseTime+timeOffset)/60)%24), math.floor((baseTime+timeOffset)%60)
    if ckyg.IsProduction then
        if source ~= 0 then curh, curm = lib.callback.await('vSync:currentTime', source) end
        curm = curm - (curm % 5)
        repeat
            curm = curm + 5
            if curm >= 60 then
                curm = curm - 60
                curh = curh + 1
            end
            if curh >= 24 then curh = curh - 24 end
            shiftToHour(curh) shiftToMinute(curm)
            TriggerEvent('qb-weathersync:server:RequestStateSync')
            Wait(30)
        until curh == argh and curm == argm
    else curh, curm = argh, argm end
    shiftToHour(curh) shiftToMinute(curm)
    TriggerEvent('qb-weathersync:server:RequestStateSync')

    if source == 0 then kyg.printLog('Time changed to ' .. curh .. ':' .. curm)
    else lib.notify(source, { type = 'success', description = 'Time changed to ' .. curh .. ':' .. curm }) end
    kygChangeTimeInProgress = false
end

lib.addCommand('morning', { restricted = 'group.admin' }, function(source, args, raw) kygChangeTime(source, 9, 0) end)
lib.addCommand('noon', { restricted = 'group.admin' }, function(source, args, raw) kygChangeTime(source, 12, 0) end)
lib.addCommand('evening', { restricted = 'group.admin' }, function(source, args, raw) kygChangeTime(source, 18, 0) end)
lib.addCommand('night', { restricted = 'group.admin' }, function(source, args, raw) kygChangeTime(source, 23, 0) end)
lib.addCommand('time', { restricted = 'group.admin' }, function(source, args, raw)
    if not (tonumber(args[1]) ~= nil and tonumber(args[2]) ~= nil) then
        if source == 0 then kyg.printLog('Invalid syntax, correct syntax: time [hours] [minute]')
        else lib.notify(source, { type = 'error', description = 'Invalid syntax, correct syntax: time [hours] [minute]' }) end
        return
    elseif source ~= 0 and not isAllowedToChange(source) then
        lib.notify(source, { type = 'error', description = 'You don\'t have permission to use this command.' })
        return
    end
    kygChangeTime(source, args[1], args[2])
end)

-- THREAD LOOPS
CreateThread(function()
    local previous = 0
    local realTimeFromApi = nil
    local failedCount = 0

    while true do
        Wait(0)
        local newBaseTime = os.time(os.date('!*t')) / 2 + 360
        if cfgWeather.RealTimeSync then
            newBaseTime = os.time(os.date('!*t'))
            if realTimeFromApi == nil then
                retrieveTimeFromApi(function(unixTime)
                    realTimeFromApi = unixTime -- Set the server time depending on real-time retrieved from API
                end)
            end
            while realTimeFromApi == nil do
                if failedCount > 10 then
                    print('Failed to retrieve real time from API, falling back to local time')
                    break
                end
                failedCount = failedCount + 1
                Wait(100)
            end
            if realTimeFromApi ~= nil then newBaseTime = realTimeFromApi end
        end
        if (newBaseTime % 60) ~= previous then
            previous = newBaseTime % 60
            if freezeTime then timeOffset = timeOffset + baseTime - newBaseTime end
            baseTime = newBaseTime
        end
    end
end)

CreateThread(function()
    while true do
        Wait(2000) --Change to send every minute in game sync
        TriggerClientEvent('qb-weathersync:client:SyncTime', -1, baseTime, timeOffset, freezeTime)
    end
end)

CreateThread(function()
    while true do
        Wait(300000)
        TriggerClientEvent('qb-weathersync:client:SyncWeather', -1, CurrentWeather, blackout)
    end
end)

CreateThread(function()
    while true do
        newWeatherTimer = newWeatherTimer - 1
        Wait((1000 * 60) * cfgWeather.NewWeatherTimer)
        if newWeatherTimer == 0 then
            if cfgWeather.DynamicWeather then
                nextWeatherStage()
            end
            newWeatherTimer = cfgWeather.NewWeatherTimer
        end
    end
end)

-- EXPORTS
exports('nextWeatherStage', nextWeatherStage)
exports('setWeather', setWeather)
exports('setTime', setTime)
exports('setBlackout', setBlackout)
exports('setTimeFreeze', setTimeFreeze)
exports('setDynamicWeather', setDynamicWeather)
exports('getBlackoutState', function() return blackout end)
exports('getTimeFreezeState', function() return freezeTime end)
exports('getWeatherState', function() return CurrentWeather end)
exports('getDynamicWeather', function() return cfgWeather.DynamicWeather end)

exports('getTime', function()
    local hour = math.floor(((baseTime + timeOffset) / 60) % 24)
    local minute = math.floor((baseTime + timeOffset) % 60)
    return hour, minute
end)
