local isSearching = false
local rightPosition = { x = 1430, y = 200 }
local leftPosition = { x = 0, y = 200 }
local menuPosition = { x = 0, y = 200 }
local menuHeader = 'shopui_title_sm_hangar'

if GetAspectRatio(false) > 2.0 then
    rightPosition = { x = 1200, y = 100 }
    leftPosition = { x = -250, y = 100 }
end

if Config.MenuPosition then
    if Config.MenuPosition == 'left' then
        menuPosition = leftPosition
    elseif Config.MenuPosition == 'right' then
        menuPosition = rightPosition
    end
end

if Config.CustomMenuEnabled then
    local txd = CreateRuntimeTxd('Custom_Menu_Head')
    CreateRuntimeTextureFromImage(txd, 'Custom_Menu_Head', 'header.png')
    menuHeader = 'Custom_Menu_Head'
end

local _menuPool = NativeUI.CreatePool()
local mainMenu = NativeUI.CreateMenu(Config.MenuTitle or '', '', menuPosition['x'], menuPosition['y'], menuHeader, menuHeader)
_menuPool:Add(mainMenu)

local sharemenu, shareddancemenu, infomenu

local EmoteTable = {}
local DanceTable = {}
local AnimalTable = {}
local PropETable = {}
local WalkTable = {}
local FaceTable = {}
local ShareTable = {}

