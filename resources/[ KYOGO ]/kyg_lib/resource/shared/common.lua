IsServerSide = IsDuplicityVersion()
IsClientSide = not IsServerSide
InvokingResource = GetInvokingResource

exports('getCoreObject', function()
    return kyg
end)

exports('getCoreConfig', function()
    return Config
end)

---@class kyg
kyg = {}
kyg.ped = {}
kyg.util = {}
kyg.coord = {}
kyg.player = {}
kyg.vehicle = {}

if IsClientSide then
    kyg.plyId = PlayerId()
    kyg.plySvId = GetPlayerServerId(kyg.plyId)
    kyg.plyData = {}
end