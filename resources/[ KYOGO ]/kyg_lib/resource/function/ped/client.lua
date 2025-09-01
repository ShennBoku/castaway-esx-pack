--- Get Ped from Player Server ID
---@param plyId number
---@return number
function kyg.ped.getFromSID(plyId)
    return GetPlayerPed(GetPlayerFromServerId(plyId))
end

---@param ped number | nil if nil, will use cache.ped
---@param vehId number | nil if nil, will use cache.vehicle
---@return boolean
function kyg.ped.isDriver(ped, vehId)
    ped = ped or cache.ped
    vehId = vehId or cache.vehicle
    if vehId == nil or not DoesEntityExist(vehId) then return false end
    return GetPedInVehicleSeat(vehId, -1) == ped
end

---@param ped number | nil if nil, will use cache.ped
---@param vehId number | nil if nil, will use cache.vehicle
---@return boolean
function kyg.ped.isInsideVehicle(ped, vehId)
    ped = ped or cache.ped
    vehId = vehId or cache.vehicle
    if vehId == nil or not DoesEntityExist(vehId) then return false end
    return IsPedInVehicle(ped, vehId, false)
end

--- Play Animation on Ped
---@param ped number | nil if nil, will use PlayerPedId()
---@param animDict string
---@param animName string
---@param blendInSpeed? number Defaults to 8.0
---@param blendOutSpeed? number Defaults to -8.0
---@param duration? integer Defaults to -1
---@param animFlags? AnimationFlags
---@param startPhase? number
---@param phaseControlled? boolean
---@param controlFlags? ControlFlags
---@param overrideCloneUpdate? boolean
---@param useOtherValidation? number
---@param removeAnimDictAfter? boolean Defaults to true
function kyg.ped.playAnim(ped, animDict, animName, blendInSpeed, blendOutSpeed, duration, animFlags, startPhase, phaseControlled, controlFlags, overrideCloneUpdate, useOtherValidation, removeAnimDictAfter)
    ped = ped or cache.ped
    removeAnimDictAfter = type(removeAnimDictAfter) == 'boolean' and removeAnimDictAfter or true
    lib.requestAnimDict(animDict)

    local isPlaying = false
    if useOtherValidation then
        isPlaying = type(useOtherValidation) == 'number' and IsEntityPlayingAnim(ped, animDict, animName, useOtherValidation) or GetEntityAnimCurrentTime(ped, animDict, animName) > 0.0
    end
    
    if not isPlaying then
        ---@diagnostic disable-next-line: param-type-mismatch
        TaskPlayAnim(ped, animDict, animName, blendInSpeed or 8.0, blendOutSpeed or -8.0, duration or -1, animFlags or 0, startPhase or 0, phaseControlled or false, controlFlags, overrideCloneUpdate or false)
    end
    if removeAnimDictAfter then RemoveAnimDict(animDict) end
end

--- Check Ped is Wearing Specific Component
---@param ped? number
---@param component number
---@param drawable number
---@param texture number | nil
---@return boolean # true if ped is wearing specific component
function kyg.ped.isWearing(ped, component, drawable, texture)
    ped = ped or cache.ped
    if not ped or not DoesEntityExist(ped) then return false end
    local checkDrawable, checkTexture = kyg.ped.getWearing(ped, component)
    return texture ~= nil and (checkDrawable == drawable and checkTexture == texture) or (checkDrawable == drawable)
end

--- Get Ped Wearing Component
---@param ped? number
---@param component number
---@return number drawable # Drawable ID
---@return number texture # Texture ID
function kyg.ped.getWearing(ped, component)
    ped = ped or cache.ped
    if not ped or not DoesEntityExist(ped) then return -2, 0 end
    return GetPedDrawableVariation(ped, component), GetPedTextureVariation(ped, component)
end

--- Set Ped heading to specific coords
---@param ped number
---@param coords vector3 | vector4
---@param instant? boolean
---@param duration? number
function kyg.ped.setHeadingToCoord(ped, coords, instant, duration)
    ped = ped or cache.ped

    local unfreezed = false
    if IsEntityPositionFrozen(ped) then
        FreezeEntityPosition(ped, false)
        unfreezed = true
    end

    if instant then
        local pedCoords = GetEntityCoords(ped) -- Get the ped's current coordinates
        local dx, dy = coords.x - pedCoords.x, coords.y - pedCoords.y
        SetEntityHeading(ped, (((dx > 0) and math.atan(dy / dx) or ((dx < 0) and ((dy >= 0) and (math.atan(dy / dx) + math.pi) or (math.atan(dy / dx) - math.pi)) or (dy > 0) and (math.pi / 2) or ((dy < 0) and (-math.pi / 2) or 0))) * (180 / math.pi)))
    else
        if not IsPedHeadingTowardsPosition(ped, coords.x, coords.y, coords.z, 10.0) then
            TaskTurnPedToFaceCoord(ped, coords.x, coords.y, coords.z, duration or 1500)
            Wait(1500)
        end
    end

    if unfreezed then FreezeEntityPosition(ped, true) end
end

--- Add Health to Ped
---@param amount number
---@param ped? number
---@return number # Current Health
function kyg.ped.addHealth(amount, ped)
    ped = ped or cache.ped
    local currentHealth = GetEntityHealth(ped)
    if currentHealth == 200 then return currentHealth end
    local newHealth = currentHealth + amount
    if newHealth > 200 then newHealth = 200 end
    SetEntityHealth(ped, newHealth)
    return GetEntityHealth(ped)
end

--- Add Armour to Ped
---@param amount number
---@param ped? number
---@return number # Current Armour
function kyg.ped.addArmour(amount, ped)
    ped = ped or cache.ped
    local currentArmour = GetPedArmour(ped)
    if currentArmour == 100 then return currentArmour end
    local newArmour = currentArmour + amount
    if newArmour > 100 then newArmour = 100 end
    SetPedArmour(ped, newArmour)
    return GetPedArmour(ped)
end