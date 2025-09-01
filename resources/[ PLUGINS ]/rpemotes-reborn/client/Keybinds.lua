if Config.SqlKeybinding then
    local keyBinds = {
        num4 = 108,
        num5 = 110,
        num6 = 109,
        num7 = 117,
        num8 = 111,
        num9 = 118
    }

    -----------------------------------------------------------------------------------------------------
    -- Commands / Events --------------------------------------------------------------------------------
    -----------------------------------------------------------------------------------------------------

    RegisterNetEvent('esx:playerLoaded', function (xPlayer, skin)
        if not xPlayer.metadata.emotebind then
            TriggerServerEvent('rp:ServerKeybindCreate')
        end
    end)
    
    AddEventHandler('onResourceStart', function(resourceName)
        if resourceName ~= 'rpemotes-reborn' then return end
        if not ESX.PlayerData.metadata.emotebind then
            TriggerServerEvent('rp:ServerKeybindCreate')
        end
    end)

    local function keybindAction(keyPress)
        if cache.vehicle then return end
        local emoteBinded = ESX.PlayerData.metadata.emotebind[keyPress] or ''
        if emoteBinded ~= '' then
            EmoteCommandStart(cache.serverId, { emoteBinded, 0 })
            Wait(1000)
        end
    end

    lib.addKeybind({ name = 'emotebind_num4', description = 'Bind NUMPAD 4', defaultKey = 'NUMPAD4', onPressed = function() keybindAction('num4') end })
    lib.addKeybind({ name = 'emotebind_num5', description = 'Bind NUMPAD 5', defaultKey = 'NUMPAD5', onPressed = function() keybindAction('num5') end })
    lib.addKeybind({ name = 'emotebind_num6', description = 'Bind NUMPAD 6', defaultKey = 'NUMPAD6', onPressed = function() keybindAction('num6') end })
    lib.addKeybind({ name = 'emotebind_num7', description = 'Bind NUMPAD 7', defaultKey = 'NUMPAD7', onPressed = function() keybindAction('num7') end })
    lib.addKeybind({ name = 'emotebind_num8', description = 'Bind NUMPAD 8', defaultKey = 'NUMPAD8', onPressed = function() keybindAction('num8') end })
    lib.addKeybind({ name = 'emotebind_num9', description = 'Bind NUMPAD 9', defaultKey = 'NUMPAD9', onPressed = function() keybindAction('num9') end })

    -----------------------------------------------------------------------------------------------------
    ------ Functions and stuff --------------------------------------------------------------------------
    -----------------------------------------------------------------------------------------------------

    function EmoteBindsList()
        if not kyg.canAction({ 'weapon' }, { 'vehicle' }) then return end
        local binded = ESX.PlayerData.metadata.emotebind or {}
        lib.registerContext({
            id = 'kyg_emotes:EmoteBindsList',
            title = locale('currentlyboundemotes'),
            options = {
                { title = 'Numpad 4', disabled = (binded.num4 or '') == '', onSelect = function() keybindAction('num4') end, icon = 'fas fa-hashtag', description = 'Emote ID: ' .. (binded.num4 or '-') },
                { title = 'Numpad 5', disabled = (binded.num5 or '') == '', onSelect = function() keybindAction('num5') end, icon = 'fas fa-hashtag', description = 'Emote ID: ' .. (binded.num5 or '-') },
                { title = 'Numpad 6', disabled = (binded.num6 or '') == '', onSelect = function() keybindAction('num6') end, icon = 'fas fa-hashtag', description = 'Emote ID: ' .. (binded.num6 or '-') },
                { title = 'Numpad 7', disabled = (binded.num7 or '') == '', onSelect = function() keybindAction('num7') end, icon = 'fas fa-hashtag', description = 'Emote ID: ' .. (binded.num7 or '-') },
                { title = 'Numpad 8', disabled = (binded.num8 or '') == '', onSelect = function() keybindAction('num8') end, icon = 'fas fa-hashtag', description = 'Emote ID: ' .. (binded.num8 or '-') },
                { title = 'Numpad 9', disabled = (binded.num9 or '') == '', onSelect = function() keybindAction('num9') end, icon = 'fas fa-hashtag', description = 'Emote ID: ' .. (binded.num9 or '-') },
            }
        })
        lib.showContext('kyg_emotes:EmoteBindsList')
    end

    function EmoteBindStart(source, args, raw)
        if #args > 0 then
            local key = (args[1] or ''):lower()
            local emote = (args[2] or ''):lower()
            if keyBinds[key] ~= nil and ESX.PlayerData.metadata.emotebind[key] and emote ~= '' then
                if RP.Emotes[emote] ~= nil or RP.Dances[emote] ~= nil or RP.PropEmotes[emote] ~= nil or RP.AnimalEmotes[emote] ~= nil then
                    TriggerServerEvent('rp:ServerKeybindUpdate', key, emote)
                else
                    lib.notify({ description = locale('notvalidemote', emote), type = 'error' })
                end
            elseif emote == '' then
                lib.notify({ description = 'Emote cannot be empty', type = 'error' })
            else
                lib.notify({ description = locale('notvalidkey', key), type = 'error' })
            end
        end
    end

    function DeleteEmote(source, args)
        if #args > 0 then
            local key = (args[1] or ''):lower()
            if keyBinds[key] ~= nil and (ESX.PlayerData.metadata.emotebind[key] or '') ~= '' then
                TriggerServerEvent('rp:ServerKeybindDelete', key)
            else
                lib.notify({ description = locale('notvalidkey', key), type = 'error' })
            end
        end
    end
end
