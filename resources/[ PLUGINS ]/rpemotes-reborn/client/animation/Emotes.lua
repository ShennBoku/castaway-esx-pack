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
#   > The male and female 'interaction menu' emotes from GTA Online can be found under the following animation directories:
#   > Male: anim@mp_player_intcelebrationmale
#   > Female: anim@mp_player_intcelebrationfemale
#
--]] return {
    ------------------------------------------------------------------------------------------------------------------
    ------ THESE ARE SCENARIOS, SOME OF THESE DON'T WORK ON WOMEN AND SOME OTHER ISSUES, BUT STILL GOOD TO HAVE ------
    ------------------------------------------------------------------------------------------------------------------
    ["atm"] = {
        "Scenario",
        "PROP_HUMAN_ATM",
        "ATM"
    },
    ["bbq"] = {
        "MaleScenario",
        "PROP_HUMAN_BBQ",
        "BBQ"
    },
    ["bumbin"] = {
        "Scenario",
        "PROP_HUMAN_BUM_BIN",
        "Bum Bin"
    },
    ["cheer"] = {
        "Scenario",
        "WORLD_HUMAN_CHEERING",
        "Cheer"
    },
    ["chinup"] = {
        "Scenario",
        "PROP_HUMAN_MUSCLE_CHIN_UPS",
        "Chinup"
    },
    ["clipboard2"] = {
        "MaleScenario",
        "WORLD_HUMAN_CLIPBOARD",
        "Clipboard 2"
    },
    ["cop"] = {
        "Scenario",
        "WORLD_HUMAN_COP_IDLES",
        "Cop"
    },
    ["drill"] = {
        "Scenario",
        "WORLD_HUMAN_CONST_DRILL",
        "Construction Drilling"
    },
    ["filmshocking"] = {
        "Scenario",
        "WORLD_HUMAN_MOBILE_FILM_SHOCKING",
        "Film Shocking"
    },
    ["flex"] = {
        "Scenario",
        "WORLD_HUMAN_MUSCLE_FLEX",
        "Flex"
    },
     ["guard"] = {
        "Scenario",
        "WORLD_HUMAN_GUARD_STAND",
        "Guard"
    },
    ["garden"] = {
        "Scenario",
        "WORLD_HUMAN_GARDENER_PLANT",
        "Gardening"
    },
    ["hammer"] = {
        "Scenario",
        "WORLD_HUMAN_HAMMERING",
        "Hammer"
    },
    ["hangout"] = {
        "Scenario",
        "WORLD_HUMAN_HANG_OUT_STREET",
        "Hangout"
    },
    ["impatient"] = {
        "Scenario",
        "WORLD_HUMAN_STAND_IMPATIENT",
        "Impatient"
    },
    ["janitor"] = {
        "Scenario",
        "WORLD_HUMAN_JANITOR",
        "Janitor"
    },
    ["jog"] = {
        "Scenario",
        "WORLD_HUMAN_JOG_STANDING",
        "Jog"
    },
    ["kneel"] = {
        "Scenario",
        "CODE_HUMAN_MEDIC_KNEEL",
        "Kneel"
    },
    ["lean"] = {
        "Scenario",
        "WORLD_HUMAN_LEANING",
        "Lean"
    },
    ["leanbar"] = {
        "Scenario",
        "PROP_HUMAN_BUM_SHOPPING_CART",
        "Lean Bar"
    },
    ["lookout"] = {
        "Scenario",
        "CODE_HUMAN_CROSS_ROAD_WAIT",
        "Lookout"
    },
    ["maid"] = {
        "Scenario",
        "WORLD_HUMAN_MAID_CLEAN",
        "Maid"
    },
    ["medic"] = {
        "Scenario",
        "CODE_HUMAN_MEDIC_TEND_TO_DEAD",
        "Medic"
    },
    ["musician"] = {
        "MaleScenario",
        "WORLD_HUMAN_MUSICIAN",
        "Musician"
    },
    -- Ambient Music Doesn't Seem To Work For Female, Hence It's Male Only
    ["notepad2"] = {
        "Scenario",
        "CODE_HUMAN_MEDIC_TIME_OF_DEATH",
        "Notepad 2"
    },
    ["parkingmeter"] = {
        "Scenario",
        "PROP_HUMAN_PARKING_METER",
        "Parking Meter"
    },
    ["party"] = {
        "Scenario",
        "WORLD_HUMAN_PARTYING",
        "Party"
    },
    ["texting"] = {
        "Scenario",
        "WORLD_HUMAN_STAND_MOBILE",
        "Texting"
    },
    ["prosthigh"] = {
        "Scenario",
        "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS",
        "Prostitue High"
    },
    ["prostlow"] = {
        "Scenario",
        "WORLD_HUMAN_PROSTITUTE_LOW_CLASS",
        "Prostitue Low"
    },
    ["puddle"] = {
        "Scenario",
        "WORLD_HUMAN_BUM_WASH",
        "Puddle"
    },
    ["record"] = {
        "Scenario",
        "WORLD_HUMAN_MOBILE_FILM_SHOCKING",
        "Record"
    },
    ["smoke"] = {
        "Scenario",
        "WORLD_HUMAN_SMOKING",
        "Smoke"
    },
    ["smokeweed"] = {
        "MaleScenario",
        "WORLD_HUMAN_DRUG_DEALER",
        "Smoke Weed (Male)"
    },
    -- Female
    ["smokeweed2"] = {
        "Scenario",
        "WORLD_HUMAN_SMOKING_POT",
        "Smoke Weed (Female)"
    },
    -- Female
    ["statue"] = {
        "Scenario",
        "WORLD_HUMAN_HUMAN_STATUE",
        "Statue"
    },
    ["weld"] = {
        "Scenario",
        "WORLD_HUMAN_WELDING",
        "Weld"
    },
    ["windowshop"] = {
        "Scenario",
        "WORLD_HUMAN_WINDOW_SHOP_BROWSE",
        "Window Shop"
    },
    ["yoga"] = {
        "Scenario",
        "WORLD_HUMAN_YOGA",
        "Yoga"
    },
    ------------------------------------------------------------------------------------------------------------------
    ------                                           END OF SCENARIOs                                           ------
    ------------------------------------------------------------------------------------------------------------------
    
    ["annoyed"] = {
        "missdocksshowoffcar@idle_a",
        "idle_b_5",
        "Annoyed",
        AnimationOptions =
        {
            EmoteLoop = true
        }
    },
    ["dispenser"] = {
        "mini@sprunk",
        "plyr_buy_drink_pt1",
        "Dispenser",
        AnimationOptions =
        {
            EmoteLoop = false
        }
    },
    ["cuffedfront"] = {
        "anim@move_m@prisoner_cuffed",
        "idle",
        "Handcuffed - Front",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
            ExitEmote = "breakfreefont",
            ExitEmoteType = "Exits"
        }
    },
    ["cuffedback"] = {
        "mp_arresting",
        "idle",
        "Handcuffed - Back",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
            ExitEmote = "breakfreeback",
            ExitEmoteType = "Exits"
        }
    },
    ["dazzle1"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@dazzleme",
        "pose1_clip",
        "Dazzle Me Pose 1",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["dazzle2"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@dazzleme",
        "pose2_clip",
        "Dazzle Me Pose 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["dazzle3"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@dazzleme",
        "pose3_clip",
        "Dazzle Me Pose 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["dazzle4"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@dazzleme",
        "pose4_clip",
        "Dazzle Me Pose 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["dazzle5"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@dazzleme",
        "pose5_clip",
        "Dazzle Me Pose 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["dazzle6"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@dazzleme",
        "pose6_clip",
        "Dazzle Me Pose 6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["dazzle7"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@dazzleme",
        "pose7_clip",
        "Dazzle Me Pose 7",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dead2"] = {
        "anim@scripted@data_leak@fixf_fin_ig2_johnnyguns_wounded@",
        "enter",
        "Play Dead Act",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["femalestandcute"] = {
        "stand_cute_6@dark",
        "stand_cute_6_clip",
        "Female Stand Cute Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femalestandcute1"] = {
        "stand_fem_1@darksj",
        "stand_fem_1_clip",
        "Female Stand Cute Pose 1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femalestandcute2"] = {
        "feet_stand_w@darksj",
        "feet_stand_w_clip",
        "Female Stand Cute Pose 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femalestandcute3"] = {
        "anim@female_model_14",
        "f_model_14_clip",
        "Female Stand Cute Pose 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femalestandcutefinger"] = {
        "anim@female_model_15",
        "f_model_15_clip",
        "Female Stand Cute Pose Finger",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femalestandcute4"] = {
        "anim@female_model_17",
        "f_model_17_clip",
        "Female Stand Cute Pose 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["malestandpose"] = {
        "anim@male_model_11",
        "m_model_11_clip",
        "Male Stand Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femalesitcute"] = {
        "sit_cute_1@dark",
        "sit_cute_1_clip",
        "Female Sit Cute",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["femalesitcute1"] = {
        "mrwitt@chin_support_on_floor",
        "mrwitt",
        "Female Sit Cute 1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["femalesitcute2"] = {
        "beach_1@janina234",
        "beach_1_clip",
        "Female Sit Cute 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["femaleonknees"] = {
        "beach_4@janina234",
        "beach_4_clip",
        "Female On Knees Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "standup",
            ExitEmoteType = "Exits"
        }
    },
    ["femaleonknees1"] = {
        "on_the_knees@darksj",
        "on_the_knees_clip",
        "Female On Knees Pose 1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "standup",
            ExitEmoteType = "Exits"
        }
    },
    ["femaleonknees2"] = {
        "anim@female_model_21",
        "f_model_21_clip",
        "Female On Knees Pose 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["fashionpose1"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "chic",
        "Fashion Pose Pose 1",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["fashionpose2"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "deathdrop",
        "Fashion Pose Pose 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "standup",
            ExitEmoteType = "Exits"
        }
    },
	["fashionpose3"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "magica",
        "Fashion Pose Pose 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["fashionpose4"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "pose5",
        "Fashion Pose Pose 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["fashionpose5"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "pose8",
        "Fashion Pose Pose 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["fashionpose6"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "pose20",
        "Fashion Pose Pose 6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["fashionpose7"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "pose28",
        "Fashion Pose Pose 7",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["fashionpose8"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "runoutofposes",
        "Fashion Pose Pose 8",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["fashionpose9"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "split",
        "Fashion Pose Pose 9",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "standup",
            ExitEmoteType = "Exits"
        }
    },
    ["beast"] = {
        "anim@mp_fm_event@intro",
        "beast_transform",
        "Beast",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 5000
        }
    },
    ["chill"] = {
        "switch@trevor@scares_tramp",
        "trev_scares_tramp_idle_tramp",
        "Chill",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 200,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["cloudgaze"] = {
        "switch@trevor@annoys_sunbathers",
        "trev_annoys_sunbathers_loop_girl",
        "Cloudgaze",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["cloudgaze2"] = {
        "switch@trevor@annoys_sunbathers",
        "trev_annoys_sunbathers_loop_guy",
        "Cloudgaze 2",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["crouchreach"] = {
        "anim@veh@van@mule5@rds",
        "lean_back_idle",
        "Crouch & Reach",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
        }
    },
    ["crouchreach2"] = {
        "anim@scripted@npc@mission@pln_ig4_cargo@",
        "line_5_dax",
        "Crouch & Reach 2",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
        }
    },
    ["daydream"] = { -- Custom Emote By Darks Animations
        "girl_groupe_d@darksj",
        "girl_groupe_d_clip",
        "Daydream In The Clouds",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
	["khands"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_heart000",
        "ebrwny_hrt000",
        "Korean Hand Hearts 🇰🇷",
        AnimationOptions = {
			EmoteLoop = true,
			EmoteMoving = true,
        }
    },
	["uwu2"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_shy",
        "UwU 2",
        AnimationOptions = {
			EmoteLoop = true,
			EmoteMoving = true,
        }
    },
    ["rawr"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_rawr",
        "Rawr",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stop"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_stop",
        "Stop",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sassy"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_sass",
        "Sassy",
        AnimationOptions = {
			EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sitsad3"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_sitf000",
        "Sit Sad 3",
        AnimationOptions = {
			EmoteLoop = true,
			ExitEmote = "getup",
			ExitEmoteType = "Exits"
        }
    },
    ["sitsad4"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_sitf001",
        "Sit Sad 4",
        AnimationOptions = {
			StartDelay = 600,
			EmoteLoop = true,
			ExitEmote = "getup",
			ExitEmoteType = "Exits"
        }
    },
    ["bend"] = {
        "ebrwny_pack000",
        "ebrwny_bend",
        "Bend over",
        AnimationOptions = {
			StartDelay = 600,
            EmoteLoop = true,
            EmoteMoving = true,
            NotInVehicle = true
        }
    },
    ["prone"] = {
        "missfbi3_sniping",
        "prone_dave",
        "Prone",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["pullover"] = {
        "misscarsteal3pullover",
        "pull_over_right",
        "Pullover",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1300
        }
    },
    ["idle"] = {
        "anim@heists@heist_corona@team_idles@male_a",
        "idle",
        "Idle",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle8"] = {
        "amb@world_human_hang_out_street@male_b@idle_a",
        "idle_b",
        "Idle 8"
    },
    ["idle9"] = {
        "friends@fra@ig_1",
        "base_idle",
        "Idle 9",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle10"] = {
        "mp_move@prostitute@m@french",
        "idle",
        "Idle 10",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["idle11"] = {
        "random@countrysiderobbery",
        "idle_a",
        "Idle 11",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle12"] = {
        "mp_corona_idles@female_b@base",
        "base",
        "Idle 12",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle13"] = {
        "mp_corona_idles@female_c@base",
        "base",
        "Idle 13",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle14"] = {
        "random@countrysiderobbery",
        "idle_a",
        "Idle 14",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle15"] = {
        "anim_heist@arcade_combined@",
        "female_hold_arm@_base_base",
        "Idle 15",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle16"] = {
        "anim_heist@arcade_combined@",
        "ped_female@_stand@_02a@_base_base",
        "Idle 16",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle17"] = {
        "anim_heist@arcade_combined@",
        "amb_world_human_hang_out_street_female_hold_arm_idle_b",
        "Idle 17",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle18"] = {
        "mp_move@prostitute@m@hooker",
        "idle",
        "Idle 18",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle19"] = {
        "missdocksshowoffcar@base",
        "base_4",
        "Idle 19",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle2"] = {
        "anim@heists@heist_corona@team_idles@female_a",
        "idle",
        "Idle 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle3"] = {
        "anim@heists@humane_labs@finale@strip_club",
        "ped_b_celebrate_loop",
        "Idle 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle4"] = {
        "anim@mp_celebration@idles@female",
        "celebration_idle_f_a",
        "Idle 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle5"] = {
        "anim@mp_corona_idles@female_b@idle_a",
        "idle_a",
        "Idle 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle6"] = {
        "anim@mp_corona_idles@male_c@idle_a",
        "idle_a",
        "Idle 6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle7"] = {
        "anim@mp_corona_idles@male_d@idle_a",
        "idle_a",
        "Idle 7",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idledrunk"] = {
        "random@drunk_driver_1",
        "drunk_driver_stand_loop_dd1",
        "Idle Drunk",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idledrunk2"] = {
        "random@drunk_driver_1",
        "drunk_driver_stand_loop_dd2",
        "Idle Drunk 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idledrunk3"] = {
        "missarmenian2",
        "standing_idle_loop_drunk",
        "Idle Drunk 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["impatient2"] = {
        "oddjobs@taxi@gyn@cc@intro",
        "f_impatient_b",
        "impatient 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["airguitar"] = {
        "anim@mp_player_intcelebrationfemale@air_guitar",
        "air_guitar",
        "Air Guitar"
    },
    ["airsynth"] = {
        "anim@mp_player_intcelebrationfemale@air_synth",
        "air_synth",
        "Air Synth"
    },
    ["argue"] = {
        "misscarsteal4@actor",
        "actor_berating_loop",
        "Argue",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["argue2"] = {
        "oddjobs@assassinate@vice@hooker",
        "argue_a",
        "Argue 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["argue3"] = {
        "missheistdockssetup1leadinoutig_1",
        "lsdh_ig_1_argue_wade",
        "Argue 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["argue4"] = {
        "car_2_mcs_1-6",
        "cs_devin_dual-6",
        "Argue 4",
        AnimationOptions = {
            EmoteDuration = 6000,
            EmoteMoving = true
        }
    },
    ["argue5"] = {
        "anim@amb@casino@brawl@fights@argue@",
        "arguement_loop_mp_m_brawler_01",
        "Argue Angry 1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["argue6"] = {
        "anim@amb@casino@brawl@fights@argue@",
        "arguement_loop_mp_m_brawler_02",
        "Argue Angry 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bartender"] = {
        "anim@amb@clubhouse@bar@drink@idle_a",
        "idle_a_bartender",
        "Bartender",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["blowkiss"] = {
        "anim@mp_player_intcelebrationfemale@blow_kiss",
        "blow_kiss",
        "Blow Kiss"
    },
    ["blowkiss2"] = {
        "anim@mp_player_intselfieblow_kiss",
        "exit",
        "Blow Kiss 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["curtsy"] = {
        "anim@mp_player_intcelebrationpaired@f_f_sarcastic",
        "sarcastic_left",
        "Curtsy"
    },
    ["bringiton"] = {
        "misscommon@response",
        "bring_it_on",
        "Bring It On",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["comeatmebro"] = {
        "mini@triathlon",
        "want_some_of_this",
        "Come at me bro",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["cop2"] = {
        "anim@amb@nightclub@peds@",
        "rcmme_amanda1_stand_loop_cop",
        "Cop 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["cop3"] = {
        "amb@code_human_police_investigate@idle_a",
        "idle_b",
        "Cop 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["crossarms"] = {
        "amb@world_human_hang_out_street@female_arms_crossed@idle_a",
        "idle_a",
        "Crossarms",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarms2"] = {
        "amb@world_human_hang_out_street@male_c@idle_a",
        "idle_b",
        "Crossarms 2",
        AnimationOptions = {
            EmoteMoving = true
        }
    },
    ["crossarms3"] = {
        "anim@heists@heist_corona@single_team",
        "single_team_loop_boss",
        "Crossarms 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarms4"] = {
        "random@street_race",
        "_car_b_lookout",
        "Crossarms 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarms5"] = {
        "anim@amb@nightclub@peds@",
        "rcmme_amanda1_stand_loop_cop",
        "Crossarms 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarms6"] = {
        "random@shop_gunstore",
        "_idle",
        "Crossarms 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarms7"] = {
        "anim_heist@arcade_combined@",
        "female_arms_crossed@_base_base",
        "Crossarms 7",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarms8"] = {
        "anim_heist@arcade_combined@",
        "ped_female@_stand@_03b@_base_base",
        "Crossarms 8",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarms9"] = {
        "fix_trip3_ext-4",
        "a_f_y_vinewood_02_dual-4",
        "Crossarms 9",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["foldarms"] = {
        "anim@amb@business@bgen@bgen_no_work@",
        "stand_phone_phoneputdown_idle_nowork",
        "Fold Arms",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foldarms2"] = {
        "anim@amb@nightclub@peds@",
        "rcmme_amanda1_stand_loop_cop",
        "Fold Arms 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarmsside"] = {
        "rcmnigel1a_band_groupies",
        "base_m2",
        "Crossarms Side",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarmsside2"] = {
        "amb@world_human_hang_out_street@female_hold_arm@base",
        "base",
        "Crossarms Side 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["damn"] = {
        "gestures@m@standing@casual",
        "gesture_damn",
        "Damn",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["damn2"] = {
        "anim@am_hold_up@male",
        "shoplift_mid",
        "Damn 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["pointdown"] = {
        "gestures@f@standing@casual",
        "gesture_hand_down",
        "Point Down",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["pointpose"] = {
        "tun_meet_int-47",
        "a_m_y_carclub_01^3_dual-47",
        "Point Down",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["surrender"] = {
        "random@arrests@busted",
        "idle_a",
        "Surrender",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "surrender_exit",
            ExitEmoteType = "Exits"
        }
    },
    ["surrender2"] = {
        "mp_bank_heist_1",
        "f_cower_02",
        "Surrender 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["surrender3"] = {
        "mp_bank_heist_1",
        "m_cower_01",
        "Surrender 3",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["surrender4"] = {
        "mp_bank_heist_1",
        "m_cower_02",
        "Surrender 4",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["surrender5"] = {
        "random@arrests",
        "kneeling_arrest_idle",
        "Surrender 5",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "surrender_exit",
            ExitEmoteType = "Exits"
        }
    },
    ["surrender6"] = {
        "rcmbarry",
        "m_cower_01",
        "Surrender 6",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["surrender7"] = {
        "anim@scripted@bty4@ig2_bounty_kneel@male@",
        "on_knee_idle_a",
        "Surrender 7",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["facepalm2"] = {
        "anim@mp_player_intcelebrationfemale@face_palm",
        "face_palm",
        "Facepalm 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 8000
        }
    },
    ["facepalm"] = {
        "random@car_thief@agitated@idle_a",
        "agitated_idle_a",
        "Facepalm",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 8000
        }
    },
    ["facepalm3"] = {
        "missminuteman_1ig_2",
        "tasered_2",
        "Facepalm 3",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 8000
        }
    },
    ["facepalm4"] = {
        "anim@mp_player_intupperface_palm",
        "idle_a",
        "Facepalm 4",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["fallover"] = {
        "random@drunk_driver_1",
        "drunk_fall_over",
        "Fall Over"
    },
    ["fallover2"] = {
        "mp_suicide",
        "pistol",
        "Fall Over 2"
    },
    ["fallover3"] = {
        "mp_suicide",
        "pill",
        "Fall Over 3"
    },
    ["fallover4"] = {
        "friends@frf@ig_2",
        "knockout_plyr",
        "Fall Over 4"
    },
    ["fallover5"] = {
        "anim@gangops@hostage@",
        "victim_fail",
        "Fall Over 5"
    },
    ["fallasleep"] = {
        "mp_sleep",
        "sleep_loop",
        "Fall Asleep",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["fallasleep2"] = {
        "mp_sleep",
        "sleep_loopfemale",
        "Fall Asleep 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["fightme"] = {
        "anim@deathmatch_intros@unarmed",
        "intro_male_unarmed_c",
        "Fight Me"
    },
    ["fightme2"] = {
        "anim@deathmatch_intros@unarmed",
        "intro_male_unarmed_e",
        "Fight Me 2"
    },
    ["finger"] = {
        "anim@mp_player_intselfiethe_bird",
        "idle_a",
        "Finger",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["finger2"] = {
        "anim@mp_player_intupperfinger",
        "idle_a_fp",
        "Finger 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["handshake"] = {
        "mp_ped_interaction",
        "handshake_guy_a",
        "Handshake",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["handshake2"] = {
        "mp_ped_interaction",
        "handshake_guy_b",
        "Handshake 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["wait"] = {
        "random@shop_tattoo",
        "_idle_a",
        "Wait",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait2"] = {
        "missbigscore2aig_3",
        "wait_for_van_c",
        "Wait 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait3"] = {
        "amb@world_human_hang_out_street@female_hold_arm@idle_a",
        "idle_a",
        "Wait 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait4"] = {
        "amb@world_human_hang_out_street@Female_arm_side@idle_a",
        "idle_a",
        "Wait 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait5"] = {
        "missclothing",
        "idle_storeclerk",
        "Wait 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait6"] = {
        "timetable@amanda@ig_2",
        "ig_2_base_amanda",
        "Wait 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait7"] = {
        "rcmnigel1cnmt_1c",
        "base",
        "Wait 7",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait8"] = {
        "rcmjosh1",
        "idle",
        "Wait 8",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait9"] = {
        "rcmjosh2",
        "josh_2_intp1_base",
        "Wait 9",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait10"] = {
        "timetable@amanda@ig_3",
        "ig_3_base_tracy",
        "Wait 10",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait11"] = {
        "misshair_shop@hair_dressers",
        "keeper_base",
        "Wait 11",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait12"] = {
        "rcmjosh1",
        "keeper_base",
        "Wait 12",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait13"] = {
        "rcmnigel1a",
        "base",
        "Wait 13",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["hiking"] = {
        "move_m@hiking",
        "idle",
        "Hiking",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["hugme"] = {
        "mp_ped_interaction",
        "kisses_guy_a",
        "Hug Me"
    },
    ["hugme2"] = {
        "mp_ped_interaction",
        "kisses_guy_b",
        "Hug Me 2"
    },
    ["inspect"] = {
        "random@train_tracks",
        "idle_e",
        "Inspect"
    },
    ["inspect2"] = {
        "anim@amb@carmeet@checkout_engine@",
        "female_c_idle_d",
        "Inspect 2"
    },
    ["inspect3"] = {
        "anim@amb@carmeet@checkout_car@",
        "female_b_idle_d",
        "Inspect 3"
    },
    ["jazzhands"] = {
        "anim@mp_player_intcelebrationfemale@jazz_hands",
        "jazz_hands",
        "Jazzhands",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 6000
        }
    },
    ["jog2"] = {
        "amb@world_human_jog_standing@male@idle_a",
        "idle_a",
        "Jog 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["jog3"] = {
        "amb@world_human_jog_standing@female@idle_a",
        "idle_a",
        "Jog 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["jog4"] = {
        "amb@world_human_power_walker@female@idle_a",
        "idle_a",
        "Jog 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["jog5"] = {
        "move_m@joy@a",
        "walk",
        "Jog 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["jumpingjacks"] = {
        "timetable@reunited@ig_2",
        "jimmy_getknocked",
        "Jumping Jacks",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kneel2"] = {
        "rcmextreme3",
        "idle",
        "Kneel 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kneel3"] = {
        "amb@world_human_bum_wash@male@low@idle_a",
        "idle_a",
        "Kneel 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kneel4"] = {
        "anim@scripted@cbr5@ig3_drill_box@pattern_03@lockbox_03@male@",
        "rest",
        "Kneel 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kneel5"] = {
        "anim@scripted@cbr5@ig3_drill_box@pattern_01@lockbox_02@male@",
        "rest",
        "Kneel 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kneelhide"] = {
        "anim@scripted@bty2@ig1_hiding_target@male@",
        "hiding_kneel",
        "Kneel Hide",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kneelthot"] = {
        "anim@model_kylie_insta",
        "kylie_insta_clip",
        "Kneel Thot Instagram",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 200,
            ExitEmote = "standup",
            ExitEmoteType = "Exits"
        }
    },
    ["kneelbored"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@duo17",
        "duo17_clip",
        "Kneel Bored Pose",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 200,
            ExitEmote = "standup",
            ExitEmoteType = "Exits"
        }
    },
    ["kneelpeace"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@duo18",
        "duo18_clip",
        "Kneel Peace Sign Pose",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 200,
            ExitEmote = "standup",
            ExitEmoteType = "Exits"
        }
    },
    ["shoepose"] = { -- Custom Emote By Darks Animations
        "male_duo_a@darksj",
        "male_duo_a_clip",
        "Shoe Kick Pose",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 240
        }
   },
    ["rap"] = { -- Custom Emote By Darks Animations
        "couple_singing_m@darks37",
        "couple_singing_m_clip",
        "Rap / Sing",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["squatgunpose"] = { -- Custom Emote By Darks Animations
        "ganggirls_pose1@darks37",
        "ganggirls_pose1_clip",
        "Squat Gun Pose - Left",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["squatgunpose3"] = { -- Custom Emote By Darks Animations
        "gun_prime_2@darksj",
        "gun_prime_2_clip",
        "Squat Gun Pose 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["knock"] = {
        "timetable@jimmy@doorknock@",
        "knockdoor_idle",
        "Knock",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["knock2"] = {
        "missheistfbi3b_ig7",
        "lift_fibagent_loop",
        "Knock 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["knucklecrunch"] = {
        "anim@mp_player_intcelebrationfemale@knuckle_crunch",
        "knuckle_crunch",
        "Knuckle Crunch",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lean2"] = {
        "amb@world_human_leaning@female@wall@back@hand_up@idle_a",
        "idle_a",
        "Lean 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lean3"] = {
        "amb@world_human_leaning@female@wall@back@holding_elbow@idle_a",
        "idle_a",
        "Lean 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lean4"] = {
        "amb@world_human_leaning@male@wall@back@foot_up@idle_a",
        "idle_a",
        "Lean 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lean5"] = {
        "amb@world_human_leaning@male@wall@back@hands_together@idle_b",
        "idle_e",
        "Lean 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lean6"] = {
        "anim@scripted@freemode_npc@fix_agy_ig4_lamar@",
        "lean_wall_idle_03_lamar",
        "Lean 6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["leanflirt"] = {
        "random@street_race",
        "_car_a_flirt_girl",
        "Lean Flirt",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["leanbar2"] = {
        "amb@prop_human_bum_shopping_cart@male@idle_a",
        "idle_c",
        "Lean Bar 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["leanbar3"] = {
        "anim@amb@nightclub@lazlow@ig1_vip@",
        "clubvip_base_laz",
        "Lean Bar 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["leanbar4"] = {
        "anim@heists@prison_heist",
        "ped_b_loop_a",
        "Lean Bar 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["leanhigh"] = {
        "anim@mp_ferris_wheel",
        "idle_a_player_one",
        "Lean High",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["leanhigh2"] = {
        "anim@mp_ferris_wheel",
        "idle_a_player_two",
        "Lean High 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["leanside"] = {
        "timetable@mime@01_gc",
        "idle_a",
        "Leanside",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["leanside2"] = {
        "misscarstealfinale",
        "packer_idle_1_trevor",
        "Leanside 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["leanside3"] = {
        "misscarstealfinalecar_5_ig_1",
        "waitloop_lamar",
        "Leanside 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["leanside4"] = {
        "misscarstealfinalecar_5_ig_1",
        "waitloop_lamar",
        "Leanside 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["leanside5"] = {
        "rcmjosh2",
        "josh_2_intp1_base",
        "Leanside 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["leanplan"] = {
        "anim@amb@board_room@diagram_blueprints@",
        "idle_01_amy_skater_01",
        "Lean On Table",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 200,
            ExitEmote = "offtable",
            ExitEmoteType = "Exits"
        }
    },
    ["me"] = {
        "gestures@f@standing@casual",
        "gesture_me_hard",
        "Me",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["mechanic"] = {
        "mini@repair",
        "fixing_a_ped",
        "Mechanic",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["mechanic2"] = {
        "mini@repair",
        "fixing_a_player",
        "Mechanic 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["mechanic3"] = {
        "amb@world_human_vehicle_mechanic@male@base",
        "base",
        "Mechanic 3",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["mechanic4"] = {
        "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
        "machinic_loop_mechandplayer",
        "Mechanic 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["mechanic5"] = {
        "amb@prop_human_movie_bulb@idle_a",
        "idle_b",
        "Mechanic 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["medic2"] = {
        "amb@medic@standing@tendtodead@base",
        "base",
        "Medic 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["meditate"] = {
        "rcmcollect_paperleadinout@",
        "meditiate_idle",
        "Meditate",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 300,
            ExitEmote = "meditateup",
            ExitEmoteType = "Exits"
        }
    },
    ["meditate2"] = {
        "rcmepsilonism3",
        "ep_3_rcm_marnie_meditating",
        "Meditate 2",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 300,
            ExitEmote = "meditateup",
            ExitEmoteType = "Exits"
        }
    },
    ["meditate3"] = {
        "rcmepsilonism3",
        "base_loop",
        "Meditate 3",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 300,
            ExitEmote = "meditateup",
            ExitEmoteType = "Exits"
        }
    },
    ["metal"] = {
        "anim@mp_player_intincarrockstd@ps@",
        "idle_a",
        "Metal",
        AnimationOptions = {
            -- CHANGE ME
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["no"] = {
        "anim@heists@ornate_bank@chat_manager",
        "fail",
        "No",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4000
        }
    },
    ["no2"] = {
        "mp_player_int_upper_nod",
        "mp_player_int_nod_no",
        "No 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["nosepick"] = {
        "anim@mp_player_intcelebrationfemale@nose_pick",
        "nose_pick",
        "Nose Pick",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["noway"] = {
        "gestures@m@standing@casual",
        "gesture_no_way",
        "No Way",
        AnimationOptions = {
            EmoteDuration = 1500,
            EmoteMoving = true
        }
    },
    ["ok"] = {
        "anim@mp_player_intselfiedock",
        "idle_a",
        "OK",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dock"] = {
        "anim@mp_player_intincardockstd@rds@",
        "idle_a",
        "Dock",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["outofbreath"] = {
        "re@construction",
        "out_of_breath",
        "Out of Breath",
    },
    ["pickup"] = {
        "random@domestic",
        "pickup_low",
        "Pickup"
    },
    ["push"] = {
        "missfinale_c2ig_11",
        "pushcar_offcliff_f",
        "Push",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["push2"] = {
        "missfinale_c2ig_11",
        "pushcar_offcliff_m",
        "Push 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["point"] = {
        "gestures@f@standing@casual",
        "gesture_point",
        "Point",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pushup"] = {
        "amb@world_human_push_ups@male@idle_a",
        "idle_d",
        "Pushup",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["countdown"] = {
        "random@street_race",
        "grid_girl_race_start",
        "Countdown",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pointright"] = {
        "mp_gun_shop_tut",
        "indicate_right",
        "Point Right",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["salute"] = {
        "anim@mp_player_intincarsalutestd@ds@",
        "idle_a",
        "Salute",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["salute2"] = {
        "anim@mp_player_intincarsalutestd@ps@",
        "idle_a",
        "Salute 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["salute3"] = {
        "anim@mp_player_intuppersalute",
        "idle_a",
        "Salute 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["scared"] = {
        "random@domestic",
        "f_distressed_loop",
        "Scared",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["scared2"] = {
        "random@homelandsecurity",
        "knees_loop_girl",
        "Scared 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["scared3"] = {
        "xm3_drg2_cook_int-5",
        "csb_labrat_dual-5",
        "Scared 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["screwyou"] = {
        "misscommon@response",
        "screw_you",
        "Screw You",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shakeoff"] = {
        "move_m@_idles@shake_off",
        "shakeoff_1",
        "Shake Off",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3500
        }
    },
    ["shot"] = {
        "random@dealgonewrong",
        "idle_a",
        "Shot",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sleep"] = {
        "timetable@tracy@sleep@",
        "base",
        "Sleep",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            NotInVehicle = true
        }
    },
    ["bumsleep"] = {
        "amb@world_human_bum_slumped@male@laying_on_left_side@idle_a",
        "idle_b",
        "Bum Sleep",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            NotInVehicle = true
        }
    },
    ["shrug"] = {
        "gestures@f@standing@casual",
        "gesture_shrug_hard",
        "Shrug",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["shrug2"] = {
        "gestures@m@standing@casual",
        "gesture_shrug_hard",
        "Shrug 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["sit"] = {
        "anim@amb@business@bgen@bgen_no_work@",
        "sit_phone_phoneputdown_idle_nowork",
        "Sit",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit2"] = {
        "rcm_barry3",
        "barry_3_sit_loop",
        "Sit 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit3"] = {
        "amb@lo_res_idles@",
        "world_human_picnic_male_lo_res_base",
        "Sit 3",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit4"] = {
        "amb@lo_res_idles@",
        "world_human_picnic_female_lo_res_base",
        "Sit 4",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit5"] = {
        "anim@heists@fleeca_bank@ig_7_jetski_owner",
        "owner_idle",
        "Sit 5",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit6"] = {
        "timetable@jimmy@mics3_ig_15@",
        "idle_a_jimmy",
        "Sit 6",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit7"] = {
        "anim@amb@nightclub@lazlow@lo_alone@",
        "lowalone_base_laz",
        "Sit 7",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit8"] = {
        "timetable@jimmy@mics3_ig_15@",
        "mics3_15_base_jimmy",
        "Sit 8",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit9"] = {
        "amb@world_human_stupor@male@idle_a",
        "idle_a",
        "Sit 9",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit10"] = {
        "anim@scripted@bty2@ig1_hiding_target@male@",
        "hiding_sit",
        "Sit 10",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sitfu"] = {
        "chocoholic@single80",
        "single80_clip",
        "Sit Middle Finger",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["welcomeback"] = {
        "anim@scripted@island@special_peds@dave@hs4_dave_stage2_ig6",
        "you're_back",
        "Welcome Back",
        AnimationOptions = {
            EmoteLoop = false,
        }
    },
    ["wallpose"] = { -- Credit to LadyyShamrockk for this custom emote
        "shamrock@wallpose1",
        "pose",
        "Wall Pose",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["wallpose2"] = { -- Credit to LadyyShamrockk for this custom emote
        "shamrock@wallpose2",
        "pose",
        "Wall Pose 2",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["wallpose3"] = { -- Credit to LadyyShamrockk for this custom emote
        "shamrock@wallpose3",
        "pose",
        "Wall Pose 3",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["wallpose4"] = { -- Credit to LadyyShamrockk for this custom emote
        "shamrock@wallpose4",
        "pose",
        "Wall Pose 4",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["wallpose5"] = { -- Credit to LadyyShamrockk for this custom emote
        "shamrock@wallpose5",
        "pose",
        "Wall Pose 5",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["elbow"] = {
        "anim@veh@lowrider@std@ds@arm@base",
        "sit_low_lowdoor",
        "Window Elbow",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["elbow2"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@single47",
        "single47_clip",
        "Window Elbow 2",
        AnimationOptions = {
            onlyInVehicle = true,
            EmoteLoop = true
        }
    },
    ["sitlean"] = {
        "timetable@tracy@ig_14@",
        "ig_14_base_tracy",
        "Sit Lean",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sitlean2"] = {
        "anim@scripted@player@fix_astu_ig8_weed_smoke_v1@male@",
        "male_pos_a_p2_base",
        "Sit Lean 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitlean3"] = {
        "anim@scripted@freemode@ig7_office_cell_floor@heeled@",
        "base_pose_01",
        "Sit Lean 3",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sitsad"] = {
        "anim@amb@business@bgen@bgen_no_work@",
        "sit_phone_phoneputdown_sleeping-noworkfemale",
        "Sit Sad",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sitsad2"] = {
        "anim@female_sit_01",
        "f_sit_01_clip",
        "Sit Sad 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sitscared"] = {
        "anim@heists@ornate_bank@hostages@hit",
        "hit_loop_ped_b",
        "Sit Scared",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            NotInVehicle = true
        }
    },
    ["sitscared2"] = {
        "anim@heists@ornate_bank@hostages@ped_c@",
        "flinch_loop",
        "Sit Scared 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            NotInVehicle = true
        }
    },
    ["sitscared3"] = {
        "anim@heists@ornate_bank@hostages@ped_e@",
        "flinch_loop",
        "Sit Scared 3",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            NotInVehicle = true
        }
    },
    ["sitdrunk"] = {
        "timetable@amanda@drunk@base",
        "base",
        "Sit Drunk",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sitchair"] = {
        "timetable@ron@ig_3_couch",
        "base",
        "Sit Chair",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitchair2"] = {
        "timetable@ron@ig_5_p3",
        "ig_5_p3_base",
        "Sit Chair 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitchair3"] = {
        "timetable@reunited@ig_10",
        "base_amanda",
        "Sit Chair 3 (Female)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitchair4"] = {
        "timetable@ron@ron_ig_2_alt1",
        "ig_2_alt1_base",
        "Sit Chair 4 - Side",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitchair5"] = {
        "timetable@jimmy@mics3_ig_15@",
        "mics3_15_base_tracy",
        "Sit Chair Legs Crossed",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitchair6"] = {
        "timetable@maid@couch@",
        "base",
        "Sit Chair Lean Back",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitchair7"] = {
        "anim@scripted@freemode_npc@fix_astu_ig3_pooh_jimmy@jimmy@",
        "sit_base_jimmy",
        "Sit Chair Attentive",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitchair8"] = {
        "anim@scripted@freemode_npc@fix_dre_studio_entourage@",
        "lonely_ballas",
        "Sit Chair Lonely",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sittoilet"] = {
        "anim@scripted@freemode@ig5_office_cell_seat@heeled@",
        "base_pose_01",
        "Sit toilet",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sittoilet2"] = {
        "anim@scripted@cbr5@ig3_drill_box@pattern_01@lockbox_04@male@",
        "idle",
        "Sit Toilet 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitcute"] = { -- Custom Emote By QueenSistersAnimations
        "sitkylie@queensisters",
        "kylie_clip",
        "Sit Cute",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["situp"] = {
        "amb@world_human_sit_ups@male@idle_a",
        "idle_a",
        "Sit Up",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["smokengun"] = {
        "smokingweapon@animation",
        "smokingweapon_clip",
        "Sitting Smoke & Gun",
        AnimationOptions = {
            Prop = "ng_proc_cigarette01a",
            PropBone = 4185,
            PropPlacement = {
                0.0300,
                0.0000,
                0.0200,
                1.7096,
              -43.1362,
              -27.9428
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
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
    ['smokendrink'] = { -- Custom Emote By Darks Animations
        "drx@male_smoke",
        "male_smoke",
        "Smoke And Whiskey",
        AnimationOptions = {
            Prop = 'prop_drink_whisky',
            PropBone = 26612,
            PropPlacement = {
                0.0500,
               -0.0700,
               -0.0500,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'ng_proc_cigarette01a',
            SecondPropBone = 64113,
            SecondPropPlacement = {
                0.0270,
                0.0080,
                0.0050,
              -11.6920,
              -78.3079,
                7.9470
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
    ["clapangry"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "angry_clap_a_player_a",
        "Clap Angry",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["slowclap3"] = {
        "anim@mp_player_intupperslow_clap",
        "idle_a",
        "Slow Clap 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["clap"] = {
        "amb@world_human_cheering@male_a",
        "base",
        "Clap",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["slowclap"] = {
        "anim@mp_player_intcelebrationfemale@slow_clap",
        "slow_clap",
        "Slow Clap",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["slowclap2"] = {
        "anim@mp_player_intcelebrationmale@slow_clap",
        "slow_clap",
        "Slow Clap 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["smell"] = {
        "move_p_m_two_idles@generic",
        "fidget_sniff_fingers",
        "Smell",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stickup"] = {
        "random@countryside_gang_fight",
        "biker_02_stickup_loop",
        "Stick Up",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stumble"] = {
        "misscarsteal4@actor",
        "stumble",
        "Stumble",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["stunned"] = {
        "stungun@standing",
        "damage",
        "Stunned",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["sunbathe"] = {
        "amb@world_human_sunbathe@male@back@base",
        "base",
        "Sunbathe - Hand On Head",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sunbathe2"] = {
        "amb@world_human_sunbathe@female@back@base",
        "base",
        "Sunbathe 2 - Hand Over Face",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sunbathe3"] = {
        "amb@world_human_sunbathe@female@front@base",
        "base",
        "Sunbathe 3 - Lay On Stomach",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["tpose"] = {
        "missfam5_yoga",
        "a2_pose",
        "T Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tpose2"] = {
        "mp_sleep",
        "bind_pose_180",
        "T Pose 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["think5"] = {
        "mp_cp_welcome_tutthink",
        "b_think",
        "Think 5",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["think"] = {
        "misscarsteal4@aliens",
        "rehearsal_base_idle_director",
        "Think",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["think3"] = {
        "timetable@tracy@ig_8@base",
        "base",
        "Think 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["think2"] = {
        "missheist_jewelleadinout",
        "jh_int_outro_loop_a",
        "Think 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["thumbsup3"] = {
        "anim@mp_player_intincarthumbs_uplow@ds@",
        "enter",
        "Thumbs Up 3",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["thumbsup2"] = {
        "anim@mp_player_intselfiethumbs_up",
        "idle_a",
        "Thumbs Up 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["thumbsup"] = {
        "anim@mp_player_intupperthumbs_up",
        "idle_a",
        "Thumbs Up",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["type"] = {
        "anim@heists@prison_heiststation@cop_reactions",
        "cop_b_idle",
        "Type",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["type2"] = {
        "anim@heists@prison_heistig1_p1_guard_checks_bus",
        "loop",
        "Type 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["type3"] = {
        "mp_prison_break",
        "hack_loop",
        "Type 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["type4"] = {
        "mp_fbi_heist",
        "loop",
        "Type 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["type5"] = {
        "anim@scripted@freemode@ig12_use_computer@male@",
        "loop",
        "Type 5 - Stare",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["warmth"] = {
        "amb@world_human_stand_fire@male@idle_a",
        "idle_a",
        "Warmth",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wave4"] = {
        "random@mugging5",
        "001445_01_gangintimidation_1_female_idle_b",
        "Wave 4",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["wave2"] = {
        "anim@mp_player_intcelebrationfemale@wave",
        "wave",
        "Wave 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wave3"] = {
        "friends@fra@ig_1",
        "over_here_idle_a",
        "Wave 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wave"] = {
        "friends@frj@ig_1",
        "wave_a",
        "Wave",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wave5"] = {
        "friends@frj@ig_1",
        "wave_b",
        "Wave 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wave6"] = {
        "friends@frj@ig_1",
        "wave_c",
        "Wave 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wave7"] = {
        "friends@frj@ig_1",
        "wave_d",
        "Wave 7",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wave8"] = {
        "friends@frj@ig_1",
        "wave_e",
        "Wave 8",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wave9"] = {
        "gestures@m@standing@casual",
        "gesture_hello",
        "Wave 9",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["whistle"] = {
        "taxi_hail",
        "hail_taxi",
        "Whistle",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1300
        }
    },
    ["whistle2"] = {
        "rcmnigel1c",
        "hailing_whistle_waive_a",
        "Whistle 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["yeah"] = {
        "anim@mp_player_intupperair_shagging",
        "idle_a",
        "Yeah",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["yeah2"] = {
        "sum24_office_int-37",
        "csb_jenettee_dual-37",
        "Yeah Yeah",
        AnimationOptions = {
            EmoteLoop = false,
            EmoteMoving = false
        }
    },
    ["yoga2"] = {
        "timetable@amanda@ig_4",
        "ig_4_idle",
        "Yoga 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["lift"] = {
        "random@hitch_lift",
        "idle_f",
        "Lift",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lol"] = {
        "anim@arena@celeb@flat@paired@no_props@",
        "laugh_a_player_b",
        "LOL",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lol2"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "giggle_a_player_b",
        "LOL 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lostconfused"] = {
        "anim@scripted@island@special_peds@dave@hs4_dave_stage2_ig6",
        "i_lost_it",
        "Lost & Confused",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["statue2"] = {
        "fra_0_int-1",
        "cs_lamardavis_dual-1",
        "Statue 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["statue3"] = {
        "club_intro2-0",
        "csb_englishdave_dual-0",
        "Statue 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["gangsign"] = {
        "mp_player_int_uppergang_sign_a",
        "mp_player_int_gang_sign_a",
        "Gang Sign",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gangsign2"] = {
        "mp_player_int_uppergang_sign_b",
        "mp_player_int_gang_sign_b",
        "Gang Sign 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gangsign3"] = {
        "amb@code_human_in_car_mp_actions@gang_sign_b@low@ps@base",
        "idle_a",
        "Gang Sign 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gangsign4"] = {
        "amb@code_human_in_car_mp_actions@v_sign@std@rds@base",
        "idle_a",
        "Gang Sign 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["passout"] = {
        "missarmenian2",
        "drunk_loop",
        "Passout",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout2"] = {
        "missarmenian2",
        "corpse_search_exit_ped",
        "Passout 2",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout3"] = {
        "anim@gangops@morgue@table@",
        "body_search",
        "Passout 3",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout4"] = {
        "mini@cpr@char_b@cpr_def",
        "cpr_pumpchest_idle",
        "Passout 4",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout5"] = {
        "random@mugging4",
        "flee_backward_loop_shopkeeper",
        "Passout 5",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout6"] = {
        "anim@scripted@data_leak@fix_bil_ig2_chopper_crawl@",
        "fix_bil_ig2_chopper_crawl_loop_ped",
        "Passout 6",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout7"] = {
        "anim@scripted@data_leak@fix_bil_ig2_chopper_crawl@",
        "fix_bil_ig2_chopper_crawl_dead_loop_ped",
        "Passout 7",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout8"] = {
        "anim@scripted@data_leak@fix_bil_ig2_chopper_crawl@",
        "fix_bil_ig2_chopper_crawl_dead_loop_ped",
        "Passout 8",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["petting"] = {
        "creatures@rottweiler@tricks@",
        "petting_franklin",
        "Petting",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["crawl"] = {
        "move_injured_ground",
        "front_loop",
        "Crawl",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "meditateup",
            ExitEmoteType = "Exits"
        }
    },
    ["flip2"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "cap_a_player_a",
        "Flip 2"
    },
    ["flip"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "flip_a_player_a",
        "Flip"
    },
    ["slide"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "slide_a_player_a",
        "Slide"
    },
    ["slide2"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "slide_b_player_a",
        "Slide 2"
    },
    ["slide3"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "slide_c_player_a",
        "Slide 3"
    },
    ["slugger"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "slugger_a_player_a",
        "Slugger"
    },
    ["flipoff"] = {
        "anim@arena@celeb@podium@no_prop@",
        "flip_off_a_1st",
        "Flip Off",
        AnimationOptions = {
            EmoteMoving = true
        }
    },
    ["flipoff2"] = {
        "anim@arena@celeb@podium@no_prop@",
        "flip_off_c_1st",
        "Flip Off 2",
        AnimationOptions = {
            EmoteMoving = true
        }
    },
    ["bow"] = {
        "anim@arena@celeb@podium@no_prop@",
        "regal_c_1st",
        "Bow",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bow2"] = {
        "anim@arena@celeb@podium@no_prop@",
        "regal_a_1st",
        "Bow 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["keyfob"] = {
        "anim@mp_player_intmenu@key_fob@",
        "fob_click",
        "Key Fob",
        AnimationOptions = {
            EmoteLoop = false,
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["holster"] = {
        "move_m@intimidation@cop@unarmed",
        "idle",
        "Holster",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["holster2"] = { -- Custom Emote Provided To RpEmotes By Mads
        "mads@police_reaching_holster",
        "idle",
        "Holster 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["holster3"] = {
        "anim@hlstr_7360_walk",
        "holster_walk",
        "Holster 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
	["holster4"] = {
        "anim@hlstr_7360_hold",
        "holster_stop",
        "Holster 4 - Stop",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
	["holster5"] = {
        "anim@holster_hold_there",
        "holster_hold",
        "Holster 5 - Stop 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["slap"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_front_slap",
        "Slap",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["headbutt"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_front_headbutt",
        "Headbutt"
    },
    ["fishdance"] = {
        "anim@mp_player_intupperfind_the_fish",
        "idle_a",
        "Fish Dance",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace"] = {
        "mp_player_int_upperpeace_sign",
        "mp_player_int_peace_sign",
        "Peace",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace2"] = {
        "anim@mp_player_intupperpeace",
        "idle_a",
        "Peace 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace3"] = {
        "anim@mp_player_intupperpeace",
        "idle_a_fp",
        "Peace 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace4"] = {
        "anim@mp_player_intincarpeacestd@ds@",
        "idle_a",
        "Peace 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace5"] = {
        "anim@mp_player_intincarpeacestd@ds@",
        "idle_a_fp",
        "Peace 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace6"] = {
        "anim@mp_player_intincarpeacebodhi@ds@",
        "idle_a",
        "Peace 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace7"] = {
        "anim@mp_player_intincarpeacebodhi@ds@",
        "idle_a_fp",
        "Peace 7",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peacef"] = {
        "anim@mp_player_intcelebrationfemale@peace",
        "peace",
        "Peace Female",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cpr"] = {
        "mini@cpr@char_a@cpr_str",
        "cpr_pumpchest",
        "CPR",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["cpr2"] = {
        "mini@cpr@char_a@cpr_str",
        "cpr_pumpchest",
        "CPR 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ledge"] = {
        "missfbi1",
        "ledge_loop",
        "Ledge",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["airplane"] = {
        "missfbi1",
        "ledge_loop",
        "Air Plane",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peek"] = {
        "random@paparazzi@peek",
        "left_peek_a",
        "Peek",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["cough"] = {
        "timetable@gardener@smoking_joint",
        "idle_cough",
        "Cough",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stretch"] = {
        "mini@triathlon",
        "idle_e",
        "Stretch",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["stretch2"] = {
        "mini@triathlon",
        "idle_f",
        "Stretch 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["stretch3"] = {
        "mini@triathlon",
        "idle_d",
        "Stretch 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["stretch4"] = {
        "rcmfanatic1maryann_stretchidle_b",
        "idle_e",
        "Stretch 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["celebrate"] = {
        "rcmfanatic1celebrate",
        "celebrate",
        "Celebrate",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["punching"] = {
        "rcmextreme2",
        "loop_punching",
        "Punching",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["punching2"] = {
        "anim@scripted@bty2@ig2_beat_target@male@",
        "standing_punch_v1_golfer",
        "Punching 2",
        AnimationOptions = {
            EmoteLoop = false,
            EmoteMoving = false
        }
    },
    ["superhero"] = {
        "rcmbarry",
        "base",
        "Superhero",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["superhero2"] = {
        "rcmbarry",
        "base",
        "Superhero 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mindcontrol"] = {
        "rcmbarry",
        "mind_control_b_loop",
        "Mind Control",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["mindcontrol2"] = {
        "rcmbarry",
        "bar_1_attack_idle_aln",
        "Mind Control 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clown"] = {
        "rcm_barry2",
        "clown_idle_0",
        "Clown",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clown2"] = {
        "rcm_barry2",
        "clown_idle_1",
        "Clown 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clown3"] = {
        "rcm_barry2",
        "clown_idle_2",
        "Clown 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clown4"] = {
        "rcm_barry2",
        "clown_idle_3",
        "Clown 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["clown5"] = {
        "rcm_barry2",
        "clown_idle_6",
        "Clown 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["tryclothes"] = {
        "mp_clothing@female@trousers",
        "try_trousers_neutral_a",
        "Try Clothes",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["tryclothes2"] = {
        "mp_clothing@female@shirt",
        "try_shirt_positive_a",
        "Try Clothes 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["tryclothes3"] = {
        "mp_clothing@female@shoes",
        "try_shoes_positive_a",
        "Try Clothes 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["tryclothes4"] = {
        "anim@scripted@ulp_missions@change_clothes@female@",
        "change_highroller",
        "Try Clothes 4",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["tryclothes5"] = {
        "anim@scripted@ulp_missions@change_clothes@",
        "change_highroller_male",
        "Try Clothes 5",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["nervous"] = {
        "amb@world_human_bum_standing@twitchy@idle_a",
        "idle_c",
        "Nervous",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["nervous2"] = {
        "mp_missheist_countrybank@nervous",
        "nervous_idle",
        "Nervous 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["nervous3"] = {
        "rcmme_tracey1",
        "nervous_loop",
        "Nervous 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["nervous4"] = {
        "fix_trip3_mcs1-9",
        "cs_marnie_dual-9",
        "Nervous 4",
        AnimationOptions = {
            EmoteLoop = false,
            EmoteMoving = false
        }
    },
    ["namaste"] = {
        "timetable@amanda@ig_4",
        "ig_4_base",
        "Namaste",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["threaten"] = {
        "random@atmrobberygen",
        "b_atm_mugging",
        "Threaten",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["radio"] = {
        "random@arrests",
        "generic_radio_chatter",
        "Radio",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pull"] = {
        "random@mugging4",
        "struggle_loop_b_thief",
        "Pull",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bird"] = {
        "random@peyote@bird",
        "wakeup",
        "Bird"
    },
    ["chicken"] = {
        "random@peyote@chicken",
        "wakeup",
        "Chicken",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bark"] = {
        "random@peyote@dog",
        "wakeup",
        "Bark"
    },
    ["rabbit"] = {
        "random@peyote@rabbit",
        "wakeup",
        "Rabbit"
    },
    ["spiderman"] = {
        "missexile3",
        "ex03_train_roof_idle",
        "Spider-Man",
        AnimationOptions = {
            EmoteLoop = true,
            NotInVehicle = true
        }
    },
    ["boi"] = {
        "special_ped@jane@monologue_5@monologue_5c",
        "brotheradrianhasshown_2",
        "BOI",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["adjust"] = {
        "missmic4",
        "michael_tux_fidget",
        "Adjust",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4000
        }
    },
    ["addict"] = {
        "anim@scripted@island@special_peds@dave@hs4_dave_stage3_ig7",
        "base",
        "Addict",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["handsup"] = {
        "missminuteman_1ig_2",
        "handsup_base",
        "Hands Up",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["handsup2"] = {
        "anim@mp_player_intuppersurrender",
        "idle_a_fp",
        "Hands Up 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ['handsup3'] = {
        'anim@mp_rollarcoaster',
        'hands_up_idle_a_player_one',
        'Hands Up 3',
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ['handsup4'] = {
        'anim@scripted@bty2@ig2_beat_target@male@',
        'leaning_idle_bounty',
        'Hands Up 4',
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ['handsup5'] = {
        'anim@scripted@bty2@ig2_beat_target@male@',
        'standing_idle_bounty',
        'Hands Up 5',
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["valet"] = {
        "anim@amb@casino@valet_scenario@pose_a@",
        "base_a_m_y_vinewood_01",
        "Valet",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["valet2"] = {
        "anim@amb@casino@valet_scenario@pose_b@",
        "base_a_m_y_vinewood_01",
        "Valet 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["valet3"] = {
        "anim@amb@casino@valet_scenario@pose_d@",
        "base_a_m_y_vinewood_01",
        "Valet 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tighten"] = {
        "timetable@denice@ig_1",
        "idle_b",
        "Tighten (Yoga)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["fspose"] = {
        "missfam5_yoga",
        "c2_pose",
        "F Sex Pose",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["fspose2"] = {
        "missfam5_yoga",
        "c6_pose",
        "F Sex Pose 2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            NotInVehicle = true
        },
        AdultAnimation = true
    },
    ["fspose3"] = {
        "anim@amb@carmeet@checkout_car@",
        "female_c_idle_d",
        "F Sex Pose 3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["showerf"] = {
        "mp_safehouseshower@female@",
        "shower_enter_into_idle",
        "Shower Enter Female",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerf2"] = {
        "mp_safehouseshower@female@",
        "shower_idle_a",
        "Shower Female",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerf3"] = {
        "mp_safehouseshower@female@",
        "shower_idle_b",
        "Shower Female 2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerm"] = {
        "mp_safehouseshower@male@",
        "male_shower_idle_a",
        "Shower Enter Male",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerm2"] = {
        "mp_safehouseshower@male@",
        "male_shower_idle_b",
        "Shower Male 2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerm3"] = {
        "mp_safehouseshower@male@",
        "male_shower_idle_c",
        "Shower Male 3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerm4"] = {
        "mp_safehouseshower@male@",
        "male_shower_idle_d",
        "Shower Male 4",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["picklock"] = {
        "missheistfbisetup1",
        "hassle_intro_loop_f",
        "Picklock",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["cleanhands"] = {
        "missheist_agency3aig_23",
        "urinal_sink_loop",
        "Clean Them Filthy Hands",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["cleanface"] = {
        "switch@michael@wash_face",
        "loop_michael",
        "Clean Your Face",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["buzz"] = {
        "anim@apt_trans@buzzer",
        "buzz_reg",
        "Buzz Door",
        AnimationOptions = {
            EmoteLoop = false,
            EmoteMoving = false
        }
    },
    ["grieve"] = {
        "anim@miss@low@fin@vagos@",
        "idle_ped05",
        "Grieve The Dead",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["respect"] = {
        "anim@mp_player_intcelebrationmale@respect",
        "respect",
        "Respect Male",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = false
        }
    },
    ["respectf"] = {
        "anim@mp_player_intcelebrationfemale@respect",
        "respect",
        "Respect Female",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = false
        }
    },
    ["bang"] = {
        "anim@mp_player_intcelebrationfemale@bang_bang",
        "bang_bang",
        "Bang Bang",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 2500
        }
    },
    ["checkcar"] = {
        "anim@amb@carmeet@checkout_car@male_a@idles",
        "idle_b",
        "Check Out · Female",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["checkcar2"] = {
        "anim@amb@carmeet@checkout_car@male_c@idles",
        "idle_a",
        "Check Out 2 · Male",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["watchstripper"] = {
        "amb@world_human_strip_watch_stand@male_c@idle_a",
        "idle_b",
        "Watch Stripper",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 6000,
        },
        AdultAnimation = true
    },
    ["hhands"] = {
        "misssnowie@hearthands",
        "base",
        "Heart Hands",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pockets"] = { -- Custom Emote By Dark Animations
        "hoodie_hands@dad",
        "hoodie_hands_clip",
        "Hands in pockets (Hoodie)",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["posecutef"] = { -- Custom Emote By Pupppy
        "pupppy@freepose01",
        "freepose01",
        "Cute Pose Female",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["posecutef2"] = { -- Custom Emote By Pupppy
        "pupppy@freepose03",
        "freepose03",
        "Cute Pose Female 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["posecutef3"] = { -- Custom Emote By Pupppy
        "pupppy@freepose04",
        "freepose04",
        "Cute Pose Female 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["posecutef4"] = { -- Custom Emote By QueenSistersAnimations
        "handkylie@queensisters",
        "kylie_clip",
        "Cute Pose Female 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["posecutem"] = { -- Custom Emote By Pupppy
        "pupppy@freepose02",
        "freepose02",
        "Cute Pose Male",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["checkwatch"] = { -- Custom Emote By MissSnowie
        "watch@looking_at",
        "base",
        "Check Watch",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pee"] = {
        "misscarsteal2peeing",
        "peeing_loop",
        "Pee (Male)",
        AnimationOptions = {
            EmoteStuck = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                -0.05,
                0.3,
                0.0,
                0.0,
                90.0,
                90.0,
                1.0
            },
            PtfxInfo = locale('pee'),
            PtfxWait = 0,
            PtfxCanHold = true,
        },
        AdultAnimation = true
    },
    ["pee2"] = {
        "missbigscore1switch_trevor_piss",
        "piss_loop",
        "Pee 2 (Male)",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                0.0130,
                0.1030,
                0.0,
                0.0,
                90.0,
                90.0,
                1.0
            },
            PtfxInfo = locale('pee'),
            PtfxWait = 0,
            PtfxCanHold = true,
        },
        AdultAnimation = true
    },
    ["pee3"] = {
        "missbigscore1switch_trevor_piss",
        "piss_loop",
        "Pee 3 Static (Male)",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                0.0130,
                0.1030,
                0.0,
                0.0,
                90.0,
                90.0,
                1.0
            },
            PtfxInfo = locale('pee'),
            PtfxWait = 0,
            PtfxCanHold = true,
        },
        AdultAnimation = true
    },
    ["hump"] = {
        "timetable@trevor@skull_loving_bear",
        "skull_loving_bear",
        "Hump",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["wank"] = {
        "anim@mp_player_intselfiewank",
        "idle_a",
        "Wank",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["wank2"] = {
        "anim@mp_player_intupperwank",
        "idle_a",
        "Wank 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["wank3"] = {
        "mp_player_int_upperwank",
        "mp_player_int_wank_02",
        "Wank 3",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["wank4"] = {
        "mp_player_int_upperwank",
        "mp_player_int_wank_02_fp",
        "Wank 4",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["wank5"] = {
        "mp_player_intwank",
        "mp_player_int_wank",
        "Wank 5",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = false
        },
        AdultAnimation = true
    },
    ["calldog"] = {
        "switch@franklin@plays_w_dog",
        "001916_01_fras_v2_9_plays_w_dog_idle",
        "Call Dog",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["calldogr"] = {
        "missfra0_chop_find",
        "call_chop_r",
        "Call Dog - Right",
        AnimationOptions = {
            EmoteLoop = false,
        }
    },
    ["calldogl"] = {
        "missfra0_chop_find",
        "call_chop_l",
        "Call Dog - Left",
        AnimationOptions = {
            EmoteLoop = false,
        }
    },
    ["block"] = {
        "missheist_agency3ashield_face",
        "idle",
        "Block Face",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["policecrowd"] = {
        "amb@code_human_police_crowd_control@idle_a",
        "idle_a",
        "Police Crowd",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["policecrowd2"] = {
        "amb@code_human_police_crowd_control@idle_b",
        "idle_d",
        "Police Crowd 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["k9pose"] = {
        "anim@k9_pose",
        "hug_dog",
        "Hug Dog",
        AnimationOptions = {
            EmoteLoop = true,
			EmoteMoving = false
        }
    },
    ["snot"] = {
        "move_p_m_two_idles@generic",
        "fidget_blow_snot",
        "Blow Snot",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4500
        }
    },
    ["scratch"] = {
        "move_p_m_two_idles@generic",
        "fidget_scratch_balls",
        "Scratch Balls",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 4000
        },
        AdultAnimation = true
    },
	["cartaunt"] = {
        "missarmenian1driving_taunts@lamar_1",
        "cmonfrank",
        "Car Taunt",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000
        }
    },
	["cartauntb"] = {
        "missarmenian1driving_taunts@lamar_1",
        "cmonmynigga",
        "Car Taunt 2",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000
        }
    },
	["cartauntc"] = {
        "missarmenian1driving_taunts@lamar_1",
        "hahahakeepup",
        "Car Taunt 3",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000
        }
    },
	["cartauntd"] = {
        "missarmenian1driving_taunts@lamar_1",
        "manthisismeanttobe",
        "Car Taunt 4",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000
        }
    },
	["cartaunte"] = {
        "missarmenian1driving_taunts@lamar_1",
        "rememberthis",
        "Car Taunt 5",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 3000
        }
    },
	["cartauntf"] = {
        "missarmenian1driving_taunts@lamar_1",
        "skoolinyoass",
        "Car Taunt 6",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 3000
        }
    },
	["cartauntg"] = {
        "missarmenian1driving_taunts@lamar_1",
        "youaintfuckin",
        "Car Taunt 7",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000
        }
    },
	["cartaunth"] = {
        "missarmenian1driving_taunts@franklin",
        "heyidontneedanybody",
        "Car Taunt 8",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000
        }
    },
	["cartaunti"] = {
        "missarmenian1driving_taunts@franklin",
        "heymotherfuckayoudriveslowasfuck",
        "Car Taunt 9",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 3000
        }
    },
	["cartauntj"] = {
        "missarmenian1driving_taunts@franklin",
        "kids_on_bicycles",
        "Car Taunt 10",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000
        }
    },
	["cartauntk"] = {
        "missarmenian1driving_taunts@franklin",
        "learnhowtouseastick",
        "Car Taunt 11",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000
        }
    },
	["cartauntl"] = {
        "missarmenian1driving_taunts@franklin",
        "slowassshit",
        "Car Taunt 12",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000
        }
    },
	["cartauntm"] = {
        "mp_intro_seq@mcs_7_race_taunt",
        "mcs_7_taunt_female",
        "Car Taunt 13",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 5000
        }
    },
	["cartauntn"] = {
        "mp_intro_seq@mcs_7_race_taunt",
        "mcs_7_taunt_male",
        "Car Taunt 14",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 5000
        }
    },
    ["flex2"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_002",
        "Flex 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true -- Allows us to flex while performing another animation
        }
    },
    ["gym"] = { -- Custom Female Emote By Souris
        "mouse@air_squat",
        "air_squat_clip",
        "Gym - Squats",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["gym2"] = { -- Custom Female Emote By Souris
        "mouse@byc_crunch",
        "byc_crunch_clip",
        "Gym - Crunches",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 400,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["gym3"] = { -- Custom Female Emote By Souris
        "mouse@jump_exc",
        "jump_exc_clip",
        "Gym - Jumping",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["gym4"] = { -- Custom Female Emote By Souris
        "mouse@jump_jack",
        "jump_jack_clip",
        "Gym - Jumping Jacks",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["gym5"] = { -- Custom Female Emote By Souris
        "mouse@situp",
        "situp_clip",
        "Gym - Sit Up",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 550,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["gympose"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_001",
        "Gym Pose",
        AnimationOptions = {
            EmoteLoop = true,
            NotInVehicle = true
        }
    },
    ["gympose2"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_005",
        "Gym Pose 2 - One Handed Push Up",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 550,
            ExitEmote = "standup",
            ExitEmoteType = "Exits",
            NotInVehicle = true
        }
    },
    ["gympose3"] = { -- Custom Female Emote By Frabi
        "frabi@femalepose@solo@firstsport",
        "fem_pose_sport_004",
        "Gym Pose 3 - Planking Pose",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 550,
            ExitEmote = "standup",
            ExitEmoteType = "Exits",
            NotInVehicle = true
        }
    },
    ["gympose4"] = { -- Custom Female Emote By Frabi
        "frabi@femalepose@solo@firstsport",
        "fem_pose_sport_005",
        "Gym Pose 4 - Sit Ups Pose",
         AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 510,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            NotInVehicle = true
        }
    },


    -- CASINO DLC EMOTES (Requires gamebuild 2060 or higher)


    ["karate"] = {
        "anim@mp_player_intcelebrationfemale@karate_chops",
        "karate_chops",
        "Karate"
    },
    ["karate2"] = {
        "anim@mp_player_intcelebrationmale@karate_chops",
        "karate_chops",
        "Karate 2"
    },
    ["cutthroat"] = {
        "anim@mp_player_intcelebrationmale@cut_throat",
        "cut_throat",
        "Cut Throat"
    },
    ["cutthroat2"] = {
        "anim@mp_player_intcelebrationfemale@cut_throat",
        "cut_throat",
        "Cut Throat 2"
    },
    ["mindblown"] = {
        "anim@mp_player_intcelebrationmale@mind_blown",
        "mind_blown",
        "Mind Blown",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4000
        }
    },
    ["mindblown2"] = {
        "anim@mp_player_intcelebrationfemale@mind_blown",
        "mind_blown",
        "Mind Blown 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4000
        }
    },
    ["boxing"] = {
        "anim@mp_player_intcelebrationmale@shadow_boxing",
        "shadow_boxing",
        "Boxing",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4000
        }
    },
    ["boxing2"] = {
        "anim@mp_player_intcelebrationfemale@shadow_boxing",
        "shadow_boxing",
        "Boxing 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4000
        }
    },
    ["boxing3"] = {
        "melee@unarmed@streamed_core_fps",
        "idle",
        "Boxing 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["capoeira"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_karate@",
        "med_right",
        "Capoeira",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["capoeira2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_karate@",
        "high_right_down",
        "Capoeira 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["stink"] = {
        "anim@mp_player_intcelebrationfemale@stinker",
        "stinker",
        "Stink",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["taichi"] = {
        "anim@veh@van@mule5@rps",
        "lean_forward_idle",
        "Tai chi",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["taichi2"] = {
        "switch@trevor@rand_temple",
        "tai_chi_trevor",
        "Tai chi - Awkward",
        AnimationOptions = {
            EmoteLoop = false,
            EmoteMoving = false
        }
    },
    ["think4"] = {
        "anim@amb@casino@hangout@ped_male@stand@02b@idles",
        "idle_a",
        "Think 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["adjusttie"] = {
        "clothingtie",
        "try_tie_positive_a",
        "Adjust Tie",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 5000
        }
    },
    ["shaka"] = {
        "sign@hang_loose",
        "base",
        "Shaka 'Hang Loose'",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shaka2"] = {
        "sign@hang_loose_casual",
        "base",
        "Shaka 'Hang Loose Casual'",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["relax"] = {
        "lying@on_grass",
        "base",
        "Relax",
        AnimationOptions = {
            EmoteLoop = true,
            NotInVehicle = true,
            StartDelay = 800,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["relax2"] = {
        "lying@on_couch_legs_crossed",
        "base",
        "Relax 2",
        AnimationOptions = {
            EmoteLoop = true,
            NotInVehicle = true,
            StartDelay = 800,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["uwu"] = {
        "uwu@egirl",
        "base",
        "UwU",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dab"] = {
        "stand_dab@dark",
        "stand_dab_clip",
        "Dab",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sexypose"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy003",
        "sexy003",
        "Sexy Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sexypose2"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy004",
        "sexy004",
        "Sexy Pose 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sexypose3"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy005",
        "sexy005",
        "Sexy Pose 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sexypose4"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy006",
        "sexy006",
        "Sexy Pose 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sexypose5"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy009",
        "sexy009",
        "Sexy Pose 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sexypose6"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy012",
        "sexy012",
        "Sexy Pose 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sexypose7"] = { -- Custom Emote By Darks Animations
        "bad_girls_pose3@darks37",
        "bad_girls_pose3_clip",
        "Sexy Pose 7",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["laydownsexy"] = { -- Custom emote by Struggleville
        "anim@female_laying_sexy",
        "laying_sexy_clip",
        "Laying Down Sexy",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["model"] = { -- Custom emote by Struggleville
        "anim@female_model_showoff",
        "model_showoff_clip",
        "Model Pose Sexy",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["model2"] = { -- Custom Emote By QueenSistersAnimations
        "sitdownonknees@queensisters",
        "sitdown_clip",
        "Model Pose 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["model3"] = { -- Custom emote by Struggleville
        "anim@female_model_photo_cute",
        "photo_cute_clip",
        "Model Pose 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["layncry"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_dlg_fuckedup_laz",
        "Lay & Cry",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["layncry2"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_base_laz",
        "Lay & Cry 2",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["layncry3"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_dlg_notagain_laz",
        "Lay & Cry 3",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["layncry4"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_dlg_notagain_laz",
        "Lay & Cry 4",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["layncry5"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_dlg_shit2strong_laz",
        "Lay & Cry 5",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["layncry6"] = {
        "misschinese2_crystalmaze",
        "2int_loop_a_taocheng",
        "Lay & Cry 6",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["layncry7"] = {
        "anim@scripted@data_leak@fixf_fin_ig2_johnnyguns_wounded@",
        "base",
        "Lay & Cry 7",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["layncry8"] = {
        "anim@scripted@data_leak@fix_golf_ig2_golfclub_intimidation@",
        "stage_3_base_golfer",
        "Lay & Cry 8",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["army1"] = {
        "bzzz@animation@army1", -- Custom Emote By BzZz
        "bz_army1",
        "Army 1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["army1l"] = {
        "bzzz@animation@army1_left", -- Custom Emote By BzZz
        "bz_army1_left",
        "Army 1 Left",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["army1p"] = {
        "bzzz@animation@army1_right", -- Custom Emote By BzZz
        "bz_army1_right",
        "Army 1 Right",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["army2"] = {
        "bzzz@animation@army2", -- Custom Emote By BzZz
        "bz_army2",
        "Army 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["army2l"] = {
        "bzzz@animation@army2_left", -- Custom Emote By BzZz
        "bz_army2_left",
        "Army 2 Left",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["army2p"] = {
        "bzzz@animation@army2_right", -- Custom Emote By BzZz
        "bz_army2_right",
        "Army 2 Right",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["airforce01"] = { -- MissSnowie
        "airforce@at_ease",
        "base",
        "Airforce - At Ease", -- MissSnowie
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["airforce02"] = { -- MissSnowie
        "airforce@attention",
        "base",
        "Airforce - Attention",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["airforce03"] = { -- MissSnowie
        "airforce@parade_rest",
        "base",
        "Airforce - Parade Rest",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["airforce04"] = {
        "airforce@salute",
        "base",
        "Airforce - Salute",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["zombiewalk"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "zombi_walk_01",
        "Zombie Walk",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false -- true looks weird but the option is here
        }
    },
    ["zombiewalk2"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "zombi_walk_02",
        "Zombie Walk 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["zombiewalk3"] = {
        "anim@ingame@move_m@zombie@core",
        "walk_up",
        "Zombie Walk 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["zombiewalk4"] = {
        "anim@ingame@move_m@zombie@core",
        "run_turn_r3",
        "Zombie Run - Circle",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["zombieagony"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "agony",
        "Zombie Agony",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["zombiescream"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "scream",
        "Zombie Scream",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["zombiecrawl"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "crawl_01",
        "Zombie Crawl",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "meditateup",
            ExitEmoteType = "Exits"
        }
    },
    ["zombieswipe"] = {
        "anim@ingame@melee@unarmed@streamed_core_zombie",
        "short_-180_punch",
        "Zombie Swipe",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["zombieswipe2"] = {
        "anim@ingame@melee@unarmed@streamed_variations_zombie",
        "heavy_punch_b_var_2",
        "Zombie Swipe 2",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["zombieswipe3"] = {
        "anim@ingame@melee@unarmed@streamed_core_zombie",
        "short_90_punch",
        "Zombie Swipe 3",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["laysexy"] = { -- Custom Emote By Amnilka
        "amnilka@photopose@female@homepack001",
        "amnilka_femalehome_photopose_004",
        "Lay Sexy",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["gungirl1"] = { -- Custom Emote By Struggleville
        "anim@female_gunbunny_rifle_photo",
        "rifle_photo_clip",
        "Rifle Pose",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["vest"] = {
        "anim@male@holding_vest",
        "holding_vest_clip",
        "Hold Vest",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["vest2"] = {
        "anim@holding_side_vest",
        "holding_side_vest_clip",
        "Hold Vest 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["vest3"] = {
        "anim@holding_siege_vest_side",
        "holding_siege_vest_side_clip",
        "Hold Vest 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["vest4"] = {
        "anim@male@holding_vest_2",
        "holding_vest_2_clip",
        "Hold Vest 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["vest5"] = {
        "anim@male@holding_vest_siege",
        "holding_vest_siege_clip",
        "Hold Vest 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["vest6"] = {
        "anim@male@holding_vest_siege_2",
        "holding_vest_siege_2_clip",
        "Hold Vest 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["kick"] = {
        "missheistdockssetup1ig_13@kick_idle",
        "guard_beatup_kickidle_guard1",
        "Kick",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kick2"] = {
        "missheistdockssetup1ig_13@kick_idle",
        "guard_beatup_kickidle_guard2",
        "Kick 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kick3"] = {
        "melee@unarmed@streamed_core",
        "kick_close_a",
        "Kick 3",
        AnimationOptions = {
            EmoteDuration = 1750
        }
    },
    ["crosshands"] = {
        "anim@amb@carmeet@checkout_car@",
        "male_e_base",
        "Cross hands",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["aslyes"] = {
        "ebrwny_sign",
        "ebrwny_yes",
        "ASL Yes 🇺🇸",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1030
        }
    },
    ["aslno"] = {
        "ebrwny_sign",
        "ebrwny_no",
        "ASL No 🇺🇸",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2080
        }
    },
    ["aslimgood"] = {
        "ebrwny_sign",
        "ebrwny_imgood",
        "ASL I Am Good 🇺🇸",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3940
        }
    },
    ["aslcya"] = {
        "ebrwny_sign",
        "ebrwny_seeya",
        "ASL See Ya 🇺🇸",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1200
        }
    },
    ["aslwhat"] = {
        "ebrwny_sign",
        "ebrwny_what",
        "ASL What 🇺🇸",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1480
        }
    },
    ["hidegun"] = { -- Credit to Darks Animations for this exclusive rpemotes animation
        "pistol_b_b@dark",
        "pistol_b_b_clip",
        "Hide a gun",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["femaleposea"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_10",
        "mrwitt",
        "Female Pose A",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleadorable1"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@adorable_style",
        "mrwitt",
        "Female Adorable 1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleadorable2"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@adorable",
        "mrwitt",
        "Female Adorable 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposeb"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@characterful_poses",
        "mrwitt",
        "Female Pose B",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposec"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@elegant_floor_hock",
        "mrwitt",
        "Female Pose C",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposed"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_03",
        "mrwitt",
        "Female Pose D",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposee"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_04",
        "mrwitt",
        "Female Pose E",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposef"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_05",
        "mrwitt",
        "Female Pose F",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposeg"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_06",
        "mrwitt",
        "Female Pose G",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposeh"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_07",
        "mrwitt",
        "Female Pose H",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposei"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_09",
        "mrwitt",
        "Female Pose I",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposej"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_10",
        "mrwitt",
        "Female Pose J",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposek"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_11",
        "mrwitt",
        "Female Pose K",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposel"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@finger_gun_pose",
        "mrwitt",
        "Female Pose L",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposem"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@models_in_action",
        "mrwitt",
        "Female Pose M",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposen"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@photo_session_posing",
        "mrwitt",
        "Female Pose N",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposeo"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@school_uniform_expression",
        "mrwitt",
        "Female Pose O",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposep"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@urban_posing",
        "mrwitt",
        "Female Pose P",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
	["femaleposeq"] = { -- Custom Emote By DRX Animations
        "drx@femalestand13",
        "xrd",
        "Female Pose Q",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femaleposer"] = { -- Custom Emote By DRX Animations
        "drx@femalestand14",
        "xrd",
        "Female Pose R",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femaleposes"] = { -- Custom Emote By DRX Animations
        "drx@femalestand15",
        "xrd",
        "Female Pose S",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femaleposet"] = { -- Custom Emote By DRX Animations
        "drx@femalestand16",
        "xrd",
        "Female Pose T",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femaleposeu"] = { -- Custom Emote By DRX Animations
        "drx@f_sitcool",
        "drx",
        "Female Pose U",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["femaleposev"] = { -- Custom Emote By DRX Animations
        "drx@f_standcasual1",
        "drx",
        "Female Pose V",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femaleposew"] = { -- Custom Emote By DRX Animations
        "drx@f_standcasual2",
        "drx",
        "Female Pose W",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femaleposex"] = { -- Custom Emote By DRX Animations
    "drx@femalestand7",
    "xrd",
    "Female Pose X",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femaleposey"] = { -- Custom Emote By DRX Animations
    "drx@femalestand8",
    "xrd",
    "Female Pose Y",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femaleposez"] = { -- Custom Emote By DRX Animations
        "drx@femalestand9",
        "xrd",
        "Female Pose Z",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
	["maleposea"] = { -- Custom Emote By DRX Animations
        "drx@singlemale1",
        "drx",
        "Male Pose A",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
       }
    },
    ["maleposeb"] = { -- Custom Emote By DRX Animations
        "drx@singlemale2",
        "drx",
        "Male Pose B",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposec"] = { -- Custom Emote By DRX Animations
        "drx@singlemalestand1",
        "drx",
        "Male Pose C",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposed"] = { -- Custom Emote By DRX Animations
        "drx@singlemalestand2",
        "drx",
        "Male Pose D",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposee"] = { -- Custom Emote By DRX Animations
        "drx@m_doublehands",
        "drx",
        "Male Pose E",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposef"] = { -- Custom Emote By DRX Animations
        "drx@m_standhide",
        "drx",
        "Male Pose F",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposee1"] = { -- Custom Emote By DRX Animations
        "drx@malestand2",
        "xrd",
        "Male Pose E1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposef1"] = { -- Custom Emote By DRX Animations
        "drx@malestand3c",
        "xrd",
        "Male Pose F1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposeg"] = { -- Custom Emote By DRX Animations
        "drx@pose_male",
        "pose_male",
        "Male Pose G",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposeh"] = { -- Custom Emote By MrWitt
        "mrwitt@gentleman_style_male",
        "mrwitt",
        "Male Pose H",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposei"] = { -- Custom Emote By MrWitt
        "mrwitt@thoughtful_man_m",
        "mrwitt",
        "Male Pose I",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposetie"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@tie_perfection_in_suit_male",
        "mrwitt",
        "Male Pose Tie",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malecrossarms"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "cross_arms@dark",
        "cross_arms_clip",
        "Male Cross Arms",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malemiddlefinger"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "stand_middlefinger@dark",
        "stand_middlefinger_clip",
        "Male Middle Finger",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malefistface"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "fist_face@darksj",
        "fist_face_clip",
        "Male Fist Face",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malepose4"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "fuckm@nxsty",
        "fuckm_clip",
        "Male Pose 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malegunpose1"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "gun_ink@darksj",
        "gun_ink_clip",
        "Male Gun Pose 1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malepose5"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "koko_male@darksj",
        "koko_male_clip",
        "Male Pose 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malepose3"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "male_solo_1@darksj",
        "male_solo_1_clip",
        "Male Pose 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malepose2"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "male_solo_3@darksj",
        "male_solo_3_clip",
        "Male Pose 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malepose1"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "male_solo_4@darksj",
        "male_solo_4_clip",
        "Male Pose 1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["maleshoecheck"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "side_shoe_check@darksj",
        "side_shoe_check_clip",
        "Male Shoe Check Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malegangpose"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "westside_cap@darksj",
        "westside_cap_clip",
        "Male Gang Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["illuminati"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_illum",
        "ebrwny_illum003",
        "Illuminati Hand Sign",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["illuminati2"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_illum",
        "ebrwny_illum001",
        "Illuminati Hand Sign 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["illuminati3"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_illum",
        "ebrwny_illum002",
        "Illuminati Hand Sign 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["gunpoint"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
        "male_gun@vanessssi",
        "male_gun_clip",
        "Gun Point - Robbery",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["baddiepeace"] = { -- Custom Emote provided by 41anims
        "41animpeacebaddie@animation",
        "41animpeacebaddie_clip",
        "Baddie Peace Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["baddiebendova"] = { -- Custom Emote provided by 41anims
        "bendova@animation",
        "bendova_clip",
        "Baddie Bendova Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["baddienailpose"] = { -- Custom Emote provided by 41anims
        "nailpose@animation",
        "nailpose_clip",
        "Baddie Nail Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["aphroditepose"] = { -- Custom Emote provided by corbs
        "aphrodite1@corbs",
        "aphrodite1_clip",
        "Aphrodite Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["aphroditepose2"] = { -- Custom Emote provided by corbs
        "aphrodite2@corbs",
        "aphrodite2_clip",
        "Aphrodite Pose 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["aphroditepose3"] = { -- Custom Emote provided by corbs
        "aphrodite3@corbs",
        "aphrodite3_clip",
        "Aphrodite Pose 3",
        AnimationOptions = {
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
--]] {
    -- Club (18+)
    ['c18_showboobs'] = { 'mini@strip_club@backroom@', 'stripper_b_backroom_idle_b', '~h~~r~Club (18+) ~o~·~s~ Show Boobs', AnimationOptions = { EmoteMoving = false, EmoteDuration = 6000, }, AdultAnimation = true },
    ['c18_showboobs2'] = { 'mini@strip_club@idles@stripper', 'stripper_idle_05', '~h~~r~Club (18+) ~o~·~s~ Show Boobs 2', AnimationOptions = { EmoteMoving = false, EmoteDuration = 6000, }, AdultAnimation = true },
    -- -------------------------------------------------------------------------------------------------------------------------------------------------------------
}