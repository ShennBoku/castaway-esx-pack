local cfg = {
    -- How much should the vehicle visually deform from a collision. Range 0.0 to 10.0 Where 0.0 is no deformation and 10.0 is 10x deformation. -1 = Don't touch.
    -- -Visual damage does not sync well to other players.
    deformationMultiplier = -1,

    -- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change.
    -- Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	deformationExponent = 0.4,

    -- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change.
    -- Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	collisionDamageExponent = 0.6,

    -- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorEngine = 2.0,

    -- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorBody = 3.0,

    -- Sane values are 1 to 200. Higher values means more damage to vehicle. A good starting point is 64
	damageFactorPetrolTank = 64.0,
	
    -- How much should the handling file engine damage setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change.
    -- Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
    engineDamageExponent = 0.6,

    -- How much damage should the vehicle get from weapons fire. Range 0.0 to 10.0, where 0.0 is no damage and 10.0 is 10x damage. -1 = don't touch
	weaponsDamageMultiplier = 0.01,

    -- Speed of slowly degrading health, but not failure. Value of 10 means that it will take about 0.25 second per health point, so degradation from 800 to 305 will
    -- take about 2 minutes of clean driving. Higher values means faster degradation
	degradingHealthSpeedFactor = 10,

    -- Sane values are 1 to 100. When vehicle health drops below a certain point, cascading failure sets in, and the health drops rapidly until the vehicle dies.
    -- Higher values means faster failure. A good starting point is 8
	cascadingFailureSpeedFactor = 8.0,

    -- Below this value, slow health degradation will set in
	degradingFailureThreshold = 330.0,

    -- Below this value, health cascading failure will set in
	cascadingFailureThreshold = 200.0,

    -- Final failure value. Set it too high, and the vehicle won't smoke when disabled. Set too low, and the car will catch fire from a single bullet to the engine.
    -- At health 100 a typical car can take 3-4 bullets to the engine before catching fire.
	engineSafeGuard = 100.0,

    -- Decrease engine torque as engine gets more and more damaged
	torqueMultiplierEnabled = true,

    -- If true, the engine never fails completely, so you will always be able to get to a mechanic unless you flip your vehicle and preventVehicleFlip is set to true
	limpMode = false,

    -- The torque multiplier to use when vehicle is limping. Sane values are 0.05 to 0.25
	limpModeMultiplier = 0.15,

    -- If true, you can't turn over an upside down vehicle
	preventVehicleFlip = false,

    -- If true, the accelerator response is scaled to enable easy slow driving. Will not prevent full throttle. Does not work with binary accelerators like a keyboard.
    -- Set to false to disable. The included stop-without-reversing and brake-light-hold feature does also work for keyboards.
	sundayDriver = false,

    -- The response curve to apply to the accelerator. Range 0.0 to 10.0. Higher values enables easier slow driving, meaning more pressure on the throttle is required
    -- to accelerate forward. Does nothing for keyboard drivers
	sundayDriverAcceleratorCurve = 7.5,

    -- The response curve to apply to the Brake. Range 0.0 to 10.0. Higher values enables easier braking, meaning more pressure on the throttle is required to brake hard.
    -- Does nothing for keyboard drivers
	sundayDriverBrakeCurve = 5.0,

    -- prevents other scripts from modifying the fuel tank health to avoid random engine failure with BVA 2.01 (Downside is it disabled explosion prevention)
	compatibilityMode = false,

    -- Number of minutes (statistically, not precisely) to drive above 22 mph before you get a tire puncture. 0=feature is disabled
	randomTireBurstInterval = 0,

	-- Class Damagefactor Multiplier
	-- The damageFactor for engine, body and Petroltank will be multiplied by this value, depending on vehicle class
	-- Use it to increase or decrease damage for each class
	classDamageMultiplier = {
		[0] = 	0.30,		--	0: Compacts
				0.30,		--	1: Sedans
				0.30,		--	2: SUVs
				0.30,		--	3: Coupes
				0.30,		--	4: Muscle
				0.30,		--	5: Sports Classics
				0.30,		--	6: Sports
				0.30,		--	7: Super
				0.30,		--	8: Motorcycles
				0.40,		--	9: Off-road
				0.25,		--	10: Industrial
				0.30,		--	11: Utility
				0.30,		--	12: Vans
				1.00,		--	13: Cycles
				0.50,		--	14: Boats
				1.00,		--	15: Helicopters
				1.00,		--	16: Planes
				0.30,		--	17: Service
				0.30,		--	18: Emergency
				0.30,		--	19: Military
				1.00,		--	20: Commercial
				1.00		--	21: Trains
	}
}

