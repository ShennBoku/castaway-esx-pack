if IsClientSide then
end

if IsServerSide then
    -- General
    lib.callback.register('kyg:getUnixTime', function(source) return os.time() end)
    lib.callback.register('kyg:unixToDate', function(source, unix, format) return kyg.util.unixToDate(unix, format) end)
end