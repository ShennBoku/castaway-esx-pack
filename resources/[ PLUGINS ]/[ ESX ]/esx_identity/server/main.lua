local playerIdentity = {}
local alreadyRegistered = {}
local multichar = ESX.GetConfig().Multichar

local function saveIdentityToDatabase(identifier, identity)
    MySQL.update.await('UPDATE users SET firstname = ?, lastname = ?, dateofbirth = ?, sex = ?, height = ? WHERE identifier = ?', { identity.firstName, identity.lastName, identity.dateOfBirth, identity.sex, identity.height, identifier })
end

local function checkDOBFormat(str)
    str = tostring(str)
    if not string.match(str, '(%d%d)/(%d%d)/(%d%d%d%d)') then
        return false
    end

    local d, m, y = string.match(str, '(%d+)/(%d+)/(%d+)')

    m = tonumber(m)
    d = tonumber(d)
    y = tonumber(y)

    if ((d <= 0) or (d > 31)) or ((m <= 0) or (m > 12)) or ((y <= Config.LowestYear) or (y > Config.HighestYear)) then
        return false
    elseif m == 4 or m == 6 or m == 9 or m == 11 then
        return d < 30
    elseif m == 2 then
        if y % 400 == 0 or (y % 100 ~= 0 and y % 4 == 0) then
            return d < 29
        else
            return d < 28
        end
    else
        return d < 31
    end
end

local function formatDate(str)
    local d, m, y = string.match(str, '(%d+)/(%d+)/(%d+)')
    local date = str

    if Config.DateFormat == "MM/DD/YYYY" then
        date = m .. "/" .. d .. "/" .. y
    elseif Config.DateFormat == "YYYY/MM/DD" then
        date = y .. "/" .. m .. "/" .. d
    end

    return date
end

local function checkAlphanumeric(str)
    return (string.match(str, "%W"))
end

local function checkForNumbers(str)
    return (string.match(str, "%d"))
end

local function checkNameFormat(name)
    if not checkAlphanumeric(name) and not checkForNumbers(name) then
        local stringLength = string.len(name)
        return stringLength > 0 and stringLength < Config.MaxNameLength
    end

    return false
end

local function checkSexFormat(sex)
    if not sex then
        return false
    end
    return sex == "m" or sex == "M" or sex == "f" or sex == "F"
end

local function checkHeightFormat(height)
    local numHeight = tonumber(height) or 0
    return numHeight >= Config.MinHeight and numHeight <= Config.MaxHeight
end

local function convertToLowerCase(str)
    return string.lower(str)
end

local function convertFirstLetterToUpper(str)
    return str:gsub("^%l", string.upper)
end

local function formatName(name)
    local loweredName = convertToLowerCase(name)
    return convertFirstLetterToUpper(loweredName)
end

ESX.RegisterServerCallback('esx_identity:registerIdentity', function(source, cb, data)
    local xPlayer = ESX.GetPlayerFromId(source)
    if not checkNameFormat(data.firstname) then
        TriggerClientEvent('esx:showNotification', source, TranslateCap('invalid_firstname_format'), "error")
        return cb(false)
    end
    if not checkNameFormat(data.lastname) then
        TriggerClientEvent('esx:showNotification', source, TranslateCap('invalid_lastname_format'), "error")
        return cb(false)
    end
    if not checkSexFormat(data.sex) then
        TriggerClientEvent('esx:showNotification', source, TranslateCap('invalid_sex_format'), "error")
        return cb(false)
    end
    if not checkDOBFormat(data.dateofbirth) then
        TriggerClientEvent('esx:showNotification', source, TranslateCap('invalid_dob_format'), "error")
        return cb(false)
    end
    if not checkHeightFormat(data.height) then
        TriggerClientEvent('esx:showNotification', source, TranslateCap('invalid_height_format'), "error")
        return cb(false)
    end
    if xPlayer then
        if alreadyRegistered[xPlayer.identifier] then
            xPlayer.showNotification(TranslateCap('already_registered'), "error")
            return cb(false)
        end

        playerIdentity[xPlayer.identifier] = {
            firstName = formatName(data.firstname),
            lastName = formatName(data.lastname),
            dateOfBirth = formatDate(data.dateofbirth),
            sex = data.sex,
            height = data.height
        }

        local currentIdentity = playerIdentity[xPlayer.identifier]

        xPlayer.setName(('%s %s'):format(currentIdentity.firstName, currentIdentity.lastName))
        xPlayer.set('firstName', currentIdentity.firstName)
        xPlayer.set('lastName', currentIdentity.lastName)
        xPlayer.set('dateofbirth', currentIdentity.dateOfBirth)
        xPlayer.set('sex', currentIdentity.sex)
        xPlayer.set('height', currentIdentity.height)
        TriggerClientEvent('esx_identity:setPlayerData', xPlayer.source, currentIdentity)
        saveIdentityToDatabase(xPlayer.identifier, currentIdentity)
        alreadyRegistered[xPlayer.identifier] = true
        playerIdentity[xPlayer.identifier] = nil
        return cb(true)
    end

    if not multichar then
        TriggerClientEvent("esx:showNotification", source, TranslateCap('data_incorrect'), "error")
        return cb(false)
    end

    local formattedFirstName = formatName(data.firstname)
    local formattedLastName = formatName(data.lastname)
    local formattedDate = formatDate(data.dateofbirth)

    data.firstname = formattedFirstName
    data.lastname = formattedLastName
    data.dateofbirth = formattedDate
    local Identity = {
        firstName = formattedFirstName,
        lastName = formattedLastName,
        dateOfBirth = formattedDate,
        sex = data.sex,
        height = data.height
    }

    TriggerEvent('esx_identity:completedRegistration', source, data)
    TriggerClientEvent('esx_identity:setPlayerData', source, Identity)
    cb(true)
end)