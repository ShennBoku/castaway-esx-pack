--[[
#   88888888ba         db         ad88888ba   88888888888     88888888888  88b           d88    ,ad8888ba,  888888888888  88888888888
#   88      "8b       d88b       d8"     "8b  88              88           888b         d888   d8"'    `"8b      88       88
#   88      ,8P      d8'`8b      Y8,          88              88           88`8b       d8'88  d8'        `8b     88       88
#   88aaaaaa8P'     d8'  `8b     `Y8aaaaa,    88aaaaa         88aaaaa      88 `8b     d8' 88  88          88     88       88aaaaa
#   88""""""8b,    d8YaaaaY8b      `"""""8b,  88"""""         88"""""      88  `8b   d8'  88  88          88     88       88"""""
#   88      `8b   d8""""""""8b           `8b  88              88           88   `8b d8'   88  Y8,        ,8P     88       88
#   88      a8P  d8'        `8b  Y8a     a8P  88              88           88    `888'    88   Y8a.    .a8P      88       88
#   88888888P"  d8'          `8b  "Y88888P"   88888888888     88888888888  88     `8'     88    `"Y8888Y"'       88       88888888888
--]] return {
    ------ HUMAN EXIT EMOTES  ------
    ["getup"] = {
        "get_up@sat_on_floor@to_stand",
        "getup_0",
        "Get Up",
        AnimationOptions = {
            EmoteDuration = 2000,
            StartDelay = 600
        }
    },
    ["getup2"] = {
        "anim@scripted@aoa@ship_climb@male@",
        "getup_a",
        "Get Up 2",
        AnimationOptions = {
            StartDelay = 600
        }
    },
    ["meditateup"] = {
        "rcmcollect_paperleadinout@",
        "meditate_getup",
        "Meditate Get Up",
        AnimationOptions = {
            EmoteDuration = 2000
        }
    },
    ["standup"] = {
        "get_up@directional@movement@from_knees@injured",
        "getup_l_0",
        "Stand Up",
        AnimationOptions = {
            EmoteDuration = 2000,
            StartDelay = 600
        }
    },
    ["surrender_exit"] = {
        "random@arrests",
        "kneeling_arrest_get_up",
        "Surrender Exit",
        AnimationOptions = {
            EmoteDuration = 2200
        }
    },
    ["offchair"] = {
        "switch@michael@sitting",
        "exit_forward",
        "Off Chair",
        AnimationOptions = {
            EmoteDuration = 1000
        }
    },
    ["offtable"] = {
        "anim@amb@board_room@diagram_blueprints@",
        "look_around_01_amy_skater_01",
        "Off Tabble",
        AnimationOptions = {
            EmoteDuration = 5700
        }
    },
    ["phoneaway"] = {
        "amb@world_human_stand_mobile@male@text@exit",
        "exit",
        "Phone Away",
        AnimationOptions = {
            EmoteDuration = 1780,
            StartDelay = 1150,
            EmoteMoving = true
        }
    },
    ["breakfreefont"] = {
        "mp_arresting",
        "a_uncuff",
        "Break Free Front",
        AnimationOptions = {
            EmoteDuration = 6099,
            StartDelay = 450,
            EmoteMoving = true
        }
    },
    ["breakfreeback"] = {
        "mp_arresting",
        "b_uncuff",
        "Break Free Back",
        AnimationOptions = {
            EmoteDuration = 6099,
            StartDelay = 450,
            EmoteMoving = true
        }
    },
    ["shakeitoffhuman"] = {
        "move_m@_idles@shake_off",
        "shakeoff_1",
        "Shake Off The Rain",
        AnimationOptions = {
            EmoteDuration = 2899,
            StartDelay = 850,
            EmoteMoving = true
        }
    },
    ------ ANIMAL EXIT EMOTES  ------
    ["sdogup"] = {
        "creatures@pug@amb@world_dog_sitting@exit",
        "exit",
        "Small Dog Get Up",
        AnimationOptions = {
            EmoteDuration = 1000
        }
    },
    ["bdogup"] = {
        "creatures@rottweiler@amb@world_dog_sitting@exit",
        "exit",
        "Big Dog Get Up",
        AnimationOptions = {
            EmoteDuration = 1000
        }
    },
    ["bdogupk"] = {
        "creatures@rottweiler@amb@sleep_in_kennel@",
        "exit_kennel",
        "Big Dog Get Up V2",
        AnimationOptions = {
            EmoteDuration = 5000
        }
    }
},


--[[
#     ,ad8888ba,   88        88   ad88888ba  888888888888  ,ad8888ba,    88b           d88     88888888888  88b           d88    ,ad8888ba,  888888888888  88888888888  
#    d8"'    `"8b  88        88  d8"     "8b      88      d8"'    `"8b   888b         d888     88           888b         d888   d8"'    `"8b      88       88           
#   d8'            88        88  Y8,              88     d8'        `8b  88`8b       d8'88     88           88`8b       d8'88  d8'        `8b     88       88           
#   88             88        88  `Y8aaaaa,        88     88          88  88 `8b     d8' 88     88aaaaa      88 `8b     d8' 88  88          88     88       88aaaaa      
#   88             88        88    `"""""8b,      88     88          88  88  `8b   d8'  88     88"""""      88  `8b   d8'  88  88          88     88       88"""""      
#   Y8,            88        88          `8b      88     Y8,        ,8P  88   `8b d8'   88     88           88   `8b d8'   88  Y8,        ,8P     88       88           
#    Y8a.    .a8P  Y8a.    .a8P  Y8a     a8P      88      Y8a.    .a8P   88    `888'    88     88           88    `888'    88   Y8a.    .a8P      88       88           
#     `"Y8888Y"'    `"Y8888Y"'    "Y88888P"       88       `"Y8888Y"'    88     `8'     88     88888888888  88     `8'     88    `"Y8888Y"'       88       88888888888  
--]] {}