--- Get unix time
---@return number
function kyg.util.getUnix()
    return IsServerSide and os.time() or lib.callback.await('kyg:getUnixTime', false)
end

--- Get human readable date from unix time
---@param unix number # Unix Time
---@param format? string # Date Format
---@return string
function kyg.util.unixToDate(unix, format)
    format = format or '%Y-%m-%d %H:%M:%S'
    return IsServerSide and tostring(os.date(format, unix)) or lib.callback.await('kyg:unixToDate', false, unix, format)
end

--- Get date formatted in human readable format
---@param date? string | number # Date or Unix
---@param short? boolean # Short Month
---@param isDOB? boolean # Is Date of Birth
---@param lang? string # Language <locales>
---@return string | nil
function kyg.util.formatDate(date, short, isDOB, lang)
    local reDate = ''
    if date then
        if type(tonumber(date)) == 'number' then
            ---@diagnostic disable-next-line: param-type-mismatch
            reDate = kyg.util.unixToDate(tonumber(date), short and '%Y-%m-%d' or '%Y-%m-%d %H:%M:%S')
        else
            reDate = tostring(date)
        end
    else
        reDate = kyg.util.unixToDate(kyg.util.getUnix(), short and '%Y-%m-%d' or '%Y-%m-%d %H:%M:%S')
    end

    local d, m, y, h, i, s = 1, 1, 1970, 0, 0, -1
    if isDOB then
        if Config.Framework == 'esx' then
            d, m, y = reDate:match('(%d+)/(%d+)/(%d+)')
        elseif Config.Framework == 'qb' or Config.Framework == 'qbx' then
            d, m, y = reDate:match('(%d+)/(%d+)/(%d+)')
            -- y, m, d = reDate:match('(%d+)-(%d+)-(%d+)')
        end
    elseif string.len(reDate) == 10 then
        y, m, d = reDate:match('(%d+)-(%d+)-(%d+)')
    else
        y, m, d, h, i, s = reDate:match('(%d+)-(%d+)-(%d+) (%d+):(%d+):(%d+)')
    end

    m, d = tonumber(m) < 10 and ('0%s'):format(tonumber(m)) or m, tonumber(d) < 10 and ('0%s'):format(tonumber(d)) or d
    local mon = {['01'] = 'jan', ['02'] = 'feb', ['03'] = 'mar', ['04'] = 'apr', ['05'] = 'may', ['06'] = 'jun', ['07'] = 'jul', ['08'] = 'aug', ['09'] = 'sep', ['10'] = 'oct', ['11'] = 'nov', ['12'] = 'dec'}
    local month = locale(('month_%s%s'):format(mon[tostring(m)], short and '' or '_full'))

    local primaryLang = GetConvar('ox:locale', 'en')
    lang = lang or primaryLang

    if lang == 'id' then
        if lang ~= primaryLang then
            local data = LoadResourceFile(cache.resource, ('locales/%s.json'):format(lang))
            if not data then goto kyg_util_formatDate end
            data = json.decode(data) or {}
            month = data[('month_%s%s'):format(mon[m], short and '' or '_full')] or '???'
        end
        return (h == 0 and i == 0) and ('%s %s %s'):format(d, m:gsub('%S+', month), y) or ('%s %s %s (%s:%s)'):format(d, m:gsub('%S+', month), y, h, i)
    end

    ::kyg_util_formatDate::
    return (h == 0 and i == 0) and ('%s %s, %s'):format(m:gsub('%S+', month), d, y) or ('%s %s, %s (%s:%s)'):format(m:gsub('%S+', month), d, y, h, i)
end

--- Get is resource started
---@param resourceName string # Resource Name
---@param cb function | nil # Run script if resource started
---@return boolean
function kyg.util.isResourceStarted(resourceName, cb)
    if GetResourceState(resourceName) == 'started' then
        if type(cb) == 'function' then cb() end
        return true
    end
    return false
end

--- Get is resource stopped
---@param resourceName string # Resource Name
---@param cb function | nil # Run script if resource stopped
---@return boolean
function kyg.util.isResourceStopped(resourceName, cb)
    if GetResourceState(resourceName) == 'stopped' then
        if type(cb) == 'function' then cb() end
        return true
    end
    return false
end