function AddEmoteMenu(menu)
    local submenu = _menuPool:AddSubMenu(menu, locale('emotes'), '', true, true)
    if Config.Search then
        submenu:AddItem(NativeUI.CreateItem(locale('searchemotes'), ''))
        EmoteTable[#EmoteTable + 1] = locale('searchemotes')
    end

    local dancemenu = _menuPool:AddSubMenu(submenu, locale('danceemotes'), '', true, true)

    local animalmenu
    if Config.AnimalEmotesEnabled then
        animalmenu = _menuPool:AddSubMenu(submenu, locale('animalemotes'), '', true, true)
        EmoteTable[#EmoteTable + 1] = locale('animalemotes')
    end

    local propmenu = _menuPool:AddSubMenu(submenu, locale('propemotes'), '', true, true)
    EmoteTable[#EmoteTable + 1] = locale('danceemotes')
    EmoteTable[#EmoteTable + 1] = locale('danceemotes')

    if Config.SharedEmotesEnabled then
        sharemenu = _menuPool:AddSubMenu(submenu, locale('shareemotes'), locale('shareemotesinfo'), true, true)
        shareddancemenu = _menuPool:AddSubMenu(sharemenu, locale('sharedanceemotes'), '', true, true)
        ShareTable[#ShareTable + 1] = 'none'
        EmoteTable[#EmoteTable + 1] = locale('shareemotes')
    end

    EmoteTable[#EmoteTable + 1] = 'keybinds'
    submenu:AddItem(NativeUI.CreateItem(locale('keybinds'), locale('keybindsinfo', '/emotebind [~y~num4-9~w~] [~g~emotename~w~]')))

    for a, b in PairsByKeys(RP.Emotes) do
        local x, y, z = table.unpack(b)
        submenu:AddItem(NativeUI.CreateItem(z, '/e (' .. a .. ')'))
        EmoteTable[#EmoteTable + 1] = a
    end

    for a, b in PairsByKeys(RP.Dances) do
        local x, y, z = table.unpack(b)
        dancemenu:AddItem(NativeUI.CreateItem(z, '/e (' .. a .. ')'))
        if Config.SharedEmotesEnabled then
            shareddancemenu:AddItem(NativeUI.CreateItem(z, '/nearby (' .. a .. ')'))
        end
        DanceTable[#DanceTable + 1] = a
    end

    if Config.AnimalEmotesEnabled then
        for a, b in PairsByKeys(RP.AnimalEmotes) do
            local x, y, z = table.unpack(b)
            animalmenu:AddItem(NativeUI.CreateItem(z, '/e (' .. a .. ')'))
            AnimalTable[#AnimalTable + 1] = a
        end
    end

    if Config.SharedEmotesEnabled then
        for a, b in PairsByKeys(RP.Shared) do
            local x, y, z, otheremotename = table.unpack(b)
            local shareitem = NativeUI.CreateItem(z, '/nearby (~g~' .. a .. '~w~)' .. (otheremotename and ' ' .. locale('makenearby', otheremotename) or ''))
            sharemenu:AddItem(shareitem)
            ShareTable[#ShareTable + 1] = a
        end
    end

    for a, b in PairsByKeys(RP.PropEmotes) do
        local x, y, z = table.unpack(b)
        local propitem = b.AnimationOptions.PropTextureVariations and
            NativeUI.CreateListItem(z, b.AnimationOptions.PropTextureVariations, 1, '/e (' .. a .. ')') or
            NativeUI.CreateItem(z, '/e (' .. a .. ')')

        propmenu:AddItem(propitem)
        PropETable[#PropETable + 1] = a
    end

    -- Ped Emote on Change Index

    dancemenu.OnIndexChange = function(menu, newindex)
        ClearPedTaskPreview()
        EmoteMenuStartClone(DanceTable[newindex], 'dances')
    end

    propmenu.OnIndexChange = function(menu, newindex)
        ClearPedTaskPreview()
        EmoteMenuStartClone(PropETable[newindex], 'props')
    end

    submenu.OnIndexChange = function(menu, newindex)
        if newindex > 6 then
            ClearPedTaskPreview()
            EmoteMenuStartClone(EmoteTable[newindex], 'emotes')
        end
    end

    dancemenu.OnMenuClosed = function(menu)
        ClearPedTaskPreview()
    end

    dancemenu.OnItemSelect = function(sender, item, index)
        EmoteMenuStart(DanceTable[index], 'dances')
    end

    if Config.AnimalEmotesEnabled then
        animalmenu.OnItemSelect = function(sender, item, index)
            EmoteMenuStart(AnimalTable[index], 'animals')
        end
    end

    if Config.SharedEmotesEnabled then
        sharemenu.OnItemSelect = function(sender, item, index)
            if ShareTable[index] ~= 'none' then
                local playerId, playerPed, playerCoord = lib.getClosestPlayer(GetEntityCoords(cache.ped), 3.0, false)
                if playerId then
                    local playerServerId = GetPlayerServerId(playerId)
                    TriggerServerEvent('ServerEmoteRequest', playerServerId, ShareTable[index])
                    lib.notify({ description = locale('sentrequestto', playerServerId) })
                else
                    lib.notify({ description = locale('nobodyclose') })
                end
            end
        end

        shareddancemenu.OnItemSelect = function(sender, item, index)
            local playerId, playerPed, playerCoord = lib.getClosestPlayer(GetEntityCoords(cache.ped), 3.0, false)
            if playerId then
                local playerServerId = GetPlayerServerId(playerId)
                TriggerServerEvent('ServerEmoteRequest', playerServerId, ShareTable[index], 'Dances')
                lib.notify({ description = locale('sentrequestto', playerServerId) })
            else
                lib.notify({ description = locale('nobodyclose') })
            end
        end
    end

    propmenu.OnItemSelect = function(sender, item, index)
        EmoteMenuStart(PropETable[index], 'props')
    end

    propmenu.OnListSelect = function(menu, item, itemIndex, listIndex)
        EmoteMenuStart(PropETable[itemIndex], 'props', item:IndexToItem(listIndex).Value)
    end

    submenu.OnItemSelect = function(sender, item, index)
        if Config.Search and EmoteTable[index] == locale('searchemotes') then
            EmoteMenuSearch(submenu)
        elseif EmoteTable[index] then
            EmoteMenuStart(EmoteTable[index], 'emotes')
        end
    end

    submenu.OnMenuClosed = function(menu)
        if not isSearching then
            StopPreviewAnimationOnPed()
        end
    end
end

if Config.Search then
    local ignoredCategories = {
        ['Walks'] = true,
        ['Expressions'] = true,
        ['Shared'] = not Config.SharedEmotesEnabled
    }

    function EmoteMenuSearch(lastMenu)
        StopPreviewAnimationOnPed()
        AddTextEntry('PM_NAME_CHALL', locale('searchinputtitle'))
        DisplayOnscreenKeyboard(1, 'PM_NAME_CHALL', '', '', '', '', '', 30)
        while UpdateOnscreenKeyboard() == 0 do
            DisableAllControlActions(0)
            Wait(100)
        end

        local input = GetOnscreenKeyboardResult()
        if input ~= nil then
            local results = {}
            for k, v in pairs(RP) do
                if not ignoredCategories[k] then
                    for a, b in pairs(v) do
                        if a:lower():find(input:lower()) or (b[3] ~= nil and b[3]:lower():find(input:lower())) then
                            results[#results + 1] = { table = k, name = a, data = b }
                        end
                    end
                end
            end

            if #results > 0 then
                isSearching = true

                local searchMenu = _menuPool:AddSubMenu(lastMenu, locale('searchmenudesc', #results, input), '', true, true)
                local sharedDanceMenu

                if Config.SharedEmotesEnabled then
                    sharedDanceMenu = _menuPool:AddSubMenu(searchMenu, locale('sharedanceemotes'), '', true, true)
                end

                table.sort(results, function(a, b) return a.name < b.name end)
                for k, v in pairs(results) do
                    local desc = ''
                    if v.table == 'Shared' then
                        local otheremotename = v.data[4]
                        if otheremotename == nil then
                            desc = '/nearby (~g~' .. v.name .. '~w~)'
                        else
                            desc = '/nearby (~g~' .. v.name .. '~w~) ' .. locale('makenearby', otheremotename)
                        end
                    else
                        desc = '/e (' .. v.name .. ')'
                    end

                    if v.data.AnimationOptions and v.data.AnimationOptions.PropTextureVariations then
                        searchMenu:AddItem(NativeUI.CreateListItem(v.data[3], v.data.AnimationOptions.PropTextureVariations, 1, desc))
                    else
                        searchMenu:AddItem(NativeUI.CreateItem(v.data[3], desc))
                    end

                    if v.table == 'Dances' and Config.SharedEmotesEnabled then
                        sharedDanceMenu:AddItem(NativeUI.CreateItem(v.data[3], ''))
                    end
                end

                searchMenu.OnMenuChanged = function(menu, newmenu, forward)
                    isSearching = false
                    PreviewAnimationOnPed()
                end

                searchMenu.OnIndexChange = function(menu, newindex)
                    local data = results[newindex]

                    ClearPedTaskPreview()
                    if data.table == 'Emotes' or data.table == 'Dances' then
                        EmoteMenuStartClone(data.name, data.table:lower())
                    elseif data.table == 'PropEmotes' then
                        EmoteMenuStartClone(data.name, 'props')
                    elseif data.table == 'AnimalEmotes' then
                        EmoteMenuStartClone(data.name, 'animals')
                    end
                end

                searchMenu.OnItemSelect = function(sender, item, index)
                    if results[index] == locale('sharedanceemotes') then return end
                    if results[index].table == 'Emotes' or results[index].table == 'Dances' then
                        EmoteMenuStart(results[index].name, results[index].table:lower())
                    elseif results[index].table == 'PropEmotes' then
                        EmoteMenuStart(results[index].name, 'props')
                    elseif results[index].table == 'AnimalEmotes' then
                        EmoteMenuStart(results[index].name, 'animals')
                    elseif results[index].table == 'Shared' then
                        local playerId, playerPed, playerCoord = lib.getClosestPlayer(GetEntityCoords(cache.ped), 3.0, false)
                        if playerId then
                            local playerServerId = GetPlayerServerId(playerId)
                            TriggerServerEvent('ServerEmoteRequest', playerServerId, results[index].name)
                            lib.notify({ description = locale('sentrequestto', playerServerId) })
                        else
                            lib.notify({ description = locale('nobodyclose') })
                        end
                    end
                end

                searchMenu.OnListSelect = function(menu, item, itemIndex, listIndex)
                    EmoteMenuStart(results[itemIndex].name, 'props', item:IndexToItem(listIndex).Value)
                end

                if Config.SharedEmotesEnabled then
                    if #sharedDanceMenu.Items > 0 then
                        table.insert(results, 1, locale('sharedanceemotes'))
                        sharedDanceMenu.OnItemSelect = function(sender, item, index)
                            if not LocalPlayer.state.canEmote then return end

                            local playerId, playerPed, playerCoord = lib.getClosestPlayer(GetEntityCoords(cache.ped), 3.0, false)
                            if playerId then
                                local playerServerId = GetPlayerServerId(playerId)
                                TriggerServerEvent('ServerEmoteRequest', playerServerId, results[index].name, 'Dances')
                                lib.notify({ description = locale('sentrequestto', playerServerId) })
                            else
                                lib.notify({ description = locale('nobodyclose') })
                            end
                        end
                    else
                        sharedDanceMenu:Clear()
                        searchMenu:RemoveItemAt(1)
                    end
                end

                searchMenu.OnMenuClosed = function()
                    searchMenu:Clear()
                    lastMenu:RemoveItemAt(#lastMenu.Items)
                    _menuPool:RefreshIndex()
                    results = {}
                end

                _menuPool:RefreshIndex()
                _menuPool:CloseAllMenus()
                searchMenu:Visible(true)
                PreviewAnimationOnPed()
            else
                lib.notify({ description = locale('searchnoresult', input) })
            end
        end
    end
end

function AddCancelEmote(menu)
    local newitem = NativeUI.CreateItem(locale('cancelemote'), locale('cancelemoteinfo'))
    menu:AddItem(newitem)
    newitem.Activated = function()
        EmoteCancel()
        DestroyAllProps()
    end
end

ShowPedPreview = function(menu)
    menu.OnItemSelect = function(sender, item, index)
        if (index == 1) then
            isSearching = false
            PreviewAnimationOnPed()
        elseif index == 4 then
            PreviewAnimationOnPed(true)
        end
    end
end

function AddWalkMenu(menu)
    local submenu = _menuPool:AddSubMenu(menu, locale('walkingstyles'), '', true, true)

    local walkreset = NativeUI.CreateItem(locale('normalreset'), locale('resetdef'))
    submenu:AddItem(walkreset)
    WalkTable[#WalkTable + 1] = locale('resetdef')

    local sortedWalks = {}
    for a, b in PairsByKeys(RP.Walks) do
        local x, label = table.unpack(b)
        if x == 'move_m@injured' then
            table.insert(sortedWalks, 1, {label = label or a, anim = x})
        else
            table.insert(sortedWalks, {label = label or a, anim = x})
        end
    end

    for _, walk in ipairs(sortedWalks) do
        submenu:AddItem(NativeUI.CreateItem(walk.label, '/walk (' .. string.lower(walk.label) .. ')'))
        WalkTable[#WalkTable + 1] = walk.anim
    end

    submenu.OnItemSelect = function(sender, item, index)
        if item == walkreset then
            ResetWalk()
            DeleteResourceKvp('walkstyle')
        else
            WalkMenuStart(WalkTable[index])
        end
    end
end

function AddFaceMenu(menu)
    local submenu = _menuPool:AddSubMenu(menu, locale('moods'), '', true, true)

    local facereset = NativeUI.CreateItem(locale('normalreset'), locale('resetdef'))
    submenu:AddItem(facereset)
    FaceTable[#FaceTable + 1] = ''

    for name, data in PairsByKeys(RP.Expressions) do
        local faceitem = NativeUI.CreateItem(data[2] or name, '')
        submenu:AddItem(faceitem)
        FaceTable[#FaceTable + 1] = name
    end

    submenu.OnMenuClosed = function(menu)
        StopPreviewAnimationOnPed()
    end

    submenu.OnIndexChange = function(menu, newindex)
        EmoteMenuStartClone(FaceTable[newindex], 'expression')
    end

    submenu.OnItemSelect = function(sender, item, index)
        if item ~= facereset then
            EmoteMenuStart(FaceTable[index], 'expression')
        else
            DeleteResourceKvp('expression')
            ClearFacialIdleAnimOverride(PlayerPedId())
        end
    end
end

function OpenEmoteMenu()
    if not kyg.canAction({ 'weapon' }) then return end
    if _menuPool:IsAnyMenuOpen() then
        _menuPool:CloseAllMenus()
    else
        mainMenu:Visible(true)
        ProcessMenu()
    end
end

AddEmoteMenu(mainMenu)
AddCancelEmote(mainMenu)
if Config.PreviewPed then
    ShowPedPreview(mainMenu)
end
if Config.WalkingStylesEnabled then
    AddWalkMenu(mainMenu)
end
if Config.ExpressionsEnabled then
    AddFaceMenu(mainMenu)
end

_menuPool:RefreshIndex()

local isMenuProcessing = false
function ProcessMenu()
    if isMenuProcessing then return end
    isMenuProcessing = true
    while _menuPool:IsAnyMenuOpen() do
        _menuPool:ProcessMenus()
        Wait(0)
    end
    isMenuProcessing = false
end

RegisterNetEvent('rp:Update', function(state)
    UpdateAvailable = state
    _menuPool:RefreshIndex()
end)

RegisterNetEvent('rp:RecieveMenu', function()
    OpenEmoteMenu()
end)

-- While ped is dead, don't show menus
CreateThread(function()
    while true do
        Wait(500)
        if IsEntityDead(PlayerPedId()) then
            _menuPool:CloseAllMenus()
        end
        if (IsPedSwimming(PlayerPedId()) or IsPedSwimmingUnderWater(PlayerPedId())) and not Config.AllowInWater then
            -- cancel emote, destroy props and close menu
            if IsInAnimation then
                EmoteCancel()
            end
            _menuPool:CloseAllMenus()
        end
    end
end)
