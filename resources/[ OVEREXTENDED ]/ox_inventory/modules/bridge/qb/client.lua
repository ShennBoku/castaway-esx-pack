local Weapon = require 'modules.weapon.client'

---@diagnostic disable-next-line: duplicate-set-field
function client.setPlayerStatus(values)
	for name, value in pairs(values) do
		if value > 0 then TriggerEvent('esx_status:add', name, value) else TriggerEvent('esx_status:remove', name, -value) end
	end
end

RegisterNetEvent('QBCore:Client:OnPlayerUnload', client.onLogout)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(data)
    print('ox_inventory -> QBCore:Player:SetPlayerData -> ' .. tostring(GetInvokingResource()))
    -- if not PlayerData.loaded or GetInvokingResource() ~= 'qb-core' then return end
    if not PlayerData.loaded then return end -- temporary, checking invoking resource first

    local groups = PlayerData.groups
    if not groups[data.job.name] or not groups[data.gang.name] or groups[data.job.name] ~= data.job.grade.level or groups[data.gang.name] ~= data.gang.grade.level then
		PlayerData.groups = {
			[data.job.name] = data.job.grade.level,
			[data.gang.name] = data.gang.grade.level
		}
		OnPlayerData('groups', PlayerData.groups)
	end

    if (data.metadata.isdead or data.metadata.inlaststand) ~= PlayerData.dead then
		PlayerData.dead = data.metadata.isdead or data.metadata.inlaststand
		OnPlayerData('dead', PlayerData.dead)
	end

    if data.metadata.ishandcuffed ~= PlayerData.cuffed then
        PlayerData.cuffed = data.metadata.ishandcuffed
        if PlayerData.cuffed then Weapon.Disarm() end
        LocalPlayer.state:set('invBusy', PlayerData.cuffed, true)
    end
end)