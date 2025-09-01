CreateThread(function()
    -- Population
    if Config.Population.Use then
        if not Config.Population.Ped.Enabled then SetPedPopulationBudget(0) end
        if not Config.Population.Vehicle.Enabled then SetVehiclePopulationBudget(0) end
        if Config.Population.DisableScenario.Enabled then
            for _ = 1, #Config.Population.DisableScenario.List do SetScenarioTypeEnabled(Config.Population.DisableScenario.List[_], false) end
            DisableVehicleDistantlights(true)
            SetRandomEventFlag(false)
        end
        SetDefaultVehicleNumberPlateTextPattern(-1, Config.Population.DefaultPlatePattern)
        if not Config.Population.Setting.WantedLevel then ClearPlayerWantedLevel(cache.playerId) SetMaxWantedLevel(0) end

        SetCreateRandomCops(Config.Population.Setting.RandomCops)
        SetCreateRandomCopsNotOnScenarios(Config.Population.Setting.RandomCops)
        SetCreateRandomCopsOnScenarios(Config.Population.Setting.RandomCops)
        SetGarbageTrucks(false)
        SetRandomBoats(Config.Population.Setting.RandomBoats)

        Config.Population.DefaultRelationship()
    end

    if ConfigCL.Disable.AimAssist then
        SetPlayerTargetingMode(3)
    end

    if ConfigCL.Disable.NPCDrops then
        local weaponPickups = { `PICKUP_WEAPON_CARBINERIFLE`, `PICKUP_WEAPON_PISTOL`, `PICKUP_WEAPON_PUMPSHOTGUN` }
        for i = 1, #weaponPickups do
            ToggleUsePickupsForPlayer(svar.playerId, weaponPickups[i], false)
        end
    end

    if ConfigCL.Disable.HealthRegeneration then
        SetPlayerHealthRechargeMultiplier(svar.playerId, 0.0)
    end

    ConfigCL.SetMapZoomDataLevel()
    Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), 'FE_THDR_GTAO', locale('GTAO_FE_THDR_GTAO'))
    Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), 'PM_SCR_MAP', locale('GTAO_PM_SCR_MAP'))
    Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), 'PM_SCR_GAM', locale('GTAO_PM_SCR_GAM'))
    Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), 'PM_PANE_LEAVE', locale('GTAO_PM_PANE_LEAVE'))
    Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), 'PM_PANE_QUIT', locale('GTAO_PM_PANE_QUIT'))
    Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), 'PM_SCR_INF', locale('GTAO_PM_SCR_INF'))
    Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), 'PM_SCR_STA', locale('GTAO_PM_SCR_STA'))
    Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), 'PM_SCR_SET', locale('GTAO_PM_SCR_SET'))
    Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), 'PM_SCR_GAL', locale('GTAO_PM_SCR_GAL'))
    Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), 'PM_SCR_RPL', locale('GTAO_PM_SCR_RPL'))
    Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), 'PM_PANE_CFX', locale('GTAO_PM_PANE_CFX'))

    local function discordPresence()
        if ConfigCL.DiscordPresence.AppId == '0' then return end
        local dt = kyg.player.total()
        SetDiscordAppId(ConfigCL.DiscordPresence.AppId)
        SetRichPresence(tostring(ConfigCL.DiscordPresence.SetRichPresence(svar.playerLoaded, dt)))
        if ConfigCL.DiscordPresence.Asset.Large[2] ~= 'ASSET_TEXT' then
            SetDiscordRichPresenceAsset(ConfigCL.DiscordPresence.Asset.Large[1])
            SetDiscordRichPresenceAssetText(ConfigCL.DiscordPresence.Asset.Large[2])
        end
        if ConfigCL.DiscordPresence.Asset.Small[2] ~= 'ASSET_TEXT' then
            SetDiscordRichPresenceAssetSmall(ConfigCL.DiscordPresence.Asset.Small[1])
            SetDiscordRichPresenceAssetSmallText(ConfigCL.DiscordPresence.Asset.Small[2])
        end
        for i = 1, #ConfigCL.DiscordPresence.Action do
            SetDiscordRichPresenceAction(i - 1, ConfigCL.DiscordPresence.Action[i][1], ConfigCL.DiscordPresence.Action[i][2])
        end
    end exports('updateDiscordPresence', discordPresence)

    if ConfigCL.DiscordPresence.AppId ~= '0' then while ConfigCL.DiscordPresence.AppId ~= '0' do
        discordPresence()
        Wait(ConfigCL.DiscordPresence.Interval * 1000)
    end end
end)