local canChange = true
local unable_message = "You are unable to change your walking style right now."

function WalkMenuStart(name, force)
    if not canChange and not force then return lib.notify({ description = unable_message, type = 'error' }) end

    if not name or name == "" then
        ResetWalk()
        return
    end

    if Config.PersistentWalk then SetResourceKvp("walkstyle", name) end
    lib.requestAnimSet(name, GetGameTimer() + 5000)
    SetPedMovementClipset(PlayerPedId(), name, 0.2)
    RemoveAnimSet(name)
end

function ResetWalk()
    if not canChange then return lib.notify({ description = unable_message, type = 'error' }) end
    ResetPedMovementClipset(PlayerPedId(), 0.0)
end

function WalksOnCommand()
    local WalksCommand = ""
    for a in PairsByKeys(RP.Walks) do
        WalksCommand = ('%s%s, '):format(WalksCommand, a:lower())
    end

    lib.notify({ description = 'To reset do /walk reset' })
    lib.notify({ description = WalksCommand })
end

function WalkCommandStart(name)
    if not canChange then return lib.notify({ description = unable_message, type = 'error' }) end
    name = FirstToUpper(string.lower(name))

    if name == "Reset" then
        ResetPedMovementClipset(PlayerPedId(), 0.0)
        DeleteResourceKvp("walkstyle")
        return
    end

    if TableHasKey(RP.Walks, name) then
        local name2 = table.unpack(RP.Walks[name])
        WalkMenuStart(name2)
    else
        lib.notify({ description = ("'%s' is not a valid walk"):format(name), type = 'error' })
    end
end

-- Persistent Walkstyles are stored to KVP. Once the player has spawned, the walkstyle is applied.

if Config.WalkingStylesEnabled and Config.PersistentWalk then
    -- Function to check if walkstyle is available to prevent exploiting
    local function walkstyleExists(kvp)
        for _, v in pairs(RP.Walks) do
            if v[1] == kvp then
                return true
            end
        end
        return false
    end

    local function handleWalkstyle()
        local kvp = GetResourceKvpString("walkstyle")

        if kvp then
            if walkstyleExists(kvp) then
                WalkMenuStart(kvp, true)
            else
                ResetPedMovementClipset(PlayerPedId(), 0.0)
                DeleteResourceKvp("walkstyle")
            end
        end
    end

    AddEventHandler('playerSpawned', function()
        Wait(3000)
        handleWalkstyle()
    end)
    RegisterNetEvent('esx:playerLoaded', handleWalkstyle)

    AddEventHandler('onResourceStart', function(resource)
        if resource == GetCurrentResourceName() then
            handleWalkstyle()
        end
    end)
end

if Config.WalkingStylesEnabled then
    RegisterCommand('walks', function() WalksOnCommand() end, false)
    RegisterCommand('walk', function(_, args, _) WalkCommandStart(tostring(args[1])) end, false)
    TriggerEvent('chat:addSuggestion', '/walk', 'Set your walkingstyle.', { { name = "style", help = "/walks for a list of valid styles" } })
    TriggerEvent('chat:addSuggestion', '/walks', 'List available walking styles.')
end

exports('toggleWalkstyle', function(bool, message)
    canChange = bool
    if message then
        unable_message = message
    end
end)

exports('getWalkstyle', function()
    return GetResourceKvpString("walkstyle")
end)

exports('setWalkstyle', WalkMenuStart)
