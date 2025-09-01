cfgBasicNeeds = {
    Decrease = {
        -- How to count?
        -- 1.000.000 / amount / 60 = Total minutes from full
        -- Sample: 1.000.000 / 100 / 60 = +-166 minutes from full to zero
        -- Use table to set the random amount of decrease (sample: { 150, 200 })

        Idle = { Hunger = 175, Thirst = 225 }, -- Decrease Amount When Idle
        Walking = { Hunger = 200, Thirst = 250 }, -- Decrease Amount When Walking
        Running = { Hunger = 300, Thirst = 350 }, -- Decrease Amount When Running
        Climbing = { Hunger = 300, Thirst = 350 }, -- Decrease Amount When Climbing
        Swimming = { Hunger = 275, Thirst = 325 }, -- Decrease Amount When Swimming

        Hungry = { Thirst = 700 }, -- Decrease Amount When Hungry
        Thirsty = { Hunger = 600 }, -- Decrease Amount When Thirsty
    },
    Reminder = { -- Client Side
        Health = {
            Enabled = true,
            Interval = 45,
            Actions = function()
                lib.notify({ type = 'info', description = 'You lack blood because of hunger and thirst.' })
            end
        },
        Hunger = {
            Enabled = true,
            Interval = 45,
            Actions = function()
                lib.notify({ type = 'info', description = 'You\'re starving.' })
            end
        },
        Thirst = {
            Enabled = true,
            Interval = 45,
            Actions = function()
                lib.notify({ type = 'info', description = 'You\'re dehydrated.' })
            end
        }
    },
    Stress = {
        Notify = { -- Notify Player When Stress Level Increased
            All = false,
            Combat = false,
            Driving = false,
            Shooting = false,
        },
        Combat = {
            Chance = 50, -- Percentage chance of stress if in close combat (1% - 100%).
            Amount = 1000, -- Multiplication of stress increments, formula: (0.0 - 1.0) * amount
        },
        Shooting = {
            Chance = 75, -- Percentage chance of stress while shooting (1% - 100%).
            Amount = 7500, -- Multiplication of stress increments, formula: (0.0 - 1.0) * amount
        },
        MinimumBlur = 50, -- Minimum Stress Level For Screen Blur
        MinimumSpeed = {  -- Speed: Vehicle Speed | Amount: Multiplication of stress increments, formula: (0.0 - 1.0) * amount
            Default = { Speed = 60, Amount = 15000 },
            Bicycle = { Speed = 60, Amount = 15000 },
            Bike = { Speed = 80, Amount = 15000 },
            Boat = { Speed = 120, Amount = 15000 },
            Car = { Speed = 120, Amount = 15000 },
            Heli = { Speed = 160, Amount = 15000 },
            Jetski = { Speed = 120, Amount = 15000 },
            Plane = { Speed = 120, Amount = 15000 },
            Quadbike = { Speed = 80, Amount = 15000 },
            Train = { Speed = 0, Amount = 15000 },
            AmphibiousCar = { Speed = 120, Amount = 15000 },
            AmphibiousQuadbike = { Speed = 80, Amount = 15000 }
        },
        BypassVehicle = {
            Model = { [GetHashKey('shnx_lair24')] = 1, [GetHashKey('shnx_mustanggt')] = 1 },
            Plate = { ['KYOGO 01'] = 1 }
        },
        BlurIntensity = {
            [1] = { min = 50, max = 60, health = 0, intensity = 1500 },
            [2] = { min = 60, max = 70, health = 2, intensity = 2000 },
            [3] = { min = 70, max = 80, health = 4, intensity = 2500 },
            [4] = { min = 80, max = 90, health = 6, intensity = 2700 },
            [5] = { min = 90, max = 99, health = 8, intensity = 3000 },
            [6] = { min = 99, max = 100, health = 100, intensity = 3000 },
        },
        EffectInterval = {
            [1] = { min = 50, max = 60, timeout = math.random(35000, 40000) },
            [2] = { min = 60, max = 70, timeout = math.random(30000, 35000) },
            [3] = { min = 70, max = 80, timeout = math.random(25000, 30000) },
            [4] = { min = 80, max = 90, timeout = math.random(20000, 25000) },
            [5] = { min = 90, max = 99, timeout = math.random(15000, 20000) },
            [6] = { min = 99, max = 100, timeout = math.random(10000, 15000) }
        }
    }
}