---@diagnostic disable: duplicate-set-field

--- Play Interact Sound (Client-Side)
---@param sound string
---@param volume? number
function kyg.util.playInteractOnOne(sound, volume)
    if svar.playerLoaded then SendNUIMessage({ action = 'interact-sound', volume = volume or 0.5, interact  = sound }) end
end exports('playInteractOnOne', kyg.util.playInteractOnOne)

--- Play Interact Sound within Distance (Client-Side)
---@param coord vector3
---@param distance number
---@param sound string
---@param volume? number
function kyg.util.playInteractWithinDistance(coord, distance, sound, volume)
    if svar.playerLoaded then
        local myPos = GetEntityCoords(cache.ped)
        if #(myPos - coord) <= distance then SendNUIMessage({ action = 'interact-sound', volume = volume or 0.5, interact  = sound }) end
    end
end exports('playInteractWithinDistance', kyg.util.playInteractWithinDistance)

--- Close All User Interface
---@param include? string[] { 'hud', 'phone' }
---@param reason? string
function kyg.util.closeAllInterface(include, reason)
    include = include or {}
    if not reason then
        if LocalPlayer.state.laststand or LocalPlayer.state.dead then
            reason = 'PLAYER_DEAD'
        end
    end

    lib.closeAlertDialog()
    lib.closeInputDialog()
    if lib.getOpenMenu() ~= nil then lib.hideMenu(false) end
    if lib.progressActive() then lib.cancelProgress() end
    if lib.skillCheckActive() then lib.cancelSkillCheck() end
    if lib.getOpenContextMenu() ~= nil then lib.hideContext(false) end
    ConfigCL.CloseInterface.inventory()

    for i = 1, #include do
        if include[i] == 'hud' then
            ConfigCL.CloseInterface.hud()
        elseif include[i] == 'phone' then
            ConfigCL.CloseInterface.phone()
        end
    end
    ConfigCL.CloseInterface.custom()

    TriggerEvent('kyg_lib:closingAllInterface', reason or 'UNKNOWN_REASON')
end

--- Create Ped with Radius
---@param id string
---@param model string
---@param coord vector3 | vector4
---@param option? table
function kyg.util.radiusPed(id, model, coord, option)
    local resource = GetInvokingResource() or cache.resource
    kyg.systemCached.createdPedZoneData[resource] = kyg.systemCached.createdPedZoneData[resource] or {}

    if kyg.systemCached.createdPedZoneData[resource][id] ~= nil then
        lib.print.verbose('Can\'t create ped because ped id ' .. id .. ' on resource ' .. resource .. ' already exist.')
        return false
    elseif not Config.Peds.Hash[model] then
        lib.print.verbose('Can\'t create ped with model ' .. model .. ' is not registered.')
        return false
    end

    if type(option) ~= 'table' then option = {} end
    kyg.systemCached.createdPedZoneData[resource][id] = lib.zones.sphere({
        coords = vec3(coord.x, coord.y, coord.z),
        radius = option.radius or 25.0,
        onEnter = function(self)
            local hashModel = lib.requestModel(self.pedData.model)
            self.pedData.id = CreatePed(4, hashModel, self.pedData.coords.x, self.pedData.coords.y, self.pedData.coords.z-1.0, self.pedData.coords.w or 0.0, false, true)
            SetModelAsNoLongerNeeded(hashModel)

            if not self.pedData.id then return end
            SetEntityHeading(self.pedData.id, self.pedData.coords.w or 0.0)
            FreezeEntityPosition(self.pedData.id, self.pedData.option.freeze or true)
            SetEntityInvincible(self.pedData.id, self.pedData.option.invincible or true)
            SetBlockingOfNonTemporaryEvents(self.pedData.id, self.pedData.option.block_non_temporary_events or true)

            if self.pedData.option.target then
                exports.ox_target:addLocalEntity(self.pedData.id, self.pedData.option.target)
            end
        end,
        onExit = function(self)
            if self.pedData.id and DoesEntityExist(self.pedData.id) then
                exports.ox_target:removeLocalEntity(self.pedData.id)
                DeleteEntity(self.pedData.id)
            end
            self.pedData.id = nil
        end,
        debug = not Config.IsProduction,
        pedData = { id = nil, model = model, coords = coord, option = option }
    })
