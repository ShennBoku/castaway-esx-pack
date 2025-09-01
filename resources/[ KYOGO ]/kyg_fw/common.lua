local frameSource = GetCurrentResourceName()
local function buildFrame(frameName, frameUrl, frameVisible)
    SendNUIMessage({ action = 'create_frame', name = frameName, url = frameUrl, visible = (frameVisible == nil) and true or false })
end

--- Generate new frame for modules
--- @param moduleName string
--- @param htmlFileName? string
--- @return string
function SetKygFrame(moduleName, htmlFileName)
    AddEventHandler(frameSource .. ':kygFrame', function()
        buildFrame(moduleName, ('nui://%s/modules/%s/nui/%s.html'):format(frameSource, moduleName, (htmlFileName or 'index')))
    end)
    return moduleName
end

--- Set NUI Focus
--- @param frameName string
--- @param hasFocus boolean
--- @param hasCursor boolean
function SetKygFrameFocus(frameName, hasFocus, hasCursor)
    SendNUIMessage({ action = 'focus_frame', name = frameName })
    SetNuiFocus(hasFocus, hasCursor)
end

--- Send NUI Message
--- @param frameName string
---@param messageData any
function SendKygFrameMsg(frameName, messageData)
    SendNUIMessage({ target = frameName, data = messageData })
end

RegisterNUICallback('nui_ready', function(data, cb)
    TriggerEvent(frameSource .. ':kygFrame')
    cb('KYG NUI Ready')
end)

RegisterNUICallback('frame_message', function(data, cb)
    cb('KYG Frame Message')
end)