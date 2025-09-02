CreateThread(function()
    -- :: Start Player Target
    exports.ox_target:addGlobalPlayer({
        {
            label = 'Carry',
            icon = 'fas fa-child-reaching',
            distance = 1.5,
            canInteract = function(entity, distance, coords, name, bone)
                return kyg.canAction(nil, { 'vehicle' }) and IsPedOnFoot(entity)
            end,
            openMenu = 'kyg_menu:carryTarget'
        }, {
            label = 'Escort',
            icon = 'fas fa-people-pulling',
            distance = 1.5,
            groups = { ['police'] = 0, ['ambulance'] = 0 },
            canInteract = function(entity, distance, coords, name, bone)
                return kyg.canAction(nil, { 'vehicle' }) and IsPedOnFoot(entity)
            end,
            event = 'kyg_escort:start'
        }
    })

    exports.ox_target:addGlobalOption({
        {
            label = 'Carry 1',
            icon = 'fas fa-child-reaching',
            distance = 1.5,
            canInteract = function(entity, distance, coords, name, bone)
                return kyg.canAction(nil, { 'vehicle' }) and IsPedOnFoot(entity)
            end,
            menuName = 'kyg_menu:carryTarget',
            event = 'kyg_carry:start',
            carryType = 'normal1'
        }, {
            label = 'Carry 2',
            icon = 'fas fa-child-reaching',
            distance = 1.5,
            canInteract = function(entity, distance, coords, name, bone)
                return kyg.canAction(nil, { 'vehicle' }) and IsPedOnFoot(entity)
            end,
            menuName = 'kyg_menu:carryTarget',
            event = 'kyg_carry:start',
            carryType = 'normal2'
        }, {
            label = 'Carry 3',
            icon = 'fas fa-child-reaching',
            distance = 1.5,
            canInteract = function(entity, distance, coords, name, bone)
                return kyg.canAction(nil, { 'vehicle' }) and IsPedOnFoot(entity)
            end,
            menuName = 'kyg_menu:carryTarget',
            event = 'kyg_carry:start',
            carryType = 'pback1'
        }, {
            label = 'Carry 4',
            icon = 'fas fa-child-reaching',
            distance = 1.5,
            canInteract = function(entity, distance, coords, name, bone)
                return kyg.canAction(nil, { 'vehicle' }) and IsPedOnFoot(entity)
            end,
            menuName = 'kyg_menu:carryTarget',
            event = 'kyg_carry:start',
            carryType = 'pback2'
        }, {
            label = 'Carry Kid 1',
            icon = 'fas fa-child-reaching',
            distance = 1.5,
            canInteract = function(entity, distance, coords, name, bone)
                return kyg.canAction(nil, { 'vehicle' }) and IsPedOnFoot(entity)
            end,
            menuName = 'kyg_menu:carryTarget',
            event = 'kyg_carry:start',
            carryType = 'kid1'
        }, {
            label = 'Carry Kid 2',
            icon = 'fas fa-child-reaching',
            distance = 1.5,
            canInteract = function(entity, distance, coords, name, bone)
                return kyg.canAction(nil, { 'vehicle' }) and IsPedOnFoot(entity)
            end,
            menuName = 'kyg_menu:carryTarget',
            event = 'kyg_carry:start',
            carryType = 'kid2'
        }
    })
    -- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;



    -- :: Start Vehicle Target
    -- exports.ox_target:addGlobalVehicle({})
    -- exports.ox_target:addGlobalOption({})
    -- ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
end)