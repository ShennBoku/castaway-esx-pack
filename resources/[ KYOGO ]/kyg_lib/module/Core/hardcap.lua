if IsDuplicityVersion() then
    local playerCount, list = 0, {}

    RegisterServerEvent('hardcap:playerActivated')
    AddEventHandler('hardcap:playerActivated', function()
        if not list[source] then
            playerCount = playerCount + 1
            list[source] = true
        end
    end)

    AddEventHandler('playerDropped', function()
        if list[source] then
            playerCount = playerCount - 1
            list[source] = nil
        end
    end)

    AddEventHandler('playerConnecting', function(name, setReason)
        local cv = GetConvarInt('sv_maxclients', 32)
        print('Connecting: ' .. name .. '^7')

        if playerCount >= cv then
            print('Full. :(')
            setReason('This server is full (past ' .. tostring(cv) .. ' players).')
            CancelEvent()
        end
    end)
else
    CreateThread(function()
        while true do
            Wait(0)
            if NetworkIsSessionStarted() then
                TriggerServerEvent('hardcap:playerActivated')
                return
            end
        end
    end)
end