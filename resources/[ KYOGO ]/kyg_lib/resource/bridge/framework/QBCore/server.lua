---@diagnostic disable: duplicate-set-field
if Config.Framework ~= 'qb' then return end

QBCore = exports['qb-core']:GetCoreObject()

AddEventHandler('QBCore:Server:PlayerLoaded', function(Player)
    kServer.Players[tostring(Player.PlayerData.source)] = {
        id = Player.PlayerData.citizenid,
        group = IsPlayerAceAllowed(Player.PlayerData.source, 'admin') and 'admin' or 'user',
        source = Player.PlayerData.source,
        identifier = Player.PlayerData.license,
        job = {
            name = Player.PlayerData.job.name,
            label = Player.PlayerData.job.label,
            grade = { id = Player.PlayerData.job.grade.level, name = Player.PlayerData.job.grade.name:lower(), label = Player.PlayerData.job.grade.name },
            salary = Player.PlayerData.job.payment,
            isBoss = Player.PlayerData.job.isboss or false,
            onDuty = Player.PlayerData.job.onduty or false
        },
        gang = {
            name = Player.PlayerData.gang.name,
            label = Player.PlayerData.gang.label,
            grade = { id = Player.PlayerData.gang.grade.level, name = Player.PlayerData.gang.grade.name:lower(), label = Player.PlayerData.gang.grade.name },
            isBoss = Player.PlayerData.gang.grade.isboss or false
        },
        detail = {
            firstName = Player.PlayerData.charinfo.firstname,
            lastName = Player.PlayerData.charinfo.lastname,
            fullname = ('%s %s'):format(Player.PlayerData.charinfo.firstname, Player.PlayerData.charinfo.lastname),
            dob = Player.PlayerData.charinfo.birthdate,
            height = Player.PlayerData.charinfo.height,
            sex = Player.PlayerData.charinfo.gender == 0 and 'm' or 'f',
            nationality = Player.PlayerData.charinfo.nationality,
            phone_number = Player.PlayerData.charinfo.phone or '00000000'
        },
        licenses = kyg.player.getIdentifiers(Player.PlayerData.source)
    }
end)

AddEventHandler('QBCore:Server:OnJobUpdate', function(Source, NewJob)
    if not kServer.Players[tostring(Source)] then return end
    kServer.Players[tostring(Source)].job = {
        name = NewJob.name,
        label = NewJob.label,
        grade = { id = NewJob.grade.level, name = NewJob.grade.name:lower(), label = NewJob.grade.name },
        salary = NewJob.payment,
        isBoss = NewJob.isboss or false,
        onDuty = NewJob.onduty or false
    }
end)

AddEventHandler('QBCore:Server:OnGangUpdate', function(Source, NewGang)
    if not kServer.Players[tostring(Source)] then return end
    kServer.Players[tostring(Source)].gang = {
        name = NewGang.name,
        label = NewGang.label,
        grade = { id = NewGang.grade.level, name = NewGang.grade.name:lower(), label = NewGang.grade.name },
        isBoss = NewGang.grade.isboss or false
    }
end)

AddEventHandler('QBCore:Server:OnPlayerUnload', function(playerId)
    kServer.Players[tostring(playerId)] = nil
end)

RegisterNetEvent('hospital:server:SetDeathStatus', function(deathStatus)
    if not source then return end
    Player(source).state:set('dead', deathStatus, true)
    Entity(GetPlayerPed(source)).state:set('dead', deathStatus, true)
end)

function kyogo.usableItem(name, cb)
    QBCore.Functions.CreateUseableItem(name, cb)
end

function kyogo.getPlayers(source)
    return QBCore.Functions.GetQBPlayers()
end

function kyogo.getPlyFromID(source)
    return QBCore.Functions.GetPlayer(source)
end

function kyogo.getPlyFromIdentifier(identifier)
    return QBCore.Functions.GetPlayerByCitizenId(identifier)
end

function kyogo.getAccountMoney(Player, name)
    return Player.Functions.GetMoney(name)
end

function kyogo.addAccountMoney(Player, name, amount, reason)
    Player.Functions.AddMoney(name, amount, reason)
end

function kyogo.removeAccountMoney(Player, name, amount, reason)
    Player.Functions.RemoveMoney(name, amount, reason)
end