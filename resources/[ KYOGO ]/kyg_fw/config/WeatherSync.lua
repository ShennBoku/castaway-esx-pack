cfgWeather                  = {}
cfgWeather.DynamicWeather   = true -- Set this to false if you don't want the weather to change automatically every 10 minutes.

-- On server start
cfgWeather.StartWeather     = 'EXTRASUNNY' -- Default weather                       default: 'EXTRASUNNY'
cfgWeather.BaseTime         = 8 -- Time                                             default: 8
cfgWeather.TimeOffset       = 0 -- Time offset                                      default: 0
cfgWeather.FreezeTime       = false -- freeze time                                  default: false
cfgWeather.Blackout         = false -- Set blackout                                 default: false
cfgWeather.BlackoutVehicle  = false -- Set blackout affects vehicles                default: false
cfgWeather.NewWeatherTimer  = 10 -- Time (in minutes) between each weather change   default: 10
cfgWeather.Disabled         = false -- Set weather disabled                         default: false
cfgWeather.RealTimeSync     = false -- Activate realtime synchronization            default: false

cfgWeather.AvailableWeatherTypes = { -- DON'T TOUCH EXCEPT IF YOU KNOW WHAT YOU ARE DOING
    'EXTRASUNNY',
    'CLEAR',
    'NEUTRAL',
    'SMOG',
    'FOGGY',
    'OVERCAST',
    'CLOUDS',
    'CLEARING',
    'RAIN',
    'THUNDER',
    'SNOW',
    'BLIZZARD',
    'SNOWLIGHT',
    'XMAS',
    'HALLOWEEN',
}