---@diagnostic disable: duplicate-set-field

--- Check Player is Dead (Server-Side)
---@param plyId number Player ID
---@return boolean
function kyg.player.isDead(plyId)
    return Player(plyId).state.laststand or Player(plyId).state.dead or false
end exports('isDead', kyg.player.isDead)

--- Check Player is Handsup (Server-Side)
---@param plyId number Player ID
---@param plyPed? number # Optional Player Ped
---@return boolean
function kyg.player.isHandsup(plyId, plyPed)
    if plyId then
        return Player(plyId).state.isHandsup or false
    elseif plyPed then
        return Entity(NetworkGetEntityFromNetworkId(plyPed)).state.isHandsup or false
    end
    return false
end

--- Check Player is Cuffed (Server-Side)
---@param plyId number Player ID
---@param plyPed? number # Optional Player Ped
---@return boolean
function kyg.player.isCuffed(plyId, plyPed)
    local pState = plyId and Player(plyId).state.cuffed or (plyPed and Entity(NetworkGetEntityFromNetworkId(plyPed)).state.cuffed or nil)
    if pState then
        if type(pState) == 'string' then return (pState == 'sc' or pState == 'hc') end
        return true
    end
    return false
end

--- Check if player have specific job (Server-Side)
---@param plyId number | table Player ID or xPlayer
---@param job string # Job Name
---@param inc_off_duty? boolean # if player have specific job but off duty
---@return boolean
function kyg.player.isJob(plyId, job, inc_off_duty)
    local plyData = type(plyId) == 'number' and kyogo.getPlyFromID(plyId) or plyId
    if not plyData then return false end

    local isPrefix = job:sub(-1) == '^'
    job = isPrefix and job:sub(1, -2) or job

    local jobDt = Config.Framework == 'esx' and plyData.job or plyData.PlayerData.job
    local plyJob, plyDuty = jobDt.name, (Config.Framework == 'esx' and jobDt.onDuty or jobDt.onduty)

    if inc_off_duty or (not inc_off_duty and plyDuty) then
        return isPrefix and (plyJob:sub(1, #job) == job) or (plyJob == job)
    end return false
end

--- Check if player is job boss or have specific job (Server-Side)
---@param plyId number | table Player ID or xPlayer
---@param jobList table # { 'jobName1', 'jobName2', ... } | { ['jobName1'] = 0, ['jobName2'] = 0, ... }
---@param inc_off_duty? boolean # if player have specific job but off duty
---@return boolean
function kyg.player.isJobs(plyId, jobList, inc_off_duty)
    local plyData = type(plyId) == 'number' and kyogo.getPlyFromID(plyId) or plyId
    if not plyData then return false end

    local isJob = false
    for _, job in pairs(jobList) do
        if type(_) == 'number' then isJob = kyg.player.isJob(plyData, job, inc_off_duty)
        elseif type(_) == 'string' and type(job) == 'number' then isJob = kyg.player.isJobBoss(plyData, _, job, inc_off_duty or false) end
        if isJob then break end
    end
    return isJob
end

--- Check if player is job boss (Server-Side)
---@param plyId number | table Player ID or xPlayer
---@param job string
---@param min_grade number
---@param inc_off_duty? boolean
---@return boolean
function kyg.player.isJobBoss(plyId, job, min_grade, inc_off_duty)
    local plyData = type(plyId) == 'number' and kyogo.getPlyFromID(plyId) or plyId
    if not plyData then return false end

    local valid = kyg.player.isJob(plyData, job, inc_off_duty)
    return valid and ((Config.Framework == 'esx' and plyData.job.grade or plyData.PlayerData.job.grade.level) >= min_grade) or false
end

--- Get Player Money (Server-Side)
---@param plyId number | table Player ID or xPlayer
---@param name string Account Name
---@return integer
function kyg.player.getMoney(plyId, name)
    local plyData = type(plyId) == 'number' and kyogo.getPlyFromID(plyId) or plyId
    return kyogo.getAccountMoney(plyData, name)
end

--- Add Player Money (Server-Side)
---@param plyId number | table Player ID or xPlayer
---@param name string Account Name
---@param amount integer Money Amount
---@param reason string Notes
---@return nil
function kyg.player.addMoney(plyId, name, amount, reason)
    local plyData = type(plyId) == 'number' and kyogo.getPlyFromID(plyId) or plyId
    return kyogo.addAccountMoney(plyData, name, amount, reason)
end

--- Remove Player Money (Server-Side)
---@param plyId number | table Player ID or xPlayer
---@param name string Account Name
---@param amount integer Money Amount
---@param reason string Notes
---@return nil
function kyg.player.removeMoney(plyId, name, amount, reason)
    local plyData = type(plyId) == 'number' and kyogo.getPlyFromID(plyId) or plyId
    return kyogo.removeAccountMoney(plyData, name, amount, reason)
end