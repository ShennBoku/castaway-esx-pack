---@class KyogoCommandParams
---@field name string
---@field help? string
---@field type? 'number' | 'playerId' | 'string' | 'longString'
---@field optional? boolean

---@class KyogoCommandProperties
---@field help string?
---@field params KyogoCommandParams[]?
---@field restricted boolean | string | string[]?

---@class KyogoCommandClProperties
---@field help string?
---@field params KyogoCommandParams[]?

---@param source number
---@param args table
---@param raw string
---@param params KyogoCommandParams[]?
---@return table?
function parseCommandArguments(source, args, raw, params)
    if not params then return args end

    local paramsNum = #params
    for i = 1, paramsNum do
        local arg, param = args[i], params[i]
        local value

        if param.type == 'number' then
            value = tonumber(arg)
        elseif param.type == 'string' then
            value = not tonumber(arg) and arg
        elseif param.type == 'playerId' then
            if IsServerSide then
                value = arg == 'me' and source or tonumber(arg)
                if not value or not DoesPlayerExist(value--[[@as string]]) then
                    value = false
                end
            else
                value = arg == 'me' and cache.serverId or tonumber(arg)
                if not value or not NetworkIsPlayerActive(GetPlayerFromServerId(value)) then
                    value = false
                end
            end
        elseif param.type == 'longString' and i == paramsNum then
            if arg then
                local start = raw:find(arg, 1, true)
                value = start and raw:sub(start)
            else
                value = nil
            end
        else
            value = arg
        end

        if not value and (not param.optional or param.optional and arg) then
            return lib.print.error(("^1command '%s' received an invalid %s for argument %s (%s), received '%s'^0\n"):format(string.strsplit(' ', raw) or raw, param.type, i, param.name, arg))
        end

        arg = value

        args[param.name] = arg
        args[i] = nil
    end

    return args
end