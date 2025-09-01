local loaded = false
local models = { [0] = `mp_m_freemode_01`, [1] = `mp_f_freemode_01` }
local stateactive = false
local useSkinMenu = false
local xSound = nil
local slots = Config.Slots
local states = {}
local logout = false
local New = false

Citizen.CreateThreadNow(function()
	DoScreenFadeOut(0)
	Wait(1500)
	SendNUIMessage({ fade = true })
	while true do
		Wait(100)
		if NetworkIsSessionActive() or NetworkIsPlayerActive(PlayerId()) then
			exports['spawnmanager']:setAutoSpawn(false)
			Wait(1001)
			SendNUIMessage({ fade = true })
			if xSound then
				Citizen.CreateThreadNow(function()
					xSound:PlayUrl('intro', Config.IntroURL, 0.5, false)
				end)
			end
			CharacterSelect()
			break
		end
	end
end)

local callbacks = {}
local characters = {}
callback = function(name, ...)
	callbacks[name] = promise:new()
	TriggerServerEvent('servercallback', name, ...)
	return Citizen.Await(callbacks[name])
end

RegisterNetEvent('servercallback', function(name, data)
	callbacks[name]:resolve(data)
end)

local chosen = false
local cam = nil

WeatherTransition = function()
	TriggerEvent('qb-weathersync:client:DisableSync')
	CreateThread(function()
		local time, count, ts = 1, 0, 0
		while not loaded and not chosen do
			-- SetRainFxIntensity(0.1)
			NetworkOverrideClockTime(time, 1, 0)
			ThefeedHideThisFrame()
			HideHudComponentThisFrame(11)
			HideHudComponentThisFrame(12)
			HideHudComponentThisFrame(21)
			HideHudAndRadarThisFrame()
			SetWeatherTypeTransition(GetHashKey('THUNDER'), GetHashKey('CLEAR'), 0.7)
			ts = ts + 1
			count = count + 1
			if count > 10 then
				count = 0
				time = time + 1
				if time >= 24 and ts < 500 then time = 0 end
				if time >= 23 and ts > 500 then time = 23 end
			end
			Wait(0)
			if not chosen and not IsEntityPositionFrozen(cache.ped) then FreezeEntityPosition(cache.ped, true) end
		end
		SetWeatherTypeNowPersist('CLEAR') -- initial set weather
		SetWeatherTypeTransition(GetHashKey('NEUTRAL'), GetHashKey('CLEAR'), 0.7)
	end)
end

local pedshots = {}
CreatePedHeadShots = function(characters)
	for i = 1, slots do
		local chardata = characters[i]
		local slot = i - 1
		if chardata and not pedshots[slot] then
			local skin = chardata.skin
			skin.sex = chardata.sex == "m" and 0 or 1

			SetEntityCoords(cache.ped, Config.Spawn.x, Config.Spawn.y, Config.Spawn.z, false, false, false, false)
			SetEntityVisible(cache.ped, false, false)
			FreezeEntityPosition(cache.ped, true)

			exports['illenium-appearance']:setPlayerModel(skin?.model or models[skin.sex] or models[0])
			exports['illenium-appearance']:setPedAppearance(cache.ped, skin)

			local pedshot, handle = GetPedShot(cache.ped)
			pedshots[slot] = pedshot
			SendNUIMessage({ pedshots = pedshot, slot = slot })
			SetTimeout(1000, function()
				ClearPedHeadshots(handle)
			end)
		elseif not pedshots then
			SendNUIMessage({ pedshots = 'default', slot = slot, default = true })
		end
	end
end

