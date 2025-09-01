kyg.util.loop.create('onPedHandsup', function(metadata)
    if not LocalPlayer.state.isHandsup then
        return kyg.util.loop.stop('onPedHandsup')
    end

    if metadata.disableControl then
        for control, state in pairs(metadata.disableControl) do
            DisableControlAction(0, control, state)
        end
    end
end, 5)