--- Get is resource is missing
---@param resourceName string # Resource Name
---@param cb function | nil # Run script if resource is missing
---@return boolean
function kyg.util.isResourceMissing(resourceName, cb)
    if GetResourceState(resourceName) == 'missing' then
        if type(cb) == 'function' then cb() end
        return true
    end
    return false
end

---@class kyg.util.loop
kyg.util.loop = {}
local loops = {}

--- Create new loop
---@param loopId string
---@param loopFunction function
---@param loopTick? number
---@param replace? boolean
---@return nil
function kyg.util.loop.create(loopId, loopFunction, loopTick, replace)
    if replace and loops[loopId] then
        loops[loopId] = nil
        lib.print.debug('\'' .. loopId .. '\' loop already exists and was successfully reset to be replaced with a new one.')
    elseif loops[loopId] then lib.print.debug('\'' .. loopId .. '\' loop already exists.') end

    loops[loopId] = { status = false, func = loopFunction, tick = loopTick, meta = {} }
    lib.print.debug('successfully created the \'' .. loopId .. '\' loop.')
end

--- Create new loop if doesn't exists
---@param loopId string
---@param loopFunction function
---@param loopTick? number
---@return nil
function kyg.util.loop.createIfNotExist(loopId, loopFunction, loopTick)
    if loops[loopId] then return lib.print.debug('failed to create the \'' .. loopId .. '\' loop because it had already been created before.') end
    kyg.util.loop.create(loopId, loopFunction, loopTick)
end

--- Create new loops and replace existing loops
---@param loopId string
---@param loopFunction function
---@param loopTick? number
---@return nil
function kyg.util.loop.createReplace(loopId, loopFunction, loopTick)
    kyg.util.loop.create(loopId, loopFunction, loopTick, true)
end

--- Stop the current loop
---@param loopId string
---@return boolean
function kyg.util.loop.remove(loopId)
    if not loops[loopId] then lib.print.debug('failed to delete because the \'' .. loopId .. '\' loop did not exist.') return false end
    if loops[loopId].status then kyg.util.loop.stop(loopId) end
    lib.print.debug('successfully removed the \'' .. loopId .. '\' loop.')
    loops[loopId] = nil
    return true
end

--- Get the looping data
---@param loopId string
---@return table?
function kyg.util.loop.get(loopId)
    if not loops[loopId] then return lib.print.debug('loop \'' .. loopId .. '\' was not found.') end
    return loops[loopId]
end

--- Get all the looping data.
---@return table
function kyg.util.loop.getAll()
    return loops
end

--- Change the registered loop data
---@param loopId string
---@param dataKey string
---@param dataValue boolean|string|number|function
---@return nil
function kyg.util.loop.edit(loopId, dataKey, dataValue)
    local kygLoop = kyg.util.loop.get(loopId)
    if not kygLoop then return end
    if type(kygLoop[dataKey]) == 'nil' then return lib.print.debug('the \'' .. dataKey .. '\' key in the \'' .. loopId .. '\' loop is missing.') end

    local isStarted = kygLoop.status
    if isStarted then kyg.util.loop.stop(loopId) end
    loops[loopId][dataKey] = dataValue
    lib.print.debug('the key \'' .. dataKey .. '\' in the loop \'' .. loopId .. '\' is successfully replaced with \'' .. tostring(dataValue) .. '\'.')
    if isStarted then kyg.util.loop.start(loopId) end
end

--- Run the registered loop
---@param loopId string
---@param loopMeta? any
---@param loopFirst? boolean
---@return nil
function kyg.util.loop.start(loopId, loopMeta, loopFirst)
    local kygLoop = kyg.util.loop.get(loopId)
    if not kygLoop then return end
    if kygLoop.status then return lib.print.debug('the \'' .. loopId .. '\' loop has already run before.') end

    lib.print.debug('successfully executed the \'' .. loopId .. '\' loop.')
    loops[loopId].status = true
    if loopMeta then loops[loopId].meta = loopMeta end
    CreateThread(function()
        if loopFirst then
            while loops[loopId] and loops[loopId].status do
                Wait(loops[loopId].tick or 1)
                loops[loopId].func(loops[loopId].meta and loops[loopId].meta or nil)
            end
        else
            while loops[loopId] and loops[loopId].status do
                loops[loopId].func(loops[loopId].meta and loops[loopId].meta or nil)
                Wait(loops[loopId].tick or 1)
            end
        end
        if loops[loopId] and type(loops[loopId].onStopped) == 'function' then loops[loopId].onStopped() end
    end)
