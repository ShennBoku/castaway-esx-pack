---@diagnostic disable: duplicate-set-field

--- Register Command (Client-Side)
---@param commandName string | string[]
---@param properties KyogoCommandClProperties | false
---@param cb fun(source: number, args: table, raw: string)
function kyg.addCommand(commandName, properties, cb)
    local  params
    if properties then
        params = properties.params
    end

    if params then for i = 1, #params do
        if params[i].type then
            params[i].help = params[i].help and ('%s (type: %s)'):format(params[i].help, params[i].type) or ('(type: %s)'):format(params[i].type)
        end
    end end

    local commands = type(commandName) ~= 'table' and { commandName } or commandName
    for i = 1, #commands do
        commandName = commands[i]
        RegisterCommand(commandName, function(source, args, raw)
            source = cache.serverId
            args = parseCommandArguments(source, args, raw, params)
            if not args then return end

            local success, resp = pcall(cb, source, args, raw)
            if not success then
                lib.print.error(("^1command '%s' failed to execute!\n%s"):format(string.strsplit(' ', raw) or raw, resp))
            end
        end, false)

        if properties then
            TriggerEvent('chat:addSuggestion', ('/%s'):format(commandName), properties.help, params)
        end
    end
end