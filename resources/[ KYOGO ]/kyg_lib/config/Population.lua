Config.Population = {
	Use = false, -- set false to disable the scripts

	Ped = {
		Enabled = false,
		Density = 0.00,
		DensityInt = 0.00,
		DensityExt = 0.00
	},

	Vehicle = {
		Enabled = false,
		Density = 0.05
	},

	ParkedVehicle = {
		Enabled = false,
		Density = 0.00
	},

	Setting = {
		RandomCops = false,
		RandomBoats = false,
		WantedLevel = false,
	},

	DisableScenario = {
		Enabled = true,
		List = {
			'WORLD_VEHICLE_ATTRACTOR',
			'WORLD_VEHICLE_AMBULANCE',
			'WORLD_VEHICLE_BICYCLE_BMX',
			'WORLD_VEHICLE_BICYCLE_BMX_BALLAS',
			'WORLD_VEHICLE_BICYCLE_BMX_FAMILY',
			'WORLD_VEHICLE_BICYCLE_BMX_HARMONY',
			'WORLD_VEHICLE_BICYCLE_BMX_VAGOS',
			'WORLD_VEHICLE_BICYCLE_MOUNTAIN',
			'WORLD_VEHICLE_BICYCLE_ROAD',
			'WORLD_VEHICLE_BIKE_OFF_ROAD_RACE',
			'WORLD_VEHICLE_BIKER',
			'WORLD_VEHICLE_BOAT_IDLE',
			'WORLD_VEHICLE_BOAT_IDLE_ALAMO',
			'WORLD_VEHICLE_BOAT_IDLE_MARQUIS',
			'WORLD_VEHICLE_BOAT_IDLE_MARQUIS',
			'WORLD_VEHICLE_BROKEN_DOWN',
			'WORLD_VEHICLE_BUSINESSMEN',
			'WORLD_VEHICLE_HELI_LIFEGUARD',
			'WORLD_VEHICLE_CLUCKIN_BELL_TRAILER',
			'WORLD_VEHICLE_CONSTRUCTION_SOLO',
			'WORLD_VEHICLE_CONSTRUCTION_PASSENGERS',
			'WORLD_VEHICLE_DRIVE_PASSENGERS',
			'WORLD_VEHICLE_DRIVE_PASSENGERS_LIMITED',
			'WORLD_VEHICLE_DRIVE_SOLO',
			'WORLD_VEHICLE_FIRE_TRUCK',
			'WORLD_VEHICLE_EMPTY',
			'WORLD_VEHICLE_MARIACHI',
			'WORLD_VEHICLE_MECHANIC',
			'WORLD_VEHICLE_MILITARY_PLANES_BIG',
			'WORLD_VEHICLE_MILITARY_PLANES_SMALL',
			'WORLD_VEHICLE_PARK_PARALLEL',
			'WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN',
			'WORLD_VEHICLE_PASSENGER_EXIT',
			'WORLD_VEHICLE_POLICE_BIKE',
			'WORLD_VEHICLE_POLICE_CAR',
			'WORLD_VEHICLE_POLICE',
			'WORLD_VEHICLE_POLICE_NEXT_TO_CAR',
			'WORLD_VEHICLE_QUARRY',
			'WORLD_VEHICLE_SALTON',
			'WORLD_VEHICLE_SALTON_DIRT_BIKE',
			'WORLD_VEHICLE_SECURITY_CAR',
			'WORLD_VEHICLE_STREETRACE',
			'WORLD_VEHICLE_TOURBUS',
			'WORLD_VEHICLE_TOURIST',
			'WORLD_VEHICLE_TANDL',
			'WORLD_VEHICLE_TRACTOR',
			'WORLD_VEHICLE_TRACTOR_BEACH',
			'WORLD_VEHICLE_TRUCK_LOGS',
			'WORLD_VEHICLE_TRUCKS_TRAILERS',
			'WORLD_VEHICLE_DISTANT_EMPTY_GROUND',
			'WORLD_HUMAN_PAPARAZZI'
		}
	},

	DefaultRelationship = function()
		SetRelationshipBetweenGroups(3, `AMBIENT_GANG_HILLBILLY`, `PLAYER`)
		SetRelationshipBetweenGroups(3, `AMBIENT_GANG_BALLAS`, `PLAYER`)
		SetRelationshipBetweenGroups(3, `AMBIENT_GANG_MEXICAN`, `PLAYER`)
		SetRelationshipBetweenGroups(3, `AMBIENT_GANG_FAMILY`, `PLAYER`)
		SetRelationshipBetweenGroups(3, `AMBIENT_GANG_MARABUNTE`, `PLAYER`)
		SetRelationshipBetweenGroups(3, `AMBIENT_GANG_SALVA`, `PLAYER`)
		SetRelationshipBetweenGroups(3, `AMBIENT_GANG_LOST`, `PLAYER`)
		SetRelationshipBetweenGroups(3, `GANG_1`, `PLAYER`)
		SetRelationshipBetweenGroups(3, `GANG_2`, `PLAYER`)
		SetRelationshipBetweenGroups(3, `GANG_9`, `PLAYER`)
		SetRelationshipBetweenGroups(3, `GANG_10`, `PLAYER`)
		SetRelationshipBetweenGroups(3, `FIREMAN`, `PLAYER`)
		SetRelationshipBetweenGroups(3, `MEDIC`, `PLAYER`)
		SetRelationshipBetweenGroups(3, `COP`, `PLAYER`)
		SetRelationshipBetweenGroups(3, `PRISONER`, `PLAYER`)
	end,

	-- Pattern string format
	-- 1 will lead to a random number from 0-9.
	-- A will lead to a random letter from A-Z.
	-- . will lead to a random letter or number, with a 50% probability of being either.
	-- ^1 will lead to a literal 1 being emitted.
	-- ^A will lead to a literal A being emitted.
	-- Any other character will lead to said character being emitted.
	-- A string shorter than 8 characters will be padded on the right.
	DefaultPlatePattern = 'CH. A111'
}