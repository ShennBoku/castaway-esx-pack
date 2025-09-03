---@diagnostic disable: duplicate-set-field
if Config.Framework ~= 'esx' then return end

ESX = exports['es_extended']:getSharedObject()

AddEventHandler('esx:playerLoaded', function(playerId, xPlayer)
    kServer.Players[tostring(playerId)] = {
        id = xPlayer.ssn,
        group = xPlayer.group,
        source = playerId,
        identifier = xPlayer.identifier,
        job = {
            name = xPlayer.job.name,
            label = xPlayer.job.label,
            grade = { id = xPlayer.job.grade, name = xPlayer.job.grade_name, label = xPlayer.job.grade_label },
            salary = xPlayer.job.grade_salary,
            isBoss = xPlayer.job.grade_isBoss or false,
            onDuty = xPlayer.job.onDuty or false
        },
        gang = {
            name = 'none',
            label = 'None',
            grade = { id = 0, name = 'none', label = 'None' },
            isBoss = false
        },
        detail = {
            firstName = xPlayer.variables.firstName,
            lastName = xPlayer.variables.lastName,
            fullname = xPlayer.name,
            dob = xPlayer.variables.dateofbirth,
            height = xPlayer.variables.height,
            sex = xPlayer.variables.sex:lower(),
            nationality = 'none',
            phone_number = '00000000'
        },
        licenses = kyg.player.getIdentifiers(playerId)
    }
end)

AddEventHandler('esx:setJob', function(playerId, newJob, lastJob)
    if not kServer.Players[tostring(playerId)] then return end
    kServer.Players[tostring(playerId)].job = {
        name = newJob.name,
        label = newJob.label,
        grade = { id = newJob.grade, name = newJob.grade_name, label = newJob.grade_label },
        salary = newJob.grade_salary,
        isBoss = newJob.grade_isBoss or false,
        onDuty = newJob.onDuty or false
    }
end)

AddEventHandler('esx:setGroup', function(playerId, newGroup, lastGroup)
    if not kServer.Players[tostring(playerId)] then return end
    kServer.Players[tostring(playerId)].group = newGroup
end)

AddEventHandler('esx:playerDropped', function(playerId)
    kServer.Players[tostring(playerId)] = nil
end)

function kyogo.usableItem(name, cb)
    ESX.RegisterUsableItem(name, cb)
end

function kyogo.getPlayers()
    return ESX.GetExtendedPlayers()
end

function kyogo.getPlyFromID(source)
    return ESX.GetPlayerFromId(source)
end

function kyogo.getPlyFromIdentifier(identifier)
    return ESX.GetPlayerFromIdentifier(identifier)
end

function kyogo.getAccountMoney(xPlayer, name)
    local moneyData = xPlayer.getAccounts()
    return moneyData[name].money
end

function kyogo.addAccountMoney(xPlayer, name, amount, reason)
    xPlayer.addAccountMoney(name, amount, reason)
end

function kyogo.removeAccountMoney(xPlayer, name, amount, reason)
    xPlayer.removeAccountMoney(name, amount, reason)
end