------------------------------------------
--	iEnsomatic RealisticVehicleFailure  --
------------------------------------------
--
--	Created by Jens Sandalgaard
--      FIXED by Hyperz#0001 ( https://github.com/Itz-Hyperz/RealisticVehicleFailure-FIXED )
--
--	This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
--
--	https://github.com/iEns/RealisticVehicleFailure
--

local pedInSameVehicleLast=false
local vehicle
local lastVehicle
local vehicleClass
local fCollisionDamageMult = 0.0
local fDeformationDamageMult = 0.0
local fEngineDamageMult = 0.0
local fBrakeForce = 1.0
local isBrakingForward = false
local isBrakingReverse = false

local healthEngineLast = 1000.0
local healthEngineCurrent = 1000.0
local healthEngineNew = 1000.0
local healthEngineDelta = 0.0
local healthEngineDeltaScaled = 0.0

local healthBodyLast = 1000.0
local healthBodyCurrent = 1000.0
local healthBodyNew = 1000.0
local healthBodyDelta = 0.0
local healthBodyDeltaScaled = 0.0

local healthPetrolTankLast = 1000.0
local healthPetrolTankCurrent = 1000.0
local healthPetrolTankNew = 1000.0
local healthPetrolTankDelta = 0.0
local healthPetrolTankDeltaScaled = 0.0
local tireBurstLuckyNumber

math.randomseed(GetGameTimer());

local tireBurstMaxNumber = cfg.randomTireBurstInterval * 1200; 												-- the tire burst lottery runs roughly 1200 times per minute
if cfg.randomTireBurstInterval ~= 0 then tireBurstLuckyNumber = math.random(tireBurstMaxNumber) end			-- If we hit this number again randomly, a tire will burst.

local function isPedDrivingAVehicle()
    if cache.vehicle then if kyg.ped.isDriver() then
		local class = GetVehicleClass(cache.vehicle)
		if class ~= 15 and class ~= 16 and class ~=21 and class ~=13 then
			return true
		end
	end end
    return false
end

local function fscale(inputValue, originalMin, originalMax, newBegin, newEnd, curve)
	local NewRange, normalizedCurVal, invFlag = 0.0, 0.0, 0

	if (curve > 10.0) then curve = 10.0 end
	if (curve < -10.0) then curve = -10.0 end
	curve = 10.0 ^ (curve * -.1)

	if (inputValue < originalMin) then inputValue = originalMin end
	if (inputValue > originalMax) then inputValue = originalMax end

	if (newEnd > newBegin) then NewRange = newEnd - newBegin
	else
        NewRange = newBegin - newEnd
        invFlag = 1
	end

	normalizedCurVal  =  (inputValue - originalMin) / (originalMax - originalMin)
	if (originalMin > originalMax) then return 0 end

	return (invFlag == 0) and (((normalizedCurVal ^ curve) * NewRange) + newBegin) or (newBegin - ((normalizedCurVal ^ curve) * NewRange))
end

local function tireBurstLottery()
	local tireBurstNumber = math.random(tireBurstMaxNumber)
	if tireBurstNumber == tireBurstLuckyNumber then
		if GetVehicleTyresCanBurst(vehicle) == false then return end
        
		local affectedTire
		local numWheels = GetVehicleNumberOfWheels(vehicle)
		if numWheels == 2 then affectedTire = (math.random(2) - 1) * 4
		elseif numWheels == 4 then
			affectedTire = (math.random(4) - 1)
			if affectedTire > 1 then affectedTire = affectedTire + 2 end
		elseif numWheels == 6 then affectedTire = (math.random(6) - 1)
        else affectedTire = 0 end

		SetVehicleTyreBurst(vehicle, affectedTire, false, 1000.0)
		tireBurstLuckyNumber = math.random(tireBurstMaxNumber)
	end
