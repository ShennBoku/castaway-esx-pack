return {
	-- General
	['money'] = { label = 'Cash' },
	['black_money'] = { label = 'Marked Money' },
	-- ---------------------------------------------------------------------------------------------------------------



	-- Devices
	['parachute'] = { label = 'Parachute', weight = 1000, stack = false, client = { anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' }, usetime = 1500 }},
	-- ---------------------------------------------------------------------------------------------------------------



	-- Government Job
	-- ---------------------------------------------------------------------------------------------------------------



	-- Police Job
	-- ---------------------------------------------------------------------------------------------------------------



	-- Ambulance Job
	['medicalbag'] = { label = 'Medical Bag', weight = 220, stack = true, description = 'A comprehensive medical kit for treating injuries and ailments.' },
	['bandage'] = { label = 'Bandage', weight = 100, stack = true, description = 'A simple bandage used to cover and protect wounds.' },
	['defibrillator'] = { label = 'Defibrillator', weight = 100, stack = true, description = 'Used for reviving patients.' },
	['tweezers'] = { label = 'Tweezers', weight = 100, stack = true, description = 'Precision tweezers for safely removing foreign objects, such as bullets, from wounds.' },
	['burncream'] = { label = 'Burn Cream', weight = 100, stack = true, description = 'Specialized cream for treating and soothing minor burns and skin irritations.' },
	['suturekit'] = { label = 'Suture Kit', weight = 100, stack = true, description = 'A kit containing surgical tools and materials for stitching and closing wounds.' },
	['icepack'] = { label = 'Ice Pack', weight = 200, stack = true, description = 'An ice pack used to reduce swelling and provide relief from pain and inflammation.' },
	['stretcher'] = { label = 'Ice Pack', weight = 200, stack = true, description = 'An ice pack used to reduce swelling and provide relief from pain and inflammation.' },
	['emstablet'] = { label = 'Ems tablet', weight = 200, stack = true, client = { export = 'ars_ambulancejob.openDistressCalls' }},
	-- ---------------------------------------------------------------------------------------------------------------



	-- Mechanic Job
	-- ---------------------------------------------------------------------------------------------------------------



	-- Restaurant Ingredient's
	-- ---------------------------------------------------------------------------------------------------------------



	-- Restaurant Menu's
	-- ---------------------------------------------------------------------------------------------------------------



	-- Store :: Food & Drinks
	['bread'] = { label = 'Bread', weight = 400, degrade = 4320, client = { status = { hunger = 150000 }, anim = 'eating', prop = 'burger', usetime = 5000 }, description = 'KYGFR - Store it in the refrigerator to keep the drink fresh.' },
	['chips'] = { label = 'Chips', weight = 400, degrade = 4320, client = { status = { hunger = 100000 }, anim = 'eating', prop = 'burger', usetime = 5000 }, description = 'KYGFR - Store it in the refrigerator to keep the drink fresh.' },

	['energydrink'] = { label = 'Energy Drink', weight = 500, degrade = 4320, client = {
		status = { thirst = 150000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = GetHashKey('prop_ecola_can'), pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
		usetime = 5000,
	}, description = 'KYGFR - Store it in the refrigerator to keep the drink fresh.'},
	['water'] = { label = 'Mineral Water', weight = 500, degrade = 4320, client = {
		status = { thirst = 100000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = GetHashKey('prop_ld_flow_bottle'), pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
		usetime = 5000
	}, description = 'KYGFR - Store it in the refrigerator to keep the drink fresh.'},
	['cola'] = { label = 'Soda', weight = 200, degrade = 4320, client = {
		status = { thirst = 150000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = GetHashKey('prop_ecola_can'), pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
		usetime = 5000,
	}, description = 'KYGFR - Store it in the refrigerator to keep the drink fresh.'},
	-- ---------------------------------------------------------------------------------------------------------------



	-- Badside Thing's
	-- ---------------------------------------------------------------------------------------------------------------



	-- Side's Job
	-- ---------------------------------------------------------------------------------------------------------------
}
