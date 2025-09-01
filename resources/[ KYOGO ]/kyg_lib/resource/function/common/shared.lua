local Charset, CharsetNumber, CharsetLetter = {}, {}, {}
for i = 48,  57 do
	table.insert(Charset, string.char(i))
	table.insert(CharsetNumber, string.char(i))
end for i = 65,  90 do
	table.insert(Charset, string.char(i))
	table.insert(CharsetLetter, string.char(i))
end for i = 97, 122 do
	table.insert(Charset, string.char(i))
	table.insert(CharsetLetter, string.char(i))
end

--- Get random string
---@param length number # Length of the string
---@return string
function kyg.getRandomString(length)
	math.randomseed(GetGameTimer())
	return length > 0 and kyg.getRandomString(length - 1) .. Charset[math.random(1, #Charset)] or ''
end

--- Get random letter
---@param length number # Length of the letter
---@return string
function kyg.getRandomLetter(length)
	math.randomseed(GetGameTimer())
	return length > 0 and kyg.getRandomLetter(length - 1) .. CharsetLetter[math.random(1, #CharsetLetter)] or ''
end

--- Get random number
---@param length number # Length of the number
---@return string
function kyg.getRandomNumber(length)
	math.randomseed(GetGameTimer())
	return length > 0 and kyg.getRandomNumber(length - 1) .. CharsetNumber[math.random(1, #CharsetNumber)] or ''
end

---@class kyg.cache
kyg.cache = {}

--- Set cache
---@param key string # Cache key
---@param value any # Cache value
function kyg.setCache(key, value)
	kyg.cache[key] = value
    TriggerEvent('kyg:onCache', key, value)
end exports('setCache', kyg.setCache)

--- Get cache
---@param key string # Cache key
---@return any
function kyg.getCache(key)
	return kyg.cache[key]
end exports('getCache', kyg.getCache)