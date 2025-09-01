function SetPlayerPedExpression(expression, saveToKvp)
    SetFacialIdleAnimOverride(cache.ped, expression, nil) ---@diagnostic disable-line
    if Config.PersistentExpression and saveToKvp then SetResourceKvp('expression', expression) end
end

if Config.ExpressionsEnabled then
    kyg.addCommand({ 'mood', 'changemood' }, { help = 'Set your current mood/expression.', params = {
        { name = 'expression', help = '/moods for a list of valid moods', type = 'string' }
    }}, function(source, args, raw)
        local expression = FirstToUpper(args.expression:lower())
        if RP.Expressions[expression] ~= nil then
            SetPlayerPedExpression(RP.Expressions[expression][1], true)
        elseif expression == 'Reset' then
            ClearFacialIdleAnimOverride(cache.ped)
            DeleteResourceKvp('expression')
        else
            lib.notify({ description = ("'%s' is not a valid mood, do /moods to see all moods."):format(expression), type = 'error' })
        end
    end)

    local function LoadPersistentExpression()
        if not LocalPlayer.state.isLoggedIn then return end
        local expression = GetResourceKvpString('expression')
        if expression then SetPlayerPedExpression(expression, false) end
    end

    if Config.PersistentExpression then
        AddEventHandler('playerSpawned', LoadPersistentExpression)
        AddStateBagChangeHandler('isLoggedIn', ('player:%s'):format(cache.serverId), function(_, _, value)
            if type(value) ~= 'boolean' then return end
            if value then
                LoadPersistentExpression()
            end
        end)
    end
end
