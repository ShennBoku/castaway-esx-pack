--- Check if player can run some action
---@param exclude? string[] { 'inv', 'dead', 'carry', 'weapon', 'cuffed', 'escort', 'ragdoll' }
---@param include? string[] { 'masked', 'vehicle', 'driving', 'duty' }
---@return boolean
function kyg.canAction(exclude, include)
    local exc, inc = {}, {}
    exclude, include = exclude or {}, include or {}
    for i = 1, #exclude do exc[exclude[i]] = true end
    for i = 1, #include do inc[include[i]] = true end

    if svar.inPauseMenu
    or (not exc.inv and LocalPlayer.state.invBusy)
    or (not exc.dead and (svar.isDead or svar.inLastStand))
    or (not exc.carry and ((LocalPlayer.state.isCarrying or 0) > 0 or (LocalPlayer.state.isCarried or 0) > 0))
    or (not exc.weapon and (IsPedArmed(cache.ped, 1) or IsPedArmed(cache.ped, 2) or IsPedArmed(cache.ped, 4)))
    or (not exc.cuffed and kyg.player.isCuffed())
    or (not exc.escort and ((LocalPlayer.state.isEscorted or 0) > 0 or (LocalPlayer.state.isEscorting or 0) > 0))
    or (not exc.ragdoll and (IsPedRagdoll(cache.ped) or IsPedFalling(cache.ped) or IsPedJumping(cache.ped) or IsPedRunningRagdollTask(cache.ped)))
    or (inc.masked and not kyg.ped.isWearing(cache.ped, 1, 0, 0))
    or (inc.vehicle and IsPedInAnyVehicle(cache.ped, true))
    or (inc.driving and kyg.ped.isDriver())
    or (inc.duty and not (Config.Framework == 'esx' and svar.playerData.job.onDuty or svar.playerData.job.onduty))
    or lib.progressActive() ~= nil or ConfigCL.CantHandleAction()
    then return false end
    return true
end exports('canAction', kyg.canAction)