---@diagnostic disable: duplicate-set-field

--- Get Timezone Offset (Server-Side)
---@param must? string offset must be (Ex: '+07:00')
---@return table { valid = boolean, must = string, db = string, sv = string }
---@usage
--- ```lua
--- local tzOffset = kyg.util.getTimezoneOffset()
--- print(tzOffset.db, tzOffset.sv)
--- ```
function kyg.util.getTimezoneOffset(must)
    local mustOffset = must or GetConvar('kyg:timeZone', '+07:00')
    local dbOffset = MySQL.scalar.await("SELECT IF(NOW() >= UTC_TIMESTAMP, CONCAT('+', SUBSTRING_INDEX(TIMEDIFF(NOW(), UTC_TIMESTAMP), ':', 2)), CONCAT('-', SUBSTRING_INDEX(TIMEDIFF(UTC_TIMESTAMP, NOW()), ':', 2))) AS `tzOffset`;", {})
    dbOffset = dbOffset and dbOffset or '+00:00'
    local now = os.time()
    local offset = os.difftime(now, os.time(os.date("!*t", now)))
    local hours, minutes = math.floor(offset / 3600), math.floor((offset % 3600) / 60)
    local localOffset = string.format("%s%02d:%02d", (hours >= 0 and '+' or '-'), math.abs(hours), math.abs(minutes))
    return { valid = (dbOffset == mustOffset and localOffset == mustOffset), must = mustOffset, db = dbOffset, sv = localOffset }
end exports('getTimezoneOffset', kyg.util.getTimezoneOffset)

--- Play Interact Sound on Player (Server-Side)
--- ```lua
--- kyg.util.playInteractOnOne(1, 'beltalarm', 0.1) -- Server-Side
--- exports.kyg_lib:PlayInteractOnOne(1, 'beltalarm', 0.1) -- Server-Side
--- TriggerEvent('InteractSound_SV:PlayOnOne', 1, 'beltalarm', 0.1) -- Server-Side
--- TriggerServerEvent('InteractSound_SV:PlayOnOne', 1, 'beltalarm', 0.1) -- Client-Side
--- ```
---@param playerId number
---@param soundName string
---@param volume? number
---@return nil
function kyg.util.playInteractOnOne(playerId, soundName, volume)
    TriggerClientEvent('InteractSound_CL:PlayOnOne', playerId, soundName, volume)
end exports('playInteractOnOne', kyg.util.playInteractOnOne)

--- Play Interact Sound on Self (Server-Side)
--- ```lua
--- kyg.util.playInteractOnSelf('beltalarm', 0.1) -- Server-Side
--- exports.kyg_lib:PlayInteractOnSelf('beltalarm', 0.1) -- Server-Side
--- TriggerEvent('InteractSound_SV:PlayOnSelf', 'beltalarm', 0.1) -- Server-Side
--- TriggerServerEvent('InteractSound_SV:PlayOnSelf', 'beltalarm', 0.1) -- Client-Side
--- ```
---@param soundName string
---@param volume? number
---@return nil
function kyg.util.playInteractOnSource(soundName, volume)
    if source then kyg.util.playInteractOnOne(source, soundName, volume) end
end exports('playInteractOnSource', kyg.util.playInteractOnSource)

--- Play Interact Sound on All Players (Server-Side)
--- ```lua
--- kyg.util.playInteractOnAll('beltalarm', 0.1) -- Server-Side
--- exports.kyg_lib:PlayInteractOnAll('beltalarm', 0.1) -- Server-Side
--- TriggerEvent('InteractSound_SV:PlayOnAll', 'beltalarm', 0.1) -- Server-Side
--- TriggerServerEvent('InteractSound_SV:PlayOnAll', 'beltalarm', 0.1) -- Client-Side
--- ```
---@param soundName string
---@param volume? number
---@return nil
function kyg.util.playInteractOnAll(soundName, volume)
    kyg.util.playInteractOnOne(-1, soundName, volume)
end exports('playInteractOnAll', kyg.util.playInteractOnAll)

--- Play Interact Sound on All Players within Distance (Server-Side)
--- ```lua
--- kyg.util.playInteractWithinDistance(300, 'beltalarm', 0.1) -- Server-Side
--- exports.kyg_lib:PlayInteractWithinDistance(300, 'beltalarm', 0.1) -- Server-Side
--- TriggerEvent('InteractSound_SV:PlayWithinDistance', 300, 'beltalarm', 0.1) -- Server-Side
--- TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 300, 'beltalarm', 0.1) -- Client-Side
--- ```
---@param distance number
---@param soundName string
---@param volume? number
---@return nil
function kyg.util.playInteractWithinDistance(distance, soundName, volume)
    if not source then return end
    local distLimit = distance <= 300 and distance or 300
    TriggerClientEvent('InteractSound_CL:PlayWithinDistance', -1, GetEntityCoords(GetPlayerPed(source)), distLimit, soundName, volume)
end exports('playInteractWithinDistance', kyg.util.playInteractWithinDistance)