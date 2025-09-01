local huCooldown = false
lib.addKeybind({
    name = 'kyg_handsup',
    description = 'Hands Up',
    defaultKey = 'X',
    onPressed = function(self)
        local emotes = exports['rpemotes-reborn']
        if emotes:IsPlayerInAnim() then return emotes:EmoteCancel() end
        local isEmote = emotes:IsPlayerCrouched() or emotes:IsPlayerProne() or emotes:IsPlayerCrawling() or emotes:IsPlayerPointing() or emotes:IsPlayerInAnim()

        if not lib.progressActive() and not cache.vehicle and not kyg.player.isDead() and not isEmote then
            if not kyg.player.isHandsup() and kyg.canAction({ 'weapon' }) then
                if huCooldown then return end
                lib.playAnim(cache.ped, 'missminuteman_1ig_2', 'handsup_enter', 3.0, 3.0, -1, 50, 0, false, 0, false)
                RemoveAnimDict('missminuteman_1ig_2')
                LocalPlayer.state:set('isHandsup', true, true)
                Entity(cache.ped).state:set('isHandsup', true, true)
                kyg.util.loop.start('onPedHandsup', {
                    disableControl = {
                        [36]  = true, -- INPUT_DUCK
                        [44]  = true, -- INPUT_COVER
                        [53]  = true, -- INPUT_WEAPON_SPECIAL
                        [54]  = true, -- INPUT_WEAPON_SPECIAL_TWO
                        [59]  = true, -- INPUT_VEH_MOVE_LR
                        [60]  = true, -- INPUT_VEH_MOVE_UD
                        [61]  = true, -- INPUT_VEH_MOVE_UP_ONLY
                        [62]  = true, -- INPUT_VEH_MOVE_DOWN_ONLY
                        [63]  = true, -- INPUT_VEH_MOVE_LEFT_ONLY
                        [64]  = true, -- INPUT_VEH_MOVE_RIGHT_ONLY
                        [65]  = true, -- INPUT_VEH_SPECIAL
                        [66]  = true, -- INPUT_VEH_GUN_LR
                        [67]  = true, -- INPUT_VEH_GUN_UD
                        [69]  = true, -- INPUT_VEH_ATTACK
                        [70]  = true, -- INPUT_VEH_ATTACK2
                        [71]  = true, -- INPUT_VEH_ACCELERATE
                        [72]  = true, -- INPUT_VEH_BRAKE
                        [73]  = true, -- INPUT_VEH_DUCK
                        [74]  = true, -- INPUT_VEH_HEADLIGHT
                        [77]  = true, -- INPUT_VEH_HOTWIRE_LEFT
                        [78]  = true, -- INPUT_VEH_HOTWIRE_RIGHT
                        [80]  = true, -- INPUT_VEH_CIN_CAM
                        [86]  = true, -- INPUT_VEH_HORN
                        [91]  = true, -- INPUT_VEH_PASSENGER_AIM
                        [102] = true, -- INPUT_VEH_JUMP
                        [104] = true, -- INPUT_VEH_SHUFFLE
                        [105] = true, -- INPUT_VEH_DROP_PROJECTILE
                        [136] = true, -- INPUT_VEH_PUSHBIKE_PEDAL
                        [137] = true, -- INPUT_VEH_PUSHBIKE_SPRINT
                        [139] = true, -- INPUT_VEH_PUSHBIKE_REAR_BRAKE
                        [140] = true, -- INPUT_MELEE_ATTACK_LIGHT
                        [141] = true, -- INPUT_MELEE_ATTACK_HEAVY
                        [142] = true, -- INPUT_MELEE_ATTACK_ALTERNATE
                        [143] = true, -- INPUT_MELEE_BLOCK
                        [337] = true, -- INPUT_VEH_HYDRAULICS_CONTROL_TOGGLE
                        [338] = true, -- INPUT_VEH_HYDRAULICS_CONTROL_LEFT
                        [339] = true, -- INPUT_VEH_HYDRAULICS_CONTROL_RIGHT
                        [340] = true, -- INPUT_VEH_HYDRAULICS_CONTROL_UP
                        [341] = true, -- INPUT_VEH_HYDRAULICS_CONTROL_DOWN
                        [342] = true, -- INPUT_VEH_HYDRAULICS_CONTROL_UD
                        [343] = true, -- INPUT_VEH_HYDRAULICS_CONTROL_LR
                        [351] = true, -- INPUT_VEH_ROCKET_BOOST
                        [354] = true, -- INPUT_VEH_BIKE_WINGS
                        [357] = true, -- INPUT_VEH_TRANSFORM
                        [345] = true, -- INPUT_VEH_MELEE_HOLD
                        [346] = true, -- INPUT_VEH_MELEE_LEFT
                        [347] = true, -- INPUT_VEH_MELEE_RIGHT
                    },
                })
                huCooldown = true Wait(3000) huCooldown = false
            else
                kyg.util.loop.stop('onPedHandsup', true)
                LocalPlayer.state:set('isHandsup', false, true)
                Entity(cache.ped).state:set('isHandsup', false, true)
                StopAnimTask(cache.ped, 'missminuteman_1ig_2', 'handsup_enter', 3.0)
            end
        end
    end
})

local sbCooldown = false
lib.addKeybind({
    name = 'kyg_seatbelt',
    description = 'Toggle Seatbelt',
    defaultKey = 'B',
    onPressed = function(self)
        if sbCooldown then return end
        TriggerEvent('seatbelt:client:ToggleSeatbelt')
        sbCooldown = true Wait(1500) sbCooldown = false
    end
})