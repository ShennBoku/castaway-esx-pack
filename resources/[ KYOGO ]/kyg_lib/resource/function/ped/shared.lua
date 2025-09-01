--- Get Ped Information by Model
---@param ped number | nil if nil, will use cache.ped
---@param specified string | nil if nil, will return all information
---@return any # string | number | { category: string, model: string, gender = 'male/female', sex = 0/1/-1 }
function kyg.ped.info(ped, specified)
    ped = ped or (IsServerSide and (source and GetPlayerPed(source) or nil) or cache.ped)
    local pedInfo = ped and Config.Peds.Reg[GetEntityModel(ped)] or { category = 'unlisted', model = 'mp_m_freemode_01', gender = 'unisex', sex = -1 }
    if not pedInfo then pedInfo = { category = 'unlisted', model = 'mp_m_freemode_01', gender = 'unisex', sex = -1 } end
    return specified and pedInfo[specified] or pedInfo
end