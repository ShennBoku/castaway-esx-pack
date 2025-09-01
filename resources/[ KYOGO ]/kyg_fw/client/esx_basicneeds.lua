local IsDead = false
local hunger, thirst, stress = 0, 0, 0
local hungerVal, thirstVal, stressVal = 0, 0, 0
local isNotifiedHealth, isNotifiedHungry, isNotifiedThirsty = false, false, false

local function setPlayerNeeds(newHunger, newThirst, newStress)
    if (tonumber(newHunger) or 0) >= 0 then TriggerEvent('esx_status:set', 'hunger', newHunger) end
    if (tonumber(newThirst) or 0) >= 0 then TriggerEvent('esx_status:set', 'thirst', newThirst) end
    if (tonumber(newStress) or 0) >= 0 then TriggerEvent('esx_status:set', 'stress', newStress) end
end

AddEventHandler('esx_basicneeds:resetStatus', function()
    setPlayerNeeds(hungerVal >= 15000 and -1 or 15000, thirstVal >= 15000 and -1 or 15000, stressVal >= 30000 and 30000 or stressVal)
end)

RegisterNetEvent('esx_basicneeds:healPlayer')
AddEventHandler('esx_basicneeds:healPlayer', function()
    if ESX.PlayerLoaded and IsDead then return lib.print.debug('You are incapacitated, unable to heal.') end
    setPlayerNeeds(1000000, 1000000, 0)
    SetEntityHealth(cache.ped, GetEntityMaxHealth(cache.ped))
end)

AddEventHandler('esx:onPlayerDeath', function()
    IsDead = true
end)

AddEventHandler('esx:onPlayerSpawn', function()
    IsDead = false
end)

RegisterNetEvent('esx_status:set', function (stType, stVal)
    stVal = stVal >= 0 and (stVal <= 1000000 and stVal or 1000000) or 0
    if stType == 'hunger' then
        hunger = (stVal / 1000000) * 100
		hungerVal = stVal
    elseif stType == 'thirst' then
        thirst = (stVal / 1000000) * 100
		thirstVal = stVal
    elseif stType == 'stress' then
        stress = (stVal / 1000000) * 100
		stressVal = stVal
    end
end)

AddEventHandler('esx_status:loaded', function()
    TriggerEvent('esx_status:registerStatus', 'hunger', 1000000, '#CFAD0F', function() return true end, function(status)
        if IsDead or GetPlayerInvincible(cache.playerId) or not IsEntityVisible(cache.ped) or LocalPlayer.state.creatingCharacter then
            status.remove(0)
        elseif IsPedStopped(cache.ped) then
			status.remove(cfgBasicNeeds.Decrease.Idle.Hunger)
		elseif IsEntityInWater(cache.ped) and IsPedSwimming(cache.ped) then
			status.remove(cfgBasicNeeds.Decrease.Swimming.Hunger)
		elseif IsPedClimbing(cache.ped) then
			status.remove(cfgBasicNeeds.Decrease.Climbing.Hunger)
		elseif IsPedSprinting(cache.ped) or IsPedRunning(cache.ped) then
			status.remove(cfgBasicNeeds.Decrease.Running.Hunger)
        else
            status.remove(cfgBasicNeeds.Decrease.Walking.Hunger)
        end
    end)
    
    TriggerEvent('esx_status:registerStatus', 'thirst', 1000000, '#0C98F1', function() return true end, function(status)
        if IsDead or GetPlayerInvincible(cache.playerId) or not IsEntityVisible(cache.ped) or LocalPlayer.state.creatingCharacter then
            status.remove(0)
        elseif IsPedStopped(cache.ped) then
            status.remove(cfgBasicNeeds.Decrease.Idle.Thirst)
        elseif IsEntityInWater(cache.ped) and IsPedSwimming(cache.ped) then
            status.remove(cfgBasicNeeds.Decrease.Swimming.Thirst)
		elseif IsPedClimbing(cache.ped) then
			status.remove(cfgBasicNeeds.Decrease.Climbing.Thirst)
        elseif IsPedSprinting(cache.ped) or IsPedRunning(cache.ped) then
            status.remove(cfgBasicNeeds.Decrease.Running.Thirst)
        else
            status.remove(cfgBasicNeeds.Decrease.Walking.Thirst)
        end
    end)

    TriggerEvent('esx_status:registerStatus', 'stress', 1000000, '#0C98F1', function() return true end, function(status)
		if IsDead or GetPlayerInvincible(cache.playerId) then
			status.remove(100)
		else
			status.add(10)
		end
    end)
end)

local function notifyBasicNeeds(...)
	if ... == 'health' and cfgBasicNeeds.Reminder.Health.Enabled and not isNotifiedHealth then
		isNotifiedHealth = true
		cfgBasicNeeds.Reminder.Health.Actions()
		Wait(cfgBasicNeeds.Reminder.Health.Interval * 1000)
		isNotifiedHealth = false
	elseif ... == 'hunger' and cfgBasicNeeds.Reminder.Hunger.Enabled and not isNotifiedHungry then
		isNotifiedHungry = true
		cfgBasicNeeds.Reminder.Hunger.Actions()
		Wait(cfgBasicNeeds.Reminder.Hunger.Interval * 1000)
		isNotifiedHungry = false
	elseif ... == 'thirst' and cfgBasicNeeds.Reminder.Thirst.Enabled and not isNotifiedThirsty then
		isNotifiedThirsty = true
		cfgBasicNeeds.Reminder.Thirst.Actions()
		Wait(cfgBasicNeeds.Reminder.Thirst.Interval * 1000)
		isNotifiedThirsty = false
	end
end

AddEventHandler('esx_status:onTick', function(statuses)
    local prevHealth = GetEntityHealth(cache.ped)
    local newHealth  = prevHealth

    for _, status in pairs(statuses) do
        if status.name == 'hunger' then
			hunger = math.floor(status.percent)
			hungerVal = status.val
		end if status.name == 'thirst' then
			thirst = math.floor(status.percent)
			thirstVal = status.val
		end if status.name == 'stress' then
			stress = math.floor(status.percent)
			stressVal = status.val
		end
    end

    if not IsDead then
        if hunger == 0 and thirst == 0 then
			notifyBasicNeeds('health')
            newHealth = newHealth - ((prevHealth <= 150) and 5 or 1)
		else
			-- Reduce hunger or thirst if the other is zero
			if hungerVal == 0 and thirstVal > 0 then
				notifyBasicNeeds('hunger')
				TriggerEvent('esx_status:remove', 'thirst', math.floor(cfgBasicNeeds.Decrease.Thirsty.Hunger * (thirst / 10)))
			elseif thirstVal == 0 and hungerVal > 0 then
				notifyBasicNeeds('thirst')
				TriggerEvent('esx_status:remove', 'hunger', math.floor(cfgBasicNeeds.Decrease.Hungry.Thirst * (hunger / 10)))
			end

			-- Reduce health if stress is high
            -- put your code here
		end
    end

    if newHealth ~= prevHealth then SetEntityHealth(cache.ped, newHealth) end
    TriggerEvent("hud:client:UpdateNeeds", hunger, thirst)
	TriggerEvent("hud:client:UpdateStress", stress)
end)