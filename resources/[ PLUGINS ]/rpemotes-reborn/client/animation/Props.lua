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
    ["umbrella"] = {
        "amb@world_human_drinking@coffee@male@base",
        "base",
        "Umbrella - Middle",
        AnimationOptions = {
            Prop = "p_amb_brolly_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0200,
               -0.0360,
                0.0,
                10.0,
                0.0,
            },
            EmoteLoop = true,
            EmoteMoving = true,
            ExitEmote = "shakeitoffhuman",
            ExitEmoteType = "Exits"
        }
    },
    ['umbrella2'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Umbrella 2 - Right Shoulder',
        AnimationOptions = {
            Prop = 'p_amb_brolly_01',
            PropBone = 28422,
            PropPlacement = {
                0.0700,
                0.0100,
                0.1100,
                2.3402393,
                -150.9605721,
                57.3374916
            },
            EmoteLoop = true,
            EmoteMoving = true,
            ExitEmote = "shakeitoffhuman",
            ExitEmoteType = "Exits"
        }
    },
    ['umbrella3'] = { -- Custom Emote Provided To RPEmotes By Mr Witt
        'mrwitt@rain_dreamy_pose',
        'mrwitt',
        'Umbrella 3 - Rain Check',
        AnimationOptions = {
            Prop = 'p_amb_brolly_01',
            PropBone = 58867,
            PropPlacement = {
                0.0150,
                0.0340,
               -0.0340,
               16.0040,
               -6.7284,
               -0.9319
            },
            EmoteLoop = true,
            EmoteMoving = true,
            ExitEmote = "shakeitoffhuman",
            ExitEmoteType = "Exits"
        }
    },
    ['umbrella4'] = { -- Custom Emote  By Mr ultrahacx
        'custom@hold_umbrella',
        'hold_left',
        'Umbrella 4 - Hold Left',
        AnimationOptions = {
            Prop = 'p_amb_brolly_01',
            PropBone = 60309,
            PropPlacement = {
                0.0600,
               -0.0100,
                0.0200,
              -94.3996,
               -1.7343,
                9.9656
            },
            EmoteLoop = true,
            EmoteMoving = true,
            ExitEmote = "shakeitoffhuman",
            ExitEmoteType = "Exits"
        }
    },
    -----------------------------------------------------------------------------------------------------
    ------ This is an example of an emote with 2 props, pretty simple! ----------------------------------
    -----------------------------------------------------------------------------------------------------
    ["notepad"] = {
        "missheistdockssetup1clipboard@base",
        "base",
        "Notepad",
        AnimationOptions = {
            Prop = 'prop_notepad_01',
            PropBone = 18905,
            PropPlacement = {
                0.1,
                0.02,
                0.05,
                10.0,
                0.0,
                0.0
            },
            SecondProp = 'prop_pencil_01',
            SecondPropBone = 58866,
            SecondPropPlacement = {
                0.11,
                -0.02,
                0.001,
                -120.0,
                0.0,
                0.0
            },
            -- EmoteLoop is used for emotes that should loop, its as simple as that.
            -- Then EmoteMoving is used for emotes that should only play on the upperbody.
            -- The code then checks both values and sets the MovementType to the correct one
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["box"] = {
        "anim@heists@box_carry@",
        "idle",
        "Box",
        AnimationOptions = {
            Prop = "hei_prop_heist_box",
            PropBone = 60309,
            PropPlacement = {
                0.025,
                0.08,
                0.255,
                -145.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gift"] = {
        "hold_flowers@dad", -- Custom Animation By Darks Animations
        "hold_flowers_clip",
        "Gift",
        AnimationOptions = {
            Prop = 'bzzz_prop_gift_orange',
            PropBone = 60309,
            PropPlacement = {
                 0.0180,
                 0.0390,
                 0.1160,
               -82.4097,
              -157.5768,
               -27.6738
            },
            EmoteMoving = true
        }
    },
    ["gift2"] = {
        "hold_flowers@dad", -- Custom Animation By Darks Animations
        "hold_flowers_clip",
        "Gift 2",
        AnimationOptions = {
            Prop = 'bzzz_prop_gift_purple',
            PropBone = 60309,
            PropPlacement = {
                 0.0180,
                 0.0390,
                 0.1160,
               -82.4097,
              -157.5768,
               -27.6738
            },
            EmoteMoving = true
        }
    },
	["k12saw"] = {
        "anim@heists@fleeca_bank@drilling",
        "drill_straight_end",
        "Firefighter K12 Saw",
        AnimationOptions = {
            Prop = "prop_tool_consaw",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0900,
                0.0500,
                -70.3009797,
                71.0092017,
                83.759421
            },
            EmoteLoop = true,
            EmoteMoving = true,
			PtfxAsset = "scr_paletoscore",
            PtfxName = "scr_paleto_box_sparks",
            PtfxNoProp = true,
            PtfxPlacement = {
                0.20,
                0.88,
                0.25,
                0.0,
                90.0,
                180.0,
                1.1
            },
            PtfxInfo = locale('cut'),
            PtfxWait = 0.8,
            PtfxCanHold = false -- we set this to false, but yet it allows us to hold
        }
    },
	["carryextinguisher"] = {
        "amb@lo_res_idles@",
        "world_human_musician_bongos_lo_res_base",
        "Firefighter Extinguisher",
        AnimationOptions = {
            Prop = "prop_fire_exting_1a",
            PropBone = 28422,
            PropPlacement = {
                0.1500,
                0.1400,
                -0.5200,
                179.7874004,
                -178.5954846,
                4.5961806
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
	["maskup"] = {
        "anim@mp_helmets@on_foot",
        "visor_up",
        "Firefighter Unmask",
        AnimationOptions = {
			EmoteDuration = 800, -- Even with EmoteLoop = false, this emote still loops, so we add a duration to force it to stop after a set amount of milliseconds.
			EmoteMoving = true,
        }
    },
	["maskdown"] = {
        "anim@mp_helmets@on_foot",
        "visor_down",
        "Firefighter Mask",
        AnimationOptions = {
			EmoteDuration = 800, -- Even with EmoteLoop = false, this emote still loops, so we add a duration to force it to stop after a set amount of milliseconds.
			EmoteMoving = true,
        }
    },
    ["masktakeoff"] = {
        "anim@scripted@bty5@ig1_intimidate_actor@female_heeled@",
        "mask_action_b",
        "Take Off Mask",
        AnimationOptions = {
			EmoteMoving = true,
        }
    },
	["adjustbag"] = {
        "amb@world_human_hiker_standing@male@idle_a",
        "idle_b",
        "Firefighter Adjust Tank / Bag",
        AnimationOptions = {
			EmoteMoving = true,
			EmoteDuration = 9500
        }
    },
	["adjustpanel"] = {
        "anim@scripted@heist@ig9_control_tower@male@",
        "loop",
        "Firefighter Pump PSI",
        AnimationOptions = {
            EmoteLoop = true,
			EmoteMoving = true
        }
    },
    ["cake"] = { -- Custom Prop & Emote By BzZz
        "anim@heists@box_carry@",
        "idle",
        "Birthday Cake",
        AnimationOptions = {
            Prop = 'bzzz_prop_cake_birthday_001',
            PropBone = 18905,
            PropPlacement = {
                0.33,
                0.09,
                0.2,
               -128.0,
               -245.0,
                2.0
            },
            EmoteMoving = true
        }
    },
    ["cake2"] = { -- Custom Prop & Emote By BzZz
        "anim@heists@box_carry@",
        "idle",
        "Baby Cake",
        AnimationOptions = {
            Prop = 'bzzz_prop_cake_baby_001',
            PropBone = 18905,
            PropPlacement = {
                0.33,
                0.09,
                0.2,
               -94.0,
               -162.0,
                -44.0
            },
            EmoteMoving = true
        }
    },
    ["cake3"] = { -- Custom Prop & Emote By BzZz
        "anim@heists@box_carry@",
        "idle",
        "Casino Cake",
        AnimationOptions = {
            Prop = 'bzzz_prop_cake_casino001',
            PropBone = 18905,
            PropPlacement = {
                0.33,
                0.09,
                0.2,
               -54.0,
               -72.0,
                -6.0
            },
            EmoteMoving = true
        }
    },
    ["cake4"] = { -- Custom Prop & Emote By BzZz
        "anim@heists@box_carry@",
        "idle",
        "Love Cake",
        AnimationOptions = {
            Prop = 'bzzz_prop_cake_love_001',
            PropBone = 18905,
            PropPlacement = {
                0.28,
                0.06,
                0.2,
               -54.0,
               -72.0,
                -6.0
            },
            EmoteMoving = true
        }
    },
    ["cake5"] = {
        "anim@heists@box_carry@",
        "idle",
        "Unicorn Cake",
        AnimationOptions = { -- Custom Prop By PataMods
            Prop = 'pata_cake',
            PropBone = 28422,
            PropPlacement = {
                0.0,
               -0.0700,
               -0.0400,
               10.0000,
                0.0000,
                0.0000
            },
            EmoteMoving = true
        }
    },
    ["cake6"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pride Cake",
        AnimationOptions = { -- Custom Prop By PataMods
            Prop = 'pata_cake2',
            PropBone = 28422,
            PropPlacement = {
                0.0,
               -0.0700,
               -0.0400,
               10.0000,
                0.0000,
                0.0000
            },
            EmoteMoving = true
        }
    },
    ["cake7"] = { -- Custom Prop By PataMods
        "anim@heists@box_carry@",
        "idle",
        "Chocolate Mud Cake",
        AnimationOptions = {
            Prop = 'pata_cake3',
            PropBone = 28422,
            PropPlacement = {
               -0.0100,
               -0.0390,
               -0.0800,
               10.0000,
                0.0000,
                0.0000
            },
            EmoteMoving = true
        }
    },
    ["cakew"] = {
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Birthday",
        AnimationOptions = {
            Prop = "bzzz_prop_cake_birthday_001",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cakew2"] = { -- Custom Prop & Emote By BzZz
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Baby",
        AnimationOptions = {
            Prop = "bzzz_prop_cake_baby_001",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
                80.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cakew3"] = { -- Custom Prop & Emote By BzZz
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Casino",
        AnimationOptions = {
            Prop = "bzzz_prop_cake_casino001",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
             -160.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cakew4"] = { -- Custom Prop & Emote By BzZz
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Love",
        AnimationOptions = {
            Prop = "bzzz_prop_cake_love_001",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
              180.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cakew5"] = {
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Unicorn",
        AnimationOptions = {
            Prop = "pata_cake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.1100,
                0.0,
                0.0,
               30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cakew6"] = {
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Pride",
        AnimationOptions = {
            Prop = "pata_cake2",
            PropBone = 28422,
            PropPlacement = {
                0.0000,
                0.0000,
                0.1100,
                0.0,
                0.0,
               20.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cakew7"] = { -- Custom Prop & Emote By BzZz
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Chocolate Mud",
        AnimationOptions = {
            Prop = "pata_cake3",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.1100,
                0.0,
                0.0,
               30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["rose"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Rose",
        AnimationOptions = {
            Prop = "prop_single_rose",
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.15,
                0.0,
                -100.0,
                0.0,
                -20.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
     },
    ["dollar"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Dollar",
        AnimationOptions = {
            Prop = "p_banknote_onedollar_s",
            PropBone = 60309,
            PropPlacement = {
               -0.0020,
               -0.0030,
                0.0320,
               82.2434,
             -106.9746,
                1.3733
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["balloon"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Balloon",
        AnimationOptions = {
            Prop = "heart_balloon",
            PropBone = 60309,
            PropPlacement = {
                0.25,
               -0.84,
                0.53,
             -157.2041,
             -101.1702,
              28.0243
            },
            EmoteStuck = true,
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["balloon2"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Balloon 2 - Pride",
        AnimationOptions = {
            Prop = "pride_heart_balloon",
            PropBone = 60309,
            PropPlacement = {
                1.0600,
                0.4900,
                0.0140,
               73.5103,
              -30.9638,
               19.3946
            },
            EmoteStuck = true,
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["smoke2"] = {
        "amb@world_human_aa_smoke@male@idle_a",
        "idle_c",
        "Smoke 2",
        AnimationOptions = {
            Prop = 'ng_proc_cigarette01a',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.07,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["smoke3"] = {
        "amb@world_human_aa_smoke@male@idle_a",
        "idle_b",
        "Smoke 3",
        AnimationOptions = {
            Prop = 'ng_proc_cigarette01a',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.07,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["smoke4"] = {
        "amb@world_human_smoking@female@idle_a",
        "idle_b",
        "Smoke 4",
        AnimationOptions = {
            Prop = 'ng_proc_cigarette01a',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.07,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["smoke5"] = { -- Custom Emote Provided To RPEmotes By Mr Witt
        "mrwitt@composed_photo_moments",
        "mrwitt",
        "Smoke 5",
        AnimationOptions = {
            Prop = 'ng_proc_cigarette01a',
            PropBone = 64097,
            PropPlacement = {
                0.0020,
                0.0010,
               -0.0090,
                0.0,
                0.0,
                50.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.07,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["smoke6"] = {
        "anim@amb@carmeet@checkout_car@",
        "smoke_male_a_idle_b",
        "Smoke 6",
        AnimationOptions = {
            Prop = 'ng_proc_cigarette01a',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.07,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["vape"] = {
        "amb@world_human_smoking@male@male_b@base",
        "base",
        "Vape",
        AnimationOptions = {
            Prop = 'ba_prop_battle_vape_01',
            PropBone = 28422,
            PropPlacement = {
                -0.0290,
                0.0070,
                -0.0050,
                91.0,
                270.0,
                -360.0
            },
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "scr_agencyheistb",
            PtfxName = "scr_agency3b_elec_box",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.170,
                0.0,
                0.0,
                0.0,
                0.0,
                1.4
            },
            PtfxInfo = locale('vape'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["vape2"] = {
        "amb@world_human_smoking@male@male_b@base",
        "base",
        "Vape 2",
        AnimationOptions = {
            Prop = 'xm3_prop_xm3_vape_01a',
            PropBone = 28422,
            PropPlacement = {
                -0.02,
                -0.02,
                0.02,
                58.0,
                110.0,
                10.0
            },
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "scr_agencyheistb",
            PtfxName = "scr_agency3b_elec_box",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.170,
                0.0,
                0.0,
                0.0,
                0.0,
                1.4
            },
            PtfxInfo = locale('vape'),
            PtfxWait = 1.8,
            PtfxCanHold = true
        }
    },
    ["bong"] = {
        "anim@safehouse@bong",
        "bong_stage3",
        "Bong",
        AnimationOptions = {
            Prop = 'prop_bong_01',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.25,
                0.0,
                95.0,
                190.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_agencyheistb",
            PtfxName = "scr_agency3b_elec_box",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.170,
                0.0,
                0.0,
                0.0,
                0.0,
                1.4
            },
            PtfxInfo = locale('vape'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["bong2"] = {
        "anim@safehouse@bong",
        "bong_stage3",
        "Bong 2",
        AnimationOptions = {
            Prop = 'xm3_prop_xm3_bong_01a',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.25,
                0.0,
                95.0,
                190.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_agencyheistb",
            PtfxName = "scr_agency3b_elec_box",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.170,
                0.0,
                0.0,
                0.0,
                0.0,
                1.4
            },
            PtfxInfo = locale('vape'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["bong3"] = {
        "sit_bong@dark",
        "sit_bong_clip",
        "Bong 3 - Sit & Rip",
        AnimationOptions = {
            Prop = 'prop_bong_01',
            PropBone = 60309,
            PropPlacement = {
                0.0490,
               -0.2000,
                0.0800,
              -85.0199,
              102.3320,
              -15.0085
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_agencyheistb",
            PtfxName = "scr_agency3b_elec_box",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.170,
                0.0,
                0.0,
                0.0,
                0.0,
                1.4
            },
            PtfxInfo = locale('vape'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["bong4"] = {
        "sit_bong@dark",
        "sit_bong_clip",
        "Bong 4 - Sit & Rip Purple",
        AnimationOptions = {
            Prop = 'xm3_prop_xm3_bong_01a',
            PropBone = 60309,
            PropPlacement = {
                0.0490,
               -0.2000,
                0.0800,
              -85.0199,
              102.3320,
              -15.0085
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_agencyheistb",
            PtfxName = "scr_agency3b_elec_box",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.170,
                0.0,
                0.0,
                0.0,
                0.0,
                1.4
            },
            PtfxInfo = locale('vape'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["joint2"] = { -- Custom Emote Provided To RPEmotes By Sel of Darks Animations
        "smoke_m@sel",
        "smoke_m_clip",
        "Pass The Blunt",
        AnimationOptions = {
            Prop = 'p_cs_joint_01',
            PropBone = 26612,
            PropPlacement = {
                0.0540,
               -0.0120,
			    0.0480,
              172.3040,
             -131.4506,
               45.1778
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.07,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('smoke'),
            PtfxWait = 0.5,
            PtfxCanHold = true
        }
    },
    ["fishing1"] = {
        "amb@world_human_stand_fishing@idle_a",
        "idle_a",
        "Fishing 1",
        AnimationOptions = {
            Prop = 'prop_fishing_rod_01',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["fishing2"] = {
        "amb@world_human_stand_fishing@idle_a",
        "idle_b",
        "Fishing 2",
        AnimationOptions = {
            Prop = 'prop_fishing_rod_01',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["fishing3"] = {
        "amb@world_human_stand_fishing@idle_a",
        "idle_c",
        "Fishing 3",
        AnimationOptions = {
            Prop = 'prop_fishing_rod_01',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["icefishing"] = { -- Custom Emote By EP
        "timetable@ron@ig_3_couch",
        "base",
        "Ice Fishing",
        AnimationOptions = {
            Prop = 'pprp_icefishing_box_02',
            PropBone = 0,
            PropPlacement = {
                -0.05,
                0.0,
                -0.63,
                7.0,
                0.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["icefishing2"] = { -- Custom Emote By EP
        "move_weapon@jerrycan@generic",
        "idle",
        "Ice Fishing 2",
        AnimationOptions = {
            Prop = 'pprp_icefishing_box_01',
            PropBone = 28422,
            PropPlacement = {
                0.8,
                0.03,
                0.04,
                0.0,
                -90.0,
                100.0
            },
            SecondProp = 'pprp_icefishing_augur',
            SecondPropBone = 24818,
            SecondPropPlacement = {
                -0.8,
                -0.2,
                0.0,
                0.0,
                90.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["suitcase"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Suitcase",
        AnimationOptions = {
            Prop = "prop_ld_suitcase_01",
            PropBone = 57005,
            PropPlacement = {
                0.35,
                0.0,
                0.0,
                0.0,
                266.0,
                90.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["suitcase2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Suitcase 2",
        AnimationOptions = {
            Prop = "prop_security_case_01",
            PropBone = 57005,
            PropPlacement = {
                0.13,
                0.0,
                -0.01,
                0.0,
                280.0,
                90.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["boombox"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Boombox",
        AnimationOptions = {
            Prop = "prop_boombox_01",
            PropBone = 57005,
            PropPlacement = {
                0.27,
                0.0,
                0.0,
                0.0,
                263.0,
                58.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["boombox2"] = {
        "molly@boombox1",
        "boombox1_clip",
        "Boombox 2",
        AnimationOptions = {
            Prop = "prop_cs_sol_glasses",
            PropBone = 31086,
            PropPlacement = {
                0.0440,
                0.0740,
                0.0000,
                -160.9843,
                -88.7288,
                -0.6197
            },
            SecondProp = 'prop_ghettoblast_02',
            SecondPropBone = 10706,
            SecondPropPlacement = {
                -0.2310,
                -0.0770,
                0.2410,
                -179.7256,
                176.7406,
                23.0190
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["toolbox"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Toolbox",
        AnimationOptions = {
            Prop = "prop_tool_box_04",
            PropBone = 28422,
            PropPlacement = {
                0.3960,
                0.0410,
                -0.0030,
                -90.00,
                0.0,
                90.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["toolbox2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Toolbox 2",
        AnimationOptions = {
            Prop = "imp_prop_tool_box_01a",
            PropBone = 28422,
            PropPlacement = {
                0.3700,
                0.0200,
                0.0,
                90.00,
                0.0,
              -90.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["toolbox3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Toolbox 3",
        AnimationOptions = {
            Prop = "xm3_prop_xm3_tool_box_01a",
            PropBone = 28422,
            PropPlacement = {
                0.3700,
                0.0200,
                0.0,
                90.00,
                0.0,
              -90.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["toolbox4"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Toolbox 4",
        AnimationOptions = {
            Prop = "xm3_prop_xm3_tool_box_02a",
            PropBone = 28422,
            PropPlacement = {
                0.3700,
                0.0200,
                0.0,
                90.00,
                0.0,
              -90.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
     },
    ["cashbox"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Cash Box",
        AnimationOptions = {
            Prop = "m23_1_prop_m31_cashbox_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0550,
                0.0090,
               -0.0100,
                90.00,
                0.0,
              -81.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbag"] = {
        "missfbi4prepp1",
        "_idle_garbage_man",
        "Garbage Bag",
        AnimationOptions = {
            Prop = "prop_cs_street_binbag_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0400,
                -0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beerbox"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beer Box 1",
        AnimationOptions = {
            Prop = "v_ret_ml_beerdus",
            PropBone = 57005,
            PropPlacement = {
                0.22,
                0.0,
                0.0,
                0.0,
                266.0,
                48.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beerbox2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beer Box 2",
        AnimationOptions = {
            Prop = "v_ret_ml_beeram",
            PropBone = 57005,
            PropPlacement = {
                0.22,
                0.0,
                0.0,
                0.0,
                266.0,
                48.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beerbox3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beer Box 3",
        AnimationOptions = {
            Prop = "v_ret_ml_beerpride",
            PropBone = 57005,
            PropPlacement = {
                0.22,
                0.0,
                0.0,
                0.0,
                266.0,
                48.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beerbox4"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beer Box 4",
        AnimationOptions = {
            Prop = "v_ret_ml_beerbar",
            PropBone = 57005,
            PropPlacement = {
                0.22,
                0.0,
                0.0,
                0.0,
                266.0,
                60.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mugshot"] = {
        "mp_character_creation@customise@male_a",
        "loop",
        "Mugshot",
        AnimationOptions = {
            Prop = 'prop_police_id_board',
            PropBone = 58868,
            PropPlacement = {
                0.12,
                0.24,
                0.0,
                5.0,
                0.0,
                70.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["coffee"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Coffee",
        AnimationOptions = {
            Prop = 'p_amb_coffeecup_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["coffeecall"] = {
        "switch@michael@coffee_w_dave",
        "002291_02_fbi_3_coffee_w_dave_idle_dave",
        "Coffee Phone Call",
        AnimationOptions = {
            Prop = 'p_ing_coffeecup_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
               -0.0140,
                0.0,
                0.0,
			   90.0
            },
            SecondProp = 'prop_phone_ing',
			PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            SecondPropBone = 60309,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["whiskey"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Whiskey",
        AnimationOptions = {
            Prop = 'prop_drink_whisky',
            PropBone = 28422,
            PropPlacement = {
                0.01,
                -0.01,
                -0.06,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["whiskeyb"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_a",
        "Whiskey Bottle",
        AnimationOptions = {
            Prop = 'ba_prop_battle_whiskey_bottle_2_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.05,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beer"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_c",
        "Beer",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.06,
                0.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beer2"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_c",
        "Beer 2",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.06,
                0.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beer3"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_a",
        "Beer 3",
        AnimationOptions = {
            Prop = 'p_cs_bottle_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beer4"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_b",
        "Beer 4 - Pour One Out For The Homies",
        AnimationOptions = {
            Prop = 'p_cs_bottle_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["beer5"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_c",
        "Beer 5",
        AnimationOptions = {
            Prop = 'p_cs_bottle_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["whiskeyb2"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_a",
        "Whiskey Bottle 2",
        AnimationOptions = {
            Prop = 'ba_prop_battle_whiskey_bottle_2_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.05,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["whiskeyb3"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_a",
        "Whiskey Bottle 3",
        AnimationOptions = {
            Prop = 'ba_prop_battle_whiskey_bottle_2_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.05,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["beerf"] = {
        "amb@world_human_drinking@beer@female@idle_a",
        "idle_a",
        "Beer Female",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.0,
                0.05,
                15.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beercan"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Beer Can",
        AnimationOptions = {
            Prop = 'v_res_tt_can01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                80.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beercan2"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Beer Can 2",
        AnimationOptions = {
            Prop = 'v_res_tt_can02',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
             -150.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beercan3"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Beer Can 3",
        AnimationOptions = {
            Prop = 'h4_prop_h4_can_beer_01a',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
               -0.0700,
                0.0,
                0.0,
                90.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wine2"] = {
        "amb@world_human_drinking@beer@female@idle_a",
        "idle_e",
        "Wine 2 - Bottle",
        AnimationOptions = {
            Prop = 'prop_wine_rose',
            PropBone = 28422,
            PropPlacement = {
                -0.0,
                0.04,
                -0.19,
                10.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            --       PropPlacement = {-0.0, 0.03, -0.20, 5.0, 0.0, 0.0},
            --     F&B   L&R   U&D  R.F&B
        }
    },
    ["beerf3"] = {
        "amb@world_human_drinking@beer@female@idle_a",
        "idle_a",
        "Beer Female 3",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.0,
                0.05,
                15.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["beerf4"] = {
        "fix_stu_ext-1",
        "a_f_y_studioparty_01^1_dual-1",
        "Beer Female 4",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.08,
                0.11,
                0.0,
                -74.0,
                0.0,
                0.0,
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["beerf5"] = {
        "anim@scripted@freemode_npc@fix_dre_studio_entourage_b@",
        "stand_drink_cup_female_a_base",
        "Beer Female 5",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.0,
                0.05,
                15.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["wine3"] = {
        "amb@world_human_drinking@beer@female@idle_a",
        "idle_e",
        "Wine 3 - Bottle",
        AnimationOptions = {
            Prop = 'prop_wine_rose',
            PropBone = 28422,
            PropPlacement = {
                -0.0,
                0.04,
                -0.19,
                10.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["cup"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Cup",
        AnimationOptions = {
            Prop = 'prop_plastic_cup_02',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["apple"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Apple",
        AnimationOptions = {
            Prop = 'sf_prop_sf_apple_01b',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0150,
                -0.0200,
                -124.6964,
                -166.5760,
                8.4572
            },
            EmoteMoving = true
        }
    },
    ["taco"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Taco",
        AnimationOptions = {
            Prop = 'prop_taco_01',
            PropBone = 60309,
            PropPlacement = {
                -0.0170,
                0.0070,
                -0.0210,
                107.9846,
                -105.0251,
                55.7779
            },
            EmoteMoving = true
        }
    },
    ["hotdog"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Hotdog",
        AnimationOptions = {
            Prop = 'prop_cs_hotdog_02',
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                0.0100,
                -0.0100,
                95.1071,
                94.7001,
                -66.9179
            },
            EmoteMoving = true
        }
    },
    ["bagel"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Bagel",
        AnimationOptions = {
            Prop = 'p_ing_bagel_01',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.05,
                0.03,
              145.3975,
              -53.8984,
                4.8412
            },
            EmoteMoving = true
        }
    },
    ["donut"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Donut",
        AnimationOptions = {
            Prop = 'prop_amb_donut',
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.05,
                0.02,
                -50.0,
                16.0,
                60.0
            },
            EmoteMoving = true
        }
    },
    ["donut2"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Donut Chocolate",
        AnimationOptions = {
            Prop = 'bzzz_foodpack_donut002',
            PropBone = 60309,
            PropPlacement = {
                0.0000,
                -0.0300,
                -0.0100,
                10.0000,
                0.0000,
                -1.0000
            },
            EmoteMoving = true
        }
    },
    ["donut3"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Donut Raspberry",
        AnimationOptions = {
            Prop = 'bzzz_foodpack_donut001',
            PropBone = 60309,
            PropPlacement = {
                0.0000,
                -0.0300,
                -0.0100,
                10.0000,
                0.0000,
                -1.0000
            },
            EmoteMoving = true
        }
    },
    ["desert"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Eat dessert",
        AnimationOptions = {
            Prop = 'bzzz_food_dessert_a',
            PropBone = 18905,
            PropPlacement = {
                0.15,
                0.03,
                0.03,
                -42.0,
                -36.0,
                0.0
            },
            EmoteMoving = true
        }
    },
    ["croissant"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Croissant",
        AnimationOptions = {
            Prop = 'bzzz_foodpack_croissant001',
            PropBone = 60309,
            PropPlacement = {
                0.0000,
                0.0000,
                -0.0100,
                0.0000,
                0.0000,
                90.0000
            },
            EmoteMoving = true
        }
    },
    ["gingerbread"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Gingerbread Man",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_gingerbread_a',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.04,
                0.03,
                18.0,
                164.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["candycane"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Candy Cane - Red",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_lollipop_a',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.02,
                0.03,
               -73.0,
                146.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["candycaneb"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Candy Cane - Green",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_lollipop_b',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.02,
                0.03,
               -73.0,
                146.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["candycanec"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Candy Cane - Purple",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_lollipop_c',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.02,
                0.03,
               -73.0,
                146.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["candycaned"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Candy Cane - Yellow",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_lollipop_d',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.02,
                0.03,
               -73.0,
                146.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["candycanee"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Candy Cane - Blue",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_lollipop_e',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.02,
                0.03,
               -73.0,
                146.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["meat"] = {
        "move_crouch_proto",
        "idle",
        "Meat On A Stick",
        AnimationOptions = {
            Prop = 'bzzz_camp_stick_kebab',
            PropBone = 64080,
            PropPlacement = {
               0.0600,
               0.0500,
              -0.1600,
              17.0651,
             -30.9089,
              60.0374
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["meat2"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Meat On A Fork",
        AnimationOptions = {
            Prop = 'bzzz_camp_food_kebab',
            PropBone = 18905,
            PropPlacement = {
               0.14,
               0.02,
               0.01,
             -24.0,
             -80.0,
               9.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mallow"] = {
        "move_crouch_proto",
        "idle",
        "Marshmallow Stick - White",
        AnimationOptions = {
            Prop = 'bzzz_camp_stick_marshmallow',
            PropBone = 64080,
            PropPlacement = {
               0.0600,
               0.0500,
              -0.1600,
              17.0651,
             -30.9089,
              60.0374
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mallow2"] = {
        "move_crouch_proto",
        "idle",
        "Marshmallow Stick - Pink",
        AnimationOptions = {
            Prop = 'bzzz_camp_stick_mellopink',
            PropBone = 64080,
            PropPlacement = {
               0.0600,
               0.0500,
              -0.1600,
              17.0651,
             -30.9089,
              60.0374
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mallow3"] = {
        "move_crouch_proto",
        "idle",
        "Marshmallow Stick - Burnt",
        AnimationOptions = {
            Prop = 'bzzz_camp_stick_melloburnt',
            PropBone = 64080,
            PropPlacement = {
               0.0600,
               0.0500,
              -0.1600,
              17.0651,
             -30.9089,
              60.0374
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mallow4"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Marshmallow On A Fork - White",
        AnimationOptions = {
            Prop = 'bzzz_camp_food_marshmallow',
            PropBone = 18905,
            PropPlacement = {
               0.14,
               0.02,
               0.01,
             -24.0,
             -80.0,
               9.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mallow5"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Marshmallow On A Fork - Pink",
        AnimationOptions = {
            Prop = 'bzzz_camp_food_mellopink',
            PropBone = 18905,
            PropPlacement = {
               0.14,
               0.02,
               0.01,
             -24.0,
             -80.0,
               9.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mallow6"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Marshmallow On A Fork - Burnt",
        AnimationOptions = {
            Prop = 'bzzz_camp_food_melloburnt',
            PropBone = 18905,
            PropPlacement = {
               0.14,
               0.02,
               0.01,
             -24.0,
             -80.0,
               9.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["macaroon"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Macaroon",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_macaroon_a',
            PropBone = 18905,
            PropPlacement = {
                0.15,
                0.07,
                0.00,
                38.0,
                7.0,
                7.0
            },
            EmoteMoving = true
        }
    },
    ["xmasmug"] = { -- Custom Prop by BzZz
        "mp_player_intdrink",
        "loop_bottle",
        "Xmas Mug - Tea",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_mug_a',
            PropBone = 18905,
            PropPlacement = {
                0.09,
               -0.01,
                0.08,
               -44.0,
                137.0,
                9.0
            },
            EmoteMoving = true
        }
    },
    ["xmasmug2"] = { -- Custom Prop by BzZz
        "mp_player_intdrink",
        "loop_bottle",
        "Xmas Mug - Coffee",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_mug_b',
            PropBone = 18905,
            PropPlacement = {
                0.09,
               -0.01,
                0.08,
               -44.0,
                137.0,
                9.0
            },
            EmoteMoving = true
        }
    },
    ["xmaswine"] = { -- Custom Prop by BzZz
        "mp_player_intdrink",
        "loop_bottle",
        "Xmas Mulled Wine",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_mulled_wine_a',
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.03,
                0.05,
               -110.0,
               -47.0,
                7.0
            },
            EmoteMoving = true
        }
    },
    ["cocoa"] = {
        "amb@world_human_aa_coffee@base",
        "base",
        "Xmas Cocoa",
        AnimationOptions = {
            Prop = 'pata_christmasfood1',
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.1100,
                -0.1300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["xmassf"] = { -- Custom Prop by PataMods
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Snowflake Cookie",
        AnimationOptions = {
            Prop = 'pata_christmasfood2',
            PropBone = 60309,
            PropPlacement = {
                0.0200,
                -0.0500,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = true
        }
    },
    ["xmascc"] = { -- Custom Prop by PataMods
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Cupcake",
        AnimationOptions = {
            Prop = 'pata_christmasfood6',
            PropBone = 60309,
            PropPlacement = {
                0.0100,
                0.0200,
               -0.0100,
               -170.1788,
                87.6716,
                30.0540
            },
            EmoteMoving = true
        }
    },
    ["xmascc2"] = { -- Custom Prop by PataMods
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Cupcake 2",
        AnimationOptions = {
            Prop = 'pata_christmasfood8',
            PropBone = 60309,
            PropPlacement = {
                0.0200,
                0.0,
               -0.0100,
                9.3608,
              -90.1809,
               66.3689
            },
            EmoteMoving = true
        }
    },
    ["xmasic"] = {
        "anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1",
        "base_idle",
        "Xmas Ice Cream",
        AnimationOptions = {
            Prop = "pata_christmasfood7",
            PropBone = 60309,
            PropPlacement = {
               -0.0460,
                0.0000,
               -0.0300,
                0.0,
                0.0,
               -50.0000
            },
            SecondProp = 'h4_prop_h4_coke_spoon_01',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
               20.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pizzaslice"] = { -- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Jalapeño And Peperoni",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice1',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["pizzas"] = { -- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Jalapeño And Peperoni",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice1',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["pizzas2"] = { -- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Tomato And Pesto",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice2',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["pizzas3"] = { -- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Mushroom",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice3',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["pizzas4"] = { -- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Margherita",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice4',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["pizzas5"] = { -- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Double Peperoni",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice5',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["eat"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Eat",
        AnimationOptions = {
            Prop = 'prop_cs_burger_01',
            PropBone = 60309,
            PropPlacement = {
                0.0000,
                0.0000,
               -0.0200,
               30.0000,
                0.0000,
                0.0000,
            },
            EmoteMoving = true
        }
    },
    ["burger"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Burger",
        AnimationOptions = {
            Prop = 'prop_cs_burger_01',
            PropBone = 60309,
            PropPlacement = {
                0.0000,
                0.0000,
               -0.0200,
               30.0000,
                0.0000,
                0.0000,
            },
            EmoteMoving = true
        }
    },
    ["burgerpose"] = { -- Custom Emote By Dark Animations exclusive to RPEmotes exclusive to RPEmotes
        "brugershot_dark_fixed@dark",
        "brugershot_dark_fixed_clip",
        "Burger - Pose",
        AnimationOptions = {
            Prop = 'prop_cs_burger_01',
            PropBone = 60309,
            PropPlacement = {
                0.0460,
                0.0140,
                0.0460,
                3.4346,
               20.1823,
              -10.000
            },
            SecondProp = 'ba_prop_battle_sports_helmet',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0400,
               -0.0100,
               -0.2000,
              176.3835,
             -169.3724,
               19.6834
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sandwich"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Sandwich",
        AnimationOptions = {
            Prop = 'prop_sandwich_01',
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.05,
                0.02,
                -50.0,
                16.0,
                60.0
            },
            EmoteMoving = true
        }
    },
    ["soda"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Soda - eCola Can",
        AnimationOptions = {
            Prop = 'prop_ecola_can',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                130.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["soda2"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Soda 2 - Sprunk Can",
        AnimationOptions = {
            Prop = 'ng_proc_sodacan_01b',
            PropBone = 28422,
            PropPlacement = {
                0.0050,
               -0.0010,
               -0.0800,
                0.0,
                0.0,
                160.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["soda3"] = {
        "amb@code_human_wander_drinking@male@base",
        "static",
        "Soda 3 - P's & Q's Cup",
        AnimationOptions = {
            Prop = 'v_ret_fh_bscup',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0400,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["soda4"] = {
        "amb@code_human_wander_drinking@male@base",
        "static",
        "Soda 4 - Burger Shot Cup",
        AnimationOptions = {
            Prop = 'prop_cs_bs_cup',
            PropBone = 28422,
            PropPlacement = {
                0.0060,
                0.0010,
                0.0,
                0.0,
                0.0,
             -150.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["soda5"] = {
       "amb@code_human_wander_drinking@male@base",
        "static",
        "Soda 5 - Hercules Power Fuel Cup",
        AnimationOptions = {
            Prop = 'rpemotesreborn_soda03',
            PropBone = 28422,
            PropPlacement = {
                0.0060,
                0.0010,
                0.0,
                0.0,
                0.0,
                80.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["soda6"] = {
        "amb@code_human_wander_drinking@male@base",
        "static",
        "Soda 6 - Orang-O-Tang Cup",
        AnimationOptions = {
            Prop = 'rpemotesreborn_soda04',
            PropBone = 28422,
            PropPlacement = {
                0.0060,
                0.0010,
                0.0,
                0.0,
                0.0,
                80.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["soda7"] = {
        "amb@code_human_wander_drinking@male@base",
        "static",
        "Soda 7- Junk Cup",
        AnimationOptions = {
            Prop = 'rpemotesreborn_soda01',
            PropBone = 28422,
            PropPlacement = {
                0.0060,
                0.0010,
                0.0,
                0.0,
                0.0,
                80.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["soda8"] = {
        "amb@code_human_wander_drinking@male@base",
        "static",
        "Soda 8 - Junk Cup",
        AnimationOptions = {
            Prop = 'rpemotesreborn_soda02',
            PropBone = 28422,
            PropPlacement = {
                0.0060,
                0.0010,
                0.0,
                0.0,
                0.0,
                80.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["soda9"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Soda 9 - Orange Flavoured Can",
        AnimationOptions = {
            Prop = 'prop_orang_can_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                130.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["boba"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Boba",
        AnimationOptions = {
            Prop = 'scully_boba',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["boba2"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Boba 2",
        AnimationOptions = {
            Prop = 'scully_boba2',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["boba3"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Boba 3",
        AnimationOptions = {
            Prop = 'scully_boba3',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sipsoda"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Soda Cup - Junk",
        AnimationOptions = {
            Prop = 'rpemotesreborn_soda01',
            PropBone = 28422,
            PropPlacement = {
               0.0470,
               0.0040,
              -0.0600,
            -88.0263,
            -25.0367,
            -27.3898
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sipsodab"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Soda Cup - Sprunk",
        AnimationOptions = {
            Prop = 'rpemotesreborn_soda02',
            PropBone = 28422,
            PropPlacement = {
               0.0470,
               0.0040,
              -0.0600,
            -88.0263,
            -25.0367,
            -27.3898
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sipsodac"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Soda Cup - Hercules Power Fuel",
        AnimationOptions = {
            Prop = 'rpemotesreborn_soda03',
            PropBone = 28422,
            PropPlacement = {
               0.0470,
               0.0040,
              -0.0600,
            -88.0263,
            -25.0367,
            -27.3898
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sipsodad"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Soda Cup - Orang-O-Tang",
        AnimationOptions = {
            Prop = 'rpemotesreborn_soda04',
            PropBone = 28422,
            PropPlacement = {
               0.0470,
               0.0040,
              -0.0600,
            -88.0263,
            -25.0367,
            -27.3898
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dbsoda"] = {
       "amb@code_human_wander_drinking@male@base",
        "static",
        "Soda - Dumb Bitch",
        AnimationOptions = {
            Prop = 'dumbbitchjuice',
            PropBone = 28422,
            PropPlacement = {
                0.0060,
               -0.0020,
               -0.0700,
              180.0000,
              180.0000,
              -10.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mojito"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Mojito",
        AnimationOptions = {
            Prop = 'prop_mojito',
            PropBone = 28422,
            PropPlacement = {
                0.0000,
                0.0000,
               -0.0900,
                0.0000,
                0.0000,
              130.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["frappe"] = {
        "amb@code_human_wander_drinking@male@base",
        "static",
        "Frappe",
        AnimationOptions = {
            Prop = 'brum_heartfrappe',
            PropBone = 28422,
            PropPlacement = {
                0.0,
               -0.0150,
               -0.0100,
                0.0,
               -3.9999,
                0.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["frappe2"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Frappe 2",
        AnimationOptions = {
            Prop = 'beanmachine_cup',
            PropBone = 28422,
            PropPlacement = {
                0.0110,
                0.0,
                0.0300,
                0.0,
                0.0,
             -140.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["frappe3"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Frappe 3",
        AnimationOptions = {
            Prop = 'beanmachine_cup2',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
               -0.0600,
                0.0,
                0.0,
             -178.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["frappe4"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Frappe 4",
        AnimationOptions = {
            Prop = 'beanmachine_cup3',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
               -0.0600,
                0.0,
                0.0,
             -178.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["edrink"] = {
        "mp_player_intdrink",
        "loop_bottle",
        "Energy Drink - Bottle",
        AnimationOptions =
        {
            Prop = "prop_energy_drink",
            PropBone = 60309,
            PropPlacement = {
                0.0080,
                0.0010,
                0.0160,
                3.5690,
                4.6611,
              -49.9065
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["edrink2"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Energy Drink - Can",
        AnimationOptions =
        {
            Prop = "sf_prop_sf_can_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
             -110.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["edrink3"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Energy Drink - XXL Can",
        AnimationOptions =
        {
            Prop = "sf_p_sf_grass_gls_s_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0000,
                0.0000,
               -0.1400,
                0.0000,
                0.0000,
                9.0000
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["mshake"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Bubblegum",
        AnimationOptions = {
            Prop = 'brum_cherryshake_bubblegum',
            PropBone = 28422,
            PropPlacement = {
                0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakeb"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Cherry",
        AnimationOptions = {
            Prop = 'brum_cherryshake_cherry',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakec"] = {
       "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Chocolate",
        AnimationOptions = {
            Prop = 'brum_cherryshake_chocolate',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshaked"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Coffee",
        AnimationOptions = {
            Prop = 'brum_cherryshake_coffee',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakee"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Double Chocolate",
        AnimationOptions = {
            Prop = 'brum_cherryshake_doublechocolate',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakef"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Frappe",
        AnimationOptions = {
            Prop = 'brum_cherryshake_frappe',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakeg"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Lemon",
        AnimationOptions = {
            Prop = 'brum_cherryshake_lemon',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakeh"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Mint",
        AnimationOptions = {
            Prop = 'brum_cherryshake_mint',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakei"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Strawberry",
        AnimationOptions = {
            Prop = 'brum_cherryshake_strawberry',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakej"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Raspberry",
        AnimationOptions = {
            Prop = 'brum_cherryshake_raspberry',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakek"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Salted",
        AnimationOptions = {
            Prop = 'brum_cherryshake_salted',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakel"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Vanilla",
        AnimationOptions = {
            Prop = 'brum_cherryshake_vanilla',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshake"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Bubblegum",
        AnimationOptions = {
            Prop = 'brum_cherryshake_raspberry',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakeb"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Cherry",
        AnimationOptions = {
            Prop = 'brum_cherryshake_cherry',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakec"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Chocolate",
        AnimationOptions = {
            Prop = 'brum_cherryshake_chocolate',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshaked"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Coffee",
        AnimationOptions = {
            Prop = 'brum_cherryshake_coffee',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakee"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Double Chocolate",
        AnimationOptions = {
            Prop = 'brum_cherryshake_doublechocolate',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakef"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Frappe",
        AnimationOptions = {
            Prop = 'brum_cherryshake_frappe',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakeg"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Lemon",
        AnimationOptions = {
            Prop = 'brum_cherryshake_lemon',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakeh"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Mint",
        AnimationOptions = {
            Prop = 'brum_cherryshake_mint',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakei"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Strawberry",
        AnimationOptions = {
            Prop = 'brum_cherryshake_strawberry',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakej"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Raspberry",
        AnimationOptions = {
            Prop = 'brum_cherryshake_raspberry',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakek"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Salted",
        AnimationOptions = {
            Prop = 'brum_cherryshake_salted',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakel"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Vanilla",
        AnimationOptions = {
            Prop = 'brum_cherryshake_vanilla',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sodafu"] = {
        "anim@male_drinking_01",
        "m_drinking_01_clip",
        "Soda Middle Finger eCola",
        AnimationOptions = {
            Prop = 'prop_ecola_can',
            PropBone = 26613,
            PropPlacement = {
                0.0400,
               -0.0500,
                0.0390,
                0.0000,
                0.000,
              -69.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sodafu2"] = {
        "anim@male_drinking_01",
        "m_drinking_01_clip",
        "Soda Middle Finger Sprunk",
        AnimationOptions = {
            Prop = 'ng_proc_sodacan_01b',
            PropBone = 26613,
            PropPlacement = {
                0.0300,
               -0.0600,
               -0.0700,
                0.0000,
                0.000,
                0.000,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["water"] = {
        "mp_player_intdrink",
        "loop_bottle",
        "Water Bottle",
        AnimationOptions =
        {
            Prop = "vw_prop_casino_water_bottle_01a",
            PropBone = 60309,
            PropPlacement = {
                0.0080,
                0.0,
               -0.0500,
                0.0,
                0.0,
              -40.0000
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["egobar"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ego Bar",
        AnimationOptions = {
            Prop = 'prop_choc_ego',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = true
        }
    },
    ["candy"] = {
        "mp_player_inteat@pnq",
        "loop",
        "Candy",
        AnimationOptions = {
            Prop = 'prop_candy_pqs',
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                0.0180,
                0.0,
                180.0,
                180.0,
                -88.099
            },
            EmoteMoving = true
        }
    },
    ["lollipop1"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Red",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral01',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop1b"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Pink",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral02',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop1c"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Green",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral03',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop1d"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Blue",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral04',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop1e"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Yellow",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral05',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop1f"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Purple",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral06',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop2a"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Red",
        AnimationOptions = {
            Prop = "natty_lollipop_spin01",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lollipop2b"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Yellow And Pink",
        AnimationOptions = {
            Prop = "natty_lollipop_spin02",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lollipop2c"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Yellow And Green",
        AnimationOptions = {
            Prop = "natty_lollipop_spin03",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lollipop2d"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Yellow And White",
        AnimationOptions = {
            Prop = "natty_lollipop_spin04",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lollipop2e"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Pink And White",
        AnimationOptions = {
            Prop = "natty_lollipop_spin05",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lollipop3a"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Lollipop Suck",
        AnimationOptions = {
            Prop = 'natty_lollipop01',
            PropBone = 47419,
            PropPlacement = {
                0.0100,
                0.0300,
                0.0100,
                -90.0000,
                10.0000,
                -10.0000
            },
            EmoteMoving = true,
            EmoteDuration = 2600
        }
    },
    ["icecreama"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Cherry",
        AnimationOptions = {
            Prop = 'bzzz_icecream_cherry',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamb"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Chocolate",
        AnimationOptions = {
            Prop = 'bzzz_icecream_chocolate',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamc"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Lemon",
        AnimationOptions = {
            Prop = 'bzzz_icecream_lemon',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamd"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Pistachio",
        AnimationOptions = {
            Prop = 'bzzz_icecream_pistachio',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreame"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Raspberry",
        AnimationOptions = {
            Prop = 'bzzz_icecream_raspberry',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamf"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Stracciatella",
        AnimationOptions = {
            Prop = 'bzzz_icecream_stracciatella',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamg"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Strawberry",
        AnimationOptions = {
            Prop = 'bzzz_icecream_strawberry',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamh"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Walnut",
        AnimationOptions = {
            Prop = 'bzzz_icecream_walnut',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["wine"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Wine",
        AnimationOptions = {
            Prop = 'prop_drink_redwine',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.03,
                0.03,
                -100.0,
                0.0,
                -10.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["flute"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Flute",
        AnimationOptions = {
            Prop = 'prop_champ_flute',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.03,
                0.03,
                -100.0,
                0.0,
                -10.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["champagne"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Champagne",
        AnimationOptions = {
            Prop = 'prop_drink_champ',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.03,
                0.03,
                -100.0,
                0.0,
                -10.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["cigar"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Cigar",
        AnimationOptions = {
            Prop = 'prop_cigar_02',
            PropBone = 47419,
            PropPlacement = {
                0.010,
                0.0,
                0.0,
                50.0,
                0.0,
                -80.0
            },
            EmoteDuration = 2600,
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
                0.0750,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.3
            },
            PtfxInfo = locale('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["cigar2"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Cigar 2",
        AnimationOptions = {
            Prop = 'prop_cigar_01',
            PropBone = 47419,
            PropPlacement = {
                0.010,
                0.0,
                0.0,
                50.0,
                0.0,
               -80.0
            },
            EmoteDuration = 2600,
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
                0.06,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.5
            },
            PtfxInfo = locale('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["guitar"] = {
        "amb@world_human_musician@guitar@male@idle_a",
        "idle_b",
        "Guitar",
        AnimationOptions = {
            Prop = 'prop_acc_guitar_01',
            PropBone = 24818,
            PropPlacement = {
                -0.1,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitar2"] = {
        "switch@trevor@guitar_beatdown",
        "001370_02_trvs_8_guitar_beatdown_idle_busker",
        "Guitar 2",
        AnimationOptions = {
            Prop = 'prop_acc_guitar_01',
            PropBone = 24818,
            PropPlacement = {
                -0.05,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitar3"] = {
        "amb@world_human_musician@guitar@male@idle_a",
        "idle_b",
        "Guitar 3 - Pink",
        AnimationOptions = {
            Prop = 'prop_rpemotesreborn_guitar_001',
            PropBone = 24818,
            PropPlacement = {
                -0.1,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitar4"] = {
        "switch@trevor@guitar_beatdown",
        "001370_02_trvs_8_guitar_beatdown_idle_busker",
        "Guitar 4 - Pink",
        AnimationOptions = {
            Prop = 'prop_rpemotesreborn_guitar_001',
            PropBone = 24818,
            PropPlacement = {
                -0.05,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitar5"] = {
        "amb@world_human_musician@guitar@male@idle_a",
        "idle_b",
        "Guitar - Pride",
        AnimationOptions = {
            Prop = 'prop_rpemotesreborn_guitar_002',
            PropBone = 24818,
            PropPlacement = {
                -0.1,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitar6"] = {
        "switch@trevor@guitar_beatdown",
        "001370_02_trvs_8_guitar_beatdown_idle_busker",
        "Guitar - Pride 2",
        AnimationOptions = {
            Prop = 'prop_rpemotesreborn_guitar_002',
            PropBone = 24818,
            PropPlacement = {
                -0.05,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitarelectric"] = {
        "amb@world_human_musician@guitar@male@idle_a",
        "idle_b",
        "Guitar Electric",
        AnimationOptions = {
            Prop = 'prop_el_guitar_01',
            PropBone = 24818,
            PropPlacement = {
                -0.1,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitarelectric2"] = {
        "amb@world_human_musician@guitar@male@idle_a",
        "idle_b",
        "Guitar Electric 2",
        AnimationOptions = {
            Prop = 'prop_el_guitar_03',
            PropBone = 24818,
            PropPlacement = {
                -0.1,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitarcarry"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Case Carry",
        AnimationOptions = {
            Prop = "sf_prop_sf_guitar_case_01a",
            PropBone = 28422,
            PropPlacement = {
                0.2800,
                -0.2000,
                -0.0600,
                0.0,
                0.0,
                15.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Accoustic",
        AnimationOptions = {
            Prop = "prop_acc_guitar_01",
            PropBone = 28422,
            PropPlacement = {
                0.1500,
                -0.1400,
                -0.0200,
                -101.5083,
                5.7251,
                29.4987
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["guitarcarry3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Accoustic - Pink",
        AnimationOptions = {
            Prop = "prop_rpemotesreborn_guitar_001",
            PropBone = 28422,
            PropPlacement = {
                0.1500,
                -0.1400,
                -0.0200,
                -101.5083,
                5.7251,
                29.4987
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry4"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Accoustic - Pride",
        AnimationOptions = {
            Prop = "prop_rpemotesreborn_guitar_002",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry5"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric",
        AnimationOptions = {
            Prop = "prop_el_guitar_01",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry6"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric 2",
        AnimationOptions = {
            Prop = "prop_el_guitar_02",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry7"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric 3",
        AnimationOptions = {
            Prop = "prop_el_guitar_03",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry8"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric 4",
        AnimationOptions = {
            Prop = "vw_prop_casino_art_guitar_01a",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry9"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric 5",
        AnimationOptions = {
            Prop = "sf_prop_sf_el_guitar_02a",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarsit"] = {
        "misssnowie@gatlax",
        "base",
        "Guitar Sit And Play",
        AnimationOptions = {
            Prop = "prop_acc_guitar_01",
            PropBone = 24818,
            PropPlacement = {
                -0.0510,
                0.2770,
                -0.0299,
                -140.3349,
                166.3300,
                29.7590
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["guitarsit2"] = {
        "misssnowie@gatlax",
        "base",
        "Guitar Sit And Play 2 - Pink",
        AnimationOptions = {
            Prop = "prop_rpemotesreborn_guitar_001",
            PropBone = 24818,
            PropPlacement = {
                -0.0510,
                0.2770,
                -0.0299,
                -140.3349,
                166.3300,
                29.7590
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["guitarsit3"] = {
        "misssnowie@gatlax",
        "base",
        "Guitar Sit And Play 2 - Pride",
        AnimationOptions = {
            Prop = "prop_rpemotesreborn_guitar_002",
            PropBone = 24818,
            PropPlacement = {
                -0.0510,
                0.2770,
                -0.0299,
                -140.3349,
                166.3300,
                29.7590
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["book"] = {
        "cellphone@",
        "cellphone_text_read_base",
        "Book",
        AnimationOptions = {
            Prop = 'prop_novel_01',
            PropBone = 6286,
            PropPlacement = {
                0.15,
                0.03,
                -0.065,
                0.0,
                180.0,
                90.0
            },
            -- This positioning isnt too great, was to much of a hassle
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["bookb"] = {
        "holding_book_1@dark",
        "holding_book_1_clip",
        "Book 2",
        AnimationOptions = {
            Prop = 'prop_cs_book_01',
            PropBone = 57005,
            PropPlacement = {
                0.0900,
                0.0900,
               -0.0400,
               80.1585,
              158.5623,
               24.7080,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bookc"] = {
        "holding_book_2@dark",
        "holding_book_2_clip",
        "Book 3",
        AnimationOptions = {
            Prop = "prop_michael_backpack",
            PropBone = 40269,
            PropPlacement = {
                0.0300,
               -0.1600,
               -0.0900,
              -170.7740,
               112.8415,
               -20.0836
            },
            SecondProp = 'prop_cs_book_01',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.0400,
                0.0400,
                0.0300,
              -69.0815,
              176.3905,
              19.3724
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bookd"] = {
        "holding_book_3@dark",
        "holding_book_3_clip",
        "Book 4",
        AnimationOptions = {
            Prop = 'prop_cs_stock_book',
            PropBone = 18905,
            PropPlacement = {
                0.0700,
                0.0400,
                0.0700,
                0.0000,
                0.0000,
              -15.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["booke"] = {
        "holding_book_4@dark",
        "holding_book_4_clip",
        "Book 5",
        AnimationOptions = {
            Prop = 'prop_cs_stock_book',
            PropBone = 57005,
            PropPlacement = {
                0.0100,
                0.0100,
               -0.0600,
               15.1511,
                3.1232,
              -21.2448
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bookf"] = {
        "holding_book_5@dark",
        "holding_book_5_clip",
        "Book 6",
        AnimationOptions = {
            Prop = 'v_ilev_mp_bedsidebook',
            PropBone = 18905,
            PropPlacement = {
                0.2100,
                0.0600,
                0.0400,
              170.6161,
              -14.2960,
               28.8727
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["bouquet"] = {
        "hold_flowers@dad", -- Custom Animation By Darks Animations
        "hold_flowers_clip",
        "Bouquet",
        AnimationOptions = {
            Prop = 'prop_snow_flower_02',
            PropBone = 60309,
            PropPlacement = {
                0.1100,
               -0.1300,
                0.1200,
              -18.7186,
              121.0529,
              -11.7724
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["bouquet2"] = {
        "hold_flowers@dad", -- Custom Animation By Darks Animations
        "hold_flowers_clip",
        "Bouquet 2",
        AnimationOptions = {
            Prop = 'pata_freevalentinesday3',
            PropBone = 28422,
            PropPlacement = {
               -0.0100,
                0.0300,
               -0.1700,
               -6.0697,
               60.1852,
                3.4934
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["teddy"] = {
        "impexp_int-0",
        "mp_m_waremech_01_dual-0",
        "Teddy",
        AnimationOptions = {
            Prop = 'v_ilev_mr_rasberryclean',
            PropBone = 24817,
            PropPlacement = {
                -0.20,
                0.46,
                -0.016,
                -180.0,
                -90.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["backpack"] = {
        "move_p_m_zero_rucksack",
        "nill",
        "Backpack",
        AnimationOptions = {
            Prop = 'p_michael_backpack_s',
            PropBone = 24818,
            PropPlacement = {
                0.07,
                -0.11,
                -0.05,
                0.0,
                90.0,
                175.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["clipboard"] = {
        "missfam4",
        "base",
        "Clipboard",
        AnimationOptions = {
            Prop = 'p_amb_clipboard_01',
            PropBone = 36029,
            PropPlacement = {
                0.16,
                0.08,
                0.1,
                -130.0,
                -50.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["map"] = {
        "amb@world_human_tourist_map@male@base",
        "base",
        "Map",
        AnimationOptions = {
            Prop = 'prop_tourist_map_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["map2"] = {
        "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a",
        "idle_a",
        "Map 2",
        AnimationOptions = {
            Prop = "prop_tourist_map_01",
            PropBone = 28422,
            PropPlacement = {
                -0.05,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beg"] = {
        "amb@world_human_bum_freeway@male@base",
        "base",
        "Beg",
        AnimationOptions = {
            Prop = 'prop_beggers_sign_03',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beg2"] = {
        "amb@world_human_bum_freeway@male@base",
        "base",
        "Beg 2",
        AnimationOptions = {
            Prop = 'prop_beggers_sign_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beg3"] = {
        "amb@world_human_bum_freeway@male@base",
        "base",
        "Beg 3",
        AnimationOptions = {
            Prop = 'prop_beggers_sign_02',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0800,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beg4"] = {
        "amb@world_human_bum_freeway@male@base",
        "base",
        "Beg 4",
        AnimationOptions = {
            Prop = 'prop_beggers_sign_04',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0800,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["newspaper"] = {
        "amb@world_human_clipboard@male@idle_a",
        "idle_a",
        "Newspaper",
        AnimationOptions = {
            Prop = 'prop_cliff_paper',
            PropBone = 60309,
            PropPlacement = {
                0.0970,
                -0.0280,
                -0.0170,
                107.4008,
                3.2712,
                -10.5080
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["newspaper2"] = {
        "amb@world_human_clipboard@male@idle_a",
        "idle_a",
        "Newspaper 2",
        AnimationOptions = {
            Prop = 'ng_proc_paper_news_quik',
            PropBone = 60309,
            PropPlacement = {
                0.1590,
                0.0290,
                -0.0100,
                90.9998,
                0.0087,
                0.5000
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["newspaper3"] = {
        "amb@world_human_clipboard@male@idle_a",
        "idle_a",
        "Newspaper 3",
        AnimationOptions = {
            Prop = 'ng_proc_paper_news_rag',
            PropBone = 60309,
            PropPlacement = {
                0.1760,
                -0.00070,
                0.0200,
                99.8306,
                3.2841,
                -4.7185
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["pornmag"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine",
        AnimationOptions = {
            Prop = 'prop_porn_mag_02',
            PropBone = 60309,
            PropPlacement = {
                0.1000,
                -0.0360,
                -0.0300,
                -86.9096,
                179.2527,
                13.8804
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag2"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 2",
        AnimationOptions = {
            Prop = 'prop_cs_magazine',
            PropBone = 60309,
            PropPlacement = {
                0.0800,
                -0.0490,
                -0.0500,
                87.9369,
                -0.4292,
                -14.3925
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag3"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 3",
        AnimationOptions = {
            Prop = 'prop_porn_mag_03',
            PropBone = 60309,
            PropPlacement = {
                0.1000,
                -0.0700,
                -0.0200,
                -90.0000,
                -180.0000,
                22.7007
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag4"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 4",
        AnimationOptions = {
            Prop = 'v_res_tt_pornmag01',
            PropBone = 60309,
            PropPlacement = {
                -0.0200,
                -0.0300,
                0.0000,
                88.9862,
                0.2032,
                -20.0016
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag5"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 5",
        AnimationOptions = {
            Prop = 'v_res_tt_pornmag02',
            PropBone = 60309,
            PropPlacement = {
                -0.0200,
                -0.0300,
                0.0000,
                88.9862,
                0.2032,
                -20.0016
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag6"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 6",
        AnimationOptions = {
            Prop = 'v_res_tt_pornmag03',
            PropBone = 60309,
            PropPlacement = {
                -0.0200,
                -0.0300,
                0.0000,
                88.9862,
                0.2032,
                -20.0016
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag7"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 7",
        AnimationOptions = {
            Prop = 'v_res_tt_pornmag04',
            PropBone = 60309,
            PropPlacement = {
                -0.0200,
                -0.0300,
                0.0000,
                88.9862,
                0.2032,
                -20.0016
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["makeitrain"] = {
        "anim@mp_player_intupperraining_cash",
        "idle_a",
        "Make It Rain",
        AnimationOptions = {
            Prop = 'prop_anim_cash_pile_01',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                180.0,
                0.0,
                70.0
            },
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "scr_xs_celebration",
            PtfxName = "scr_xs_money_rain",
            PtfxPlacement = {
                0.0,
                0.0,
                -0.09,
                -80.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('makeitrain'),
            PtfxWait = 500,
            PtfxCanHold = true
        }
    },
    ["camera"] = {
        "stand_camera_1@dad",
        "stand_camera_1_clip",
        "Camera",
        AnimationOptions = {
            Prop = 'prop_pap_camera_01',
            PropBone = 57005,
            PropPlacement = {
                0.1040,
               -0.0060,
               -0.0600,
               -2.7280,
                33.0998,
                4.1917
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_bike_business",
            PtfxName = "scr_bike_cfid_camera_flash",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["camera2"] = {
        "amb@world_human_paparazzi@male@base",
        "base",
        "Camera 2",
        AnimationOptions = {
            Prop = 'prop_pap_camera_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_bike_business",
            PtfxName = "scr_bike_cfid_camera_flash",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["camera3"] = {
        "cellphone@female",
        "cellphone_text_read_base_cover_low",
        "Camera 3",
        AnimationOptions = {
            Prop = "prop_ing_camera_01",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0300,
                0.0520,
                -172.0487,
                -163.9389,
                -29.0221
            },
            EmoteLoop = false,
            EmoteMoving = true,
            PtfxAsset = "scr_bike_business",
            PtfxName = "scr_bike_cfid_camera_flash",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["camera4"] = {
        "chocoholic@single110a",
        "single110a_clip",
        "Camera 4",
        AnimationOptions = {
            Prop = "prop_ing_camera_01",
            PropBone = 28422,
            PropPlacement = {
                0.0710,
                0.0150,
               -0.0420,
              -68.3220,
               99.6144,
                2.9027
            },
            EmoteLoop = false,
            EmoteMoving = true,
            PtfxAsset = "scr_bike_business",
            PtfxName = "scr_bike_cfid_camera_flash",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
     },
    ["camera5"] = {
        "chocoholic@single110b",
        "single110b_clip",
        "Camera 5",
        AnimationOptions = {
            Prop = "prop_ing_camera_01",
            PropBone = 60309,
            PropPlacement = {
                0.0980,
                0.0560,
                0.1330,
              -15.8221,
              107.0825,
              -16.0159
            },
            EmoteLoop = false,
            EmoteMoving = true,
            PtfxAsset = "scr_bike_business",
            PtfxName = "scr_bike_cfid_camera_flash",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
     },
    ["camera6"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Camera 6 - Carry News Camera",
        AnimationOptions = {
            Prop = "prop_v_cam_01",
            PropBone = 28422,
            PropPlacement = {
                0.2100,
                0.0300,
               -0.0100,
               90.0000,
              176.0000,
               79.9999
            },
            EmoteLoop = false,
            EmoteMoving = true,
        }
    },
    ["champagnespray"] = {
        "anim@mp_player_intupperspray_champagne",
        "idle_a",
        "Champagne Spray",
        AnimationOptions = {
            Prop = 'ba_prop_battle_champ_open',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "scr_ba_club",
            PtfxName = "scr_ba_club_champagne_spray",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            PtfxInfo = locale('spraychamp'),
            PtfxWait = 500,
            PtfxCanHold = true
        }
    },
    ["joint"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Joint",
        AnimationOptions = {
            Prop = 'p_cs_joint_01',
            PropBone = 47419,
            PropPlacement = {
                0.015,
                -0.009,
                0.003,
                55.0,
                0.0,
                110.0
            },
            EmoteMoving = true,
            EmoteDuration = 2600,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.097,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.3
            },
            PtfxInfo = locale('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["cig"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Cig",
        AnimationOptions = {
            Prop = 'ng_proc_cigarette01a',
            PropBone = 47419,
            PropPlacement = {
                0.015,
                -0.009,
                0.003,
                55.0,
                0.0,
                110.0
            },
            EmoteDuration = 2600,
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.07,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["brief"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Briefcase",
        AnimationOptions = {
            Prop = "prop_ld_case_01",
            PropBone = 57005,
            PropPlacement = {
                0.12,
                0.0,
                0.0,
                0.0,
                255.0,
                80.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["brief2"] = { -- Added for compatibility
        "missheistdocksprep1hold_cellphone",
        "static",
        "Briefcase 2",
        AnimationOptions =
        {
            Prop = "prop_ld_case_01",
            PropBone = 57005,
            PropPlacement = {
                0.10,
                0.0,
                0.0,
                0.0,
                280.0,
                53.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["brushteeth"] = {
        "mp_player_inteat@pnq",
        "loop_fp",
        "Brush Teeth",
        AnimationOptions =
        {
            Prop = "prop_toothbrush_01",
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.04,
                -0.02,
                -93.0,
                -159.0,
                26.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guncase"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guncase",
        AnimationOptions =
        {
            Prop = "prop_gun_case_01",
            PropBone = 57005,
            PropPlacement = {
                0.10,
                0.02,
                -0.02,
                40.0,
                145.0,
                115.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tablet"] = {
        "amb@world_human_tourist_map@male@base",
        "base",
        "Tablet",
        AnimationOptions = {
            Prop = "prop_cs_tablet",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.03,
                0.0,
                20.0,
                -90.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tablet2"] = {
        "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a",
        "idle_a",
        "Tablet 2",
        AnimationOptions = {
            Prop = "prop_cs_tablet",
            PropBone = 28422,
            PropPlacement = {
                -0.05,
                0.0,
                0.0,
                0.0,
                -90.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["phonecall"] = {
        "cellphone@",
        "cellphone_call_listen_base",
        "Phone Call",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["phonecall2"] = {
        "random@kidnap_girl",
        "ig_1_girl_on_phone_loop",
        "Phone Call 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wt"] = {
        "cellphone@",
        "cellphone_text_read_base",
        "Walkie Talkie",
        AnimationOptions = {
            Prop = "prop_cs_hand_radio",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
	["wt2"] = {
        "anim@radio_pose_3",
        "radio_holding_gun",
        "Walkie Talkie 2",
        AnimationOptions = {
            Prop = "prop_cs_hand_radio",
            PropBone = 60309,
            PropPlacement = {
                0.0750,
                0.0470,
                0.0110,
              -97.9442,
                3.7058,
                -23.2367
				},
            EmoteLoop = true,

        }
    },
    ["wt3"] = {
        "anim@radio_left",
        "radio_left_clip",
        "Walkie Talkie 3 Left",
        AnimationOptions = {
            Prop = "prop_cs_hand_radio",
            PropBone = 60309,
            PropPlacement = {
                0.0750,
                0.0470,
                0.0110,
              -97.9442,
                3.7058,
                -23.2367
				},
            EmoteLoop = true,
			EmoteMoving = true
        }
    },
    ["wt4"] = {
        "anim@male@holding_radio",
        "holding_radio_clip",
        "Walkie Talkie 4",
        AnimationOptions = {
            Prop = "prop_cs_hand_radio",
            PropBone = 28422,
            PropPlacement = {
                0.0750,
                0.0230,
               -0.0230,
              -90.0000,
                0.0,
              -59.9999
				},
            EmoteLoop = true,
			EmoteMoving = true
        }
    },
    ["clean"] = {
        "timetable@floyd@clean_kitchen@base",
        "base",
        "Clean",
        AnimationOptions = {
            Prop = "prop_sponge_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.01,
                90.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["clean2"] = {
        "amb@world_human_maid_clean@",
        "base",
        "Clean 2",
        AnimationOptions = {
            Prop = "prop_sponge_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.01,
                90.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["protest"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Protest",
        AnimationOptions = {
            Prop = "prop_cs_protest_sign_01",
            PropBone = 57005,
            PropPlacement = {
                0.1820,
                0.2400,
                0.0600,
                -69.3774235,
                5.9142048,
                -13.9572354
            },
            --
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["protest2"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Protest 2 - Pride",
        AnimationOptions = {
            Prop = "pride_sign_01",
            PropBone = 57005,
            PropPlacement = {
                0.1820,
                0.2400,
                0.0600,
                -69.3774235,
                5.9142048,
                -13.9572354
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["protest3"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Protest 3 - BLM",
        AnimationOptions = {
            Prop = "scully_blm",
            PropBone = 57005,
            PropPlacement = {
                0.1820,
                0.2400,
                0.0600,
                -69.3774235,
                5.914205,
                -13.957235
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["binoculars"] = {
        "amb@world_human_binoculars@male@idle_b",
        "idle_f",
        "Binoculars",
        AnimationOptions = {
            Prop = "prop_binoc_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["binoculars2"] = {
        "amb@world_human_binoculars@male@idle_a",
        "idle_c",
        "Binoculars 2",
        AnimationOptions = {
            Prop = "prop_binoc_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tennisplay"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Tennis Play",
        AnimationOptions = {
            Prop = "prop_tennis_bag_01",
            PropBone = 57005,
            PropPlacement = {
                0.27,
                0.0,
                0.0,
                91.0,
                0.0,
                -82.9999951
            },
            SecondProp = 'prop_tennis_rack_01',
            SecondPropBone = 60309,
            SecondPropPlacement = {
                0.0800,
                0.0300,
                0.0,
                -130.2907295,
                3.8782324,
                6.588224
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["weights"] = {
        "amb@world_human_muscle_free_weights@male@barbell@base",
        "base",
        "Weights",
        AnimationOptions = {
            Prop = "prop_curl_bar_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["weights2"] = {
        "amb@world_human_muscle_free_weights@male@barbell@idle_a",
        "idle_d",
        "Weights 2",
        AnimationOptions = {
            Prop = "prop_curl_bar_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["weights3"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_004",
        "Weights 3 - Pose",
        AnimationOptions = {
            Prop = 'prop_barbell_01',
            PropBone = 28422,
            PropPlacement = {
                0.0660,
                0.0100,
                -0.0300,
                90.0000,
                90.0000,
                -79.9999
            },
            EmoteLoop = true,
        }
    },
    ["weights4"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_003",
        "Weights 4 - Pose",
        AnimationOptions = {
            Prop = 'prop_barbell_01', -- Left Wrist
            PropBone = 60309,
            PropPlacement = {
                0.0520,
                -0.0010,
                0.0131,
                21.5428,
                70.2098,
                74.5019
            },
            SecondProp = 'prop_barbell_01', -- Right Wrist
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0660,
                0.0100,
                -0.0300,
                90.0000,
                90.0000,
                -79.9999
            },
            EmoteLoop = true,
        }
    },
    ["weights5"] = { -- Custom Female Emote By Frabi
        "frabi@femalepose@solo@firstsport",
        "fem_pose_sport_001",
        "Weights 5 - Female Pose",
        AnimationOptions = {
            Prop = 'v_res_tre_weight',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.0580,
                -0.0060,
                0.0300,
                -11.8498,
                170.2644,
                7.8352
            },
            SecondProp = 'v_res_tre_weight',
            SecondPropBone = 60309, -- Left Wrist
            SecondPropPlacement = {
                0.0880,
                0.0000,
                0.0590,
                -29.1132,
                -128.5627,
                13.7517
            },
            EmoteLoop = true,
        }
    },
    ["weights6"] = { -- Custom Female Emote By Frabi
        "frabi@femalepose@solo@firstsport",
        "fem_pose_sport_002",
        "Weights 6 - Female Pose 2",
        AnimationOptions = {
            Prop = 'v_res_tre_weight',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.0700,
                0.0400,
                -0.0600,
                24.5966,
                6.4814,
                -13.9845
            },
            SecondProp = 'v_res_tre_weight',
            SecondPropBone = 60309, -- Left Wrist
            SecondPropPlacement = {
                0.0550,
                -0.0070,
                -0.0309,
                -20.5854,
                -15.0123,
                0.5710
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["weights7"] = { -- Custom Female Emote By Frabi
        "frabi@femalepose@solo@firstsport",
        "fem_pose_sport_003",
        "Weights 7 - Female Pose 3",
        AnimationOptions = {
            Prop = 'prop_freeweight_01',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.0500,
                0.0100,
                -0.0200,
                88.6283,
                -51.8805,
                54.3903
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["fuel"] = {
        "weapons@misc@jerrycan@",
        "fire",
        "Fuel",
        AnimationOptions = {
            Prop = "w_am_jerrycan",
            PropBone = 57005,
            PropPlacement = {
                0.1800,
                0.1300,
                -0.2400,
                -165.8693883,
                -11.2122753,
                -32.9453021
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["fuel2"] = {
        "weapons@misc@jerrycan@franklin",
        "idle",
        "Fuel 2 (Carry)",
        AnimationOptions = {
            Prop = "w_am_jerrycan",
            PropBone = 28422,
            PropPlacement = {
                0.26,
                0.050,
                0.0300,
                80.00,
                180.000,
                79.99
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["hitchhike"] = {
        "random@hitch_lift",
        "idle_f",
        "Hitchhike",
        AnimationOptions = {
            Prop = "w_am_jerrycan",
            PropBone = 18905,
            PropPlacement = {
                0.32,
                -0.0100,
                0.0,
                -162.423,
                74.83,
                58.79
            },
            SecondProp = 'prop_michael_backpack',
            SecondPropBone = 40269,
            SecondPropPlacement = {
                -0.07,
                -0.21,
                -0.11,
                -144.93,
                117.358,
                -6.16
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Stop Sign",
        AnimationOptions = {
            Prop = "prop_sign_road_01a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign2"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Yield Sign",
        AnimationOptions = {
            Prop = "prop_sign_road_02a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign3"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Hospital Sign",
        AnimationOptions = {
            Prop = "prop_sign_road_03d",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign4"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Parking Sign",
        AnimationOptions = {
            Prop = "prop_sign_road_04a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign5"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Parking Sign 2",
        AnimationOptions = {
            Prop = "prop_sign_road_04w",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign6"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Pedestrian Sign",
        AnimationOptions = {
            Prop = "prop_sign_road_05a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign7"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Street Sign",
        AnimationOptions = {
            Prop = "prop_sign_road_05t",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign8"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Freeway Sign",
        AnimationOptions = {
            Prop = "prop_sign_freewayentrance",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign9"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Stop Sign Snow",
        AnimationOptions = {
            Prop = "prop_snow_sign_road_01a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stire"] = {
        "anim@heists@box_carry@",
        "idle",
        "Steal Tire 1",
        AnimationOptions = {
            Prop = "prop_wheel_01",
            PropBone = 18905,
            PropPlacement = {
                0.02,
                0.2,
                0.31,
                130.0,
                -80.0,
                0.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stire2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Steal Tire 2",
        AnimationOptions = {
            Prop = "prop_wheel_02",
            PropBone = 18905,
            PropPlacement = {
                0.02,
                0.2,
                0.31,
                130.0,
                -80.0,
                0.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["conehead"] = {
        "move_m@drunk@verydrunk_idles@",
        "fidget_07",
        "Cone Head",
        AnimationOptions = {
            Prop = "prop_roadcone02b",
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0200,
                -0.000,
                30.0000004,
                90.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtraya"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_03",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayb"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray B",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayc"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray C",
        AnimationOptions = {
            Prop = "prop_food_cb_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayd"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray D",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtraye"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray E",
        AnimationOptions = {
            Prop = "prop_food_tray_03",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayf"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray F",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_02",
            PropBone = 57005,
            PropPlacement = {
                0.2500,
                0.1000,
                0.0700,
                -110.5483936,
                73.3529273,
                -16.338362
            },
            SecondProp = 'prop_food_bs_tray_03',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.2200,
                0.1300,
                -0.1000,
                -127.7725487,
                110.2074758,
                -3.5886263
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayg"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray G",
        AnimationOptions = {
            Prop = "prop_food_cb_tray_02",
            PropBone = 57005,
            PropPlacement = {
                0.2500,
                0.1000,
                0.0700,
                -110.5483936,
                73.3529273,
                -16.338362
            },
            SecondProp = 'prop_food_cb_tray_02',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.2200,
                0.1300,
                -0.1000,
                -127.7725487,
                110.2074758,
                -3.5886263
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayh"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray H",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 57005,
            PropPlacement = {
                0.2500,
                0.1000,
                0.0700,
                -110.5483936,
                73.3529273,
                -16.338362
            },
            SecondProp = 'prop_food_tray_03',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.2200,
                0.1300,
                -0.1000,
                -127.7725487,
                110.2074758,
                -3.5886263
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayi"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray I",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 57005,
            PropPlacement = {
                0.2500,
                0.1000,
                0.0700,
                -110.5483936,
                73.3529273,
                -16.338362
            },
            SecondProp = 'prop_food_tray_02',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.2200,
                0.1300,
                -0.1000,
                -127.7725487,
                110.2074758,
                -3.5886263
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayj"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray J",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayk"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray K",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayl"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray L",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_03",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtraym"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray M",
        AnimationOptions = {
            Prop = "prop_food_cb_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayn"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray N",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayo"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray O",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mnc"] = {
        "anim@heists@box_carry@",
        "idle",
        "Milk & Cookies",
        AnimationOptions = {
            Prop = "m23_2_prop_m32_milkncookies_01a",
            PropBone = 57005, -- Right Wrist
            PropPlacement = {
                0.2150,
                0.1140,
                0.0240,
              -81.9185,
             -176.2526,
              -28.4674
            },
            SecondProp = 'm23_2_prop_m32_milkncookies_01a',
            SecondPropBone = 18905, -- Left Wrist
            SecondPropPlacement = {
                0.2150,
                0.1140,
                0.0240,
              -95.9185,
             -176.2526,
              -28.4674
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["carrypizza"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Pizza Box",
        AnimationOptions = {
            Prop = "prop_pizza_box_02",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.1000,
                -0.1590,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["carryfoodbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Carry Food Bag",
        AnimationOptions = {
            Prop = "prop_food_bs_bag_01",
            PropBone = 57005,
            PropPlacement = {
                0.3300,
                0.0,
                -0.0300,
                0.0017365,
                -79.9999997,
                110.0651988
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["carryfoodbag2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Carry Food Bag 2",
        AnimationOptions = {
            Prop = "prop_food_cb_bag_01",
            PropBone = 57005,
            PropPlacement = {
                0.3800,
                0.0,
                -0.0300,
                0.0017365,
                -79.9999997,
                110.0651988
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["carryfoodbag3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Carry Food Bag 3",
        AnimationOptions = {
            Prop = "prop_food_bag1",
            PropBone = 57005,
            PropPlacement = {
                0.3800,
                0.0,
                -0.0300,
                0.0017365,
                -79.9999997,
                110.0651988
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@male@",
        "shake_can_male",
        "Tagging Shake Can Male",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag2"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@heeled@",
        "shake_can_female",
        "Tagging Shake Can Female",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag3"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@male@",
        "spray_can_var_01_male",
        "Tagging Male 1",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag4"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@male@",
        "spray_can_var_02_male",
        "Tagging Male 2",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag5"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@heeled@",
        "spray_can_var_01_female",
        "Tagging Female 1",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag6"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@heeled@",
        "spray_can_var_02_female",
        "Tagging Female 2",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag7"] = {
        "anim@scripted@freemode@tagcoll_ig_postertag@heeled@",
        "postertag",
        "Tagging 7",
        AnimationOptions = {
            Prop = "m24_1_prop_m41_spraycan_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beans"] = {
        "anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1",
        "base_idle",
        "Beans",
        AnimationOptions = {
            Prop = "h4_prop_h4_caviar_tin_01a",
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0300,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'h4_prop_h4_caviar_spoon_01a',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pho"] = {
        "anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1",
        "base_idle",
        "Pho",
        AnimationOptions = {
            Prop = "scully_pho",
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0300,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'scully_spoon_pho',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dinner"] = {
        "anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1",
        "base_idle",
        "Dinner",
        AnimationOptions = {
            Prop = "prop_cs_plate_01",
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'h4_prop_h4_caviar_spoon_01a',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["newscam"] = {
        "missfinale_c2mcs_1",
        "fin_c2_mcs_1_camman",
        "News Camera",
        AnimationOptions = {
            Prop = "prop_v_cam_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0300,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["newsmic"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "News Microphone",
        AnimationOptions = {
            Prop = "p_ing_microphonel_01",
            PropBone = 4154,
            PropPlacement = {
                -0.00,
                -0.0200,
                0.1100,
                0.00,
                0.0,
                60.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["newsbmic"] = {
        "missfra1",
        "mcs2_crew_idle_m_boom",
        "News Boom Microphone",
        AnimationOptions = {
            Prop = "prop_v_bmike_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microck"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p1",
        "mic@p1",
        "Microphone Rock",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0300,
                0.0200,
                -0.0300,
                162.9608,
                -91.1712,
                -3.8249
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckb"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p2",
        "mic@p2",
        "Microphone Rock 2",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 60309, -- Left Wrist
            PropPlacement = {
                0.0350,
                0.0180,
                0.0290,
             -180.0000,
              -13.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckc"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p3",
        "mic@p3",
        "Microphone Rock 3",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0300,
                0.0200,
                -0.0300,
                162.9608,
                -91.1712,
                -3.8249
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckd"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p4",
        "mic@p4",
        "Microphone Rock 4",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0300,
                0.0200,
                -0.0300,
                162.9608,
                -91.1712,
                -3.8249
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microcke"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p5",
        "mic@p5",
        "Microphone Rock 5",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 60309,
            PropPlacement = {
                0.0370,
                0.0130,
                0.0150,
               -173.6259,
               -93.5253,
                4.6450
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckf"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p6",
        "mic@p6",
        "Microphone Rock 6",
        AnimationOptions = {
            Prop = "v_ilev_fos_mic",
            PropBone = 28422,
            PropPlacement = {
                -0.4410,
                -1.0600,
                -0.4800,
                -57.7266,
                51.8164,
                3.0976
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckg"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p7",
        "mic@p7",
        "Microphone Rock 7",
        AnimationOptions = {
            Prop = "v_ilev_fos_mic",
            PropBone = 28422,
            PropPlacement = {
                -0.8210,
                -0.0900,
                -1.1900,
                -2.5478,
                36.3684,
                -11.7503
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckh"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p8",
        "mic@p8",
        "Microphone Rock 8",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 60309,
            PropPlacement = {
                0.0370,
                0.0130,
                0.0150,
               -173.6259,
               -93.5253,
                4.6450
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microcki"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p9",
        "mic@p9",
        "Microphone Rock 9",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0300,
                0.0200,
                -0.0300,
                162.9608,
                -91.1712,
                -3.8249
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckj"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p10",
        "mic@p10",
        "Microphone Rock 10",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0300,
                0.0200,
                -0.0300,
                162.9608,
                -91.1712,
                -3.8249
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["leafblower"] = {
        "amb@world_human_gardener_leaf_blower@base",
        "base",
        "Leaf Blower",
        AnimationOptions = {
            Prop = "prop_leaf_blower_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_armenian3",
            PtfxName = "ent_anim_leaf_blower",
            PtfxPlacement = {
                1.0,
                0.0,
                -0.25,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('useleafblower'),
            PtfxWait = 2000,
            PtfxCanHold = true
        }
    },
    ["bbqf"] = {
        "amb@prop_human_bbq@male@idle_a",
        "idle_b",
        "BBQ (Female)",
        AnimationOptions = {
            Prop = "prop_fish_slice_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pump"] = {
        "missfbi4prepp1",
        "idle",
        "Pumpkin",
        AnimationOptions = {
            Prop = "prop_veg_crop_03_pump",
            PropBone = 28422,
            PropPlacement = {
                0.0200,
                0.0600,
                -0.1200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pump2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pumpkin 2",
        AnimationOptions = {
            Prop = "prop_veg_crop_03_pump",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.16000,
                -0.2100,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pump3"] = {
        "missfbi4prepp1",
        "idle",
        "Pumpkin 3",
        AnimationOptions = {
            Prop = "reh_prop_reh_lantern_pk_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0010,
                0.0660,
                -0.0120,
                171.9169,
                179.8707,
                -39.9860
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pump4"] = {
        "missfbi4prepp1",
        "idle",
        "Pumpkin 4",
        AnimationOptions = {
            Prop = "reh_prop_reh_lantern_pk_01b",
            PropBone = 28422,
            PropPlacement = {
                0.0010,
                0.0660,
                -0.0120,
                171.9169,
                179.8707,
                -39.9860
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pump5"] = {
        "missfbi4prepp1",
        "idle",
        "Pumpkin 5",
        AnimationOptions = {
            Prop = "reh_prop_reh_lantern_pk_01c",
            PropBone = 28422,
            PropPlacement = {
                0.0010,
                0.0660,
                -0.0120,
                171.9169,
                179.8707,
                -39.9860
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mop"] = {
        "missfbi4prepp1",
        "idle",
        "Mop",
        AnimationOptions = {
            Prop = "prop_cs_mop_s",
            PropBone = 28422,
            PropPlacement = {
                -0.0200,
                -0.0600,
                -0.2000,
                -13.377,
                10.3568,
                17.9681
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mop2"] = {
        "move_mop",
        "idle_scrub_small_player",
        "Mop 2",
        AnimationOptions = {
            Prop = "prop_cs_mop_s",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.1200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["jerkf"] = {
        "switch@trevor@jerking_off",
        "trev_jerking_off_loop",
        "JerkOff! Female",
        AnimationOptions = {
            Prop = 'prop_cs_dildo_01',
            PropBone = 28422,
            PropPlacement = {
                0.09,
                0.05,
                -0.03,
                90.0,
                80.0,
                30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        },
        AdultAnimation = true
    },
    ["rake"] = {
        "anim@amb@drug_field_workers@rake@male_a@base",
        "base",
        "Rake",
        AnimationOptions = {
            Prop = "prop_tool_rake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["rake2"] = {
        "anim@amb@drug_field_workers@rake@male_a@idles",
        "idle_b",
        "Rake 2",
        AnimationOptions = {
            Prop = "prop_tool_rake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["rake3"] = {
        "anim@amb@drug_field_workers@rake@male_b@base",
        "base",
        "Rake 3",
        AnimationOptions = {
            Prop = "prop_tool_rake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["rake4"] = {
        "anim@amb@drug_field_workers@rake@male_b@idles",
        "idle_d",
        "Rake 4",
        AnimationOptions = {
            Prop = "prop_tool_rake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["broom"] = {
        "anim@amb@drug_field_workers@rake@male_a@base",
        "base",
        "Broom",
        AnimationOptions = {
            Prop = "prop_tool_broom",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.0400,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["broom2"] = {
        "anim@amb@drug_field_workers@rake@male_a@idles",
        "idle_b",
        "Broom 2",
        AnimationOptions = {
            Prop = "prop_tool_broom",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.0400,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["broom3"] = {
        "anim@amb@drug_field_workers@rake@male_b@base",
        "base",
        "Broom 3",
        AnimationOptions = {
            Prop = "prop_tool_broom",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.0400,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["broom4"] = {
        "anim@amb@drug_field_workers@rake@male_b@idles",
        "idle_d",
        "Broom 4",
        AnimationOptions = {
            Prop = "prop_tool_broom",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.0400,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["champw"] = {
        "anim@move_f@waitress",
        "idle",
        "Champagne Waiter",
        AnimationOptions = {
            Prop = "vw_prop_vw_tray_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'prop_champ_cool',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.010,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shit"] = {
        "missfbi3ig_0",
        "shit_loop_trev",
        "Shit",
        AnimationOptions = {
            Prop = "prop_toilet_roll_01",
            PropBone = 28422,
            PropPlacement = {
                0.0700,
                -0.02000,
                -0.2100,
                0,
                0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_poo",
            PtfxNoProp = true,
            PtfxBone = 11816,
            PtfxPlacement = {
                0.0,
                0.0,
               -0.1,
                0.0,
                0.0,
                0.0,
                1.3
            },
            PtfxInfo = locale('poop'),
            PtfxWait = 0,
            PtfxCanHold = true
        }
    },
    ["shit2"] = {
        "missfbi3ig_0",
        "nill",
        "Shit While Walking",
        AnimationOptions = {
            Prop = "prop_toilet_roll_01",
            PropBone = 28422,
            PropPlacement = {
                0.0700,
                -0.02000,
                -0.2100,
                0,
                0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_poo",
            PtfxNoProp = true,
            PtfxBone = 11816,
            PtfxPlacement = {
                0.0,
                0.0,
               -0.1,
                0.0,
                0.0,
                0.0,
                1.4
            },
            PtfxInfo = locale('poop'),
            PtfxWait = 0,
            PtfxCanHold = true
        }
    },
    ["puke"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
    "cross_arms@dark",
    "cross_arms_clip",
    "Puke",
    AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_paletoscore",
            PtfxName = "scr_trev_puke",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('puke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        },
    },
    ["puke2"] = {
        "missheistpaletoscore1leadinout",
        "trv_puking_leadout",
        "Puke 2",
        AnimationOptions = {
            EmoteLoop = false,
            EmoteMoving = true,
            PtfxAsset = "scr_paletoscore",
            PtfxName = "scr_trev_puke",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('puke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        },
    },
    ["puke3"] = {
        "anim@scripted@ulp_missions@injured_agent@",
        "idle",
        "Puke 3",
        AnimationOptions = {
            EmoteLoop = true,
            PtfxAsset = "scr_paletoscore",
            PtfxName = "scr_trev_puke",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('puke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        },
    },
    ["puke4"] = {
        "anim@scripted@freemode@throw_up_toilet@male@",
        "vomit",
        "Puke 4",
        AnimationOptions = {
            EmoteLoop = true,
            PtfxAsset = "scr_paletoscore",
            PtfxName = "scr_trev_puke",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('puke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        },
    },
    ["selfie"] = {
        "anim@mp_player_intuppertake_selfie",
        "idle_a",
        "Selfie",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfie2"] = {
        "cellphone@self@franklin@",
        "peace",
        "Selfie 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfie3"] = {
        "cellphone@self@franklin@",
        "west_coast",
        "Selfie 3 - West Side",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfie4"] = {
        "cellphone@self@trevor@",
        "aggressive_finger",
        "Selfie 4 - Finger",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfie5"] = {
        "cellphone@self@trevor@",
        "proud_finger",
        "Selfie 5 - Finger 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfie6"] = {
        "cellphone@self@trevor@",
        "throat_slit",
        "Selfie 6 - Throat Slit",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfie7"] = {
        "cellphone@self@franklin@",
        "chest_bump",
        "Selfie 7 - Chest Bump",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfie8"] = {
        "anim@amb@carmeet@take_photos@",
        "female_b_idle_d",
        "Selfie 8 - Bumper Pics",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfie9"] = {
        "anim@amb@carmeet@take_photos@",
        "female_b_idle_b",
        "Selfie 9 - Selfie Ceck",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiehigh"] = { -- Custom Emote By Darks Animations
        "girl_groupe_b@darksj",
        "girl_groupe_b_clip",
        "Selfie High",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 26611,
            PropPlacement = {
                0.0620,
               -0.0400,
                0.0080,
              -17.1672,
                9.8904,
              -18.1951
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiepeace"] = { -- MissSnowie Custom Emote
        "mirror_selfie@peace_sign",
        "base",
        "Selfie Peace",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 57005,
            PropPlacement = {
                0.1700,
                0.0299,
                -0.0159,
                -126.2687,
                -139.9058,
                35.6203
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecrouch"] = { -- MissSnowie Custom Emote
        "crouching@taking_selfie",
        "base",
        "Selfie Crouching",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 18905,
            PropPlacement = {
                0.1580,
                0.0180,
                0.0300,
                -150.4798,
                -67.8240,
                -46.0417
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecrouch2"] = { -- Wolf's Square Custom Emote
        "eagle@girlphonepose13",
        "girl",
        "Selfie Crouching 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 60309,
            PropPlacement = {
                0.0670,
                0.0300,
                0.0300,
                -90.0000,
                0.0000,
                -25.9000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecrouch3"] = { -- Custom Emote By Struggleville
        "anim@male_insta_selfie",
        "insta_selfie_clip",
        "Selfie Crouching 3",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 60309,
            PropPlacement = {
                0.0700,
                0.0100,
                0.0690,
                0.0,
                0.0,
                -150.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecrouch4"] = { -- Custom emote by Struggleville
        "anim@female_selfie_risque",
        "selfie_risque_clip",
        "Selfie Crouching 4",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 18905,
            PropPlacement = {
                0.1580,
                0.0180,
                0.0300,
                -150.4798,
                -67.8240,
                -46.0417
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfieegirl"] = { -- Custom emote by Struggleville
        "anim@female_egirl_cute_selfie",
        "cute_selfie_clip",
        "Selfie E Girl",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 26613, -- Left Finger 30
            PropPlacement = {
                0.0760,
               -0.0220,
                0.0350,
               -22.0968,
                30.4351,
                -7.9339
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfieslut"] = { -- Custom Emote By Struggleville
        "anim@female_floor_slutarch_selfie",
        "slutarch_selfie_clip",
        "Selfie Slut Pose",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 58868, -- Right Finger 20
            PropPlacement = {
                0.0350,
                0.0140,
                0.0290,
              167.9999,
              180.0000,
               -8.8999
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200

        },
        AdultAnimation = true
    },
    ["selfiesit"] = { -- Emote by WhiskerValeMod. Need to configure camera flash and texture variants
        "mouse@female_sitting_selfie",
        "female_sitting_selfie_clip",
        "Selfie Sitting",
        AnimationOptions = {
            Prop = 'prop_phone_ing',
            PropBone = 57005,
            PropPlacement = {
                0.1380,
                0.0300,
                -0.0430,
                -111.0946,
                -117.8069,
                11.7386
            },
            SecondProp = 'apa_mp_h_stn_chairarm_23',
            SecondPropBone = 0,
            SecondPropPlacement = {
                -0.0100,
                -0.0800,
                -0.6800,
                -180.0000,
                -180.0000,
                10.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["selfiesit2"] = { -- Emote by WolfSquareEmotes
        "eagle@boypose05",
        "boy",
        "Selfie Sitting 2",
        AnimationOptions = {
            Prop = 'prop_phone_ing',
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 4090, -- Left Finger 2
            PropPlacement = {
                0.0130,
                0.0120,
               -0.0070,
               -103.6673,
               -11.0026,
                18.2605
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiesit3"] = { -- Emote by Chocoholic Animations
        "chocoholic@single77",
        "single77_clip",
        "Selfie Sitting 3",
        AnimationOptions = {
            Prop = 'prop_phone_ing',
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 4185,
            PropPlacement = {
                0.0130,
               -0.0190,
                0.0320,
                0.0,
                0.0000,
                0.0,
            },
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiesit4"] = { -- Emote by Chocoholic Animations
        "chocoholic@single89",
        "single89_clip",
        "Selfie Sitting 4",
        AnimationOptions = {
            Prop = 'prop_phone_ing',
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 4169, -- Left Finger 11
            PropPlacement = {
                0.0100,
               -0.0330,
                0.000,
               -19.7197,
                 9.4080,
                -3.4048
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiesit5"] = { -- Emote by Chocoholic Animations
        "chocoholic@single83",
        "single83_clip",
        "Selfie Sitting 5",
        AnimationOptions = {
            Prop = 'prop_phone_ing',
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 64016,
            PropPlacement = {
                0.1080,
               -0.0160,
                0.0300,
               -171.4163,
               -117.2863,
                17.0148
            },
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiefu"] = { -- Struggleville
        "anim@fuck_you_selfie",
        "fuck_you_selfie_clip",
        "Selfie Middle Finger",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.1200,
                0.0220,
                -0.0210,
                98.6822,
                -4.9809,
                109.6216
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiethot"] = { -- Struggleville
        "anim@sitting_thot",
        "sitting_thot_clip",
        "Selfie Thot Instagram",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.1030,
                0.0440,
                -0.0270,
                -160.2802,
                -99.4080,
                -3.4048
            },
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiefloor"] = { -- Custom Emote By Struggleville
        "anim@selfie_floor_cute",
        "floor_cute_clip",
        "Selfie Floor Instagram",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 60309,
            PropPlacement = {
                0.0930,
                0.0230,
                0.0260,
                -158.8271,
                -82.9040,
                -18.7472
            },
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiefloor2"] = { -- Custom Emote By Struggleville
        "anim@female_selfie_04",
        "f_selfie_04_clip",
        "Selfie Floor 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 4185,
            PropPlacement = {
                0.0170,
               -0.0100,
                0.0200,
              -27.3580,
               54.9374,
               -6.1611
            },
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiefloor3"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@single90",
        "single90_clip",
        "Selfie & Wine",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 28422,
            PropPlacement = {
                0.0800,
                0.0170,
                0.0810,
               -174.2748,
               -11.5083,
                29.4987
            },
            SecondProp = 'prop_phone_ing',
            PropTextureVariations = {
                { Name = "<font color=\"#00A0F4\">Blue", Value = 0 },
                { Name = "<font color=\"#1AA20E\">Green", Value = 1 },
                { Name = "<font color=\"#800B0B\">Dark Red", Value = 2 },
                { Name = "<font color=\"#FF7B00\">Orange", Value = 3 },
                { Name = "<font color=\"#5F5F5F\">Grey", Value = 4 },
                { Name = "<font color=\"#a356fa\">Purple", Value = 5 },
                { Name = "<font color=\"#FF0099\">Pink", Value = 6 },
                { Name = "Black", Value = 7 },
            },
            SecondPropBone = 4186, -- Left Finger 22
            SecondPropPlacement = {
               -0.0100,
                0.0000,
                0.0200,
              -80.0000,
                0.0000,
              -20.0000
            },
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200,
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["selfiesexy"] = { -- Custom Emote By Little Spoon, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "littlespoon@selfie001",
        "selfie001",
        "Selfie Sexy",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 58870, -- Right Finger 40 Bone
            PropPlacement = {
                0.0150,
                0.0230,
                0.0700,
                0.0,
                0.0,
                170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiesexy2"] = { -- Custom Emote By Little Spoon, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "littlespoon@selfie002",
        "selfie002",
        "Selfie Sexy 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 64064, -- Right Finger 31 Bone
            PropPlacement = {
                0.0290,
                0.0140,
                0.0490,
                174.9616,
               -149.6187,
                8.6491
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiesexy3"] = { -- Custom Emote By Little Spoon, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "littlespoon@selfie003",
        "selfie003",
        "Selfie Sexy 3 - Squat",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 64064, -- Right Finger 31 Bone
            PropPlacement = {
                0.0290,
                0.0140,
                0.0490,
                174.9616,
               -149.6187,
                8.6491
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiesexy4"] = { -- Custom Emote By Little Spoon, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "littlespoon@selfie004",
        "selfie004",
        "Selfie Sexy 4",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 64064, -- Right Finger 31 Bone
            PropPlacement = {
                0.0290,
                0.0140,
                0.0490,
                174.9616,
               -149.6187,
                8.6491
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiesexy5"] = { -- Custom Emote By Little Spoon, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "littlespoon@selfie005",
        "selfie005",
        "Selfie Sexy 5",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 64064, -- Right Finger 31 Bone
            PropPlacement = {
                0.0290,
                0.0140,
                0.0490,
                174.9616,
               -149.6187,
                8.6491
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecute"] = { -- Custom Emote By Puppy, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "pupppy@freeselfie01",
        "freeselfie01",
        "Selfie Cute",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 26613, -- Left Finger 30 Bone
            PropPlacement = {
                0.0380,
                -0.0310,
                0.0590,
                0.0000,
                0.0000,
                10.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecute2"] = { -- Custom Emote By Puppy, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "pupppy@freeselfie02",
        "freeselfie02",
        "Selfie Cute 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 60309, -- Left Wrist, worked better.
            PropPlacement = {
                0.0960,
                0.0160,
                0.0420,
                -155.3515,
                -84.4828,
                4.7551
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecute3"] = { -- Custom Emote By Puppy, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "pupppy@freeselfie03",
        "freeselfie03",
        "Selfie Cute 3",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 26614, -- Left Finger 40, worked better.
            PropPlacement = {
                0.0310,
                -0.0430,
                0.0720,
                0.0000,
                3.9999,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecute4"] = { -- Custom Emote By Struggleville, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "anim@egirl_1foot_selfie",
        "1foot_selfie_clip",
        "Selfie Cute 4",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 4185, -- Left Finger 21
            PropPlacement = {
                0.0290,
               -0.0230,
                0.0190,
               -14.7860,
                67.8030,
                6.1827
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecute5"] = { -- Custom Emote By Wolf's Square
        "eagle@girlphonepose21",
        "girl",
        "Selfie Cute 5",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 4185,
            PropPlacement = {
                0.0210,
               -0.0150,
                0.0110,
               -45.8936,
                41.8372,
                -26.6415
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiebbum"] = { -- Custom Emote By Struggleville, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "anim@female_beach_booty_selfie",
        "booty_selfie_clip",
        "Selfie Beach Bum",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 26613, -- Left Finger 30
            PropPlacement = {
                0.0680,
               -0.0250,
                0.0340,
               -13.4299,
                47.2288,
               -14.9588
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ['selfiehb'] = { -- Custom prop by crowded1337
        'anim@female_selfie_cute',
        'selfie_cute_clip',
        'Selfie Hand Bag',
        AnimationOptions = {
            Prop = 'prop_amb_handbag_01',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.1700,
                0.0020,
                -0.1000,
                105.4525,
                -178.3549,
                69.1794
            },
            SecondProp = 'prop_phone_ing',-- Cell Phone Left Finger 21
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            SecondPropBone = 4185,
            SecondPropPlacement = {
                0.0200,
               -0.0250,
                0.0000,
               -8.5947,
                30.6141,
               -5.1311
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiehhands"] = { -- Custom Emote By QueenSistersAnimations, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "heartselfiemirror@queensisters",
        "heartselfie_clip",
        "Selfie Heart Hands",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 64096, -- Right Finger 11
            PropPlacement = {
                0.0390,
                0.0200,
                0.0330,
                90.0000,
                180.0000,
                13.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiefu2"] = { -- Custom Emote By QueenSistersAnimations, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "fuckyouselfie@queensisters",
        "mirrorselfie_clip",
        "Selfie Middle Finger 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 64097, -- Right Finger 12
            PropPlacement = {
               -0.0210,
                0.0300,
               -0.0030,
               -180.0000,
               -180.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiefu3"] = { -- Custom Emote By QueenSistersAnimations, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "selfiekilye@queensisters",
        "kilye_clip",
        "Selfie Middle Finger Thot Pose",
        AnimationOptions = {
            Prop = 'prop_cs_dildo_01',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.0450,
                0.0050,
               -0.0150,
                92.0810,
                1.3049,
               -2.8863
            },
            SecondProp = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            SecondPropBone = 26613, -- Left Finger 30
            SecondPropPlacement = {
                0.0650,
                -0.0280,
                0.0440,
                10.6808,
                13.7526,
                2.6457
            },
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200,
        },
        AdultAnimation = true
    },
    ["selfiemale"] = { -- Custom Emote By Wolf's Square
        "eagle@boypose04",
        "boy",
        "Selfie Male Pose",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 60309,
            PropPlacement = {
                0.0730,
                0.0220,
                0.0460,
               -142.1374,
                -92.4142,
                33.1691
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiemeh"] = { -- Custom Animation By Chocoholic Animations
        "chocoholic@single81",
        "single81_clip",
        "Selfie Meh",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 58868,
            PropPlacement = {
                0.0450,
                0.0310,
                0.0280,
                165.3005,
               -174.8342,
                -8.4770
            },
            EmoteLoop = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["selfiewine"] = { -- Custom Emote By Wolf's Square
        "holding_wine@taking_selfie",
        "base",
        "Selfie Wine",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 28422,
            PropPlacement = {
                0.0420,
                -0.0700,
                -0.0440,
                -82.6657,
                 1.2898,
                -19.9222
            },
            SecondProp = 'prop_phone_ing',
            PropTextureVariations = {
                { Name = "<font color=\"#00A0F4\">Blue", Value = 0 },
                { Name = "<font color=\"#1AA20E\">Green", Value = 1 },
                { Name = "<font color=\"#800B0B\">Dark Red", Value = 2 },
                { Name = "<font color=\"#FF7B00\">Orange", Value = 3 },
                { Name = "<font color=\"#5F5F5F\">Grey", Value = 4 },
                { Name = "<font color=\"#a356fa\">Purple", Value = 5 },
                { Name = "<font color=\"#FF0099\">Pink", Value = 6 },
                { Name = "Black", Value = 7 },
            },
            SecondPropBone = 4090,
            SecondPropPlacement = {
                0.0250,
                -0.0080,
                -0.0050,
                -140.5541,
                -24.7476,
                 13.7795
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["femalemirrorselfie"] = {
    "mirror_selfie_1@janina234",
    "mirror_selfie_1_clip",
    "Female Mirror Selfie",
    AnimationOptions = { -- Custom emote by Janina234
        Prop = "prop_phone_ing",
        PropTextureVariations = {
            {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
            {Name = "<font color=\"#1AA20E\">Green", Value = 1},
            {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
            {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
            {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
            {Name = "<font color=\"#a356fa\">Purple", Value = 5},
            {Name = "<font color=\"#FF0099\">Pink", Value = 6},
            {Name = "Black", Value = 7}
        },
        PropBone = 4089,
        PropPlacement = {
            0.0890,
           -0.0350,
            0.0200,
           -161.7778308,
           -54.5014945,
           -12.0985177
        },
        EmoteLoop = true,
        EmoteMoving = false,
        PtfxAsset = "scr_tn_meet",
        PtfxName = "scr_tn_meet_phone_camera_flash",
        PtfxPlacement = {
            -0.015,
            0.0,
            0.041,
            0.0,
            0.0,
            0.0,
            1.0
        },
        PtfxInfo = locale('camera'),
        PtfxWait = 200
        }
    },
    ["femalemirrorselfie1"] = {
    "mirror_selfie_8@daj",
    "mirror_selfie_8_clip",
    "Female Mirror Selfie 1",
    AnimationOptions = { -- Custom emote by Dark
    Prop = "prop_phone_ing",
    PropTextureVariations = {
        {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
        {Name = "<font color=\"#1AA20E\">Green", Value = 1},
        {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
        {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
        {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
        {Name = "<font color=\"#a356fa\">Purple", Value = 5},
        {Name = "<font color=\"#FF0099\">Pink", Value = 6},
        {Name = "Black", Value = 7}
    },
    PropBone = 4153,
    PropPlacement = {
          0.0400,
          0.00000,
          0.0500,
         -37.4803963,
          33.2648588,
          18.6732448
    },
    EmoteLoop = true,
    EmoteMoving = false,
    PtfxAsset = "scr_tn_meet",
    PtfxName = "scr_tn_meet_phone_camera_flash",
    PtfxPlacement = {
        -0.015,
        0.0,
        0.041,
        0.0,
        0.0,
        0.0,
        1.0
    },
    PtfxInfo = locale('camera'),
    PtfxWait = 200
        }
    },
    ["cameraphotography"] = { -- Custom emote by MrWitt
    "mrwitt@photographic_journey_f",
    "mrwitt",
    "Camera Photography",
    AnimationOptions = {
        Prop = 'prop_pap_camera_01',
        PropBone = 26613,
        PropPlacement = {
            0.0280,
            -0.1350,
            0.1120,
            -86.9428843,
            157.9882355,
            80.8053557
        },
        EmoteLoop = true,
        EmoteMoving = true,
        PtfxAsset = "scr_bike_business",
        PtfxName = "scr_bike_cfid_camera_flash",
        PtfxPlacement = {
            0.0,
            0.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
        },
        PtfxInfo = locale('camera'),
        PtfxWait = 200
        }
    },
    ["malemirrorselfie"] = { -- Custom emote by Struggleville
    "anim@male_model_08",
    "m_model_08_clip",
    "Male Mirror Selfie",
    AnimationOptions = {
        Prop = 'prop_phone_ing',
        PropTextureVariations = {
            {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
            {Name = "<font color=\"#1AA20E\">Green", Value = 1},
            {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
            {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
            {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
            {Name = "<font color=\"#a356fa\">Purple", Value = 5},
            {Name = "<font color=\"#FF0099\">Pink", Value = 6},
            {Name = "Black", Value = 7}
        },
        PropBone = 4169,
        PropPlacement = {
            0.0300,
            -0.0200,
            0.0200,
            -64.2080926,
            3.367247,
            0.0711684
        },
        EmoteLoop = true,
        EmoteMoving = false,
        PtfxAsset = "scr_tn_meet",
        PtfxName = "scr_tn_meet_phone_camera_flash",
        PtfxPlacement = {
            -0.015,
            0.0,
            0.041,
            0.0,
            0.0,
            0.0,
            1.0
        },
        PtfxInfo = locale('camera'),
        PtfxWait = 200
        }
    },
    ["malemirrorselfie1"] = { -- Custom emote by Struggleville
    "anim@male_selfie_08",
    "m_selfie_08_clip",
    "Male Mirror Selfie 1",
    AnimationOptions = {
        Prop = 'prop_phone_ing',
        PropTextureVariations = {
            {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
            {Name = "<font color=\"#1AA20E\">Green", Value = 1},
            {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
            {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
            {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
            {Name = "<font color=\"#a356fa\">Purple", Value = 5},
            {Name = "<font color=\"#FF0099\">Pink", Value = 6},
            {Name = "Black", Value = 7}
        },
        PropBone = 4169,
        PropPlacement = {
            0.0100,
            -0.0400,
            0.0000,
            -32.8072134,
            11.7427793,
            32.5772863
        },
        EmoteLoop = true,
        EmoteMoving = false,
        PtfxAsset = "scr_tn_meet",
        PtfxName = "scr_tn_meet_phone_camera_flash",
        PtfxPlacement = {
            -0.015,
            0.0,
            0.041,
            0.0,
            0.0,
            0.0,
            1.0
        },
        PtfxInfo = locale('camera'),
        PtfxWait = 200
        }
    },
    ["malemirrorselfie2"] = { -- Custom emote by Struggleville
    "anim@male_selfie_06",
    "m_selfie_06_clip",
    "Male Mirror Selfie 2",
    AnimationOptions = {
        Prop = 'prop_phone_ing',
        PropTextureVariations = {
            {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
            {Name = "<font color=\"#1AA20E\">Green", Value = 1},
            {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
            {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
            {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
            {Name = "<font color=\"#a356fa\">Purple", Value = 5},
            {Name = "<font color=\"#FF0099\">Pink", Value = 6},
            {Name = "Black", Value = 7}
        },
        PropBone = 4169,
        PropPlacement = {
            0.0200,
            -0.0200,
            0.0100,
            -69.7707963,
            3.10072,
            -8.4531301
        },
        EmoteLoop = true,
        EmoteMoving = false,
        ExitEmote = "getup",
        ExitEmoteType = "Exits",
        PtfxAsset = "scr_tn_meet",
        PtfxName = "scr_tn_meet_phone_camera_flash",
        PtfxPlacement = {
            -0.015,
            0.0,
            0.041,
            0.0,
            0.0,
            0.0,
            1.0
        },
        PtfxInfo = locale('camera'),
        PtfxWait = 200
        }
    },
    ["malemirrorselfie4"] = { -- Custom emote by Struggleville
    "anim@male_model_03",
    "m_model_03_clip",
    "Male Mirror Selfie 4",
    AnimationOptions = {
        Prop = 'prop_phone_ing',
        PropTextureVariations = {
            {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
            {Name = "<font color=\"#1AA20E\">Green", Value = 1},
            {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
            {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
            {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
            {Name = "<font color=\"#a356fa\">Purple", Value = 5},
            {Name = "<font color=\"#FF0099\">Pink", Value = 6},
            {Name = "Black", Value = 7}
        },
        PropBone = 4169,
        PropPlacement = {
            0.0100,
            -0.0600,
            -0.0100,
            -23.7215768,
            66.9464998,
            -62.7303262
        },
        EmoteLoop = true,
        EmoteMoving = false,
        PtfxAsset = "scr_tn_meet",
        PtfxName = "scr_tn_meet_phone_camera_flash",
        PtfxPlacement = {
            -0.015,
            0.0,
            0.041,
            0.0,
            0.0,
            0.0,
            1.0
        },
        PtfxInfo = locale('camera'),
        PtfxWait = 200
        }
    },
    ["malemirrorselfie3"] = { -- Custom emote by Struggleville
    "anim@male_selfie_09",
    "m_selfie_09_clip",
    "Male Mirror Selfie 3",
    AnimationOptions = {
        Prop = 'prop_phone_ing',
        PropTextureVariations = {
            {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
            {Name = "<font color=\"#1AA20E\">Green", Value = 1},
            {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
            {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
            {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
            {Name = "<font color=\"#a356fa\">Purple", Value = 5},
            {Name = "<font color=\"#FF0099\">Pink", Value = 6},
            {Name = "Black", Value = 7}
        },
        PropBone = 4169,
        PropPlacement = {
            0.0400,
            -0.0300,
            0.0000,
            -46.0563529,
            -0.6965831,
            -4.2803096
       },
        EmoteLoop = true,
        EmoteMoving = false,
        PtfxAsset = "scr_tn_meet",
        PtfxName = "scr_tn_meet_phone_camera_flash",
        PtfxPlacement = {
            -0.015,
            0.0,
            0.041,
            0.0,
            0.0,
            0.0,
            1.0
        },
        PtfxInfo = locale('camera'),
        PtfxWait = 200
        }
    },
    ["sittv"] = {
        "anim@heists@heist_safehouse_intro@variations@male@tv",
        "tv_part_one_loop",
        "Sit TV",
        AnimationOptions = {
            Prop = "v_res_tre_remote",
            PropBone = 57005,
            PropPlacement = {
                0.0990,
                0.0170,
                -0.0300,
                -64.760,
                -109.544,
                18.717
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf"] = { -- Emote by WhiskerValeMods
        "mouse@femalearmchair",
        "female_armchair_clip_01",
        "Sit Chair - Armchair",
        AnimationOptions = {
            Prop = "p_armchair_01_s",
            PropBone = 11816,
            PropPlacement = {
                0.5320,
                -0.3310,
                0.2000,
                -90.0000,
                -180.0000,
                -40.9999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf2"] = { -- Custom Emote by WhiskerValeMods
        "mouse@female_sitting_folded",
        "female_sitting_folded_clip",
        "Sit Chair - Arms Folded",
        AnimationOptions = {
            Prop = "ba_prop_battle_club_chair_03",
            PropBone = 0,
            PropPlacement = { 0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                -170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf3"] = { -- Custom Emote by WhiskerValeMods
        "mouse@female_sitting_forward",
        "female_sitting_forward_clip",
        "Sit Chair - Leaning Forward",
        AnimationOptions = {
            Prop = "ba_prop_battle_club_chair_03",
            PropBone = 0,
            PropPlacement = { 0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                -170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf4"] = { -- Custom Emote by WhiskerValeMods
        "mouse@female_smart_sitting",
        "female_smart_sitting_clip",
        "Sit Chair - Smart",
        AnimationOptions = {
            Prop = "ba_prop_battle_club_chair_03",
            PropBone = 0,
            PropPlacement = { 0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                -170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf5"] = { -- Custom Emote By WhiskerValeMods
        "mouse@female_smart_sitting_crossed",
        "female_smart_sitting_crossed_clip",
        "Sit Chair - Legs Crossed",
        AnimationOptions = {
            Prop = "ba_prop_battle_club_chair_03",
            PropBone = 0,
            PropPlacement = { 0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                -170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf6"] = { -- Custom Emote By WhiskerValeMods
        "mouse@female_sitting_laptop",
        "female_sitting_laptop_clip",
        "Sit Chair - Laptop",
        AnimationOptions = {
            Prop = 'ba_prop_club_laptop_dj_02',
            PropBone = 57005,
            PropPlacement = {
                0.0860,
                -0.1370,
                -0.1750,
                -79.9999,
                -90.0000,
                0.0000
            },
            SecondProp = 'ba_prop_battle_club_chair_02',
            SecondPropBone = 0,
            SecondPropPlacement = {
                -0.0400,
                -0.1900,
                0.0000,
                -180.0000,
                -180.0000,
                9.0999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf7"] = { -- Custom Emote By Emote by WhiskerValeMods
        "mouse@female_sitting_tablet",
        "female_sitting_tablet_clip",
        "Sit Chair - Tablet",
        AnimationOptions = {
            Prop = 'hei_prop_dlc_tablet',
            PropBone = 28422,
            PropPlacement = {
                0.0870,
                0.1030,
                -0.1240,
                144.3540,
                157.8527,
                -4.6318
            },
            SecondProp = 'ba_prop_battle_club_chair_02',
            SecondPropBone = 0,
            SecondPropPlacement = {
                0.0100,
                -0.0800,
                0.0200,
                150.0000,
                -180.0000,
                10.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf8"] = { -- Custom Emote By Emote by WhiskerValeMods
        "mouse@female_sitting_tablet",
        "female_sitting_tablet_clip",
        "Sit Chair - Book",
        AnimationOptions = {
            Prop = 'v_ilev_mp_bedsidebook',
            PropBone = 28422,
            PropPlacement = {
                0.1300,
                0.1100,
                -0.1200,
                120.3356,
                -15.9891,
                26.1497
            },
            SecondProp = 'ba_prop_battle_club_chair_02',
            SecondPropBone = 0,
            SecondPropPlacement = {
                0.0100,
                -0.0800,
                0.0200,
                150.0000,
                -180.0000,
                10.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dig"] = {
        "random@burial",
        "a_burial",
        "Dig",
        AnimationOptions = {
            Prop = "prop_tool_shovel",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.24,
                0,
                0,
                0.0,
                0.0
            },
            SecondProp = 'prop_ld_shovel_dirt',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.24,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ['axe'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Axe',
        AnimationOptions = {
            Prop = 'prop_tool_fireaxe',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["axe2"] = {
        "melee@large_wpn@streamed_core",
        "ground_attack_on_spot",
        "Axe - Ground Impact",
        AnimationOptions = {
            Prop = "prop_tool_fireaxe",
            PropBone = 57005,
            PropPlacement = {
                0.0160,
               -0.3140,
               -0.0860,
              -97.1455,
              165.0749,
               13.9114,
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ['axe3'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Axe - Pickaxe',
        AnimationOptions = {
            Prop = 'prop_tool_pickaxe',
            PropBone = 57005,
            PropPlacement = {
                0.0400,
               -0.2550,
               -0.1380,
             -109.0238,
              163.6144,
               20.6091
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["axe4"] = {
        "melee@large_wpn@streamed_core",
        "ground_attack_on_spot",
        "Axe - Pickaxe Ground Impact",
        AnimationOptions = {
            Prop = "prop_tool_pickaxe",
            PropBone = 57005,
            PropPlacement = {
                0.08,
                -0.1,
                -0.04,
                78.0,
                -20.0,
                175.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["bongos"] = {
        "amb@world_human_musician@bongos@male@base",
        "base",
        "Bongo Drums",
        AnimationOptions = {
            Prop = "prop_bongos_01",
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["medbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Medic Bag",
        AnimationOptions = {
            Prop = "xm_prop_x17_bag_med_01a",
            PropBone = 57005,
            PropPlacement = {
                0.3900,
                -0.0600,
                -0.0600,
                -100.00,
                -180.00,
                -78.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
     },
    ["medbox"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Medic Box",
        AnimationOptions = {
            Prop = "xm_prop_smug_crate_s_medical",
            PropBone = 28422,
            PropPlacement = {
                0.2500,
                0.0200,
               -0.0100,
               90.0000,
                0.0000,
              -81.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dufbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Duffel Bag",
        AnimationOptions = {
            Prop = "bkr_prop_duffel_bag_01a",
            PropBone = 28422,
            PropPlacement = {
                0.2600,
                0.0400,
                0.00,
                90.00,
                0.00,
                -78.99
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shopbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Shopping Bag",
        AnimationOptions = {
            Prop = "vw_prop_casino_shopping_bag_01a",
            PropBone = 28422,
            PropPlacement = {
                0.24,
                0.03,
                -0.04,
                0.00,
                -90.00,
                10.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shopbag2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Shopping Bag 2",
        AnimationOptions = {
            Prop = "prop_shopping_bags02",
            PropBone = 28422,
            PropPlacement = {
                0.05,
                0.02,
                0.00,
                178.80,
                91.19,
                9.97
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shopbag3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Shopping Bag 3",
        AnimationOptions = {
            Prop = "prop_cs_shopping_bag",
            PropBone = 28422,
            PropPlacement = {
                0.24,
                0.03,
                -0.04,
                0.00,
                -90.00,
                10.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['shopbag4'] = {
        'chocoholic@single54',
        'single54_clip',
        'Shopping Bag 4',
        AnimationOptions = {
            Prop = 'prop_carrier_bag_01',
            PropBone = 28422,
            PropPlacement = {
                0.2280,
                0.0070,
               -0.1230,
                1.2556,
               -53.8020,
               -34.4621
            },
            SecondProp = 'prop_phone_ing',
            PropTextureVariations = {
                { Name = "<font color=\"#00A0F4\">Blue", Value = 0 },
                { Name = "<font color=\"#1AA20E\">Green", Value = 1 },
                { Name = "<font color=\"#800B0B\">Dark Red", Value = 2 },
                { Name = "<font color=\"#FF7B00\">Orange", Value = 3 },
                { Name = "<font color=\"#5F5F5F\">Grey", Value = 4 },
                { Name = "<font color=\"#a356fa\">Purple", Value = 5 },
                { Name = "<font color=\"#FF0099\">Pink", Value = 6 },
                { Name = "Black", Value = 7 }
            },
            SecondPropBone = 60309, -- Left Wrist
            SecondPropPlacement = {
                0.0910,
                0.0410,
               -0.0040,
               -129.2433,
               -18.1966,
               -41.2633
            },
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200,
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["summon"] = {
        "anim@scripted@surv@ig3_plague_summon@male@",
        "summon_a",
        "Summon",
        AnimationOptions = {
            Prop = "m24_1_prop_m41_zombiestaff_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["summon2"] = {
        "anim@scripted@surv@ig3_plague_summon@male@",
        "summon_b",
        "Summon2",
        AnimationOptions = {
            Prop = "m24_1_prop_m41_zombiestaff_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["handbag"] = { -- Custom prop by crowded1337
        "move_weapon@jerrycan@generic",
        "idle",
        "Hand Bag",
        AnimationOptions = {
            Prop = 'prop_amb_handbag_01',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.2000,
                0.0300,
                -0.0200,
                90.4294,
                -177.4267,
                83.0011
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["idcard"] = {
        "cop_badge_1@dad", -- Custom Animation by Darks Animations
        "cop_badge_1_clip",
        "ID Card 1",
        AnimationOptions = {
            Prop = "prop_franklin_dl",
            PropBone = 28422,
            PropPlacement = {
                0.0840,
                0.0200,
               -0.0260,
             -173.8514,
              -88.0171,
               63.0612
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardb"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 2 - FIB",
        AnimationOptions = {
            Prop = "prop_fib_badge",
            PropBone = 28422,
            PropPlacement = {
                0.0600,
                0.0210,
               -0.0400,
              -90.00,
             -180.00,
               78.999
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardc"] = {
        "cop_badge_1@dad", -- Custom Animation by Darks Animations
        "cop_badge_1_clip",
        "ID Card 3",
        AnimationOptions = {
            Prop = "prop_michael_sec_id",
            PropBone = 28422,
            PropPlacement = {
                0.0840,
                0.0200,
               -0.0260,
             -173.8514,
              -88.0171,
               63.0612
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardd"] = {
        "cop_badge_1@dad", -- Custom Animation by Darks Animations
        "cop_badge_1_clip",
        "ID Card 4",
        AnimationOptions = {
            Prop = "prop_trev_sec_id",
            PropBone = 28422,
            PropPlacement = {
                0.0840,
                0.0200,
               -0.0260,
             -173.8514,
              -88.0171,
               63.0612
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcarde"] = {
        "cop_badge_1@dad", -- Custom Animation by Darks Animations
        "cop_badge_1_clip",
        "ID Card 5",
        AnimationOptions = {
            Prop = "prop_casey_sec_id",
            PropBone = 28422,
            PropPlacement = {
                0.0840,
                0.0200,
               -0.0260,
             -173.8514,
              -88.0171,
               63.0612
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardf"] = {
        "cop_badge_1@dad", -- Custom Animation by Darks Animations
        "cop_badge_1_clip",
        "ID Card 6",
        AnimationOptions = {
            Prop = "prop_cs_r_business_card",
            PropBone = 28422,
            PropPlacement = {
                0.0840,
                0.0200,
               -0.0260,
             -173.8514,
              -88.0171,
               63.0612
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardg"] = {
        "cop_badge_1@dad", -- Custom Animation by Darks Animations
        "cop_badge_1_clip",
        "ID Card 7",
        AnimationOptions = {
            Prop = "p_ld_id_card_002",
            PropBone = 28422,
            PropPlacement = {
                0.0840,
                0.0200,
               -0.0260,
             -173.8514,
              -88.0171,
               63.0612
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardh"] = {
        "cop_badge_1@dad", -- Custom Animation by Darks Animations
        "cop_badge_1_clip",
        "ID Card 8 - Cop Badge",
        AnimationOptions = {
            Prop = "prop_cop_badge",
            PropBone = 28422,
            PropPlacement = {
                0.0390,
               -0.0100,
               -0.0590,
             -103.1785,
             -176.6694,
               74.9000
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true,
        }
    },
    ["idcardi"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 9 - Drivers License",
        AnimationOptions = {
            Prop = "bkr_prop_fakeid_singledriverl",
            PropBone = 28422,
            PropPlacement = {
                0.0700,
                0.0260,
               -0.0320,
               -10.8683,
              -177.8499,
                23.6377
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["phone"] = {
        "cellphone@",
        "cellphone_text_read_base",
        "Phone",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sms"] = {
        "cellphone@",
        "cellphone_text_read_base",
        "SMS",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = false,
            EmoteMoving = true,
            ExitEmote = "phoneaway",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["sms2"] = {
        "cellphone@female",
        "cellphone_text_read_base",
        "SMS 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.00,
                0.00,
                0.0301,
                0.000,
                00.00,
                00.00
            },
            EmoteLoop = false,
            EmoteMoving = true,
            ExitEmote = "phoneaway",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["sms3"] = {
        "cellphone@female",
        "cellphone_email_read_base",
        "SMS 3",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                -0.0190,
                -0.0240,
                0.0300,
                18.99,
                -72.07,
                6.39
            },
            EmoteLoop = false,
            EmoteMoving = true,
            ExitEmote = "phoneaway",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["sms4"] = {
        "cellphone@female",
        "cellphone_text_read_base_cover_low",
        "SMS 4",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                -0.0190,
                -0.0250,
                0.0400,
                19.17,
                -78.50,
                14.97
            },
            EmoteLoop = false,
            EmoteMoving = true,
            ExitEmote = "phoneaway",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["sms5"] = {
        "amb@code_human_wander_texting_fat@male@base",
        "static",
        "SMS 5",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                -0.0200,
                -0.0100,
                0.00,
                2.309,
                88.845,
                29.979
            },
            EmoteLoop = false,
            EmoteMoving = true,
            ExitEmote = "phoneaway",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["smssit"] = { -- Custom Emote Provided To RPEmotes By Mr. Witt
        "mrwitt@phone_time_on_floor",
        "mrwitt",
        "SMS Sit",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 26611,
            PropPlacement = {
                 0.0560,
                -0.0270,
                 0.0170,
               -19.9298,
                -4.6998,
                 1.7081
            },
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["tire"] = {
        "anim@heists@box_carry@",
        "idle",
        "Tire",
        AnimationOptions = {
            Prop = "prop_wheel_tyre",
            PropBone = 60309,
            PropPlacement = {
                -0.05,
                0.16,
                0.32,
                -130.0,
                -55.0,
                150.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["golfswing"] = {
        "rcmnigel1d",
        "swing_a_mark",
        "Golf Swing",
        AnimationOptions = {
            EmoteLoop = true,
            Prop = "prop_golf_wood_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            }
        }
    },
    ["register"] = {
        "anim@heists@box_carry@",
        "idle",
        "Register",
        AnimationOptions = {
            Prop = "v_ret_gc_cashreg",
            PropBone = 60309,
            PropPlacement = {
                0.138,
                0.2,
                0.2,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["weedbrick"] = {
        "impexp_int-0",
        "mp_m_waremech_01_dual-0",
        "Weed Brick",
        AnimationOptions = {
            Prop = "prop_weed_block_01",
            PropBone = 60309,
            PropPlacement = {
                0.1,
                0.1,
                0.05,
                0.0,
                -90.0,
                90.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["weedbrick2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Weed Brick BIG",
        AnimationOptions = {
            Prop = "bkr_prop_weed_bigbag_01a",
            PropBone = 60309,
            PropPlacement = {
                0.158,
                -0.05,
                0.23,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["potplant"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pot Plant (Small)",
        AnimationOptions = {
            Prop = "bkr_prop_weed_01_small_01c",
            PropBone = 60309,
            PropPlacement = {
                0.138,
                -0.05,
                0.23,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["potplant2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pot Plant (Medium)",
        AnimationOptions = {
            Prop = "bkr_prop_weed_01_small_01b",
            PropBone = 60309,
            PropPlacement = {
                0.138,
                -0.05,
                0.23,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["potplant3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pot Plant (Large)",
        AnimationOptions = {
            Prop = "bkr_prop_weed_lrg_01b",
            PropBone = 60309,
            PropPlacement = {
                0.138,
                -0.05,
                0.23,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["weedbucket"] = {
        "anim@heists@box_carry@",
        "idle",
        "Weed Bucket",
        AnimationOptions = {
            Prop = "bkr_prop_weed_bucket_open_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.1000,
                -0.1800,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lawnchair"] = {
        "timetable@ron@ig_5_p3",
        "ig_5_p3_base",
        "Lawnchair",
        AnimationOptions = {
            Prop = "prop_skid_chair_02",
            PropBone = 0,
            PropPlacement = {
                0.025,
                -0.2,
                -0.1,
                45.0,
                -5.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["lawnchair2"] = {
        "timetable@reunited@ig_10",
        "base_amanda",
        "Lawnchair 2",
        AnimationOptions = {
            Prop = "prop_skid_chair_02",
            PropBone = 0,
            PropPlacement = {
                0.025,
                -0.15,
                -0.1,
                45.0,
                5.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["lawnchair3"] = {
        "timetable@ron@ig_3_couch",
        "base",
        "Lawnchair 3",
        AnimationOptions = {
            Prop = "prop_skid_chair_02",
            PropBone = 0,
            PropPlacement = {
                -0.05,
                0.0,
                -0.2,
                5.0,
                0.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["rose2"] = {
        "missheistdocksprep1hold_cellphone",
        "static",
        "Rose 2 (Male)",
        AnimationOptions = {
            Prop = "prop_single_rose",
            PropBone = 31086,
            PropPlacement = {
                -0.0140,
                0.1030,
                0.0620,
                -2.932,
                4.564,
                39.910
            },
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["rose3"] = {
        "missheistdocksprep1hold_cellphone",
        "static",
        "Rose 3 (Female)",
        AnimationOptions = {
            Prop = "prop_single_rose",
            PropBone = 31086,
            PropPlacement = {
                -0.0140,
                0.1070,
                0.0720,
                0.00,
                0.00,
                2.99
            },
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["cbbox"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box",
        AnimationOptions = {
            Prop = "v_ret_ml_beerben1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cbbox2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 2",
        AnimationOptions = {
            Prop = "v_ret_ml_beerbla1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cbbox3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 3",
        AnimationOptions = {
            Prop = "v_ret_ml_beerjak1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cbbox4"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 4",
        AnimationOptions = {
            Prop = "v_ret_ml_beerlog1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cbbox5"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 5",
        AnimationOptions = {
            Prop = "v_ret_ml_beerpis1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cbbox6"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 6",
        AnimationOptions = {
            Prop = "prop_beer_box_01",
            PropBone = 28422,
            PropPlacement = {
                0.0200,
                -0.0600,
                -0.1200,
                -180.00,
                -180.00,
                1.99
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbin"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin",
        AnimationOptions = {
            Prop = "prop_bin_08open",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbin2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin 2",
        AnimationOptions = {
            Prop = "prop_cs_bin_01",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbin3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin 3",
        AnimationOptions = {
            Prop = "prop_cs_bin_03",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbin4"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin 4",
        AnimationOptions = {
            Prop = "prop_bin_08a",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbin5"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin 5",
        AnimationOptions = {
            Prop = "prop_bin_07d",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                -0.2200,
                -0.8600,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag - Rainbow',
        AnimationOptions = {
            Prop = 'prideflag1',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag2'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 2 - LGBTQ',
        AnimationOptions = {
            Prop = 'prideflag2',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag3'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 3 - Bisexual ',
        AnimationOptions = {
            Prop = 'prideflag3',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag4'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 4 - Lesbian ',
        AnimationOptions = {
            Prop = 'prideflag4',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag5'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 5 - Pansexual ',
        AnimationOptions = {
            Prop = 'prideflag5',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag6'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 6 - Transgender  ',
        AnimationOptions = {
            Prop = 'prideflag6',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag7'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 7 - Non Binary ',
        AnimationOptions = {
            Prop = 'prideflag7',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag8'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 8 - Asexual ',
        AnimationOptions = {
            Prop = 'prideflag8',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag9'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 9 - Straight Ally ',
        AnimationOptions = {
            Prop = 'prideflag9',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['old'] = {
        'missbigscore2aleadinout@bs_2a_2b_int',
        'lester_base_idle',
        'Old Man Walking Stick',
        AnimationOptions = {
            Prop = 'prop_cs_walking_stick',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'prop_phone_ing',
            PropTextureVariations = {
                { Name = "<font color=\"#00A0F4\">Blue", Value = 0 },
                { Name = "<font color=\"#1AA20E\">Green", Value = 1 },
                { Name = "<font color=\"#800B0B\">Dark Red", Value = 2 },
                { Name = "<font color=\"#FF7B00\">Orange", Value = 3 },
                { Name = "<font color=\"#5F5F5F\">Grey", Value = 4 },
                { Name = "<font color=\"#a356fa\">Purple", Value = 5 },
                { Name = "<font color=\"#FF0099\">Pink", Value = 6 },
                { Name = "Black", Value = 7 },
            },
            SecondPropBone = 60309, -- Left Wrist
            SecondPropPlacement = {
                0.0740,
                0.0410,
                0.0090,
             -127.9136,
              -10.6186,
                4.7536
            },
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200,
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['old2'] = { -- Custom Animation By Darks Animations
        'zimmerframe_walk@dark',
        'zimmerframe_walk_clip',
        'Old Man Zimmerframe',
        AnimationOptions = {
            Prop = 'v_res_d_zimmerframe',
            PropBone = 28252,
            PropPlacement = {
                0.9500,
               -0.6640,
               -0.5470,
             -122.4053,
               85.0955,
               23.1787,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['lighter'] = {
        'ebrwny_pack000',
        'ebrwny_spark',
        'Lighter - Cigar',
        AnimationOptions = {
            Prop = 'lux_prop_lighter_luxe',
            PropBone = 26612,
            PropPlacement = {
                0.0300,
               -0.0360,
                0.0270,
             -168.0000,
             -180.0000,
                8.0000
           },
            SecondProp = 'prop_cigar_01',
            SecondPropBone = 17188,
            SecondPropPlacement = {
                0.0450,
                0.0130,
                0.0170,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
                0.0615,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.5
            },
            PtfxInfo = locale('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
       }
    },
    ['lighter2'] = {
        'ebrwny_pack000',
        'ebrwny_spark',
        'Lighter - Cigar Sit',
        AnimationOptions = {
            Prop = 'lux_prop_lighter_luxe',
            PropBone = 26612,
            PropPlacement = {
                0.0300,
               -0.0360,
                0.0270,
             -168.0000,
             -180.0000,
                8.0000
           },
            SecondProp = 'prop_cigar_01',
            SecondPropBone = 17188,
            SecondPropPlacement = {
                0.0450,
                0.0130,
                0.0170,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
			ExitEmote = "getup",
			ExitEmoteType = "Exits",
            PtfxPlacement = {
                0.0615,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.5
            },
            PtfxInfo = locale('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
       }
    },
    ["party_lighter"] = { -- Custom Prop & Emote By BzZz
        "samnick@lighter@wave",
        "waving_lighter",
        "Party lighter",
        AnimationOptions = {
            Prop = 'samnick_prop_lighter01',
            PropBone = 18905,
            PropPlacement = {
                0.11,
                0.01,
                0.02,
                -85.0,
                188.0,
                10.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['digiscan'] = {
        'weapons@misc@digi_scanner',
        'aim_med_loop',
        'Digiscan 1 ',
        AnimationOptions = {
            Prop = 'w_am_digiscanner',
            PropBone = 28422,
            PropPlacement = {
                0.0480,
                0.0780,
                0.0040,
                -81.6893,
                2.5616,
                -15.7909
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['digiscan2'] = {
        'weapons@misc@digi_scanner',
        'aim_low_loop',
        'Digiscan 2 ',
        AnimationOptions = {
            Prop = 'w_am_digiscanner',
            PropBone = 28422,
            PropPlacement = {
                0.0480,
                0.0780,
                0.0040,
                -81.6893,
                2.5616,
                -15.7909
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['digiscan3'] = {
        'weapons@misc@digi_scanner',
        'aim_high_loop',
        'Digiscan 3 ',
        AnimationOptions = {
            Prop = 'w_am_digiscanner',
            PropBone = 28422,
            PropPlacement = {
                0.0480,
                0.0780,
                0.0040,
                -81.6893,
                2.5616,
                -15.7909
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cop4"] = {
        "amb@world_human_car_park_attendant@male@base",
        "base",
        "Cop 4",
        AnimationOptions = {
            Prop = "prop_parking_wand_01",
            PropBone = 57005,
            PropPlacement = {
                0.12,
                0.05,
                0.0,
                80.0,
                -20.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["copbeacon"] = { -- Added for compatibility
        "amb@world_human_car_park_attendant@male@base",
        "base",
        "Cop Beacon",
        AnimationOptions = {
            Prop = "prop_parking_wand_01",
            PropBone = 57005,
            PropPlacement = {
                0.12,
                0.05,
                0.0,
                80.0,
                -20.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["leanphone"] = {
        "amb@world_human_leaning@male@wall@back@mobile@base",
        "base",
        "Leaning With Phone",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            }
        }
    },
    ["hump2"] = {
        "timetable@trevor@skull_loving_bear",
        "skull_loving_bear",
        "Hump (Bear)",
        AnimationOptions = {
            Prop = 'prop_mr_raspberry_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = false,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["drink"] = {
        "mp_player_intdrink",
        "loop_bottle",
        "Drink",
        AnimationOptions =
        {
            Prop = "prop_ld_flow_bottle",
            PropBone = 18905,
            PropPlacement = {
                0.12,
                0.008,
                0.03,
                240.0,
                -60.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["surfboard"] = { -- Emote by Molly
        "beachanims@molly",
        "beachanim_surf_clip",
        "Surf Board",
        AnimationOptions =
        {
            Prop = "prop_surf_board_ldn_02",
            PropBone = 28252,
            PropPlacement = {
                0.1020,
                -0.1460,
                -0.1160,
                -85.5416,
                176.1446,
                -2.1500
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stealtv"] = { -- Emote by Molly
        "beachanims@molly",
        "beachanim_surf_clip",
        "Steal TV",
        AnimationOptions =
        {
            Prop = "xs_prop_arena_screen_tv_01",
            PropBone = 28252,
            PropPlacement = {
                0.2600,
                0.1100,
                -0.1400,
                96.1620,
                168.9069,
                84.2402
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beachring"] = { -- Emote by Molly
        "beachanims@free",
        "beachanim_clip",
        "Beach Floatie Thingy",
        AnimationOptions = {

            Prop = "prop_beach_ring_01",
            PropBone = 0,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                -12.0,
                0.0,
                -2.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cashcase"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Cash Briefcase",
        AnimationOptions = {
            Prop = "bkr_prop_biker_case_shut",
            PropBone = 28422,
            PropPlacement = {
                0.1000,
                0.0100,
                0.0040,
                0.0,
                0.0,
                -90.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cashcase2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Cash Briefcase 2",
        AnimationOptions = {
            Prop = "prop_cash_case_01",
            PropBone = 28422,
            PropPlacement = {
                -0.0050,
                -0.1870,
                -0.1400,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cashcase3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Cash Briefcase 3",
        AnimationOptions = {
            Prop = "prop_cash_case_02",
            PropBone = 28422,
            PropPlacement = {
                0.0050,
                -0.1170,
                -0.1400,
                14.000,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cashcase4"] = {
        "anim@heists@box_carry@",
        "idle",
        "Cash Briefcase 4 - Diamonds",
        AnimationOptions = {
            Prop = "ch_prop_ch_security_case_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.0900,
                -0.1800,
                14.4000,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["airportbag"] = {
        "anim@heists@narcotics@trash",
        "idle",
        "Airport Bag",
        AnimationOptions = {
            Prop = "prop_suitcase_01c",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.2100,
                -0.4300,
                -11.8999,
                0.0,
                30.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["airportbag2"] = { -- Custom Emote By Dark Animations exclusive to RPEmotes
        "suitcase_phone@dark",
        "suitcase_phone_clip",
        "Airport Bag 2 - Phone",
        AnimationOptions = {
            Prop = 'prop_suitcase_03',
            PropBone = 60309,
            PropPlacement = {
                 0.4700,
                -0.0400,
                -0.3500,
              -120.0000,
              -180.0000,
               -79.9999
            },
            SecondProp = 'prop_phone_ing',
            PropTextureVariations = {
                { Name = "<font color=\"#00A0F4\">Blue", Value = 0 },
                { Name = "<font color=\"#1AA20E\">Green", Value = 1 },
                { Name = "<font color=\"#800B0B\">Dark Red", Value = 2 },
                { Name = "<font color=\"#FF7B00\">Orange", Value = 3 },
                { Name = "<font color=\"#5F5F5F\">Grey", Value = 4 },
                { Name = "<font color=\"#a356fa\">Purple", Value = 5 },
                { Name = "<font color=\"#FF0099\">Pink", Value = 6 },
                { Name = "Black", Value = 7 },
            },
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.1040,
                0.0320,
               -0.0200,
             -108.6997,
             -150.5805,
               46.7080
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200
        }
    },
    ["airportbag3"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@single63",
        "single63_clip",
        "Airport Bag 3 - Pose",
        AnimationOptions = {
            Prop = "prop_suitcase_03",
            PropBone = 58869,
            PropPlacement = {
                0.2100,
                0.4100,
               -0.3600,
               56.9074,
               -6.1917,
              -24.3334
            },
            EmoteLoop = true,
        }
    },
    ["megaphone"] = { -- Custom Emote By MollyEmotes
        "molly@megaphone",
        "megaphone_clip",
        "Megaphone",
        AnimationOptions = {
            Prop = "prop_megaphone_01",
            PropBone = 28422,
            PropPlacement = {
                0.0500,
                0.0540,
                -0.0060,
                -71.8855,
                -13.0889,
                -16.0242
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["megaphone2"] = { -- Custom Emote By MollyEmotes
        "molly@megaphone2",
        "megaphone_clip",
        "Megaphone 2",
        AnimationOptions = {
            Prop = "prop_megaphone_01",
            PropBone = 28422,
            PropPlacement = {
                0.0500,
                0.0540,
                -0.0060,
                -71.8855,
                -13.0889,
                -16.0242
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
	["megaphone3"] = {
        "anim@rifle_megaphone",
        "rifle_holding_megaphone",
        "Megaphone 3",
        AnimationOptions = {
            Prop = "prop_megaphone_01",
            PropBone = 60309,
            PropPlacement = {
                0.0480,
                0.0190,
                0.0160,
              -94.8944,
               -2.3093,
              -10.9030
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
	["easter"] = {
        "anim@heists@narcotics@trash",
        "idle",
        "Easter Basket",
        AnimationOptions = {
            Prop = "bzzz_event_easter_basket_b",
            PropBone = 28422,
            PropPlacement = {
                0.0040,
                0.0400,
               -0.2420,
               19.9999,
                0.0,
              -10.0000
             },
            SecondProp = 'bzzz_event_easter_egg_d',
            SecondPropBone = 60309,
            SecondPropPlacement = {
                0.0790,
                0.0090,
                0.0190,
             -120.0000,
                0.0,
               0.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
	["easter2"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Easter Bunny",
        AnimationOptions = {
            Prop = "bzzz_event_easter_bunny_a",
            PropBone = 60309,
            PropPlacement = {
               -0.0270,
               -0.0200,
                0.0100,
                62.9161,
                0.4622,
                10.8906
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bball"] = { -- Custom Emote By Struggleville
        "anim@male_bskball_hold",
        "bskball_hold_clip",
        "Basketball Hold",
        AnimationOptions = {
            Prop = "prop_bskball_01",
            PropBone = 28422,
            PropPlacement = {
                0.0600,
                0.0400,
                -0.1200,
                0.0,
                0.0,
                40.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bball2"] = { -- Custom Emote By Struggleville
        "anim@male_bskball_photo_pose",
        "photo_pose_clip",
        "Basketball Pose",
        AnimationOptions = {
            Prop = "prop_bskball_01",
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                0.1300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bball3"] = { -- Custom Emote By Struggleville
        "anim@male_basketball_03",
        "m_basketball_03_clip",
        "Basketball Hold 2",
        AnimationOptions = {
            Prop = "prop_bskball_01",
            PropBone = 28422,
            PropPlacement = {
                0.0400,
                0.0200,
               -0.1400,
                90.0000,
               -99.9999,
                79.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bball4"] = { -- Custom Emote By SapphireMods
        "mx@pose2",
        "mx_clippose2",
        "Basketball Hold 3",
        AnimationOptions = {
            Prop = "prop_bskball_01",
            PropBone = 28422,
            PropPlacement = {
                0.0400,
                0.0200,
               -0.1400,
                90.0000,
               -99.9999,
                79.9999
            },
            EmoteLoop = true
        }
    },
    ["bball5"] = {
        "cover@weapon@grenade",
        "hi_r_cook",
        "Basketball Drive Pose",
        AnimationOptions = {
            Prop = "prop_bskball_01",
            PropBone = 28422,
            PropPlacement = {
                0.0400,
                0.0200,
               -0.1400,
                90.0000,
               -99.9999,
                79.9999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["ftorch"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Fire Torch",
        AnimationOptions = {
            Prop = "bzzz_prop_torch_fire001", -- Custom Prop by BzZz Used With Permission
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.21,
                -0.08,
                -110.0,
                -1.0,
                -10.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['ftorch2'] = {
        'special_ped@griff@base',
        'base',
        'Fire Torch 2',
        AnimationOptions = {
            Prop = "bzzz_prop_torch_fire001", -- Custom Prop by BzZz Used With Permission
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                0.0300,
                0.0500,
                0.0000,
                0.0000,
                0.0000,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['candle'] = {
        'special_ped@griff@base',
        'base',
        'Candle',
        AnimationOptions = {
            Prop = "v_res_fa_candle04",
            PropBone = 28422,
            PropPlacement = {
                0.0200,
                0.0100,
                0.0100,
                0.0000,
               10.0000,
                0.0000,
            },
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "core",
            PtfxName = "ent_amb_candle_flame",
            PtfxNoProp = true,
            PtfxBone = 28422,
            PtfxPlacement = {
                0.0200,
                0.0100,
                0.0600,
                0.0000,
               10.0000,
                0.0000,
            },
            PtfxInfo = locale('candle'),
            PtfxWait = 30000, -- ptfxwait is in ms, so 30000 = 30 seconds. This allows the effect to linger for 30 seconds.
            PtfxCanHold = true
        }
    },
    ["watchstripper2"] = {
        "amb@world_human_strip_watch_stand@male_c@base",
        "base",
        "Watch Stripper 2",
        AnimationOptions = {
            Prop = "prop_beer_am",
            PropBone = 60309,
            PropPlacement = {
                0.0880,
                -0.1360,
                0.1450,
                -102.9624,
                81.7098,
                -39.2734
            },
            EmoteLoop = true,
            EmoteMoving = true
        },
        AdultAnimation = true
    },
    ["candyapple"] = { -- Custom Prop by hollywoodiownu
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Candy Apple",
        AnimationOptions = {
            Prop = "apple_1",
            PropBone = 18905,
            PropPlacement = {
                0.12,
                0.15,
                0.0,
                -100.0,
                0.0,
                -12.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        },
    },
    ["gamer"] = { -- Custom Emote By MissSnowie
        "playing@with_controller",
        "base",
        "Gamer",
        AnimationOptions = {
            Prop = 'prop_controller_01',
            PropBone = 18905,
            PropPlacement = {
                0.1450,
                0.0590,
                0.0850,
             -164.4546,
              -62.9570,
               17.5872
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["gamer2"] = { -- Custom Emote By Dark Animations exclusive to RPEmotes
        "lay_controller@dark",
        "lay_controller_clip",
        "Gamer Laying On Stomach",
        AnimationOptions = {
            Prop = 'prop_controller_01',
            PropBone = 18905,
            PropPlacement = {
                0.1350,
                0.0360,
                0.0950,
             -180.0000,
              -72.9699,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["study"] = { -- Custom Emote By Dark Animations exclusive to RPEmotes
        "study_pc_finally_fixed@dark",
        "study_pc_finally_fixed_clip",
        "Study",
        AnimationOptions = {
            Prop = 'xm_prop_x17_laptop_lester_01',
            PropBone = 28422,
            PropPlacement = {
                0.1650,
                0.1010,
               -0.1470,
             -159.2533,
             -145.7418,
              -79.5760,
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["crackhead"] = {
        "special_ped@zombie@base",
        "base",
        "Crack Head",
        AnimationOptions = {
            Prop = 'prop_cs_bowie_knife', -- Knife
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                -0.1280,
                -0.0220,
                 0.0210,
                -150.0005,
                179.9989,
                -30.0105
            },
            SecondProp = 'ng_proc_cigpak01a',
            SecondPropBone = 26614,
            SecondPropPlacement = {
                0.010,
                -0.0190,
                0.0920,
                -82.4073,
                178.6009,
                29.9195
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["propose"] = { -- Custom Emote By ultrahacx
        "ultra@propose",
        "propose",
        "Propose",
        AnimationOptions = {
            Prop = 'ultra_ringcase', -- Custom prop by ultrahacx
            PropBone = 28422,
            PropPlacement = {
                0.0980,
                0.0200,
               -0.0540,
               -138.6571,
                4.4141,
               -79.3552
            },
            EmoteLoop = true
        }
    },
    ["propose2"] = { -- Custom Emote By ultrahacx
        "ultra@propose",
        "propose",
        "Propose 2 - Valentines Day",
        AnimationOptions = {
            Prop = 'pata_freevalentinesday', -- Custom prop by PataMods
            PropBone = 64064,
            PropPlacement = {
                0.0190,
                0.0480,
                0.0110,
               -9.0350,
                88.4373,
                -9.8783
            },
            EmoteLoop = true
        }
    },
    ["propose3"] = { -- Custom Emote By ultrahacx
        "ultra@propose",
        "propose",
        "Propose 3",
        AnimationOptions = {
            Prop = 'pata_freevalentinesday2', -- Custom prop by PataMods
            PropBone = 64064,
            PropPlacement = {
                0.0190,
                0.0480,
                0.0110,
               -9.0350,
                88.4373,
                -9.8783
            },
            EmoteLoop = true
        }
    },
    ["holdfw"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Hold Firework",
        AnimationOptions = {
            Prop = 'ind_prop_firework_01', -- blue, green, red, purple pink, cyan, yellow, white
             PtfxColor = {{R = 255, G = 0, B = 0, A = 1.0}, {R = 0, G = 255, B = 0, A = 1.0}, {R = 0, G = 0, B = 255, A = 1.0}, {R = 177, G = 5, B = 245, A = 1.0}, {R = 251, G = 3, B = 255, A = 1.0}, {R = 2, G = 238, B = 250, A = 1.0}, {R = 252, G = 248, B = 0, A = 1.0}, {R = 245, G = 245, B = 245, A = 1.0}},
            PropBone = 18905,
            PropPlacement = {
                0.1100,
                0.3200,
               -0.2400,
               -130.0688,
               -2.5736,
               -3.0631
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
    ["chillteq"] = { -- Custom Emote By Amnilka
        "amnilka@photopose@female@homepack001",
        "amnilka_femalehome_photopose_003",
        "Chill Tequila",
        AnimationOptions = {
            Prop = 'prop_tequila',
            PropBone = 60309,
            PropPlacement = {
               0.0810,
              -0.0460,
               0.0430,
              -110.1784,
               2.9283,
              -12.5092
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["patrolf1"] = {
        "amb@world_human_security_shine_torch@male@base",
        "base",
        "Patrol - On Foot",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 60309,
            PropPlacement = {
               0.0,
               0.0,
               0.0,
               0.0,
               0.0,
               80.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["patrolf2"] = {
        "amb@world_human_security_shine_torch@male@idle_b",
        "idle_e",
        "Patrol - On Foot 2",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 60309,
            PropPlacement = {
               0.0,
               0.0,
               0.0,
               0.0,
               0.0,
               80.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["patrolf3"] = {
        "amb@world_human_security_shine_torch@male@idle_a",
        "idle_a",
        "Patrol - On Foot 3",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 60309,
            PropPlacement = {
               0.0,
               0.0,
               0.0,
               0.0,
               0.0,
               80.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["patrolf4"] = { -- Huge thanks to MadsLeander on GitHub
        "amb@incar@male@patrol@torch@base",
        "base",
        "Patrol - On Foot 4 Over The Shoulder",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.0,
               -0.00100,
                0.0,
                0.0,
                0.0,
                90.0
            },
            SecondProp = 'prop_cs_hand_radio',
            SecondPropBone = 60309, -- Left Wrist
            SecondPropPlacement = {
                0.0560,
                0.0470,
                0.0110,
              -43.82733,
              164.6747,
               -7.5569
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["patrolcar"] = {
        "amb@incar@male@patrol@torch@base",
        "base",
        "Patrol Car - Front",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 28422,
            PropPlacement = {
               0.0,
              -0.0100,
              -0.0100,
               0.0,
               0.0,
             100.0000
            },
            EmoteLoop = true
        }
    },
    ["pineapple"] = { -- Custom Prop by hollywoodiownu
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Pineapple",
        AnimationOptions = {
            Prop = "xm3_prop_xm3_pineapple_01a",
            PropBone = 18905,
            PropPlacement = {
                0.1,
                -0.11,
                0.05,
                -100.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        },
    },
    ["present"] = {
        "anim@heists@box_carry@",
        "idle",
        "Present",
        AnimationOptions = {
            Prop = "xm3_prop_xm3_present_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.18,
                -0.16,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["patrolcarl"] = {
        "amb@incar@male@patrol@torch@idle_b",
        "idle_d",
        "Patrol Car - Left",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 28422,
            PropPlacement = {
               0.0,
              -0.0100,
              -0.0100,
               0.0,
               0.0,
             100.0000
            },
            EmoteLoop = true
        }
    },
    ["patrolcarr"] = {
        "amb@incar@male@patrol@torch@idle_a",
        "idle_a",
        "Patrol Car - Right",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 28422,
            PropPlacement = {
               0.0,
              -0.0100,
              -0.0100,
               0.0,
               0.0,
             100.0000
            },
            EmoteLoop = true
        }
    },
    ["papers"] = {
        "missheistdocksprep1hold_cellphone",
        "static",
        "Papers",
        AnimationOptions = {
            Prop = "xm3_prop_xm3_papers_01a",
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.0,
                0.04,
                -110.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["vlog"] = {
        "amb@world_human_mobile_film_shocking@male@base",
        "base",
        "Vlog",
        AnimationOptions = {
            Prop = 'prop_ing_camera_01',
            PropBone = 28422,
            PropPlacement = {
               -0.07,
               -0.01,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["vlog2"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Vlog 2",
        AnimationOptions = {
            Prop = 'prop_ing_camera_01',
            PropBone = 18905,
            PropPlacement = {
               0.15,
               0.03,
               0.1,
             280.0,
             110.0,
             -11.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["skatesit"] = { -- Custom Emote By CMG Mods
        "skateboardposecmganimation",
        "skateboardposecmg_clip",
        "Skateboard - Sit",
        AnimationOptions = {
            Prop = 'rpemotesreborn_skateboard01',
            PropBone = 0,
            PropPlacement = {
               0.0,
               0.0400,
              -0.2300,
               0.0,
               0.0,
               0.0
            },
            EmoteLoop = true,
        }
    },
    ["skatesit2"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@skate2",
        "skate2_clip",
        "Skateboard - Sit 2",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard02",
            PropBone = 0,
            PropPlacement = {
                0.0,
               -0.0200,
               -0.2900,
               0.0,
               0.0,
               0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["skatekneel"] = { -- Custom Emote By DRX Animations
        "drx@skateboard3",
        "drx",
        "Skateboard Kneeling - Male",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard02",
            PropBone = 64064,
            PropPlacement = {
                0.2000,
               -0.0600,
                0.0,
              -61.0100,
                4.4024,
              -16.913
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
     },
    ["skatekneel2"] = { -- Custom Emote By DRX Animations
        "drx@skateboard3",
        "drx",
        "Skateboard Kneeling 2 - Female",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard01",
            PropBone = 64064,
            PropPlacement = {
                0.2000,
               -0.0600,
                0.0,
              -61.0100,
                4.4024,
              -16.913
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["skatehold"] = {
        "molly@boombox1",
        "boombox1_clip",
        "Skateboard - Hold Female",
        AnimationOptions = {
            Prop = "prop_cs_sol_glasses",
            PropBone = 31086,
            PropPlacement = {
                0.0440,
                0.0740,
                0.0000,
                -160.9843,
                -88.7288,
                -0.6197
            },
            SecondProp = 'rpemotesreborn_skateboard01',
            SecondPropBone = 60309,
            SecondPropPlacement = {
               -0.0050,
                0.0320,
                0.1640,
                44.6076,
               -112.2983,
                -86.1199
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["skatehold2"] = { -- Emote by Molly
        "beachanims@molly",
        "beachanim_surf_clip",
        "Skateboard - Hold Female 2",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard01",
            PropBone = 28422,
            PropPlacement = {
               -0.1020,
                0.2240,
                0.0840,
                5.6655,
               175.3526,
               49.7964
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["skatehold3"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@skate4",
        "skate4_clip",
        "Skateboard - Hold Female 3",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard01",
            PropBone = 28422,
            PropPlacement = {
                0.2780,
               -0.0200,
               -0.0700,
               -180.0000,
                28.0000,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["skatehold4"] = {
        "molly@boombox1",
        "boombox1_clip",
        "Skateboard - Hold Male",
        AnimationOptions = {
            Prop = "prop_cs_sol_glasses",
            PropBone = 31086,
            PropPlacement = {
                0.0440,
                0.0740,
                0.0000,
                -160.9843,
                -88.7288,
                -0.6197
            },
            SecondProp = 'rpemotesreborn_skateboard02',
            SecondPropBone = 60309,
            SecondPropPlacement = {
               -0.0050,
                0.0320,
                0.1640,
                44.6076,
               -112.2983,
                -86.1199
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["skatehold5"] = { -- Emote by Molly
        "beachanims@molly",
        "beachanim_surf_clip",
        "Skateboard - Hold Male 2",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard02",
            PropBone = 28422,
            PropPlacement = {
               -0.1020,
                0.2240,
                0.0840,
                5.6655,
               175.3526,
               49.7964
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["skatehold6"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@skate4",
        "skate4_clip",
        "Skateboard - Hold Male 3",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard02",
            PropBone = 28422,
            PropPlacement = {
                0.2780,
               -0.0200,
               -0.0700,
               -180.0000,
                28.0000,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["skatehold7"] = { -- Custom Emote By DRX Animations
        "drx@skateboard2",
        "drx",
        "Skateboard - Hold Male DRX",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard02",
            PropBone = 64080,
            PropPlacement = {
                0.2670,
               -0.0060,
                0.0560,
               -0.2472,
              -13.1506,
              -33.6511
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["skatehold8"] = { -- Custom Emote By DRX Animations
        "drx@skateboard2",
        "drx",
        "Skateboard - Hold Female DRX",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard01",
            PropBone = 64080,
            PropPlacement = {
                0.2670,
               -0.0060,
                0.0560,
               -0.2472,
              -13.1506,
              -33.6511
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mafia"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@single12",
        "single12_clip",
        "Mafia Boss - Gun Point",
        AnimationOptions = {
            Prop = "w_pi_revolver_b",
            PropBone = 28422,
            PropPlacement = {
                0.1150,
                0.0590,
               -0.0100,
               -69.7101,
                1.4074,
               -13.7554
            },
            SecondProp = 'prop_cigar_01',
            SecondPropBone = 17188,
            SecondPropPlacement = {
                0.0450,
                0.0130,
                0.0170,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
                0.0615,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.5
            },
            PtfxInfo = locale('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["shield"] = {
        "beachanims@molly",
        "beachanim_surf_clip",
        "Shield",
        AnimationOptions = {
            Prop = "prop_riot_shield",
            PropBone = 18905,
            PropPlacement = {
                -0.04,
                -0.06,
                0.0,
                4.04,
                108.17,
                -17.48
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shield2"] = {
        "beachanims@molly",
        "beachanim_surf_clip",
        "Shield 2",
        AnimationOptions = {
            Prop = "prop_ballistic_shield",
            PropBone = 18905,
            PropPlacement = {
                0.01,
                -0.1,
                -0.07,
                1.83,
                105.38,
                -10.14
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cofpose"] = {
        "chocoholic@single23",
        "single23_clip",
        "Coffee & Burger Pose",
        AnimationOptions = {
            Prop = "prop_fib_coffee",
            PropBone = 28422,
            PropPlacement = {
                0.0720,
                0.0390,
               -0.0230,
             -125.8797,
             -168.4347,
               17.4518
            },
            SecondProp = 'prop_cs_burger_01',
            SecondPropBone = 60309,
            SecondPropPlacement = {
                0.0860,
                0.0030,
                0.0570,
              106.1459,
                8.0371,
              17.0945
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
	["holster6"] = {
        "anim@hlstr_7360_torch",
        "flsh_ps",
        "Holster 6 - Flash Light",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 60309,
            PropPlacement = {
                0.0550,
               -0.0200,
                0.0370,
              -29.6216,
               -8.6822,
                4.9809
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["holster8"] = {
        "anim@holster_walk_torch",
        "flash_ps",
        "Holster 8 Flashlight 2",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 60309,
            PropPlacement = {
                0.0600,
               -0.0100,
                0.0200,
              -20.0000,
               0.0000,
               3.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["heartprop"] = {
        "anim@heists@box_carry@",
        "idle",
        "Heart Prop",
        AnimationOptions = {
            Prop = 'brum_heart',
            PropBone = 28422,
            PropPlacement = {
               -0.5600,
                0.0240,
               -0.3690,
              -10.0000,
               0.0000,
              -0.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["popcorn"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Popcorn",
        AnimationOptions = {
            Prop = 'xs_prop_trinket_cup_01a',
            PropBone = 28422,
            PropPlacement = {
               -0.0200,
               -0.0100,
               -0.0700,
             -179.3626,
              176.9331,
               11.9833
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sax"] = {
        "play_saxophone@dark",
        "play_saxophone_clip",
        "Saxophone 1",
        AnimationOptions = {
            Prop = 'p_ld_sax',
            PropBone = 57005,
            PropPlacement = {
               0.0700,
               0.0400,
               0.0300,
             -71.2242,
              29.3364,
               5.9514
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
   ["poolcue"] = {
       "pool_pack_1@dark",
       "pool_pack_1_clip",
        "Play Pool",
        AnimationOptions = {
            Prop = 'prop_pool_cue',
            PropBone = 57005,
            PropPlacement = {
               0.0900,
               0.2000,
               0.0800,
             -61.4338,
              -7.2194,
               3.1642
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
   ["poolcue2"] = {
       "pool_pack_2@dark",
       "pool_pack_2_clip",
        "Play Pool 2 (Pose)",
        AnimationOptions = {
            Prop = 'prop_pool_cue',
            PropBone = 57005,
            PropPlacement = {
               0.1200,
              -0.5200,
              -0.1200,
             -78.0400,
              -1.4526,
               1.8479
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
   },
   ["poolcue3"] = {
       "pool_pack_3@dark",
       "pool_pack_3_clip",
        "Play Pool 3 (Pose)",
        AnimationOptions = {
            Prop = 'prop_pool_cue',
            PropBone = 57005,
            PropPlacement = {
               0.1200,
              -0.3500,
              -0.0200,
             -90.0000,
               0.0,
               0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
   },
   ["poolcue4"] = {
       "pool_pack_4@dark",
       "pool_pack_4_clip",
        "Play Pool 4 (Pose)",
        AnimationOptions = {
            Prop = 'prop_pool_cue',
            PropBone = 61163,
            PropPlacement = {
               0.2600,
              -0.1600,
              -0.3100,
             -31.8144,
              14.4214,
             -13.2854
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
   },
   ["poolcue5"] = {
       "pool_pack_5@dark",
       "pool_pack_5_clip",
        "Play Pool 5",
        AnimationOptions = {
            Prop = 'prop_pool_cue',
            PropBone = 57005,
            PropPlacement = {
               0.0700,
               0.5500,
               0.1000,
             -76.6157,
              -9.5838,
               2.9748,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
   ["basket"] = {
       "missfbi4prepp1",
       "idle",
        "Basket",
        AnimationOptions = {
            Prop = 'bzzz_prop_shop_basket_a',
            PropBone = 57005,
            PropPlacement = {
               0.34,
              -0.25,
              -0.24,
             -146.0,
              115.0,
               19.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
   ["basket2"] = {
       "missfbi4prepp1",
       "idle",
        "Basket 2",
        AnimationOptions = {
            Prop = 'bzzz_prop_shop_basket_b',
            PropBone = 57005,
            PropPlacement = {
               0.34,
              -0.25,
              -0.24,
             -146.0,
              115.0,
               19.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
   ["power"] = {
       "move_weapon@jerrycan@generic",
       "idle",
        "Power House",
        AnimationOptions = {
            Prop = 'prop_bzzz_elektro_powerhouse001',
            PropBone = 57005,
            PropPlacement = {
               0.11,
               0.06,
               0.0,
               98.0,
               12.0,
               -99.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
   ["wlight"] = {
       "missfbi4prepp1",
       "idle",
        "Weed Light",
        AnimationOptions = {
            Prop = 'prop_bzzz_drugs_light001',
            PropBone = 57005,
            PropPlacement = {
               0.08,
               0.18,
              -0.02,
             -130.0,
                0.0,
              -90.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
   ["businessbag"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
       "mrwitt@dark_appearance_with_bag_male",
       "mrwitt",
        "Business Bag",
        AnimationOptions = {
            Prop = 'prop_med_bag_01b',
            PropBone = 60309,
            PropPlacement = {
               0.3050,
               0.0200,
               0.0790,
              43.8282,
             -54.1834,
             -88.4424
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
   ["businessbag2"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
       "mrwitt@dark_appearance_with_bag_male",
       "mrwitt",
        "Business Bag - Pose",
        AnimationOptions = {
            Prop = 'prop_med_bag_01b',
            PropBone = 60309,
            PropPlacement = {
               0.3050,
               0.0200,
               0.0790,
              43.8282,
             -54.1834,
             -88.4424
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
   },
   ["squatcash"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
       "mrwitt@checked_shirt_squat_male",
       "mrwitt",
        "Squat Cash - Pose",
        AnimationOptions = {
            Prop = 'prop_cash_pile_02',
            PropBone = 28422,
            PropPlacement = {
               0.0880,
               0.0440,
               0.0030,
             149.6422,
            -164.7312,
              25.2203
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["squatmask"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
        "mrwitt@selfie02_male",
        "mrwitt",
        "Squat Mask Red - Pose",
        AnimationOptions = {
            Prop = 'scarymask1',
            PropBone = 64065,
            PropPlacement = {
               0.0200,
               0.1700,
              -0.0210,
               0.0000,
               0.0000,
               0.0000,
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
   },
   ["squatmask1"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
        "mrwitt@selfie02_male",
        "mrwitt",
        "Squat Mask White - Pose",
        AnimationOptions = {
            Prop = 'scarymask2',
            PropBone = 64065,
            PropPlacement = {
               0.0200,
               0.1700,
              -0.0210,
               0.0000,
               0.0000,
               0.0000,
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
   },
   ["squatmask2"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
        "mrwitt@selfie02_male",
        "mrwitt",
        "Squat Mask Black - Pose",
        AnimationOptions = {
            Prop = 'scarymask3',
            PropBone = 64065,
            PropPlacement = {
               0.0200,
               0.1700,
              -0.0210,
               0.0000,
               0.0000,
               0.0000,
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
   },
   ["selfiesquat"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
        "mrwitt@selfie02_male",
        "mrwitt",
        "Selfie Squat Male",
        AnimationOptions = {
            Prop = 'prop_cash_pile_02',
            PropBone = 26614,
            PropPlacement = {
                0.0300,
               -0.0300,
                0.0700,
              -90.0000,
             -180.0000,
                6.9999
            },
            SecondProp = 'prop_phone_ing',
            PropTextureVariations = {
                { Name = "<font color=\"#00A0F4\">Blue", Value = 0 },
                { Name = "<font color=\"#1AA20E\">Green", Value = 1 },
                { Name = "<font color=\"#800B0B\">Dark Red", Value = 2 },
                { Name = "<font color=\"#FF7B00\">Orange", Value = 3 },
                { Name = "<font color=\"#5F5F5F\">Grey", Value = 4 },
                { Name = "<font color=\"#a356fa\">Purple", Value = 5 },
                { Name = "<font color=\"#FF0099\">Pink", Value = 6 },
                { Name = "Black", Value = 7 },
            },
            SecondPropBone = 64112,
            SecondPropPlacement = {
                0.0180,
                0.0380,
                0.0260,
              179.6474,
             -177.9691,
                9.9938
            },
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = locale('camera'),
            PtfxWait = 200,
            EmoteLoop = true,
        }
   },
   ["femscaremask"] = { -- Animation by MrWitt
        "mrwitt@helloween4_f",
        "mrwitt",
        "Female Scary Mask Red - Pose",
        AnimationOptions = {
            Prop = 'scarymask1', -- Prop by Vedere
            PropBone = 64064,
            PropPlacement = {
                -0.0460,
                0.1170,
                0.0850,
                21.9542799,
                -81.9467213,
                9.0687101
            },
            EmoteLoop = true,
            EmoteMoving = true
            }
   },
   ["femscaremask2"] = { -- Animation by MrWitt
    "mrwitt@helloween4_f",
    "mrwitt",
    "Female Scary Mask Black - Pose",
        AnimationOptions = {
        Prop = 'scarymask2', -- Prop by Vedere
        PropBone = 64064,
        PropPlacement = {
        -0.0460,
        0.1170,
        0.0850,
        21.9542799,
        -81.9467213,
        9.0687101
        },
        EmoteLoop = true,
        EmoteMoving = true
        }
   },
   ["femscaremask3"] = { -- Animation by MrWitt
    "mrwitt@helloween4_f",
    "mrwitt",
    "Female Scary Mask White - Pose",
        AnimationOptions = {
        Prop = 'scarymask3', -- Prop by Vedere
        PropBone = 64064,
        PropPlacement = {
        -0.0460,
        0.1170,
        0.0850,
        21.9542799,
        -81.9467213,
        9.0687101
        },
        EmoteLoop = true,
        EmoteMoving = true
        },
   },
   ["raiseglass"] = { -- Custom Animation by Chocoholic Animations
    "chocoholic@duo32",
    "duo32_clip",
    "Raise Your Glass",
        AnimationOptions = {
        Prop = 'p_champ_flute_s',
        PropBone = 64065,
        PropPlacement = {
        0.0140,
        0.0310,
       -0.0990,
        0.0000,
        0.0000,
        0.0000
        },
        EmoteLoop = true,
        EmoteMoving = true
        },
    },
    ["raiseglass2"] = { -- Custom Animation by Chocoholic Animations
    "chocoholic@duo34",
    "duo34_clip",
    "Raise Your Glass 2",
        AnimationOptions = {
        Prop = 'p_champ_flute_s',
        PropBone = 64065,
        PropPlacement = {
        0.0260,
        0.0190,
       -0.1280,
      -14.9999,
        0.0000,
       -2.9999
        },
        EmoteLoop = true,
        EmoteMoving = true
        },
    },
    ["squatgunpose2"] = { -- Custom Emote By Darks Animations
        "ganggirls_pose2@darks37",
        "ganggirls_pose2_clip",
        "Squat Gun Pose 2 - Right",
        AnimationOptions = {
        Prop = 'w_pi_pistolsmg_m31',
        PropBone = 26614,
        PropPlacement = {
        0.0260,
       -0.0280,
        0.0980,
       -4.8222,
       -6.9836,
        23.6186
        },
        EmoteLoop = true,
        },
    },
    ["rap2"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
       "mic_pose_1@darksj",
       "mic_pose_1_clip",
        "Rap / Sing 2 - Microphone",
        AnimationOptions = {
            Prop = 'sf_prop_sf_mic_01a',
            PropBone = 28422,
            PropPlacement = {
               0.0680,
               0.0190,
              -0.0220,
               0.0000,
               0.0000,
             170.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["rap3"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
       "mic_pose_2@darksj",
       "mic_pose_2_clip",
        "Rap / Sing 3 - Microphone Rock Hand Sign",
        AnimationOptions = {
            Prop = 'sf_prop_sf_mic_01a',
            PropBone = 28422,
            PropPlacement = {
               0.0680,
               0.0190,
              -0.0220,
               0.0000,
               0.0000,
             170.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["rap4"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
       "mic_pose_3@darksj",
       "mic_pose_3_clip",
        "Rap / Sing 4 - Microphone Bend Back",
        AnimationOptions = {
            Prop = 'sf_prop_sf_mic_01a',
            PropBone = 28422,
            PropPlacement = {
               0.0680,
               0.0190,
              -0.0220,
               0.0000,
               0.0000,
             170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["rap5"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
       "mic_pose_4@darksj",
       "mic_pose_4_clip",
        "Rap / Sing 5 - Microphone Kneel",
        AnimationOptions = {
            Prop = 'sf_prop_sf_mic_01a',
            PropBone = 28422,
            PropPlacement = {
               0.0680,
               0.0190,
              -0.0220,
               0.0000,
               0.0000,
             170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
			ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["rap6"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
       "mic_pose_5_a@darksj",
       "mic_pose_5_a_clip",
        "Rap / Sing 6 - Microphone",
        AnimationOptions = {
            Prop = 'sf_prop_sf_mic_01a',
            PropBone = 28422,
            PropPlacement = {
               0.0680,
               0.0190,
              -0.0220,
               0.0000,
               0.0000,
             170.0000
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["bbat"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
       "bat@sel",
       "bat_clip",
        "Baseball Bat Pose",
        AnimationOptions = {
            Prop = 'p_cs_bbbat_01',
            PropBone = 28422,
            PropPlacement = {
               0.0600,
               0.0700,
               0.0100,
             -73.8317,
               0.8479,
             -12.8826
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["stopsign"] = { -- Custom Prop By PNWParksFan
       "amb@world_human_janitor@male@base",
       "base",
        "Stop Sign",
        AnimationOptions = {
            Prop = 'prop_flagger_sign_01',
            PropBone = 28422,
            PropPlacement = {
               0.0000,
               0.0000,
              -0.6800,
               0.0000,
               0.0000,
             -50.0000
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["stopsign2"] = { -- Custom Prop By PNWParksFan
       "amb@world_human_janitor@male@base",
       "base",
        "Stop Sign 2 - Slow Down",
        AnimationOptions = {
            Prop = 'prop_flagger_sign_01',
            PropBone = 28422,
            PropPlacement = {
               0.0000,
               0.0000,
              -0.6800,
               0.0000,
               0.0000,
             120.0000
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["stopsign3"] = { -- Custom Prop By PNWParksFan
       "special_ped@griff@base",
       "base",
        "Stop Sign 3 - Stop",
        AnimationOptions = {
            Prop = 'prop_flagger_sign_02',
            PropBone = 28422,
            PropPlacement = {
               0.0200,
               0.0200,
              -0.2600,
             169.9999,
            -180.0000,
              59.9999
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["stopsign4"] = { -- Custom Prop By PNWParksFan
       "special_ped@griff@base",
       "base",
        "Stop Sign 4 - Slow Down",
        AnimationOptions = {
            Prop = 'prop_flagger_sign_02',
            PropBone = 28422,
            PropPlacement = {
                0.0200,
                0.0200,
                -0.2600,
                10.0000,
                0.0000,
                -59.9999
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["stonerbabepose"] = { -- Custom Emote provided by 41anims
        "stonerbabe@animation",
        "stonerbabe_clip",
        "Stoner Babe Pose",
        AnimationOptions = {
            Prop = 'p_cs_joint_01',
            PropBone = 57005,
            PropPlacement = {
                0.15,
                0.03,
                -0.04,
                -1.0,
                170.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["baddiegyat"] = { -- Custom Emote provided by 41anims
        "baddiegyat",
        "baddiegyat_clip",
        "Baddie Gyat Selfie",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 4169,
            PropPlacement = {
                0.0300,
                -0.0200,
                0.0200,
                -5.0,
                3.367247,
                0.0711684
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["murder1"] = {
        "dead",
        "dead_e",
        "Murder Axe",
        AnimationOptions = {
            Prop = "bzzz_murder_axe001",
            PropBone = 18905,
            PropPlacement = {
                -0.22,
                0.34,
                -0.3,
                -56.0,
                98.0,
                34.0
            },
            SecondProp = 'p_bloodsplat_s',
            SecondPropBone = 57005,
            SecondPropPlacement = {
                0.28,
                0.17,
                -0.12,
                -98.0,
                -51.0,
                237.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["murder2"] = {
        "dead",
        "dead_a",
        "Murder Pistol",
        AnimationOptions = {
            Prop = "w_pi_heavypistol",
            PropBone = 18905,
            PropPlacement = {
                0.27,
                0.35,
                0.05,
                -98.0,
                2.0,
                183.0
            },
            SecondProp = 'p_bloodsplat_s',
            SecondPropBone = 57005,
            SecondPropPlacement = {
                -0.8,
                0.41,
                0.0,
                -98.0,
                -7.0,
                237.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["murder3"] = {
        "dead",
        "dead_b",
        "Murder Machete",
        AnimationOptions = {
            Prop = "bzzz_murder_machete001",
            PropBone = 18905,
            PropPlacement = {
                -0.22,
                0.18,
                -0.67,
                196.0,
                157.0,
                -35.0
            },
            SecondProp = 'p_bloodsplat_s',
            SecondPropBone = 57005,
            SecondPropPlacement = {
                -0.28,
                -0.15,
                0.00,
                266.2,
                182.3,
                -10.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
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