end

--- Stop the registered loop
---@param loopId string
---@param removeMeta? boolean
---@return nil
function kyg.util.loop.stop(loopId, removeMeta)
    if not kyg.util.loop.get(loopId) then return end
    lib.print.debug(loops[loopId].status and 'successfully stopped the \'' .. loopId .. '\' loop.' or 'the \'' .. loopId .. '\' loop has already stopped before.')
    loops[loopId].status = false
    if removeMeta then loops[loopId].meta = {} end
end

--- Check if the loop is running
---@param loopId string
---@return boolean
function kyg.util.loop.checkState(loopId)
    local kygLoop = kyg.util.loop.get(loopId)
    return kygLoop and kygLoop.status or false
end

--- Auto switch start/stop loop without having to validate the loop is running or not
---@param loopId string
---@param cbFunc? function
---@return nil
function kyg.util.loop.toggle(loopId, cbFunc)
    if not kyg.util.loop.get(loopId) then return end
    if loops[loopId].status then kyg.util.loop.stop(loopId)
    else kyg.util.loop.start(loopId) end
    if type(cbFunc) == 'function' then cbFunc(loops[loopId].status) end
end

--- Set the meta in the loop
---@param loopId string
---@param metaKey string
---@param metaVal any
---@return any
function kyg.util.loop.setMeta(loopId, metaKey, metaVal)
    local kygLoop = kyg.util.loop.get(loopId)
    if not kygLoop then return end

    if not kygLoop.meta then loops[loopId].meta = {} end
    loops[loopId].meta[metaKey] = metaVal
    return loops[loopId].meta[metaKey]
end

--- Get the meta in the loop
---@param loopId string
---@param metaKey string
---@return nil | any
function kyg.util.loop.getMeta(loopId, metaKey)
    local kygLoop = kyg.util.loop.get(loopId)
    if not kygLoop then return end
    if not kygLoop.meta then return lib.print.debug('\'' .. loopId .. '\' loop has no meta.') end
    if not kygLoop.meta[metaKey] then return lib.print.debug('the \'' .. loopId .. '\' loop has no meta with the key \'' .. metaKey .. '\'.') end
    return kygLoop.meta[metaKey]
end

--- Get all the meta in the loop
---@param loopId string
---@return nil | table
function kyg.util.loop.getAllMeta(loopId)
    local kygLoop = kyg.util.loop.get(loopId)
    if not kygLoop then return end
    if not kygLoop.meta then return lib.print.debug('\'' .. loopId .. '\' loop has no meta.') end
    return kygLoop.meta
end

--- Create a function that will happen if the loop stops
---@param loopId string
---@param loopFunction function
function kyg.util.loop.onStopped(loopId, loopFunction)
    if not kyg.util.loop.get(loopId) then return end
    if type(loopFunction) ~= 'function' then return end
    lib.print.debug('successfully creates the function when the loop stops at the \'' .. loopId .. '\' loop.')
    loops[loopId].onStopped = loopFunction
end

--- Run a loop when a certain event occurs.
---@param loopId string
---@param eventName string
---@param loopMeta? any
---@param loopFirst? boolean
function kyg.util.loop.startFrom(loopId, eventName, loopMeta, loopFirst)
    if not kyg.util.loop.get(loopId) then return end
    if type(eventName) ~= 'string' then return end
    AddEventHandler(eventName, function()
        lib.print.debug('\'' .. eventName .. '\' event is detected to start the \'' .. loopId .. '\' loop.')
        kyg.util.loop.start(loopId, loopMeta, loopFirst)
    end)
end

--- Stop the loop when a certain event occurs.
---@param loopId string
---@param eventName string
---@param removeMeta? boolean
function kyg.util.loop.stopFrom(loopId, eventName, removeMeta)
    if not kyg.util.loop.get(loopId) then return end
    if type(eventName) ~= 'string' then return end
    AddEventHandler(eventName, function()
        lib.print.debug('\'' .. eventName .. '\' event is detected to stop the \'' .. loopId .. '\' loop.')
        kyg.util.loop.stop(loopId, removeMeta)
    end)
end