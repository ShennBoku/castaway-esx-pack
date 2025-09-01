---@diagnostic disable: duplicate-set-field

--- Get Player ID from Ped
---@param ped? number
---@return number
function kyg.player.getID(ped)
    if ped then return NetworkGetPlayerIndexFromPed(ped)
    else return cache.playerId end
end

--- Get Player Server ID from Ped or Local Player ID
---@param ped? number
---@param playerId? number
---@return number
function kyg.player.getSID(ped, playerId)
    if playerId then return GetPlayerServerId(playerId)
    elseif ped then return GetPlayerServerId(NetworkGetPlayerIndexFromPed(ped))
    else return cache.serverId end
end

--- Check Player is Loaded
---@return boolean
function kyg.player.isLoaded()
    return svar.playerLoaded
end

--- Get Nearby Players
---@param data? table
---@return number | nil # Player Local ID
---@return number | nil # Player Server ID
---@return number | nil # Ped Entity ID
---@return number | nil # Distance
function kyg.player.getNearby(data)
    if data and data.entity then -- if data from eye target
        if not DoesEntityExist(data.entity) or not IsEntityAPed(data.entity) then return nil, nil, nil, nil end
        return kyg.player.getID(data.entity), kyg.player.getSID(data.entity), data.entity, data.distance or #(GetEntityCoords(cache.ped) - GetEntityCoords(data.entity))
    else
        data = data or {}
        local plyId, plyPed, plyDst = lib.getClosestPlayer(GetEntityCoords(cache.ped), data.maxDistance or 3.0, data.includePlayer or false)
        if plyId and plyPed then return plyId, kyg.player.getSID(plyPed), plyPed, plyDst end
        return nil, nil, nil, nil
    end
end

--- Check Player is Dead
---@param ped? number
---@param plyId? number
---@return boolean
function kyg.player.isDead(ped, plyId)
    if ped == nil and plyId == nil then
        return svar.inLastStand or svar.isDead
    end

    if ped then
        return Entity(ped).state.laststand or Entity(ped).state.dead or false
    elseif plyId then
        ped = GetPlayerPed(plyId)
        return Entity(ped).state.laststand or Entity(ped).state.dead or false
    end

    return false
end exports('isDead', kyg.player.isDead)

--- Check Player is Handsup
---@param ped? number
---@param plyId? number
---@return boolean
function kyg.player.isHandsup(ped, plyId)
    if ped == nil and plyId == nil then return LocalPlayer.state.isHandsup or false end
    if ped then return Entity(ped).state.isHandsup or false
    elseif plyId then return Entity(GetPlayerPed(plyId)).state.isHandsup or false end
    return false
end exports('isHandsup', kyg.player.isHandsup)

--- Check Player is Cuffed
---@param ped? number
---@param plyId? number
---@return boolean
function kyg.player.isCuffed(ped, plyId)
    local cuffed = ped and Entity(ped).state.cuffed or (plyId and Entity(GetPlayerPed(plyId)).state.cuffed or LocalPlayer.state.cuffed)
    if cuffed then
        if type(cuffed) == 'string' then return (cuffed == 'sc' or cuffed == 'hc') end
        return true
    end
    return false
end exports('isCuffed', kyg.player.isCuffed)

--- Check if player have specific job
---@param job string # Job Name
---@param inc_off_duty? boolean # if player have specific job but off duty
---@return boolean
function kyg.player.isJob(job, inc_off_duty)
    if not svar.playerData.job then return false end
    local isPrefix = job:sub(-1) == '^'
    job = isPrefix and job:sub(1, -2) or job

    local plyJob = svar.playerData.job.name
    local plyDuty = Config.Framework == 'esx' and svar.playerData.job.onDuty or svar.playerData.job.onduty

    if inc_off_duty or (not inc_off_duty and plyDuty) then
        return isPrefix and (plyJob:sub(1, #job) == job) or (plyJob == job)
    end return false
end

--- Check if player is job boss or have specific job
---@param jobList table # { 'jobName1', 'jobName2', ... } | { ['jobName1'] = 0, ['jobName2'] = 0, ... }
---@param inc_off_duty? boolean # if player have specific job but off duty
---@return boolean
function kyg.player.isJobs(jobList, inc_off_duty)
    local isJob = false
    for _, job in pairs(jobList) do
        if type(_) == 'number' then isJob = kyg.player.isJob(job, inc_off_duty)
        elseif type(_) == 'string' and type(job) == 'number' then isJob = kyg.player.isJobBoss(_, job, inc_off_duty or false) end
        if isJob then break end
    end
    return isJob
end

--- Check if player is job boss
---@param job string
---@param min_grade number
---@param inc_off_duty? boolean
---@return boolean
function kyg.player.isJobBoss(job, min_grade, inc_off_duty)
    local valid = kyg.player.isJob(job, inc_off_duty)
    local jobGrade = Config.Framework == 'esx' and svar.playerData.job.grade or svar.playerData.job.grade.level
    return valid and (min_grade ~= nil and jobGrade >= min_grade) or false
end