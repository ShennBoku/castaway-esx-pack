local Debug = false
local frameName = SetKygFrame('esx_textui')
local isShowing = false

---@param message string
---@param typ string
local function TextUI(message, typ)
    isShowing = true
    SendKygFrameMsg(frameName, { action = 'show', message = message and message or 'ESX-TextUI', type = type(typ) == 'string' and typ or 'info' })
end

local function HideUI()
    if not isShowing then return end
    isShowing = false
    SendKygFrameMsg(frameName, { action = 'hide' })
end

exports('TextUI', TextUI)
exports('HideUI', HideUI)
ESX.SecureNetEvent('ESX:TextUI', TextUI)
ESX.SecureNetEvent('ESX:HideUI', HideUI)

if Debug then
    RegisterCommand('esxtextui:error', function()
        ESX.TextUI('i ~r~love~s~ donuts', 'error')
    end, false)

    RegisterCommand('esxtextui:success', function()
        ESX.TextUI('i ~g~love~s~ donuts', 'success')
    end, false)

    RegisterCommand('esxtextui:info', function()
        ESX.TextUI('i ~b~love~s~ donuts', 'info')
    end, false)

    RegisterCommand('esxtextui:hide', function()
        ESX.HideUI()
    end, false)
end
