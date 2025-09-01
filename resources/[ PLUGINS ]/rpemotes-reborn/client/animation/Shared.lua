--[[
#   88888888ba         db         ad88888ba   88888888888     88888888888  88b           d88    ,ad8888ba,  888888888888  88888888888
#   88      "8b       d88b       d8"     "8b  88              88           888b         d888   d8"'    `"8b      88       88
#   88      ,8P      d8'`8b      Y8,          88              88           88`8b       d8'88  d8'        `8b     88       88
#   88aaaaaa8P'     d8'  `8b     `Y8aaaaa,    88aaaaa         88aaaaa      88 `8b     d8' 88  88          88     88       88aaaaa
#   88""""""8b,    d8YaaaaY8b      `"""""8b,  88"""""         88"""""      88  `8b   d8'  88  88          88     88       88"""""
#   88      `8b   d8""""""""8b           `8b  88              88           88   `8b d8'   88  Y8,        ,8P     88       88
#   88      a8P  d8'        `8b  Y8a     a8P  88              88           88    `888'    88   Y8a.    .a8P      88       88
#   88888888P"  d8'          `8b  "Y88888P"   88888888888     88888888888  88     `8'     88    `"Y8888Y"'       88       88888888888
#
#   > [emotename] = {dictionary, animation, displayname, targetemotename, additionalanimationoptions}
#   > You don't have to specify targetemotename; If you don't, it will just play the same animation on both.
#   > targetemote is used for animations that have a corresponding animation to the other player, ie Carry and Be Carried
#   > Emotes will work with either SyncOffset or Attachto. We can attach players either in front of us, to a specific bone, or either side of us.
#
--]] return {
    ["handshake"] = {
        "mp_ped_interaction",
        "handshake_guy_a",
        "Handshake",
        "handshake2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000,
            SyncOffsetFront = 0.9
        }
    },
    ["handshake2"] = {
        "mp_ped_interaction",
        "handshake_guy_b",
        "Handshake 2",
        "handshake",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["hug"] = {
        "mp_ped_interaction",
        "kisses_guy_a",
        "Hug",
        "hug2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 5000,
            SyncOffsetFront = 1.05
        }
    },
    ["hug2"] = {
        "mp_ped_interaction",
        "kisses_guy_b",
        "Hug 2",
        "hug",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 5000,
            SyncOffsetFront = 1.18
        }
    },
    ["hugr"] = {
        "misscarsteal2chad_goodbye",
        "chad_armsaround_chad",
        "Hug Romantic 1",
        "hugr2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            SyncOffsetSide = -0.05,
            SyncOffsetFront = 0.52
        }
    },
    ["hugr2"] = {
        "misscarsteal2chad_goodbye",
        "chad_armsaround_girl",
        "Hug Romantic 2",
        "hugr",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            SyncOffsetSide = -0.05,
            SyncOffsetFront = 0.52
        }
    },
    ["bro"] = {
        "mp_ped_interaction",
        "hugs_guy_a",
        "Bro",
        "bro2",
        AnimationOptions = {
            SyncOffsetFront = 1.14
        }
    },
    ["bro2"] = {
        "mp_ped_interaction",
        "hugs_guy_b",
        "Bro 2",
        "bro",
        AnimationOptions = {
            SyncOffsetFront = 1.14
        }
    },
    ["give"] = {
        "mp_common",
        "givetake1_a",
        "Give",
        "give2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["give2"] = {
        "mp_common",
        "givetake1_b",
        "Give 2",
        "give",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["baseball"] = {
        "anim@arena@celeb@flat@paired@no_props@",
        "baseball_a_player_a",
        "Baseball",
        "baseballthrow"
    },
    ["baseballthrow"] = {
        "anim@arena@celeb@flat@paired@no_props@",
        "baseball_a_player_b",
        "Baseball Throw",
        "baseball"
    },
    ["stickup"] = {
        "random@countryside_gang_fight",
        "biker_02_stickup_loop",
        "Stick Up",
        "stickupscared",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stickupscared"] = {
        "missminuteman_1ig_2",
        "handsup_base",
        "Stickup Scared",
        "stickup",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["punch"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_rear_lefthook",
        "Punch",
        "punched"
    },
    ["punched"] = {
        "melee@unarmed@streamed_variations",
        "victim_takedown_front_cross_r",
        "Punched",
        "punch"
    },
    ["headbutt"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_front_headbutt",
        "Headbutt",
        "headbutted"
    },
    ["headbutted"] = {
        "melee@unarmed@streamed_variations",
        "victim_takedown_front_headbutt",
        "Headbutted",
        "headbutt"
    },
    ["slap2"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_front_backslap",
        "Slap 2",
        "slapped2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["slap"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_front_slap",
        "Slap",
        "slapped",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["slapped"] = {
        "melee@unarmed@streamed_variations",
        "victim_takedown_front_slap",
        "Slapped",
        "slap"
    },
    ["slapped2"] = {
        "melee@unarmed@streamed_variations",
        "victim_takedown_front_backslap",
        "Slapped 2",
        "slap2"
    },
    ["carry"] = {
        "missfinale_c2mcs_1",
        "fin_c2_mcs_1_camman",
        "Carry",
        "carry2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["carry2"] = {
        "nm",
        "firemans_carry",
        "Be carried",
        "carry",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 40269,
            xPos = -0.14,
            yPos = 0.15,
            zPos = 0.14,
            xRot = 0.0,
            yRot = -59.0,
            zRot = -4.5
        }
    },
    ["carry3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry 2",
        "carry4",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["carry4"] = {
        "amb@code_human_in_car_idles@generic@ps@base",
        "base",
        "Be carried 2",
        "carry3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 28252,
            xPos = 0.350,
            yPos = 0.15,
            zPos = -0.15,
            xRot = -42.50,
            yRot = -22.50,
            zRot = 22.50
        }
    },
    ["carrymecute"] = { -- Male Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_mal_002",
        "Carry Me Cute",
        "carrymecute2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["carrymecute2"] = { -- Female Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_fem_002",
        "Carry Me Cute 2",
        "carrymecute",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0000,
            yPos = 0.0000,
            zPos = 0.0000,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 0.0000
        }
    },
    ["carrycmg"] = { -- Male Custom emote by CMG Mods
        "couplepose1cmg@animation",
        "couplepose1cmg_clip",
        "Carry Me Cute 3",
        "carrycmg2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["carrycmg2"] = { -- Female Custom emote by CMG Mods
        "couplepose2cmg@animation",
        "couplepose2cmg_clip",
        "Carry Me Cute 4",
        "carrycmg",
        AnimationOptions = {
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0100,
            yPos = 0.3440,
            zPos = -0.0100,
            xRot = 180.0000,
            yRot = 180.0000,
            zRot = -1.9999
        }
    },
    ["bestfriends"] = { -- Female Custom emote by MrWitt
    "mrwitt@casual_composure_female01",
    "mrwitt",
    "Best Friends 1",
    "bestfriends2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true
        }
    },
    ["bestfriends2"] = { -- Female Custom emote by MrWitt
    "mrwitt@casual_composure_female02",
    "mrwitt",
    "Best Friends 2",
    "bestfriends",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = -0.2500,
        yPos = 0.1400,
        zPos = 0.0200,
        xRot = 0.0000,
        yRot = 0.0000,
        zRot = -0.0000
        },
    },
    ["bff"] = {
        "anim@male_couple_03_b",
        "m_couple_03_b_clip",
        "BFF Pose",
        "bffb",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        },
    },
    ["bffb"] = {
        "anim@female_couple_03_b",
        "f_couple_03_b_clip",
        "BFF Pose 2",
        "bff",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0100,
            yPos = 0.1300,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 76.0000
        },
    },
    ["sitwithmepose"] = { -- Male Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_mal_003",
        "Sit With Me",
        "sitwithmepose2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["sitwithmepose2"] = { -- Female Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_fem_003",
        "Sit With Me Please?",
        "sitwithmepose",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.3540,
            yPos = 0.5110,
            zPos = 0.8310,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = -2.8000
        }
    },
    ["hugpose"] = { -- Male Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_mal_001",
        "Hug Pose",
        "hugpose2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["hugpose2"] = { -- Female Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_fem_001",
        "Hug Pose With Me?",
        "hugpose",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.1400,
            yPos = 0.2500,
            zPos = 0.0000,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 0.0000
        }
    },
    ["hugtip"] = { -- Male Custom emote by Little Spoon
        "littlespoon@friendship007",
        "friendship007",
        "Hug Pose Tippy Toes",
        "hugtip2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["hugtip2"] = { -- Female Custom emote by Little Spoon
        "littlespoon@friendship008",
        "friendship008",
        "Hug Pose Tippy Toes 2",
        "hugtip",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0100,
            yPos = 0.2700,
            zPos = 0.0,
            xRot = -180.0000,
            yRot = -180.0000,
            zRot = 10.0000
        }
    },
    ["cutepicpose"] = { -- Male Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_mal_004",
        "Cute Pic Pose",
        "cutepicpose2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["cutepicpose2"] = { -- Female Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_fem_004",
        "Cute Pic Pose 2",
        "cutepicpose",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.2700,
            yPos = 0.1200,
            zPos = 0.0000,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 0.0000
        }
    },
    ["couplehhands"] = { -- Male Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_mal_005",
        "Couple Heart Hands",
        "couplehhands2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["couplehhands2"] = { -- Female Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_fem_005",
        "Couple Heart Hands 2",
        "couplehhands",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = -0.1230,
            yPos = 0.4740,
            zPos = 0.0000,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 94.0000
        }
    },
    ["couplewed1a"] = { -- Male Custom emote by EnchantedBrwny
        "EnchantedBrwny@wedding1a",
        "wedding1a",
        "Couple Wedding Pose 1A",
        "couplewed1b",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["couplewed1b"] = { -- Female Custom emote by EnchantedBrwny
        "EnchantedBrwny@wedding1b",
        "wedding1b",
        "Couple Wedding Pose 1B",
        "couplewed1a",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0300,
            yPos = 1.0000,
            zPos = 0.0200,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 130.0000
        }
    },
    ["couplewed2a"] = { -- Male Custom emote by EnchantedBrwny
        "EnchantedBrwny@wedding2b",
        "wedding2b",
        "Couple Wedding Pose 2A",
        "couplewed2b",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["couplewed2b"] = { -- Female Custom emote by EnchantedBrwny
        "EnchantedBrwny@wedding2a",
        "wedding2a",
        "Couple Wedding Pose 2B",
        "couplewed2a",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0100,
            yPos = 0.2500,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = -88.9000
        }
    },
    ["liftme"] = { -- Male Custom emote by -Moses-
        "couplepose1pack1anim2@animation",
        "couplepose1pack1anim2_clip",
        "Lift Me",
        "liftme2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["liftme2"] = { -- Female Custom emote by -Moses-
        "couplepose1pack1anim1@animation",
        "couplepose1pack1anim1_clip",
        "Lift Me 2",
        "liftme",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0020,
            yPos = 0.2870,
            zPos = 0.2500,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 180.0000
        }
    },
    ["liftme3"] = { -- Male Custom emote by -Moses-
        "couplepose2pack1anim2@animation",
        "couplepose2pack1anim2_clip",
        "Lift Me 3",
        "liftme4",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["liftme4"] = { -- Female Custom emote by -Moses-
        "couplepose2pack1anim1@animation",
        "couplepose2pack1anim1_clip",
        "Lift Me 4",
        "liftme3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0100,
            yPos = 0.4800,
            zPos = 0.5300,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 180.0000
        }
    },
    ["liftme5"] = { -- Male Custom emote by -Moses-
        "couplepose3pack1anim2@animation",
        "couplepose3pack1anim2_clip",
        "Lift Me 5",
        "liftme6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["liftme6"] = { -- Female Custom emote by -Moses-
        "couplepose3pack1anim1@animation",
        "couplepose3pack1anim1_clip",
        "Lift Me 6",
        "liftme5",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = -0.2120,
            yPos = -0.5400,
            zPos = -0.1000,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 0.0000
        }
    },
    ["csdog"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Small Dog",
        "csdog2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        },
        AnimalEmote = true
    },
    ["csdog2"] = { -- Emote by MissSnowie
        "misssnowie@little_doggy_lying_down",
        "base",
        "Small Dog Carried",
        "csdog",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = -0.040,
            yPos = 0.330,
            zPos = 0.280,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 80.0,
        },
        AnimalEmote = true
    },
    ["csdog3"] = { -- Custom Emote by MissSnowie
        "hooman@hugging_little_doggy",
        "base",
        "Carry Small Dog 2",
        "csdog4",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        },
        AnimalEmote = true
    },
    ["csdog4"] = { -- Custom Emote by MissSnowie
        "little_doggy@hugging_hooman",
        "base",
        "Small Dog Carried 2",
        "csdog3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 24818,
            xPos = -0.95,
            yPos = 0.16,
            zPos = -0.15,
            xRot = 3.70,
            yRot = 75.00,
            zRot = -161.90,
        },
        AnimalEmote = true
    },
    ["cbdog"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Big Dog",
        "cbdog2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        },
        AnimalEmote = true
    },
    ["cbdog2"] = {
        "creatures@rottweiler@amb@sleep_in_kennel@",
        "sleep_in_kennel",
        "Big Dog Carried",
        "cbdog",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = -0.100,
            yPos = 0.650,
            zPos = 0.430,
            xRot = 0.0,
            yRot = 0.0,
            zRot = -100.00,
        },
        AnimalEmote = true
    },
    ["pback"] = { -- Custom Animation By SapphireMods
        "mx@piggypack_a",
        "mxclip_a",
        "Offer Piggy Back",
        "pback2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["pback2"] = { -- Custom Animation By SapphireMods
        "mx@piggypack_b",
        "mxanim_b",
        "Be Piggy Backed",
        "pback",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0200,
            yPos = -0.4399,
            zPos = 0.4200,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0
        }
    },
    ["cprs"] = {
        "mini@cpr@char_a@cpr_str",
        "cpr_pumpchest",
        "Give CPR",
        "cprs2",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 250
        }
    },
    ["cprs2"] = {
        "mini@cpr@char_b@cpr_str",
        "cpr_pumpchest",
        "Get CPR",
        "cprs",
        AnimationOptions = {
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.35,
            yPos = 0.8,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 270.0
        }
    },
    ["cprs3"] = {
        "missheistfbi3b_ig8_2",
        "cpr_loop_paramedic",
        "Give CPR 2",
        "cprs4",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 250
        }
    },
    ["cprs4"] = {
        "missheistfbi3b_ig8_2",
        "cpr_loop_victim",
        "Get CPR 2",
        "cprs3",
        AnimationOptions = {
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.35,
            yPos = 0.65,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 270.0
        }
    },
    ["hostage"] = {
        "anim@gangops@hostage@",
        "perp_idle",
        "Take hostage",
        "hostage2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["hostage2"] = {
        "anim@gangops@hostage@",
        "victim_idle",
        "Be hostage",
        "hostage",
        AnimationOptions = {
            EmoteLoop = true,
            Attachto = true,
            xPos = -0.3,
            yPos = 0.1,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0
        }
    },
    ["search"] = { -- Custom Emote By ultrahacx
        "custom@police",
        "police",
        "Search",
        "search2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = false,
            -- EmoteDuration = 9700
        }
    },
    ["search2"] = {
        "missfam5_yoga",
        "a2_pose",
        "Be searched",
        "search",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = false,
            -- EmoteDuration = 9700,
            Attachto = true,
            xPos = 0.0,
            yPos = 0.5,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0
        }
    },
    ["followa"] = { -- Custom Ped In Front Emote By Dollie Mods
        "dollie_mods@follow_me_001",
        "follow_me_001",
        "Follow A (Front)",
        "followb",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            -- We can set this to true for lols, however it messes up if you walk through doors. Either player can press X to cancel the shared emotes
        }
    },
    ["followb"] = { -- Custom Ped At Back Emote by Dollie Mods
        "dollie_mods@follow_me_002",
        "follow_me_002",
        "Follow B (Back)",
        "followa",
        AnimationOptions = {
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.078,
            yPos = 0.018,
            zPos = 0.00,
            xRot = 0.00,
            yRot = 0.00,
            zRot = 0.00
        }
    },
    ["kiss"] = {
        "hs3_ext-20",
        "cs_lestercrest_3_dual-20",
        "Kiss",
        "kiss2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 10000,
            SyncOffsetFront = 0.08
        }
    },
    ["kiss2"] = {
        "hs3_ext-20",
        "csb_georginacheng_dual-20",
        "Kiss 2",
        "kiss",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 10000,
            SyncOffsetFront = 0.08
        }
    },
    ["kiss3"] = {
        "hs3_ext-19",
        "cs_lestercrest_3_dual-19",
        "Kiss 3",
        "kiss4",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 10000,
            SyncOffsetFront = 0.08
        }
    },
    ["kiss4"] = {
        "hs3_ext-19",
        "csb_georginacheng_dual-19",
        "Kiss 4",
        "kiss3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 10000,
            SyncOffsetFront = 0.08
        }
    },
    ["kisscuteneck"] = {
        "genesismods_kissme@kissmale8",
        "kissmale8",
        "Kiss Cute - Neck (Male)",
        "kisscuteneck2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            --SyncOffsetFront = 0.05,
            --bone = 0,
            xPos = -0.56,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,

        }
    },
    ["kisscuteneck2"] = {
        "genesismods_kissme@kissfemale8",
        "kissfemale8",
        "Kiss Cute - Neck (Female)",
        "kisscuteneck",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            --SyncOffsetFront = 0.05,

        }
    },
    ["kisscutecheek"] = {
        "genesismods_kissme@kissmale9",
        "kissmale9",
        "Kiss Cute Cheek (Male)",
        "kisscutecheek2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            --SyncOffsetFront = 0.05,
            --bone = 0,
            xPos = 0.35,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,

        }
    },
    ["kisscutecheek2"] = {
        "genesismods_kissme@kissfemale9",
        "kissfemale9",
        "Kiss Cute Cheek (Female)",
        "kisscutecheek",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            --SyncOffsetFront = 0.05,

        }
    },
    ["kisscutefh"] = {
        "genesismods_kissme@kissmale10",
        "kissmale10",
        "Kiss Forehead (Male)",
        "kisscutefh2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            --SyncOffsetFront = 0.05,
            --bone = 0,
            xPos = 0.38,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,

        }
    },
    ["kisslips"] = {
        "chocoholic@couple13",
        "couple13_clip",
        "Kiss Cute Lips (Female)",
        "kisslips2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.1600,
            yPos = 0.2700,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 130.0,

        }
    },
    ["kisslips2"] = {
        "chocoholic@couple14",
        "couple14_clip",
        "Kiss Cute Lips (Male)",
        "kisslips",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,

        }
    },
    ["kisscutefh2"] = {
        "genesismods_kissme@kissfemale10",
        "kissfemale10",
        "Kiss Forehead (Female)",
        "kisscutefh",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            --SyncOffsetFront = 0.05,

        }
    },
    ["coupleanim"] = {
        "anim@scripted@robbery@tun_prep_uni_ig1_couple@",
        "action_var_01_bank_manager",
        "Couple Drinking (Wine Glasses)",
        "coupleanim2",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 60309,
            PropPlacement = {
                -0.0500,
                -0.0100,
                -0.1700,
                0.0,
                0.0,
                0.0,
            },
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["coupleanim2"] = {
        "anim@scripted@robbery@tun_prep_uni_ig1_couple@",
        "action_var_01_female",
        "Couple Drinking F (Wine Glasses)",
        "coupleanim",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
            },
            SyncOffsetSide = -0.04125,
            SyncOffsetFront = 0.11,
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["holdme"] = { -- Custom Animation By SapphireMods
        "mx_couple5_1_a",
        "mx_couple5_1_a_clip",
        "Hold Me",
        "holdmeb",
        AnimationOptions = {
            EmoteLoop = true
        },
    },
    ["holdmeb"] = { -- Custom Animation By SapphireMods
        "mx_couple5_1_b",
        "mx_couple5_1_b_clip",
        "Be Held",
        "holdme",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = -0.0200,
            yPos =  0.2400,
            zPos = -0.0100,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0
        },
    },
    ["holdmec"] = { -- Custom Animation By SapphireMods
        "mx_couple5_2_a",
        "mx_couple5_2_a_clip",
        "Hold Me 2",
        "holdmed",
        AnimationOptions = {
            EmoteLoop = true
        },
    },
    ["holdmed"] = { -- Custom Animation By SapphireMods
        "mx_couple5_2_b",
        "mx_couple5_2_b_clip",
        "Be Held 2",
        "holdmec",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = -0.1200,
            yPos =  0.3600,
            zPos = -0.0100,
            xRot = 0.0,
            yRot = 0.0,
            zRot = -180.0
        },
    },
    ["holdmee"] = { -- Custom Animation By SapphireMods
        "mx_couple5_3_a",
        "mx_couple5_3_a_clip",
        "Hold Me 3",
        "holdmef",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["holdmef"] = { -- Custom Animation By SapphireMods
        "mx_couple5_3_b",
        "mx_couple5_3_b_clip",
        "Be Held 3",
        "holdmee",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos =  0.0400,
            yPos =  0.2100,
            zPos = -0.0300,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0
        },
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