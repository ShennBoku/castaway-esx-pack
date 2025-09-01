Config = {
    -- Menu Options
    MenuLanguage = 'en', -- Change the language of the menu here!.
    DebugDisplay = false, -- Set this to true to enable some extra prints
    EnableCancelKeybind = true,  -- Set this to false if you have something else on X, and then just use /e c to cancel emotes.
    CancelEmoteKey = 'X', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    MenuKeybindEnabled = true,
    MenuKeybind = 'F3', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    FavKeybindEnabled = false, -- You can disable the Favorite emote keybinding here.
    FavKeybind = 'capital', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    SqlKeybinding = true, -- If you have the SQL imported enable this to turn on keybinding.
    NotificationsAsChatMessage = false, -- If you don't like native GTA 5 notifications, you can disable them here to have messages in the chat.
    Framework = 'qb-core', -- Used for few framework-dependent things. Accepted values: 'qb-core', false
    Search = true, -- Used to enable or disable the search feature in the menu.
    CancelPreviousEmote = false,     -- If turned on, playing an emote will cancel the previous one.
    DisableControls = false, -- Disable specific controls when menu is open, can be configured in NativeUI.lua:2452 (approximately)

    -- Menu Customization Options
    MenuTitle = '', -- You can change the name of the menu here or leave it blank to remove the text in front of the custom banners
    TitleOutline = true,
    TitleColour = {R = 255, G = 0, B = 255, A = 255}, --- The colour of the menu banner text in RGB. This is white by default aka 255, 255, 255. See https://www.rapidtables.com/web/color/RGB_Color.html for colours.
    MenuPosition = 'right', -- You can change the menu position here. Use 'left' or 'right'
    CustomMenuEnabled = true, -- You can change the header image for the menu here, Note this might cause an issue of the image getting stuck on people's screens

    -- Combat Car, and Player Movement Options
    DisarmPlayer = false, -- Set this to true if you want to disarm the player when they play an emote.
    AllowPunching = false, -- Set this to true if you want to allow people punching while emotes are playing
    AllowedInCars = true, -- Set this if you really wanna disable emotes in cars, as of 1.7.2 they only play the upper body part if in a vehicle
    -- You can disable the menu here / change the keybind. It is currently set to F4
    -- The keybind you set here will be server-sided for new players. existing players can set their own in the ESC menu keybind settings
    AllowInWater = false, -- If turned off, opening the menu and playing an emote will not be possible while swimming

    -- Expressions, Walks, and More Menu Options
    ExpressionsEnabled = true, -- You can disable the Facial Expressions menu here.
    PersistentExpression = true, -- Saves expression style to client and applies them on joining
    WalkingStylesEnabled = true, -- You can disable the Walking Styles menu here.
    PersistentWalk = true, -- Saves walk styles to client and applies them on joining
    SharedEmotesEnabled = true, -- You can disable the Shared Emotes here.
    AdultEmotesDisabled = false, -- You can disable the Adult Emotes here.
    AnimalEmotesEnabled = true, -- You can disable the Animal Emotes here.

    -- Pointing Options
    PointingEnabled = true, -- You can disable the finger pointing here / change the keybind. It is currently set to B
    PointingKeybindEnabled = true,
    PointingKeybind = 'B', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    PointingKeybindInCarEnabled = false,
    PersistentEmoteAfterPointing = true, -- If true, you will play the emote you were playing previously after you stop pointing.

    -- Crouching Options
    CrouchEnabled = true, -- If crouching should be enabled.
    CrouchKeybindEnabled = true, -- If true, crouching will use keybinds.
    CrouchKeybind = 'lcontrol', -- The default crouch keybind, get the button string here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    CrouchOverrideStealthMode = true, -- If true, you won't enter stealth mode even if the crouch key and the 'duck' key are the same.
    FpsMode = false, -- set this to true if you have first-person shooting to disable the ability to crouch and shoot in third-person

    -- Crawling Options
    CrawlEnabled = true, -- If crawling should be enabled.
    CrawlKeybindEnabled = true, -- If true, crawling will use keybinds.
    CrawlKeybind = 'rcontrol', -- The default crawl keybind, get the button string here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/

    -- Binocular Options
    BinocularsEnabled = false, -- If set to true, the /binoculars command will be enabled.
    AllowVisionsToggling = false, -- If set to true, you'll be able to toggle between different vision modes in the binoculars

    -- News Camera Options
    NewscamEnabled = false, -- If set to true, the /newscam command will be enabled.

    -- Preview Ped Options
    PreviewPed = false, -- Shows a preview of the emote on the player's ped next to the emote menu. Note that resmon will increase when this when emotes are being previewed.

    CheckForUpdates = false
}

Config.KeybindKeys = {
    108, -- num4
    110, -- num5
    109, -- num6
    117, -- num7
    111, -- num8
    118 -- num9
}