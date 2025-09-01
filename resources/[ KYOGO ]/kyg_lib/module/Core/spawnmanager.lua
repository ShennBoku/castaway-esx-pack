lib.print.info('Built-in spawnmanager enabled, make sure no outside resources are active.')

-- in-memory spawnpoint array for this script execution instance
local spawnPoints = {}

-- auto-spawn enabled flag
local autoSpawnEnabled = false
local autoSpawnCallback

local function exportHandler(exportName, func)
    AddEventHandler(('__cfx_export_spawnmanager_%s'):format(exportName), function(setCB)
        setCB(func)
    end)
end

local spawnNum = 1
local function addSpawnPoint(spawn)
    if not tonumber(spawn.x) or not tonumber(spawn.y) or not tonumber(spawn.z) then
        error("invalid spawn position")
    end

    if not tonumber(spawn.heading) then
        error("invalid spawn heading")
    end

    local model = spawn.model
    if not tonumber(spawn.model) then
        model = GetHashKey(spawn.model)
    end

    if not IsModelInCdimage(model) then
        error("invalid spawn model")
    end

    spawn.model = model
    spawn.idx = spawnNum
    spawnNum = spawnNum + 1

    table.insert(spawnPoints, spawn)
    return spawn.idx
end

-- support for mapmanager maps
AddEventHandler('getMapDirectives', function(add)
    add('spawnpoint', function(state, model)
        return function(opts)
            local x, y, z, heading
            local s, e = pcall(function()
                if opts.x then
                    x, y, z = opts.x, opts.y, opts.z
                else
                    x, y, z = opts[1], opts[2], opts[3]
                end

                x, y, z = x + 0.0001, y + 0.0001, z + 0.0001
                heading = opts.heading and (opts.heading + 0.01) or 0

                addSpawnPoint({ x = x, y = y, z = z, heading = heading, model = model })
                if not tonumber(model) then model = GetHashKey(model, _r) end

                state.add('xyz', { x, y, z })
                state.add('model', model)
            end)
            if not s then Citizen.Trace(e .. "\n") end
        end
    end, function(state, arg)
        for i, sp in ipairs(spawnPoints) do
            if sp.x == state.xyz[1] and sp.y == state.xyz[2] and sp.z == state.xyz[3] and sp.model == state.model then
                table.remove(spawnPoints, i)
                return
            end
        end
    end)
end)


-- loads a set of spawn points from a JSON string
local function loadSpawns(spawnString)
    local data = json.decode(spawnString)
    if not data.spawns then error("no 'spawns' in JSON data") end

    for i, spawn in ipairs(data.spawns) do
        addSpawnPoint(spawn)
    end
end

local function removeSpawnPoint(spawn)
    for i = 1, #spawnPoints do if spawnPoints[i].idx == spawn then
        table.remove(spawnPoints, i)
        return
    end end
end

-- changes the auto-spawn flag
local function setAutoSpawn(enabled)
    autoSpawnEnabled = enabled
end

-- sets a callback to execute instead of 'native' spawning when trying to auto-spawn
local function setAutoSpawnCallback(cb)
    autoSpawnCallback = cb
    autoSpawnEnabled = true
end

-- function as existing in original R* scripts
local function freezePlayer(id, freeze)
    local player = id
    SetPlayerControl(player, not freeze, false)

    local ped = GetPlayerPed(player)
    if not freeze then
        if not IsEntityVisible(ped) then SetEntityVisible(ped, true) end
        if not IsPedInAnyVehicle(ped) then SetEntityCollision(ped, true) end

        FreezeEntityPosition(ped, false)
        SetPlayerInvincible(player, false)
    else
        if IsEntityVisible(ped) then SetEntityVisible(ped, false) end

        SetEntityCollision(ped, false)
        FreezeEntityPosition(ped, true)
        SetPlayerInvincible(player, true)

        if not IsPedFatallyInjured(ped) then ClearPedTasksImmediately(ped) end
    end
end

local function loadScene(x, y, z)
	if not NewLoadSceneStart then return end

    NewLoadSceneStart(x, y, z, 0.0, 0.0, 0.0, 20.0, 0)
    while IsNewLoadSceneActive() do
        networkTimer = GetNetworkTimer()
        NetworkUpdateLoadScene()
    end
end