IntroCam = function()
	chosen, loaded = false, false
	SendNUIMessage({ fade = true })
	SendNUIMessage({ showui = true, delete = Config.CanDelete })

	local data = callback('getcharacters') or { slots = Config.Slots }
	slots = data.slots or Config.Slots
	characters = data.characters or {}
	DoScreenFadeIn(1000)
	SetEntityVisible(cache.ped, false, false)
	SetEntityCoords(cache.ped, 0.0, 0.0, 677.0, false, false, false, false)
	CreatePedHeadShots(characters)
	WeatherTransition()
	cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", 1609.6380615234, -2272.8967285156, 483.33, 0.00, 0.00, -10.00, 100.00, false, 0)
	Wait(3000)
	DoScreenFadeIn(1000)
	SetCamActive(cam, true)
	RenderScriptCams(true, true, 6000, true, true)
	SendNUIMessage({ fade = false })
	local camloc = Config.CameraIntro
	SendNUIMessage({ showlogo = true })
	while #(GetFinalRenderedCamCoord() - vec3(1609.6380615234, -2272.8967285156, 483.33)) > 10 do Wait(111) end
	SendNUIMessage({ data = { characters = characters, slots = slots, extras = Config.Status } })
	if not Config.cam then
		SendNUIMessage({ showlogo = false })
		SendNUIMessage({ show = true })
		SetNuiFocus(true, true)
	end
	while not chosen and Config.cam do
		for k, v in ipairs(camloc) do
			if not chosen then
				SetCamParams(cam, v.coord, v.rot, 50.0, 8000, 0, 0, 2)
				SendNUIMessage({ showlogo = false })
				SendNUIMessage({ show = true })
				SetNuiFocus(true, true)
			else break end

			while #(GetFinalRenderedCamCoord() - v.coord) > 10 and not chosen do
				local camcoord = GetFinalRenderedCamCoord()
				SetFocusPosAndVel(camcoord.x, camcoord.y, camcoord.z)
				Wait(111)
			end
			Wait(2000)
		end
		Wait(10)
	end
end

local peds = {}
local chosenslot = 1

CharacterSelect = function()
	--SetEntityCoords(ped, 0.0, 0.0, 1000.0, false, false, false, false)
	TriggerEvent('esx:loadingScreenOff')
	ShutdownLoadingScreen()
	ShutdownLoadingScreenNui()
	RequestCollisionAtCoord(0.0, 0.0, 777.0)
	FreezeEntityPosition(cache.ped, true)
	DoScreenFadeOut(300)
	IntroCam()
	DoScreenFadeIn(300)
	Wait(2000)
	ClearFocus()
	SetFocusEntity(cache.ped)
end

Cleanups = function()
	if DoesCamExist(cam) then
		SetCamActive(cam, false)
		DestroyCam(cam, true)
		RenderScriptCams(false, false, 0, true, true)
	end
	SetNuiFocus(false, false)
	SetEntityVisible(cache.ped, true, false)
	ClearFocus()
	SetFocusEntity(cache.ped)
	for k, v in pairs(peds) do if DoesEntityExist(v) then
		DeleteEntity(v)
	end end
end

isSkinValid = function(skins)
	for k, v in pairs(skins) do
		if k == 'hair' then
			return true
		end
	end
	return false
end