end

--- Create Ped
---@param id string
---@param model string
---@param coord vector4
---@param freeze? boolean
---@param invincible? boolean
---@param block_non_temporary_events? boolean
---@param delete_if_already? boolean
---@return number|boolean pedId will return false if the ped already exists
function kyg.util.createPed(id, model, coord, freeze, invincible, block_non_temporary_events, delete_if_already)
    local resource = GetInvokingResource() or cache.resource
    kyg.systemCached.createdPedData[resource] = kyg.systemCached.createdPedData[resource] or {}

    if delete_if_already and kyg.systemCached.createdPedData[resource][id] ~= nil then
        kyg.util.deletePed(id, resource)
        Wait(10)
    end

    if kyg.systemCached.createdPedData[resource][id] ~= nil then
        lib.print.verbose('Can\'t create ped because ped id ' .. id .. ' on resource ' .. resource .. ' already exist.')
        return false
    elseif not Config.Peds.Hash[model] then
        lib.print.verbose('Can\'t create ped with model ' .. model .. ' is not registered.')
        return false
    end

    model = lib.requestModel(model)
    local ped = CreatePed(4, model, coord.x, coord.y, coord.z-1.0, coord.w, false, true)
    SetModelAsNoLongerNeeded(model)
    SetEntityHeading(ped, coord.w)
    FreezeEntityPosition(ped, freeze or true)
    SetEntityInvincible(ped, invincible or true)
    SetBlockingOfNonTemporaryEvents(ped, block_non_temporary_events or true)
    kyg.systemCached.createdPedData[resource][id] = ped
    lib.print.verbose('Ped data with id ' .. id .. ' on resource (' .. resource .. ') has been created.')

    return ped
end

--- Delete NPC Ped
---@param id string
---@param resource? string
function kyg.util.deletePed(id, resource)
    resource = resource or GetInvokingResource() or cache.resource
    if kyg.systemCached.createdPedData[resource] == nil then
        lib.print.verbose('No ped data found on resource: ' .. resource)
        return false
    elseif kyg.systemCached.createdPedData[resource][id] == nil then
        lib.print.verbose('No ped data with id ' .. id .. ' found on resource: ' .. resource)
        return false
    else
        lib.print.verbose('Ped data with id ' .. id .. ' on resource (' .. resource .. ') has been deleted.')
        if DoesEntityExist(kyg.systemCached.createdPedData[resource][id]) then
            DeleteEntity(kyg.systemCached.createdPedData[resource][id])
        end
        kyg.systemCached.createdPedData[resource][id] = nil
        return true
    end
end

--- Create Blip on Map
---@param name string
---@param label string
---@param coords vector3 | vector4
---@param sprite number
---@param color? number | table<number, number> | table<string, number>
---@param scale? number
---@param display? number
---@param nearbyOnly? boolean
---@return number|boolean blipId will return false if the blip already exists
function kyg.util.createBlip(name, label, coords, sprite, color, scale, display, nearbyOnly)
    local resource = GetInvokingResource() or cache.resource
    kyg.systemCached.createdBlipData[resource] = kyg.systemCached.createdBlipData[resource] or {}

    if kyg.systemCached.createdBlipData[resource][name] ~= nil then
        lib.print.verbose('Can\'t create blip because name ' .. name .. ' on resource ' .. resource .. ' already exist.')
        return false
    end

    local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
	SetBlipSprite(blip, sprite)
	SetBlipScale(blip, scale or 0.6)
    if type(color) == 'number' then
        SetBlipColour(blip, color)
    elseif type(color) == 'table' and next(color) then
        local tblCheckKey, tblCheckValue = next(color)
        if type(tblCheckKey) == 'number' then SetBlipSecondaryColour(blip, color[1], color[2], color[3])
        elseif type(tblCheckKey) == 'string' then SetBlipSecondaryColour(blip, color.r, color.g, color.b) end
    end
	SetBlipDisplay(blip, display or 4)
	SetBlipAsShortRange(blip, type(nearbyOnly) == 'boolean' and not nearbyOnly or true)
	BeginTextCommandSetBlipName('STRING')
	AddTextComponentString(label)
	EndTextCommandSetBlipName(blip)
    kyg.systemCached.createdBlipData[resource][name] = blip
    lib.print.verbose('Blip data with name ' .. name .. ' on resource (' .. resource .. ') has been created.')

    return blip
