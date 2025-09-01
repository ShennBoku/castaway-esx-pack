GetCharacters = function(source,data,slots)
	local characters = {}

	local license = ESX.GetIdentifier(source)
	local id = Config.Prefix..'%:'..license
	local data = MySQL.query.await('SELECT * FROM users WHERE identifier LIKE ?', {'%'..id..'%'})
	if data then
		for k,v in pairs(data) do
			local job, grade = v.job or 'unemployed', tostring(v.job_grade)
			if ESX.Jobs[job] and ESX.Jobs[job].grades then
				if job ~= 'unemployed' then grade = ESX.Jobs[job].grades[grade] and ESX.Jobs[job].grades[grade].label or ESX.Jobs[job].grades[tonumber(grade)] and ESX.Jobs[job].grades[tonumber(grade)].label else grade = '' end
				job = ESX.Jobs[job].label
			end
			local accounts = json.decode(v.accounts)
			local id = tonumber(string.sub(v.identifier, #Config.Prefix+1, string.find(v.identifier, ':')-1))
			local firstname = v.firstname or 'No name'
			local lastname = v.lastname or 'No Lastname'
			if not characters[id] then
				characters[id] = {
					slot = id,
					identifier = v.identifier,
					name = firstname..' '..lastname,
					job = job or 'Unemployed',
					grade = grade or 'No grade',
					dateofbirth = v.dateofbirth or '',
					bank = accounts.bank,
					money = accounts.money,
					skin = v.skin and json.decode(v.skin or '[]') or {},
					sex = v.sex,
					position = v.position and v.position ~= '' and json.decode(v.position) or vec3(280.03,-584.29,43.29),
					extras = GetExtras(v.identifier,v.group)
				}
			end
		end
	end
	return {characters = characters , slots = slots}
end

DeleteCharacter = function(source,slot)
	local identifier = Config.Prefix..'%:'..ESX.GetIdentifier(source)
	local data = MySQL.query.await('SELECT * FROM users WHERE identifier LIKE ?', {'%'..identifier..'%'})
	for k,v in pairs(data) do
		local id = tonumber(string.sub(v.identifier, #Config.Prefix+1, string.find(v.identifier, ':')-1))
		if id == slot then
			MySQL.query.await('DELETE FROM `users` WHERE `identifier` = ?', {v.identifier})
			break
		end
	end
	return true
end

LoadPlayer = function(source)
	local source = source
	local ts = 0
	while not ESX.GetPlayerFromId(source) and ts < 1000 do ts += 1 Wait(0) end
	local ply = Player(source).state
	local identifier = ESX.GetPlayerFromId(source).identifier
	if identifier then
		ply:set('identifier',ESX.GetPlayerFromId(source).identifier,true)
	end
	return true
end

Login = function(source,data,new)
	local source = source
	TriggerEvent('esx:onPlayerJoined', source, Config.Prefix..data, new or nil)
	LoadPlayer(source)
	if new then GiveStarterItems(source) end
	return true
end

GetExtras = function(id,group)
	local status = GlobalState.PlayerStates or {}
	local admin = group ~= nil and group ~= 'user'
	if admin then if not status[id] then status[id] = {} end status[id]['admin'] = true end
	return status[id] or {}
end

UpdateSlot = function(src,id,slot)
	local slots = json.decode(GetResourceKvpString("char_slots") or '[]') or {}
	local license = GetIdentifiers(id)
	if license == nil then return end
	slots[license] = tonumber(slot) or Config.Slots
	SetResourceKvp('char_slots',json.encode(slots))
	return true
end

ESX.RegisterCommand(Config.commandslot, 'admin', function(xPlayer, args, showError)
	UpdateSlot(xPlayer.source,args[1],args[2])
end, false)

GlobalState.PlayerStates = json.decode(GetResourceKvpString("char_status") or '[]') or {}

GiveStarterItems = function(source)
	local starter = json.decode(GetResourceKvpString("starteritems") or '[]') or {} -- anti exploit
	Citizen.CreateThreadNow(function()
		local src = source
		local xPlayer = ESX.GetPlayerFromId(src)
		if starter[xPlayer.identifier] then return end
		for _, v in pairs(Config.ESXStarterItem) do
			xPlayer.addInventoryItem(v.item,v.amount)
		end
		starter[xPlayer.identifier] = true
		SetResourceKvp('starteritems',json.encode(starter))
	end)
	Wait(2000)
end