end

if cfg.torqueMultiplierEnabled or cfg.preventVehicleFlip or cfg.limpMode then
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(0)
			if cfg.torqueMultiplierEnabled or cfg.sundayDriver or cfg.limpMode then
				if pedInSameVehicleLast then
					local factor = 1.0
					if cfg.torqueMultiplierEnabled and healthEngineNew < 900 then factor = (healthEngineNew + 200.0) / 1100 end
					if cfg.sundayDriver and GetVehicleClass(vehicle) ~= 14 then -- Not for boats
						local accelerator = GetControlValue(2, 71)
						local brake = GetControlValue(2, 72)
						local speed = GetEntitySpeedVector(vehicle, true)['y']
						-- Change Braking force
						local brk = fBrakeForce
						if speed >= 1.0 then
							-- Going forward
							if accelerator > 127 then
								-- Forward and accelerating
								local acc = fscale(accelerator, 127.0, 254.0, 0.1, 1.0, 10.0-(cfg.sundayDriverAcceleratorCurve*2.0))
								factor = factor * acc
							end
							if brake > 127 then
								-- Forward and braking
								isBrakingForward = true
								brk = fscale(brake, 127.0, 254.0, 0.01, fBrakeForce, 10.0-(cfg.sundayDriverBrakeCurve*2.0))
							end
						elseif speed <= -1.0 then
							-- Going reverse
							if brake > 127 then
								-- Reversing and accelerating (using the brake)
								local rev = fscale(brake, 127.0, 254.0, 0.1, 1.0, 10.0-(cfg.sundayDriverAcceleratorCurve*2.0))
								factor = factor * rev
							end
							if accelerator > 127 then
								-- Reversing and braking (Using the accelerator)
								isBrakingReverse = true
								brk = fscale(accelerator, 127.0, 254.0, 0.01, fBrakeForce, 10.0-(cfg.sundayDriverBrakeCurve*2.0))
							end
						else
							-- Stopped or almost stopped or sliding sideways
							local entitySpeed = GetEntitySpeed(vehicle)
							if entitySpeed < 1 then
								-- Not sliding sideways
								if isBrakingForward == true then
									--Stopped or going slightly forward while braking
									DisableControlAction(2,72,true) -- Disable Brake until user lets go of brake
									SetVehicleForwardSpeed(vehicle,speed*0.98)
									SetVehicleBrakeLights(vehicle,true)
								end
								if isBrakingReverse == true then
									--Stopped or going slightly in reverse while braking
									DisableControlAction(2,71,true) -- Disable reverse Brake until user lets go of reverse brake (Accelerator)
									SetVehicleForwardSpeed(vehicle,speed*0.98)
									SetVehicleBrakeLights(vehicle,true)
								end
								if isBrakingForward == true and GetDisabledControlNormal(2,72) == 0 then
									-- We let go of the brake
									isBrakingForward=false
								end
								if isBrakingReverse == true and GetDisabledControlNormal(2,71) == 0 then
									-- We let go of the reverse brake (Accelerator)
									isBrakingReverse=false
								end
							end
						end
						if brk > fBrakeForce - 0.02 then brk = fBrakeForce end -- Make sure we can brake max.
						SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fBrakeForce', brk)  -- Set new Brake Force multiplier
					end
					if cfg.limpMode == true and healthEngineNew < cfg.engineSafeGuard + 5 then
						factor = cfg.limpModeMultiplier
					end
					SetVehicleEngineTorqueMultiplier(vehicle, factor)
				end
			end
			if cfg.preventVehicleFlip then
				local roll = GetEntityRoll(vehicle)
				if (roll > 75.0 or roll < -75.0) and GetEntitySpeed(vehicle) < 2 then
					DisableControlAction(2,59,true) -- Disable left/right
					DisableControlAction(2,60,true) -- Disable up/down
				end
			end
		end
	end)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(100)
		if isPedDrivingAVehicle() then
			vehicle = GetVehiclePedIsIn(cache.ped, false)
			vehicleClass = GetVehicleClass(vehicle)
			healthEngineCurrent = GetVehicleEngineHealth(vehicle)
			if healthEngineCurrent == 1000 then healthEngineLast = 1000.0 end
			healthEngineNew = healthEngineCurrent
			healthEngineDelta = healthEngineLast - healthEngineCurrent
			healthEngineDeltaScaled = healthEngineDelta * cfg.damageFactorEngine * cfg.classDamageMultiplier[vehicleClass]

			healthBodyCurrent = GetVehicleBodyHealth(vehicle)
			if healthBodyCurrent == 1000 then healthBodyLast = 1000.0 end
			healthBodyNew = healthBodyCurrent
			healthBodyDelta = healthBodyLast - healthBodyCurrent
			healthBodyDeltaScaled = healthBodyDelta * cfg.damageFactorBody * cfg.classDamageMultiplier[vehicleClass]

			healthPetrolTankCurrent = GetVehiclePetrolTankHealth(vehicle)
			if cfg.compatibilityMode and healthPetrolTankCurrent < 1 then
				--	SetVehiclePetrolTankHealth(vehicle, healthPetrolTankLast)
				--	healthPetrolTankCurrent = healthPetrolTankLast
				healthPetrolTankLast = healthPetrolTankCurrent
			end
			if healthPetrolTankCurrent == 1000 then healthPetrolTankLast = 1000.0 end
			healthPetrolTankNew = healthPetrolTankCurrent
			healthPetrolTankDelta = healthPetrolTankLast-healthPetrolTankCurrent
			healthPetrolTankDeltaScaled = healthPetrolTankDelta * cfg.damageFactorPetrolTank * cfg.classDamageMultiplier[vehicleClass]

			if healthEngineCurrent > cfg.engineSafeGuard+1 then
				SetVehicleUndriveable(vehicle,false)
			end

			if healthEngineCurrent <= cfg.engineSafeGuard+1 and cfg.limpMode == false then
				SetVehicleUndriveable(vehicle,true)
			end

			-- If ped spawned a new vehicle while in a vehicle or teleported from one vehicle to another, handle as if we just entered the car
			if vehicle ~= lastVehicle then
				pedInSameVehicleLast = false
			end


			if pedInSameVehicleLast == true then
				-- Damage happened while in the car = can be multiplied

				-- Only do calculations if any damage is present on the car. Prevents weird behavior when fixing using trainer or other script
				if healthEngineCurrent ~= 1000.0 or healthBodyCurrent ~= 1000.0 or healthPetrolTankCurrent ~= 1000.0 then

					-- Combine the delta values (Get the largest of the three)
					local healthEngineCombinedDelta = math.max(healthEngineDeltaScaled, healthBodyDeltaScaled, healthPetrolTankDeltaScaled)

					-- If huge damage, scale back a bit
					if healthEngineCombinedDelta > (healthEngineCurrent - cfg.engineSafeGuard) then
						healthEngineCombinedDelta = healthEngineCombinedDelta * 0.7
					end

					-- If complete damage, but not catastrophic (ie. explosion territory) pull back a bit, to give a couple of seconds og engine runtime before dying
					if healthEngineCombinedDelta > healthEngineCurrent then
						healthEngineCombinedDelta = healthEngineCurrent - (cfg.cascadingFailureThreshold / 5)
					end


					------- Calculate new value

					healthEngineNew = healthEngineLast - healthEngineCombinedDelta


					------- Sanity Check on new values and further manipulations

					-- If somewhat damaged, slowly degrade until slightly before cascading failure sets in, then stop

					if healthEngineNew > (cfg.cascadingFailureThreshold + 5) and healthEngineNew < cfg.degradingFailureThreshold then
						healthEngineNew = healthEngineNew-(0.038 * cfg.degradingHealthSpeedFactor)
					end

					-- If Damage is near catastrophic, cascade the failure
					if healthEngineNew < cfg.cascadingFailureThreshold then
						healthEngineNew = healthEngineNew-(0.1 * cfg.cascadingFailureSpeedFactor)
					end

					-- Prevent Engine going to or below zero. Ensures you can reenter a damaged car.
					if healthEngineNew < cfg.engineSafeGuard then
						healthEngineNew = cfg.engineSafeGuard
					end

					-- Prevent Explosions
					if cfg.compatibilityMode == false and healthPetrolTankCurrent < 750 then
						healthPetrolTankNew = 750.0
					end

					-- Prevent negative body damage.
					if healthBodyNew < 0  then
						healthBodyNew = 0.0
					end
				end
			else
				-- Just got in the vehicle. Damage can not be multiplied this round
				-- Set vehicle handling data
				fDeformationDamageMult = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fDeformationDamageMult')
				fBrakeForce = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fBrakeForce')
				local newFDeformationDamageMult = fDeformationDamageMult ^ cfg.deformationExponent	-- Pull the handling file value closer to 1
				if cfg.deformationMultiplier ~= -1 then SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fDeformationDamageMult', newFDeformationDamageMult * cfg.deformationMultiplier) end  -- Multiply by our factor
				if cfg.weaponsDamageMultiplier ~= -1 then SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fWeaponDamageMult', cfg.weaponsDamageMultiplier/cfg.damageFactorBody) end -- Set weaponsDamageMultiplier and compensate for damageFactorBody

				--Get the CollisionDamageMultiplier
				fCollisionDamageMult = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fCollisionDamageMult')
				--Modify it by pulling all number a towards 1.0
				local newFCollisionDamageMultiplier = fCollisionDamageMult ^ cfg.collisionDamageExponent	-- Pull the handling file value closer to 1
				SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fCollisionDamageMult', newFCollisionDamageMultiplier)

				--Get the EngineDamageMultiplier
				fEngineDamageMult = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fEngineDamageMult')
				--Modify it by pulling all number a towards 1.0
				local newFEngineDamageMult = fEngineDamageMult ^ cfg.engineDamageExponent	-- Pull the handling file value closer to 1
				SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fEngineDamageMult', newFEngineDamageMult)

				-- If body damage catastrophic, reset somewhat so we can get new damage to multiply
				if healthBodyCurrent < cfg.cascadingFailureThreshold then
					healthBodyNew = cfg.cascadingFailureThreshold
				end
				pedInSameVehicleLast = true
			end

			-- set the actual new values
			if healthEngineNew ~= healthEngineCurrent then
				SetVehicleEngineHealth(vehicle, healthEngineNew)
			end
			if healthBodyNew ~= healthBodyCurrent then SetVehicleBodyHealth(vehicle, healthBodyNew) end
			if healthPetrolTankNew ~= healthPetrolTankCurrent then SetVehiclePetrolTankHealth(vehicle, healthPetrolTankNew) end

			-- Store current values, so we can calculate delta next time around
			healthEngineLast = healthEngineNew
			healthBodyLast = healthBodyNew
			healthPetrolTankLast = healthPetrolTankNew
			lastVehicle=vehicle
			if cfg.randomTireBurstInterval ~= 0 and GetEntitySpeed(vehicle) > 10 then tireBurstLottery() end
		else
			if pedInSameVehicleLast == true then
				-- We just got out of the vehicle
				lastVehicle = GetVehiclePedIsIn(cache.ped, true)				
				if cfg.deformationMultiplier ~= -1 then SetVehicleHandlingFloat(lastVehicle, 'CHandlingData', 'fDeformationDamageMult', fDeformationDamageMult) end -- Restore deformation multiplier
				SetVehicleHandlingFloat(lastVehicle, 'CHandlingData', 'fBrakeForce', fBrakeForce)  -- Restore Brake Force multiplier
				if cfg.weaponsDamageMultiplier ~= -1 then SetVehicleHandlingFloat(lastVehicle, 'CHandlingData', 'fWeaponDamageMult', cfg.weaponsDamageMultiplier) end	-- Since we are out of the vehicle, we should no longer compensate for bodyDamageFactor
				SetVehicleHandlingFloat(lastVehicle, 'CHandlingData', 'fCollisionDamageMult', fCollisionDamageMult) -- Restore the original CollisionDamageMultiplier
				SetVehicleHandlingFloat(lastVehicle, 'CHandlingData', 'fEngineDamageMult', fEngineDamageMult) -- Restore the original EngineDamageMultiplier
			end
			pedInSameVehicleLast = false
		end
	end
end)