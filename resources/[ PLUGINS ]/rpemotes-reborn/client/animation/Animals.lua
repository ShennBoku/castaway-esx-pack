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
    ["bdogbark"] = {
        "creatures@rottweiler@amb@world_dog_barking@idle_a",
        "idle_a",
        "Bark (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogindicateahead"] = {
        "creatures@rottweiler@indication@",
        "indicate_ahead",
        "Indicate Ahead (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogindicatehigh"] = {
        "creatures@rottweiler@indication@",
        "indicate_high",
        "Indicate High (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogindicatelow"] = {
        "creatures@rottweiler@indication@",
        "indicate_low",
        "Indicate Low (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogbeg"] = {
        "creatures@rottweiler@tricks@",
        "beg_loop",
        "Beg (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogbeg2"] = {
        "creatures@rottweiler@tricks@",
        "paw_right_loop",
        "Beg 2 (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdoglayright"] = {
        "creatures@rottweiler@move",
        "dead_right",
        "Lay Right (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdoglayleft"] = {
        "creatures@rottweiler@move",
        "dead_left",
        "Lay Left (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogsitcar"] = {
        "creatures@rottweiler@incar@",
        "sit",
        "Sit in car (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogfhump"] = {
        "creatures@rottweiler@amb@",
        "hump_loop_ladydog",
        "Female Hump (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        },
        AdultAnimation = true,
        AnimalEmote = true
    },
    ["bdogmhump"] = {
        "creatures@rottweiler@amb@",
        "hump_loop_chop",
        "Male Hump (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        },
        AdultAnimation = true,
        AnimalEmote = true
    },
    ["bdogshit"] = {
        "creatures@rottweiler@move",
        "dump_loop",
        "Shit (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_poo",
            PtfxNoProp = true,
            PtfxPlacement = {
                0.10,
                -0.08,
                0.0,
                0.0,
                90.0,
                180.0,
                1.0
            },
            PtfxInfo = locale('poop'),
            PtfxWait = 0,
            PtfxCanHold = true
        }
    },
    ["bdogitch"] = {
        "creatures@rottweiler@amb@world_dog_sitting@idle_a",
        "idle_a",
        "Itch (big dog)",
        AnimationOptions = {
            EmoteDuration = 2000
        }
    },
    ["bdogsleep"] = {
        "creatures@rottweiler@amb@sleep_in_kennel@",
        "sleep_in_kennel",
        "Sleep (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "bdogupk",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogsit"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpee"] = {
        "creatures@rottweiler@move",
        "pee_left_idle",
        "Pee (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                -0.15,
                -0.35,
                0.0,
                0.0,
                90.0,
                180.0,
                1.0
            },
            PtfxInfo = locale('pee'),
            PtfxWait = 0,
            PtfxCanHold = true
        }
    },
    ["bdogpee2"] = {
        "creatures@rottweiler@move",
        "pee_right_idle",
        "Pee 2 (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                0.15,
                -0.35,
                0.0,
                0.0,
                90.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('pee'),
            PtfxWait = 0,
            PtfxCanHold = true
        }
    },
    ["bdogglowa"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "nill",
        "Glow Stick (big dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 31086,
            PropPlacement = {
                0.2000,
                0.000,
                -0.0600,
                90.00,
                0.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bdogglowb"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Glow Stick Sitting (big dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 31086,
            PropPlacement = {
                0.2000,
                0.000,
                -0.0600,
                90.00,
                0.00,
                0.00
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpridea"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride A (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag1', -- Rainbow
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag1',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogprideb"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride B - LGBTQIA (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag2', -- LGBTQIA
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag2',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpridec"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride C - Bisexual (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag3', -- Bisexual
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag3',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogprided"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride D - Lesbian (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag4', -- Lesbian
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag4',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpridee"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride E - Pansexual (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag5', -- Pansexual
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag5',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpridef"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride F - Transgender  (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Transgender
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag6',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogprideg"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride G - Non Binary (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag7', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag7',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogprideh"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride H - Asexual (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag8', -- Asexual
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag8',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpridei"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride I - Straight Ally (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag9', -- Straight Ally
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag9',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogfw"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "nill",
        "Firework - Big Dog",
        AnimationOptions = {
            Prop = 'ind_prop_firework_01', -- blue, green, red, purple pink, cyan, yellow, white
            PtfxColor = {{R = 255, G = 0, B = 0, A = 1.0}, {R = 0, G = 255, B = 0, A = 1.0}, {R = 0, G = 0, B = 255, A = 1.0}, {R = 177, G = 5, B = 245, A = 1.0}, {R = 251, G = 3, B = 255, A = 1.0}, {R = 2, G = 238, B = 250, A = 1.0}, {R = 252, G = 248, B = 0, A = 1.0}, {R = 245, G = 245, B = 245, A = 1.0}},
            PropBone = 31086,
            PropPlacement = {
                0.1400,
                0.3300,
                -0.0800,
                -85.6060,
                -176.7400,
                -9.8767
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_indep_fireworks",
            PtfxName = "scr_indep_firework_trail_spawn",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.6
            },
            PtfxInfo = locale('firework'),
            PtfxWait = 200
        }
    },
    ["bdogfris"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "nill",
        "Frisbee (big dog)",
        AnimationOptions = {
            Prop = 'p_ld_frisbee_01',
            PropBone = 31086,
            PropPlacement = {
                0.2600,
                0.0200,
               -0.0600,
               -173.7526,
               -169.4149,
                21.4173
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },

    ---- ANIMAL EMOTES ----
    ----   SMALL DOG   ----

    ["sdogbark"] = {
        "creatures@pug@amb@world_dog_barking@idle_a",
        "idle_a",
        "Bark (small dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["sdogitch"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_a",
        "Itch (small dog)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogsit"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Sit (small dog)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogld"] = {
        "misssnowie@little_doggy_lying_down",
        "base",
        "Lay Down (small dog)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogshake"] = {
        "creatures@pug@amb@world_dog_barking@idle_a",
        "idle_c",
        "Shake (small dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["sdogdance"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance (small dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdance2"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance 2 (small dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdancepridea"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride A (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag1',
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdanceprideb"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride B - LGBTQIA (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag2', -- LGBTQIA
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdancepridec"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride C - Bisexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag3', -- Bisexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdanceprided"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride D - Lesbian (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag4', -- Lesbian
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdancepridee"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride E - Pansexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag5', -- Pansexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdancepridef"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride F - Transgender  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Transgender
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdanceprideg"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride G - Non Binary (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag7', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdanceprideh"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride H - Asexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag8', -- Asexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdancepridei"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride I - Straight Ally (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag9', -- Straight Ally
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogbb"] = {
        "creatures@pug@move",
        "nill",
        "Baseball (small dog)",
        AnimationOptions = {
            Prop = 'w_am_baseball',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0500,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogburger"] = {
        "creatures@pug@move",
        "nill",
        "Burger (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_burger_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0400,
                0.0000,
                -90.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogcontroller"] = {
        "creatures@pug@move",
        "nill",
        "Controller (small dog)",
        AnimationOptions = {
            Prop = 'prop_controller_01',
            PropBone = 31086,
            PropPlacement = {
                0.1800,
                -0.0300,
                0.0000,
                -180.000,
                90.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdolla"] = {
        "creatures@pug@move",
        "nill",
        "Dollar Bill (small dog)",
        AnimationOptions = {
            Prop = 'p_banknote_onedollar_s',
            PropBone = 31086,
            PropPlacement = {
                0.1700,
                -0.0100,
                0.0000,
                90.0000,
                0.0000,
                0.000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdolla2"] = {
        "creatures@pug@move",
        "nill",
        "Dollar Bill Scrunched  (small dog)",
        AnimationOptions = {
            Prop = 'bkr_prop_scrunched_moneypage',
            PropBone = 31086,
            PropPlacement = {
                0.1700,
                0.000,
                0.0000,
                90.0000,
                00.0000,
                00.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdolla3"] = {
        "creatures@pug@move",
        "nill",
        "Money Stack  (small dog)",
        AnimationOptions = {
            Prop = 'bkr_prop_money_wrapped_01',
            PropBone = 31086,
            PropPlacement = {
                0.1700,
                -0.0100,
                0.0000,
                90.0000,
                0.0000,
                0.000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdolla4"] = {
        "creatures@pug@move",
        "nill",
        "Money Bag  (small dog)",
        AnimationOptions = {
            Prop = 'ch_prop_ch_moneybag_01a',
            PropBone = 31086,
            PropPlacement = {
                0.1200,
                -0.2000,
                0.0000,
                -79.9999997,
                90.00,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogmic"] = {
        "creatures@pug@move",
        "nill",
        "Microphone (small dog)",
        AnimationOptions = {
            Prop = 'p_ing_microphonel_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0170,
                0.0300,
                0.000,
                0.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogteddy"] = {
        "creatures@pug@move",
        "nill",
        "Teddy (small dog)",
        AnimationOptions = {
            Prop = 'v_ilev_mr_rasberryclean',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.1100,
                -0.23,
                0.000,
                0.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogteddy2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Teddy 2 (small dog)",
        AnimationOptions = {
            Prop = 'v_ilev_mr_rasberryclean',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.1100,
                -0.23,
                0.000,
                0.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogtennis"] = {
        "creatures@pug@move",
        "nill",
        "Tennis Ball (small dog)",
        AnimationOptions = {
            Prop = 'prop_tennis_ball',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0600,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogtennisr"] = {
        "creatures@pug@move",
        "nill",
        "Tennis Racket (small dog)",
        AnimationOptions = {
            Prop = 'prop_tennis_rack_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0200,
                0.00,
                0.000,
                0.0000,
                -28.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogrose"] = {
        "creatures@pug@move",
        "nill",
        "Rose (small dog)",
        AnimationOptions = {
            Prop = 'prop_single_rose',
            PropBone = 12844,
            PropPlacement = {
                0.1090,
                -0.0140,
                0.0500,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogrose2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Rose Sit (small dog)",
        AnimationOptions = {
            Prop = 'prop_single_rose',
            PropBone = 12844,
            PropPlacement = {
                0.1090,
                -0.0140,
                0.0500,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogggun"] = {
        "creatures@pug@move",
        "nill",
        "Gun Gold (small dog)",
        AnimationOptions = {
            Prop = 'w_pi_pistol_luxe',
            PropBone = 12844,
            PropPlacement = {
                0.2010,
                -0.0080,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoggun2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Gun Gold Sit (small dog)",
        AnimationOptions = {
            Prop = 'w_pi_pistol_luxe',
            PropBone = 12844,
            PropPlacement = {
                0.2010,
                -0.0080,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogstun"] = {
        "creatures@pug@move",
        "nill",
        "Stun Gun (small dog)",
        AnimationOptions = {
            Prop = 'w_pi_stungun',
            PropBone = 12844,
            PropPlacement = {
                0.1400,
                -0.0100,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "core",
            PtfxName = "blood_stungun",
            PtfxPlacement = {
                0.208,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('stun'),
            PtfxWait = 200
        }
    },
    ["sdoggl1"] = {
        "creatures@pug@move",
        "nill",
        "Aviators (small dog)",
        AnimationOptions = {
            Prop = 'prop_aviators_01',
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0400,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoggl2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Aviators Sitting (small dog)",
        AnimationOptions = {
            Prop = 'prop_aviators_01',
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0400,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdoggl3"] = {
        "creatures@pug@move",
        "nill",
        "Sunglasses (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_sol_glasses',
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoggl4"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Sunglasses Sitting (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_sol_glasses',
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdoghd1"] = {
        "creatures@pug@move",
        "nill",
        "Hot Dog (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_hotdog_01',
            PropBone = 31086,
            PropPlacement = {
                0.1300,
                -0.0250,
                0.000,
                -88.272053,
                -9.8465858,
                -0.1488562
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoghd2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Hot Dog Sitting (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_hotdog_01',
            PropBone = 31086,
            PropPlacement = {
                0.1300,
                -0.0250,
                0.000,
                -88.272053,
                -9.8465858,
                -0.1488562
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdoghlmt1"] = {
        "creatures@pug@move",
        "nill",
        "Helmet 1 (small dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_sports_helmet',
            PropBone = 31086,
            PropPlacement = {
                0.00,
                -0.0200,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoghlmt2"] = {
        "creatures@pug@move",
        "nill",
        "Helmet 2 (small dog)",
        AnimationOptions = {
            Prop = 'prop_hard_hat_01',
            PropBone = 31086,
            PropPlacement = {
                0.00,
                0.1300,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoghat"] = {
        "creatures@pug@move",
        "nill",
        "Hat 1 (small dog)",
        AnimationOptions = {
            Prop = 'prop_proxy_hat_01',
            PropBone = 31086,
            PropPlacement = {
                0.0,
                0.1200,
                0.000,
                -99.8510766,
                80.1489234,
                1.7279411
            },
            SecondProp = 'prop_aviators_01',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0400,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoghat2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Hat 2 Sitting (small dog)",
        AnimationOptions = {
            Prop = 'prop_proxy_hat_01',
            PropBone = 31086,
            PropPlacement = {
                0.0,
                0.1200,
                0.000,
                -99.8510766,
                80.1489234,
                1.7279411
            },
            SecondProp = 'prop_aviators_01',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0400,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogsteak"] = {
        "creatures@pug@move",
        "nill",
        "Steak (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_steak',
            PropBone = 31086,
            PropPlacement = {
                0.1800,
                -0.0200,
                0.000,
                90.00,
                0.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogsteak2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_c",
        "Steak 2 Lay Down (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_steak',
            PropBone = 31086,
            PropPlacement = {
                0.1800,
                -0.0200,
                0.000,
                90.00,
                0.00,
                0.00
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridea"] = {
        "creatures@pug@move",
        "nill",
        "Pride A (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag1',
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogprideb"] = {
        "creatures@pug@move",
        "nill",
        "Pride B - LGBTQIA (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag2', -- LGBTQIA
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogpridec"] = {
        "creatures@pug@move",
        "nill",
        "Pride C - Bisexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag3', -- Bisexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogprided"] = {
        "creatures@pug@move",
        "nill",
        "Pride D - Lesbian (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag4', -- Lesbian
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogpridee"] = {
        "creatures@pug@move",
        "nill",
        "Pride E - Pansexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag5', -- Pansexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogpridef"] = {
        "creatures@pug@move",
        "nill",
        "Pride F - Transgender  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Transgender
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogprideg"] = {
        "creatures@pug@move",
        "nill",
        "Pride G - Non Binary (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogprideh"] = {
        "creatures@pug@move",
        "nill",
        "Pride H - Non Binary (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag7', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogpridei"] = {
        "creatures@pug@move",
        "nill",
        "Pride I - Asexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag8', -- Asexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogpridesita"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride A Sit (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag1',
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesitb"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride B Sit LGBTQIA  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag2', -- LGBTQIA
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesitc"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride C Sit Bisexual  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag3', -- Bisexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesitd"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride D Sit Lesbian (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag4', -- Lesbian
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesite"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride E Sit Pansexual  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag5', -- Pansexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesitf"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride F Sit Transgender   (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Transgender
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesitg"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride G Sit Non Binary (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag7', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesith"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride H Sit Asexual  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag8',
            -- Asexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesiti"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride I Sit Straight Ally  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag9', -- Straight Ally
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpee"] = {
        "creatures@pug@move",
        "nill",
        "Pee (Small Dog)",
        AnimationOptions = {
            EmoteLoop = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                -0.01,
                -0.17,
                0.09,
                0.0,
                90.0,
                140.0,
                1.0
            },
            PtfxInfo = locale('pee'),
            PtfxWait = 0,
            PtfxCanHold = true
        }
    },
    ["sdogshit"] = {
        "creatures@pug@move",
        "nill",
        "Shit (Small Dog)",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_poo",
            PtfxNoProp = true,
            PtfxBone = 11816,
            PtfxPlacement = {
               -0.0330,
                0.0210,
               -0.0040,
                0.0,
                0.0,
                0.0,
                0.5
            },
            PtfxInfo = locale('poop'),
            PtfxWait = 0,
            PtfxCanHold = true
        }
    },
    ["sdogfw"] = {
        "creatures@pug@move",
        "nill",
        "Firework - Small Dog",
        AnimationOptions = {
            Prop = 'ind_prop_firework_01', -- blue, green, red, purple pink, cyan, yellow, white
             PtfxColor = {{R = 255, G = 0, B = 0, A = 1.0}, {R = 0, G = 255, B = 0, A = 1.0}, {R = 0, G = 0, B = 255, A = 1.0}, {R = 177, G = 5, B = 245, A = 1.0}, {R = 251, G = 3, B = 255, A = 1.0}, {R = 2, G = 238, B = 250, A = 1.0}, {R = 252, G = 248, B = 0, A = 1.0}, {R = 245, G = 245, B = 245, A = 1.0}},
            PropBone = 31086,
            PropPlacement = {
                0.1330,
               -0.0210,
               -0.2760,
                0.0,
               -180.0,
                44.0000
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_indep_fireworks",
            PtfxName = "scr_indep_firework_trail_spawn",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.6
            },
            PtfxInfo = locale('firework'),
            PtfxWait = 200
        }
    },
    ["sdogfris"] = {
        "creatures@pug@move",
        "nill",
        "Frisbee (small dog)",
        AnimationOptions = {
            Prop = 'p_ld_frisbee_01',
            PropBone = 31086,
            PropPlacement = {
                0.1900,
               -0.0150,
                0.0000,
              -90.0000,
              120.0000,
                0.000,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
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