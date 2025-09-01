return {
	General = {
		name = 'Store',
		blip = { id = 59, colour = 69, scale = 0.6 },
		inventory = {
			{ name = 'chips',		price = 12 },
			{ name = 'bread',		price = 15 },
			{ name = 'water',		price = 10 },
			{ name = 'cola',		price = 10 },
		},
		targets = {
			-- FiveM 24/7
			{ loc = vec3(24.98, -1347.29, 29.7), size = vec3(0.5, 0.4, 0.41), heading = 0.0 }, -- Innocence Blvd, Elgin Ave (crossing), Strawberry
			{ loc = vec3(-3039.14, 585.01, 8.11), size = vec3(0.5, 0.4, 0.41), heading = 287.85 }, -- Ineseno Road, Banham Canyon
			{ loc = vec3(-3242.25, 1000.49, 13.03), size = vec3(0.5, 0.4, 0.41), heading = 265.149 }, -- Barbareno Rd, Chumash
			{ loc = vec3(1728.33, 6415.02, 35.24), size = vec3(0.5, 0.4, 0.41), heading = 333.95 }, -- Senora Fwy, Mount Chiliad
			{ loc = vec3(1960.52, 3740.29, 32.55), size = vec3(0.5, 0.4, 0.41), heading = 29.99 }, -- Alhambra Dr, Niland Ave (crossing), Sandy Shores
			{ loc = vec3(548.56, 2671.25, 42.36), size = vec3(0.5, 0.4, 0.41), heading = 8.39 }, -- Route 68, Harmony
			{ loc = vec3(2678.27, 3279.87, 55.45), size = vec3(0.5, 0.4, 0.41), heading = 60.89 }, -- Senora Fwy, Grand Senora Desert
			{ loc = vec3(2557.21, 381.33, 108.83), size = vec3(0.5, 0.4, 0.41), heading = 87.349 }, -- Palomino Fwy, Tataviam Mountains
			{ loc = vec3(373.06, 326.32, 103.77), size = vec3(0.5, 0.4, 0.41), heading = 166.1 }, -- Clinton Ave, Downtown Vinewood

			-- FiveM LTD
			{ loc = vec3(1698.34, 4923.41, 42.26), size = vec3(0.46, 0.41, 0.41), heading = 54.9 },
			{ loc = vec3(-706.7, -913.69, 19.41),  size = vec3(0.46, 0.41, 0.41), heading = 0.05 },
			{ loc = vec3(-47.24, -1757.63, 29.62), size = vec3(0.46, 0.41, 0.41), heading = 320.05 },
			{ loc = vec3(1164.15, -322.9, 69.4),   size = vec3(0.46, 0.41, 0.41), heading = 10.7 },
			-- { loc = vec3(-1226.7, 6927.75, 20.65), size = vec3(0.50, 0.75, 0.45), heading = 344.75 }, -- Roxwood County
		}
	},

	-- Liquor = {
	-- 	name = 'Liquor Store',
	-- 	blip = { id = 93, colour = 69, scale = 0.6 },
	-- 	inventory = {
	-- 		{ name = 'energydrink',	price = 10 },
	-- 	},
	-- 	targets = {
	-- 		{ loc = vec3(1134.9, -982.34, 46.41), length = 0.5, width = 0.5, heading = 96.0, minZ = 46.4, maxZ = 46.8, distance = 1.5 },
	-- 		{ loc = vec3(-1222.33, -907.82, 12.43), length = 0.6, width = 0.5, heading = 32.7, minZ = 12.3, maxZ = 12.7, distance = 1.5 },
	-- 		{ loc = vec3(-1486.67, -378.46, 40.26), length = 0.6, width = 0.5, heading = 133.77, minZ = 40.1, maxZ = 40.5, distance = 1.5 },
	-- 		{ loc = vec3(-2967.0, 390.9, 15.14), length = 0.7, width = 0.5, heading = 85.23, minZ = 15.0, maxZ = 15.4, distance = 1.5 },
	-- 		{ loc = vec3(1165.95, 2710.20, 38.26), length = 0.6, width = 0.5, heading = 178.84, minZ = 38.1, maxZ = 38.5, distance = 1.5 },
	-- 		{ loc = vec3(1393.0, 3605.95, 35.11), length = 0.6, width = 0.6, heading = 200.0, minZ = 35.0, maxZ = 35.4, distance = 1.5 }
	-- 	}
	-- },

	YouTool = {
		name = 'YouTool',
		blip = { id = 402, colour = 69, scale = 0.6 },
		inventory = {
			{ name = 'lockpick', price = 10 }
		},
		targets = {
			{ loc = vec3(2746.97, 3473.14, 55.83), size = vec3(0.39, 3.34, 2.33), heading = 337.2 },
		}
	},

	-- Ammunation = {
	-- 	name = 'Ammunation',
	-- 	blip = {
	-- 		id = 110, colour = 69, scale = 0.6
	-- 	}, inventory = {
	-- 		{ name = 'ammo-9', price = 5, },
	-- 		{ name = 'WEAPON_KNIFE', price = 200 },
	-- 		{ name = 'WEAPON_BAT', price = 100 },
	-- 		{ name = 'WEAPON_PISTOL', price = 1000, metadata = { registered = true }, license = 'weapon' }
	-- 	}, locations = {
	-- 		vec3(-662.180, -934.961, 21.829),
	-- 		vec3(810.25, -2157.60, 29.62),
	-- 		vec3(1693.44, 3760.16, 34.71),
	-- 		vec3(-330.24, 6083.88, 31.45),
	-- 		vec3(252.63, -50.00, 69.94),
	-- 		vec3(22.56, -1109.89, 29.80),
	-- 		vec3(2567.69, 294.38, 108.73),
	-- 		vec3(-1117.58, 2698.61, 18.55),
	-- 		vec3(842.44, -1033.42, 28.19)
	-- 	}, targets = {
	-- 		{ loc = vec3(-660.92, -934.10, 21.94), length = 0.6, width = 0.5, heading = 180.0, minZ = 21.8, maxZ = 22.2, distance = 2.0 },
	-- 		{ loc = vec3(808.86, -2158.50, 29.73), length = 0.6, width = 0.5, heading = 360.0, minZ = 29.6, maxZ = 30.0, distance = 2.0 },
	-- 		{ loc = vec3(1693.57, 3761.60, 34.82), length = 0.6, width = 0.5, heading = 227.39, minZ = 34.7, maxZ = 35.1, distance = 2.0 },
	-- 		{ loc = vec3(-330.29, 6085.54, 31.57), length = 0.6, width = 0.5, heading = 225.0, minZ = 31.4, maxZ = 31.8, distance = 2.0 },
	-- 		{ loc = vec3(252.85, -51.62, 70.0), length = 0.6, width = 0.5, heading = 70.0, minZ = 69.9, maxZ = 70.3, distance = 2.0 },
	-- 		{ loc = vec3(23.68, -1106.46, 29.91), length = 0.6, width = 0.5, heading = 160.0, minZ = 29.8, maxZ = 30.2, distance = 2.0 },
	-- 		{ loc = vec3(2566.59, 293.13, 108.85), length = 0.6, width = 0.5, heading = 360.0, minZ = 108.7, maxZ = 109.1, distance = 2.0 },
	-- 		{ loc = vec3(-1117.61, 2700.26, 18.67), length = 0.6, width = 0.5, heading = 221.82, minZ = 18.5, maxZ = 18.9, distance = 2.0 },
	-- 		{ loc = vec3(841.05, -1034.76, 28.31), length = 0.6, width = 0.5, heading = 360.0, minZ = 28.2, maxZ = 28.6, distance = 2.0 }
	-- 	}
	-- },

	-- Vending Machines
	VendingMachineDrinks = {
		name = 'Vending Machine',
		inventory = {
			{ name = 'water',			price = 15 },
			{ name = 'cola',			price = 20 },
		},
		model = { `prop_vend_soda_02`, `prop_vend_fridge01`, `prop_vend_water_01`, `prop_vend_soda_01` }
	},

	VendingMachineSnacks = {
		name = 'Vending Machine',
		inventory = {
			{ name = 'chips',			price = 20 },
			{ name = 'bread',			price = 25 },
		},
		model = { `prop_vend_snak_01` }
	},
	-- ---------------------------------------------------------------------------------------------------------------
}
