--- Get Total Player
---@return table { job = {}, gang = {}, group = {}, admin, citizen, maxcitizen }
function kyg.player.total()
    if IsServerSide then
        local total = { job = {}, gang = {}, group = {}, admin = 0, citizen = 0, maxcitizen = GetConvarInt('sv_maxclients', 0) }
        for _, Player in pairs(kyogo.getPlayers()) do if Player then
            total.citizen = total.citizen + 1
            if Config.Framework == 'esx' then
                if Player.job.name ~= 'unemployed' and Player.job.onDuty then
                    total.job[Player.job.name] = (total.job[Player.job.name] or 0) + 1
                end

                local plyGroup = Player.getGroup()
                if plyGroup ~= 'user' then
                    total.admin = total.admin + 1
                    total.group[plyGroup] = (total.group[plyGroup] or 0) + 1
                end
            elseif Config.Framework == 'qb' and not Player.Offline then
                if Player.PlayerData.job.name ~= 'unemployed' and Player.PlayerData.job.onduty then
                    total.job[Player.PlayerData.job.name] = (total.job[Player.PlayerData.job.name] or 0) + 1
                end

                if Player.PlayerData.gang.name ~= 'none' then
                    total.gang[Player.PlayerData.gang.name] = (total.gang[Player.PlayerData.gang.name] or 0) + 1
                end

                if IsPlayerAceAllowed(Player.PlayerData.source, 'admin') then
                    total.admin = total.admin + 1
                    total.group.admin = (total.group.admin or 0) + 1
                end
            end
        end end
        return total
    end
    return lib.callback.await('kyg:getTotalPlayer', false)
end

--- Get Player Name
---@param src number The player's source ID.
---@return string # will return fivem or base player name if can't find name from framework
---@see GetPlayerName
function kyg.player.getName(src)
    if IsServerSide then
        local Player = kyogo.getPlyFromID(src)
        if Player then
            return Config.Framework == 'esx' and Player.name or ('%s %s'):format(Player.PlayerData.charinfo.firstname, Player.PlayerData.charinfo.lastname)
        end
        return GetPlayerName(src)
    end
    return lib.callback.await('kyg:getPlayerName', false, src)
end

--- Get Player Waypoint
---@param src? number # Player Server ID, not required in client side
---@return vector3
function kyg.player.getWaypoint(src)
    if IsServerSide then
        return lib.callback.await('kyg:getWaypoint', src) or vec3(0, 0, 0)
    end
    return GetBlipInfoIdCoord(GetFirstBlipInfoId(GetWaypointBlipEnumId()))
end

--- Retrieves player identifiers based on their source ID. Optionally filters by a specific identifier type. Returns a table of all identifiers or specific ones if requested.
---@param src number The player's source ID.
---@param identifierType? string (Optional) The type of identifier to retrieve (e.g., 'steam', 'license', 'discord').
---
---@return string|table, string # If `identifierType` is provided, returns the identifier and its substring as two strings. Or is not provided, returns a table of all identifiers.
---@usage
--- ```lua
---     local allIdentifiers = kyg.player.getIdentifiers(1) -- Get all identifiers
---     local steamID, steamIDSub = kyg.player.getIdentifiers(1, 'steam') -- Get Steam identifier
--- ```
---@see GetPlayerIdentifiers
---@see GetPlayerEndpoint
---@see GetPlayerName
function kyg.player.getIdentifiers(src, identifierType)
    if IsServerSide then
        local idtfNative = GetPlayerIdentifiers(src)
        local identifiers = { id = src, name = GetPlayerName(src), steam = '', steamSub = '', license = '', licenseSub = '', discord = '', discordSub = '', xbl = '', xblSub = '', live = '', liveSub = '', fivem = '', fivemSub = '', ip = '', ipSub = '' }
        
        for i = 1, #idtfNative do
            if idtfNative[i]:match('steam:') then
                identifiers.steam = idtfNative[i]
                identifiers.steamSub = idtfNative[i]:gsub('steam:', '')
            elseif idtfNative[i]:match('license:') then
                identifiers.license = idtfNative[i]
                identifiers.licenseSub = idtfNative[i]:gsub('license:', '')
            elseif idtfNative[i]:match('license2:') then
                identifiers.license = idtfNative[i]
                identifiers.licenseSub = idtfNative[i]:gsub('license2:', '')
            elseif idtfNative[i]:match('discord:') then
                identifiers.discord = idtfNative[i]
                identifiers.discordSub = idtfNative[i]:gsub('discord:', '')
            elseif idtfNative[i]:match('xbl:') then
                identifiers.xbl = idtfNative[i]
                identifiers.xblSub = idtfNative[i]:gsub('xbl:', '')
            elseif idtfNative[i]:match('live:') then
                identifiers.live = idtfNative[i]
                identifiers.liveSub = idtfNative[i]:gsub('live:', '')
            elseif idtfNative[i]:match('fivem:') then
                identifiers.fivem = idtfNative[i]
                identifiers.fivemSub = idtfNative[i]:gsub('fivem:', '')
            elseif idtfNative[i]:match('ip:') then
                identifiers.ip = idtfNative[i]
                identifiers.ipSub = idtfNative[i]:gsub('ip:', '')
            end
        end

        if identifiers.ip == '' then
            ---@diagnostic disable-next-line: param-type-mismatch
            identifiers.ipSub = GetPlayerEndpoint(src)
            identifiers.ip = 'ip:' .. identifiers.ipSub
        end

        identifiers.primary = identifiers[Config.Identifier] or ''
        identifiers.primarySub = identifiers.primary:gsub(Config.Identifier .. ':', '')

        if identifierType then
            identifierType = identifierType:lower()
            if identifiers[identifierType] then
                ---@diagnostic disable-next-line: return-type-mismatch
                return identifiers[identifierType], identifiers[identifierType .. 'Sub'] or ''
            else
                lib.print.error(('Can\'t get \'%s\' identifier from id %s.'):format(identifierType, src))
                return '', ''
            end
        end

        ---@diagnostic disable-next-line: missing-return-value
        return identifiers
    end
    return lib.callback.await('kyg:getPlayerIdentifier', false, src, identifierType)
end