ShowCharacter = function(slot)
	chosenslot = slot
	chosen = true
	Wait(10)
	local chardata = characters[tonumber(slot)]
	if xSound and xSound:soundExists('intro') then xSound:Destroy('intro') end
	SetEntityVisible(cache.ped, 1, 0)
	SetPedAoBlobRendering(cache.ped, true)
	ResetEntityAlpha(cache.ped)
	FreezeEntityPosition(cache.ped, false)
	if chardata and not chardata.new then
		SendNUIMessage({ showcharacter = { showoptions = 'existing', slot = slot } })
	else
		SendNUIMessage({ showcharacter = { showoptions = 'new', slot = slot, customregister = not Config.UseDefaultRegister } })
		local model = GetModel('m')
		exports['illenium-appearance']:setPlayerModel(model)
		SetEntityCoordsNoOffset(cache.ped, Config.Spawn.x, Config.Spawn.y, Config.Spawn.z, false, false, false)
		SetEntityHeading(cache.ped, 0.0)
		exports['illenium-appearance']:setPedAppearance(cache.ped, Config.Default['m'])
		characters[tonumber(slot)] = { position = { x = Config.Spawn.x, y = Config.Spawn.y + 10, z = Config.Spawn.z }, new = true }
		SetBlockingOfNonTemporaryEvents(cache.ped, true)
		SetCamParams(cam, Config.Spawn.x, Config.Spawn.y + 10, Config.Spawn.z, 0.0, 0.0, 0.0, 20.0, 1, 0, 0, 2)
		PointCamAtEntity(cam, cache.ped, 0.0, 0.0, 0.0, true)
		SetFocusPosAndVel(Config.Spawn.x, Config.Spawn.y + 10, Config.Spawn.z)
		local gestures = Config.Animations['choose'][math.random(1, #Config.Animations['choose'])]
		lib.playAnim(cache.ped, gestures.dict, gestures.anim, 1.0, 1.0, -1, 0, 0, false, 0, false)
		New = true
		return
	end
	New = false
	local skin = chardata.skin
	if string.find(tostring(chardata.sex):lower(), 'mal') then chardata.sex = 'm' elseif string.find(tostring(chardata.sex):lower(), 'fem') then chardata.sex =
		'f' end                                                                                                                                                    -- supports other identity logic
	skin.sex = chardata.sex == "m" and 0 or 1
	local model = models[skin.sex] or models[0]
	if not IsCamActive(cam) then
		SetCamActive(cam, true)
	end
	local model = GetModel(chardata.sex, chardata?.skin?.model)
	exports['illenium-appearance']:setPlayerModel(model)
	SetEntityCoordsNoOffset(cache.ped, chardata.position.x, chardata.position.y, chardata.position.z, false, false, false)
	SetEntityHeading(cache.ped, 0.0)
	SetFocusPosAndVel(chardata.position.x + 2, chardata.position.y + 2, chardata.position.z + 0.5)
	SetCamParams(cam, chardata.position.x, chardata.position.y + 2, chardata.position.z + 0.3, 0.0, 0.0, 0.0, 75.0, 1, 0,
		0, 2)
	PointCamAtEntity(cam, cache.ped, 0.0, 0.0, 0.0, true)
	RenderScriptCams(true, true, 0, true, true)
	exports['illenium-appearance']:setPedAppearance(cache.ped, skin)
	useSkinMenu = false
	if not isSkinValid(skin) then
		warn('this character does not have a saved skin.  this either using other skin resource')
		exports['illenium-appearance']:setPedAppearance(cache.ped, Config.Default['m'])
		useSkinMenu = true
	end
	SetFocusEntity(cache.ped)
	local gestures = Config.Animations['choose'][math.random(1, #Config.Animations['choose'])]
	Wait(100)
	if not CheckStates(true) then
		lib.playAnim(cache.ped, gestures.dict, gestures.anim, 1.0, 1.0, -1, 0, 0, false, 0, false)
	end
end

SetupPlayer = function()
	local coord = vec3(characters[chosenslot].position.x, characters[chosenslot].position.y,
		characters[chosenslot].position.z - 0.7)
	SetFocusPosAndVel(coord.x, coord.y, coord.z)
	RequestCollisionAtCoord(coord.x, coord.y, coord.z)
	SetEntityCoords(cache.ped, coord.x, coord.y, coord.z, false, false, false, false)
	FreezeEntityPosition(cache.ped, true)
	while not HasCollisionLoadedAroundEntity(cache.ped) do Wait(1) end
	FreezeEntityPosition(cache.ped, false)
end

ChooseCharacter = function(slot)
	chosenslot = slot
	local login = callback('renzu_multicharacter:choosecharacter', slot)
	ClearPedTasks(cache.ped)
	SetTimeout(0, CheckStates)
end

SpawnSelect = function(coord)
	if Config.framework == 'QBCORE' then
		QBCore = exports['qb-core']:GetCoreObject()
		local PlayerData = QBCore.Functions.GetPlayerData()
		TriggerServerEvent('QBCore:Server:OnPlayerLoaded')
		TriggerEvent('QBCore:Client:OnPlayerLoaded')
		loaded = true
		local insideMeta = PlayerData.metadata["inside"]
		if insideMeta.house ~= nil then
			local houseId = insideMeta.house
			TriggerEvent('qb-houses:client:LastLocationHouse', houseId)
		elseif insideMeta.apartment.apartmentType ~= nil or insideMeta.apartment.apartmentId ~= nil then
			local apartmentType = insideMeta.apartment.apartmentType
			local apartmentId = insideMeta.apartment.apartmentId
			TriggerEvent('qb-apartments:client:LastLocationHouse', apartmentType, apartmentId)
		end
	end

	if Config.SpawnSelector and not Config.SpawnSelectInNewOnly or Config.SpawnSelector and Config.SpawnSelectInNewOnly and New then
		local state = states or {}
		local extras = characters[chosenslot] and characters[chosenslot].extras
		if stateactive then return end
		local coord = coord
		New = false
		spawn = Config.SpawnSelectorExport(coord)
	end

	if useSkinMenu then
		SkinMenu()
		useSkinMenu = false
	end

	Wait(2000)
	stateactive = false
	DoScreenFadeIn(1000)
end

local skin = {}
-- SKIN FUNCTIONS
GetModel = function(str, othermodel)
	skin.sex = str == "m" and 0 or 1
	local model = othermodel or skin.sex == 0 and `mp_m_freemode_01` or `mp_f_freemode_01`
	return model
end

finished = false
SkinMenu = function()
	SetEntityCoords(cache.ped, Config.SpawnCreateCharacter.x, Config.SpawnCreateCharacter.y, Config.SpawnCreateCharacter.z, false, false, false, false)
    SetEntityHeading(cache.ped, Config.SpawnCreateCharacter.w or 0.0)
	SetPedAoBlobRendering(cache.ped, true)
	ResetEntityAlpha(cache.ped)
	SetEntityVisible(cache.ped, true, false)
	Wait(100)

	local function kygAppearance()
		local appearance = exports['illenium-appearance']:getPedAppearance(cache.ped)
		characters[chosenslot].skin = appearance
		LocalPlayer.state:set('creatingCharacter', false, true)
		finished = true
	end

	if not characters[chosenslot] then characters[chosenslot] = {} end
	LocalPlayer.state:set('creatingCharacter', true, true)
	TriggerEvent('esx_skin:openSaveableMenu', kygAppearance, kygAppearance)
end

-- HANDLE PLAYER LOADED
RegisterNetEvent('esx:playerLoaded', function(playerData, isNew, skin)
	local spawn = not isNew and playerData.coords or Config.Spawn
	loaded = true
	logout = false

	if isNew or not skin or #skin == 1 then
		Cleanups()
		SpawnSelect(vec4(spawn.x, spawn.y + 10, spawn.z, 0.0))
		if Config.SpawnSelector and characters[chosenslot] then -- update ped position from selector
			local coord = GetEntityCoords(cache.ped)
			characters[chosenslot].position = { x = coord.x, y = coord.y, z = coord.z, heading = GetEntityHeading(cache.ped) }
		end

		finished = false
		local model = GetModel(playerData.sex or 'm')
		exports['illenium-appearance']:setPlayerModel(model)

		skin = Config.Default[playerData.sex or 'm']
		skin.sex = playerData.sex:lower() == 'm' and 0 or 1
		exports['illenium-appearance']:setPedAppearance(cache.ped, skin)
		if not Config.SpawnSelector then SetupPlayer() end
		SkinMenu()
		Wait(100)
		--repeat Wait(200) until finished
	end

	if not isNew then
		skin.sex = playerData.sex:lower() == 'm' and 0 or 1
		exports['illenium-appearance']:setPlayerAppearance(characters[chosenslot].skin)
	end

	Wait(400)
	repeat Wait(200) until not IsScreenFadedOut()
	TriggerServerEvent('esx:onPlayerSpawn')
	TriggerEvent('esx:onPlayerSpawn')
	TriggerEvent('playerSpawned')
	TriggerEvent('esx:restoreLoadout')
	FreezeEntityPosition(cache.ped, false)
	ClearPedTasks(cache.ped)
	stateactive = false
end)

RegisterNetEvent('esx:onPlayerLogout', function()
	DoScreenFadeOut(500)
	Wait(1000)
	CharacterSelect()
	TriggerEvent('esx_skin:resetFirstSpawn')
end)

RegisterCommand('relog', function(source, args, rawCommand)
	if Config.Relog and not LocalPlayer.state.isdead then
		TriggerServerEvent('esx_multicharacter:relog')
		logout = true
	end
end)

-- NUI CALLBACKS
RegisterNUICallback('nuicb', function(data)
	if data.msg == 'showchar' then
		ShowCharacter(data.slot)
	end
	if data.msg == 'chooseslot' then
		ChooseCharacter(data.slot)
		Cleanups()
		SpawnSelect(vec4(characters[chosenslot].position.x, characters[chosenslot].position.y,
			characters[chosenslot].position.z, characters[chosenslot].position.heading or 0.0))
	end
	if data.msg == 'create' then
		if not data.info.sex then data.info.sex = 'm' end
		data.info.height = 100 -- is this really needed
		chosenslot = data.slot
		local model = GetModel(data.info.sex or 'm')
		exports['illenium-appearance']:setPlayerModel(model)
		if not Config.UseDefaultRegister then
			if Config.RegisterHook.event then
				TriggerEvent(Config.RegisterHook.call)
			else
				Config.RegisterHook.call()
			end
		end
		callback('renzu_multicharacter:createcharacter', { info = data.info, slot = data.slot })
		Cleanups()
		skin = Config.Default[data.info.sex]
		skin.sex = data.info.sex == 'm' and 0 or 1
		exports['illenium-appearance']:setPedAppearance(cache.ped, skin)
	end
	if data.msg == 'deletechar' then
		callback('renzu_multicharacter:deletecharacter', data.slot)
		characters[chosenslot] = nil
		CharacterSelect()
		pedshots[chosenslot] = nil
	end
	if data.msg == 'sex' then
		local model = data.sex == 'm' and `mp_m_freemode_01` or `mp_f_freemode_01`
		exports['illenium-appearance']:setPlayerModel(model)
		skin = Config.Default[data.sex]
		skin.sex = data.sex == 'm' and 0 or 1
		exports['illenium-appearance']:setPedAppearance(cache.ped, skin)
		characters[tonumber(data.slot)] = { position = { x = Config.Spawn.x, y = Config.Spawn.y + 10, z = Config.Spawn.z }, new = true }
		SetBlockingOfNonTemporaryEvents(cache.ped, true)
	end
	if data.msg == 'deleteattempt' then
		local gestures = Config.Animations['delete'][math.random(1, #Config.Animations['delete'])]
		lib.playAnim(cache.ped, gestures.dict, gestures.anim, 1.0, 1.0, -1, 0, 0, false, 0, false)
	end
end)

GetPedShot = function(ped)
	Wait(0)
	local ped = ped
	local tempHandle = RegisterPedheadshotTransparent(ped)
	local headshotTxd = nil

	local timer = 1100
	while not IsPedheadshotReady(tempHandle) and timer > 0 or not IsPedheadshotValid(tempHandle) and timer > 0 do
		Wait(1)
		timer = timer - 10
	end
	headshotTxd = GetPedheadshotTxdString(tempHandle)
	if headshotTxd == nil or headshotTxd == 0 or tempHandle == 0 or not IsPedheadshotValid(tempHandle) then
		tempHandle = RegisterPedheadshot_3(ped)
		timer = 1100
		while not IsPedheadshotReady(tempHandle) and timer > 0 or not IsPedheadshotValid(tempHandle) and timer > 0 do
			Wait(1)
			timer = timer - 10
		end
		headshotTxd = GetPedheadshotTxdString(tempHandle)
	end
	return headshotTxd, tempHandle
end

ClearPedHeadshots = function(handle)
	UnregisterPedheadshot(handle)
end

CheckStates = function(preview)
	local states = characters[chosenslot].extras
	if characters[chosenslot] and characters[chosenslot].extras then
		for name, data in pairs(states) do
			HandleStates(name, data, preview)
			if preview and name == 'invehicle' then return true end
		end
	end
	return false
end

RegisterStates = function(name, cb, spawnselector)
	states[name] = { spawn = spawnselector, cb = cb }
	AddStateBagChangeHandler(name, nil, function(bagName, _, value, _, _)
		Wait(0)
		if value == nil or logout then return end
		states[name].value = value
	end)
	return states[name].cb()
end

exports('RegisterStates', RegisterStates)

-- advanced usage
HandleStates = function(name, data, preview)
	-- this is where callbacks will handle
	-- if data.server and name == 'inhouse' then
	-- TriggerServerEvent('resource_sample:ishouse')
	-- end
	-- datas are manage by you on how your manage states from player

	-- my use case and example
	if name == 'invehicle' and data and type(data) == 'table' then
		DoScreenFadeOut(0)
		local lastvehicle = callback('setplayertolastvehicle', data.net, preview) -- this will set the player to its last vehicle
		Wait(1000)
		DoScreenFadeIn(1000)
		if IsCamActive(cam) then
			local vehicle = NetworkGetEntityFromNetworkId(data.net)
			if not DoesEntityExist(vehicle) then return end
			local coord = GetEntityCoords(vehicle)
			SetCamParams(cam, coord.x, coord.y + 4, coord.z + 0.8, 0.0, 0.0, 0.0, 55.0, 1, 0, 0, 2)
			PointCamAtEntity(cam, vehicle, 0.0, 0.0, 0.0, true)
			stateactive = true -- prevents spawn selector
		end
		return data
	end
end

exports.renzu_multicharacter:RegisterStates('invehicle', function()
	lib.onCache('vehicle', function(value)
		if not loaded then return end
		LocalPlayer.state:set('invehicle', value and { net = NetworkGetNetworkIdFromEntity(value) or false }, true)
	end)
end, false)
