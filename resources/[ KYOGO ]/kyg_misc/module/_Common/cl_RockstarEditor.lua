CreateThread(function()
    local recording = false

    RegisterCommand('record', function()
        if recording then
            StopRecordingAndSaveClip()
            recording = false
        else
            StartRecording(1)
            recording = true
        end
    end, false)

    RegisterCommand('recordstart', function() StartRecording(1) recording = true end, false)
    RegisterCommand('recordstop', function() StopRecordingAndSaveClip() recording = false end, false)
    RegisterCommand('recorddiscard', function() StopRecordingAndDiscardClip() recording = false end, false)

    RegisterCommand('rockstareditor', function()
        recording = false
        NetworkSessionLeaveSinglePlayer()
        ActivateRockstarEditor()
    end, false)

    RegisterCommand('rockstar', function()
        lib.registerContext({
            id = 'kyg:rockstarMenu',
            title = 'Rockstar Menu',
            canClose = true,
            options = {
                { title = 'Status: ' .. (recording and 'Recording' or 'Stopped'), disabled = true, icon = 'clapperboard', iconColor = recording and 'red' or nil },
                { title = 'Start Record', onSelect = function() ExecuteCommand('recordstart') end, icon = 'video' },
                { title = 'Stop Record', onSelect = function() ExecuteCommand('recordstop') end, icon = 'video-slash' },
                { title = 'Rockstar Editor', onSelect = function() ExecuteCommand('rockstareditor') end, icon = 'wand-magic-sparkles' },
            }
        })
        lib.showContext('kyg:rockstarMenu')
    end, false)
end)