end

--- Delete Blip on Map
---@param name string
---@param resource? string
function kyg.util.deleteBlip(name, resource)
    resource = resource or GetInvokingResource() or cache.resource
    if kyg.systemCached.createdBlipData[resource] == nil then
        lib.print.verbose('No blip data found on resource: ' .. resource)
        return false
    elseif kyg.systemCached.createdBlipData[resource][name] == nil then
        lib.print.verbose('No blip data with name ' .. name .. ' found on resource: ' .. resource)
        return false
    else
        lib.print.verbose('Blip data with name ' .. name .. ' on resource (' .. resource .. ') has been deleted.')
        if DoesBlipExist(kyg.systemCached.createdBlipData[resource][name]) then
            RemoveBlip(kyg.systemCached.createdBlipData[resource][name])
        end
        kyg.systemCached.createdBlipData[resource][name] = nil
        return true
    end
end

--- Get Street Name by Coords
---@param coords vector3 | vector4
---@return table { zone = string, fullname = string, shortname = string }
function kyg.util.getMapNameOfZone(coords)
    local zoneName = GetNameOfZone(coords.x, coords.y, coords.z)
    local zoneData = Config.Reference.MapZone[zoneName] or { full = 'Unknown', short = 'UNK' }
    return { zone = zoneName, fullname = zoneData.full, shortname = zoneData.short }
end

--- Get Street Name by Coords
---@param coords vector3 | vector4
---@return table { street = string, crossing = string }
function kyg.util.getMapStreetName(coords)
    local streetName, crossingRoad = GetStreetNameAtCoord(coords.x, coords.y, coords.z)
    return { street = GetStreetNameFromHashKey(streetName), crossing = GetStreetNameFromHashKey(crossingRoad) }
end

--- Convert vector3 to vector4
---@param coord vector3 # Vector3
---@param heading number # Heading
---@return vector4
function kyg.coord.vec3to4(coord, heading)
    return vec4(coord.x, coord.y, coord.z, heading or 0.0)
end

--- Convert vector4 to vector3
---@param coord vector4 # Vector4
---@return vector3
function kyg.coord.vec4to3(coord)
    return vec3(coord.x, coord.y, coord.z)
end

--- Generate Random Coordinates
---@param coord vector3
---@param radius number
---@param includeWater? boolean
---@param customHeights? table
---@return table|vector3
function kyg.coord.generate(coord, radius, includeWater, customHeights)
    math.randomseed(GetGameTimer())
    local modX = math.random(-radius, radius)
    Wait(100)
    math.randomseed(GetGameTimer())
    local modY = math.random(-radius, radius)

    local orgX, orgY = coord.x + modX, coord.y + modY
    local getZ = kyg.coord.getZFromXY(vec3(orgX, orgY, coord.z), includeWater or false, customHeights)
    return vec3(orgX, orgY, getZ)
end

--- Get Ground Z from XY
---@param coord vector3
---@param ignoreWater boolean
---@return number
function kyg.coord.getZFromXY(coord, ignoreWater, customHeights)
    if customHeights then
        for i = 1, #customHeights do
            local ground, z = GetGroundZFor_3dCoord(coord.x, coord.y, customHeights[i], ignoreWater)
            if ground then return z end
        end
    else
        for i = 0, 15 do
            local ground, z = GetGroundZFor_3dCoord(coord.x, coord.y, coord.z + (i + 0.0), ignoreWater)
            if ground then return z end
        end
    end
    return coord.z
end