local frameName = SetKygFrame('esx_status', 'ui')
local OriginalStatus, Status, isPaused = {}, {}, false

local function CreateStatus(name, default, color, visible, tickCallback)
	local self = {}

	self.val          = default
	self.name         = name
	self.default      = default
	self.color        = color
	self.visible      = visible
	self.tickCallback = tickCallback

	function self._set(k, v)
		self[k] = v
	end

	function self._get(k)
		return self[k]
	end

	function self.onTick()
		self.tickCallback(self)
	end

	function self.set(val)
		self.val = val
	end

	function self.add(val)
		if self.val + val > cfgStatus.StatusMax then
			self.val = cfgStatus.StatusMax
		else
			self.val = self.val + val
		end
	end

	function self.remove(val)
		if self.val - val < 0 then
			self.val = 0
		else
			self.val = self.val - val
		end
	end

	function self.getPercent()
		return (self.val / cfgStatus.StatusMax) * 100
	end

	return self
end

local function GetStatusData(minimal)
	local status = {}
	for i = 1, #Status, 1 do
		if minimal then
			table.insert(status, {
				name    = Status[i].name,
				val     = Status[i].val,
				percent = (Status[i].val / cfgStatus.StatusMax) * 100
			})
		else
			table.insert(status, {
				name    = Status[i].name,
				val     = Status[i].val,
				color   = Status[i].color,
				visible = Status[i].visible(Status[i]),
				percent = (Status[i].val / cfgStatus.StatusMax) * 100
			})
		end
	end

	return status
end

AddEventHandler('esx_status:registerStatus', function(name, default, color, visible, tickCallback)
	local status = CreateStatus(name, default, color, visible, tickCallback)
	for i = 1, #OriginalStatus, 1 do if status.name == OriginalStatus[i].name then
		status.set(OriginalStatus[i].val)
	end end
	table.insert(Status, status)
end)

AddEventHandler('esx_status:unregisterStatus', function(name)
	for k, v in ipairs(Status) do if v.name == name then
		table.remove(Status, k)
		break
	end end
end)

RegisterNetEvent('esx:onPlayerLogout', function()
	Status = {}
	if cfgStatus.Display then
		SendKygFrameMsg(frameName, { update = true, status = Status })
	end
end)

RegisterNetEvent('esx_status:load', function(status, meta)
	while not ESX.PlayerLoaded do Wait(0) end

	OriginalStatus = status
	TriggerEvent('esx_status:loaded')

	if meta.health then
		SetEntityHealth(cache.ped, meta.health)
	end if meta.armor then
		SetPedArmour(cache.ped, meta.armor)
	end

	if cfgStatus.Display then TriggerEvent('esx_status:setDisplay', 0.5) end

	CreateThread(function()
		local data = {}
		while ESX.PlayerLoaded do
			for i = 1, #Status do
				Status[i].onTick()
				table.insert(data, {
					name = Status[i].name,
					val = Status[i].val,
					percent = (Status[i].val / cfgStatus.StatusMax) * 100
				})
			end

			if cfgStatus.Display then
				local fullData = data
				for i = 1, #data, 1 do
					fullData[i].color = Status[i].color
					fullData[i].visible = Status[i].visible(Status[i])
				end
				SendKygFrameMsg(frameName, { update = true, status = fullData })
			end

			TriggerEvent('esx_status:onTick', data)
			table.wipe(data)
			Wait(cfgStatus.TickTime)
		end
	end)
end)

local function esxStatusChange(statusType, statusName, statusVal)
	local changed = false
	for i = 1, #Status, 1 do if Status[i].name == statusName then
		if statusType == 'set' then
			Status[i].set(statusVal)
			changed = true
		elseif statusType == 'add' then
			Status[i].add(statusVal)
			changed = true
			changed = true
		elseif statusType == 'remove' then
			Status[i].remove(statusVal)
			changed = true
		end
		break
	end end

	if changed and cfgStatus.Display then
		SendKygFrameMsg(frameName, { update = true, status = GetStatusData() })
	end
end

RegisterNetEvent('esx_status:set', function(name, val)
	esxStatusChange('set', name, val)
end)

RegisterNetEvent('esx_status:add', function(name, val)
	esxStatusChange('add', name, val)
end)

RegisterNetEvent('esx_status:remove', function(name, val)
	esxStatusChange('remove', name, val)
end)

AddEventHandler('esx_status:getStatus', function(name, cb)
	for i = 1, #Status, 1 do if Status[i].name == name then
		cb(Status[i])
		return
	end end
end)

AddEventHandler('esx_status:getAllStatus', function(cb)
	cb(Status)
end)

AddEventHandler('esx_status:setDisplay', function(val)
	SendKygFrameMsg(frameName, { setDisplay = true, display = val })
end)

-- Pause menu disable hud display
if cfgStatus.Display then
	AddEventHandler('esx:pauseMenuActive', function(state)
		if state then
			isPaused = true
			TriggerEvent('esx_status:setDisplay', 0.0)
			return
		end
		isPaused = false
		TriggerEvent('esx_status:setDisplay', 0.5)
	end)

	-- Loading screen off event
	AddEventHandler('esx:loadingScreenOff', function()
		if not isPaused then
			TriggerEvent('esx_status:setDisplay', 0.3)
		end
	end)
end

-- Update server
CreateThread(function()
	while true do
		Wait(cfgStatus.UpdateInterval)
		if ESX.PlayerLoaded then TriggerServerEvent('esx_status:update', GetStatusData(true)) end
	end
end)