local spawnLock = false
local function spawnPlayer(spawnIdx, cb)
    if spawnLock then return end
    spawnLock = true

    CreateThread(function()
        if not spawnIdx then spawnIdx = GetRandomIntInRange(1, #spawnPoints + 1) end

        -- get the spawn from the array
        local spawn

        if type(spawnIdx) == 'table' then
            spawn = spawnIdx

            -- prevent errors when passing spawn table
            spawn.x = spawn.x + 0.00
            spawn.y = spawn.y + 0.00
            spawn.z = spawn.z + 0.00

            spawn.heading = spawn.heading and (spawn.heading + 0.00) or 0
        else
            spawn = spawnPoints[spawnIdx]
        end

        if not spawn.skipFade then
            DoScreenFadeOut(500)

            while not IsScreenFadedOut() do
                Wait(0)
            end
        end

        -- validate the index
        if not spawn then
            Citizen.Trace("tried to spawn at an invalid spawn index\n")
            spawnLock = false
            return
        end

        -- freeze the local player
        freezePlayer(PlayerId(), true)

        -- if the spawn has a model set
        if spawn.model then
            RequestModel(spawn.model)

            -- load the model for this spawn
            while not HasModelLoaded(spawn.model) do
                RequestModel(spawn.model)

                Wait(0)
            end

            -- change the player model
            SetPlayerModel(PlayerId(), spawn.model)

            -- release the player model
            SetModelAsNoLongerNeeded(spawn.model)
            
            -- RDR3 player model bits
            if N_0x283978a15512b2fe then
				N_0x283978a15512b2fe(PlayerPedId(), true)
            end
        end

        -- preload collisions for the spawnpoint
        RequestCollisionAtCoord(spawn.x, spawn.y, spawn.z)

        -- spawn the player
        local ped = PlayerPedId()

        -- V requires setting coords as well
        SetEntityCoordsNoOffset(ped, spawn.x, spawn.y, spawn.z, false, false, false, true)

        NetworkResurrectLocalPlayer(spawn.x, spawn.y, spawn.z, spawn.heading, true, true, false)

        -- gamelogic-style cleanup stuff
        ClearPedTasksImmediately(ped)
        --SetEntityHealth(ped, 300) -- TODO: allow configuration of this?
        RemoveAllPedWeapons(ped) -- TODO: make configurable (V behavior?)
        ClearPlayerWantedLevel(PlayerId())

        -- why is this even a flag?
        --SetCharWillFlyThroughWindscreen(ped, false)

        -- set primary camera heading
        --SetGameCamHeading(spawn.heading)
        --CamRestoreJumpcut(GetGameCam())

        -- load the scene; streaming expects us to do it
        --ForceLoadingScreen(true)
        --loadScene(spawn.x, spawn.y, spawn.z)
        --ForceLoadingScreen(false)

        local time = GetGameTimer()

        while (not HasCollisionLoadedAroundEntity(ped) and (GetGameTimer() - time) < 5000) do
            Citizen.Wait(0)
        end

        ShutdownLoadingScreen()

        if IsScreenFadedOut() then
            DoScreenFadeIn(500)

            while not IsScreenFadedIn() do
                Citizen.Wait(0)
            end
        end

        -- and unfreeze the player
        freezePlayer(PlayerId(), false)

        TriggerEvent('playerSpawned', spawn)

        if cb then
            cb(spawn)
        end

        spawnLock = false
    end)
end

local respawnForced
local diedAt

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(50)

        local playerPed = PlayerPedId()

        if playerPed and playerPed ~= -1 then
            if autoSpawnEnabled then
                if NetworkIsPlayerActive(PlayerId()) then
                    if (diedAt and (math.abs(GetTimeDifference(GetGameTimer(), diedAt)) > 2000)) or respawnForced then
                        if autoSpawnCallback then
                            autoSpawnCallback()
                        else
                            spawnPlayer()
                        end

                        respawnForced = false
                    end
                end
            end

            if IsEntityDead(playerPed) then
                if not diedAt then
                    diedAt = GetGameTimer()
                end
            else
                diedAt = nil
            end
        end
    end
end)

local function forceRespawn()
    spawnLock = false
    respawnForced = true
end

exports('spawnPlayer', spawnPlayer)
exports('addSpawnPoint', addSpawnPoint)
exports('removeSpawnPoint', removeSpawnPoint)
exports('loadSpawns', loadSpawns)
exports('setAutoSpawn', setAutoSpawn)
exports('setAutoSpawnCallback', setAutoSpawnCallback)
exports('forceRespawn', forceRespawn)

exportHandler('spawnPlayer', spawnPlayer)
exportHandler('addSpawnPoint', addSpawnPoint)
exportHandler('removeSpawnPoint', removeSpawnPoint)
exportHandler('loadSpawns', loadSpawns)
exportHandler('setAutoSpawn', setAutoSpawn)
exportHandler('setAutoSpawnCallback', setAutoSpawnCallback)
exportHandler('forceRespawn', forceRespawn)
