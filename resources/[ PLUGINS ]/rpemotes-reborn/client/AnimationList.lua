-- ALL custom animations added to this repository were added with express permission from the creators and do not contain any paid content --
-- If an emote does not work, you may be on an older gamebuild --
-- To get a higher gamebuild, see ReadMe on github repository --

RP = {}
local CRP = {}

RP.Expressions, CRP.Expressions = lib.load('client.animation.Expressions')
RP.Walks, CRP.Walks = lib.load('client.animation.Walks')
RP.Shared, CRP.Shared = lib.load('client.animation.Shared')
RP.Dances, CRP.Dances = lib.load('client.animation.Dances')
RP.AnimalEmotes, CRP.AnimalEmotes = lib.load('client.animation.Animals')
RP.Exits, CRP.Exits = lib.load('client.animation.Exits')
RP.Emotes, CRP.Emotes = lib.load('client.animation.Emotes')
RP.PropEmotes, CRP.PropEmotes = lib.load('client.animation.Props')

-- Combine all emotes into one table
for arrayName, array in pairs(CRP) do
    if RP[arrayName] then
        lib.print.warn('Loading custom ' .. arrayName .. ' emotes..')
        for emoteName, emoteData in pairs(array) do
            if not (arrayName == 'Expressions' or arrayName == 'Walks') then
                if arrayName == 'Shared' then
                    emoteName = 'zs_' .. emoteName
                    emoteData[4] = 'zs_' .. emoteData[4]
                elseif arrayName == 'Dances' then
                    emoteName = 'zd_' .. emoteName
                elseif arrayName == 'AnimalEmotes' then
                    emoteName = 'za_' .. emoteName
                elseif arrayName == 'Exits' then
                    emoteName = 'zx_' .. emoteName
                elseif arrayName == 'Emotes' then
                    emoteName = 'ze_' .. emoteName
                elseif arrayName == 'PropEmotes' then
                    emoteName = 'zp_' .. emoteName
                else
                    emoteName = 'z_' .. emoteName
                end
            end
            
            if RP[arrayName][emoteName] then
                lib.print.error('Failed to load custom ' .. arrayName .. ' emotes, ' .. emoteName .. ' already exists!')
            else
                lib.print.info('Loaded custom ' .. arrayName .. ' emote: ' .. emoteName)
                emoteData.isAddonsEmote = true
                RP[arrayName][emoteName] = emoteData
            end

            :: continueScanAndPut ::
        end
    else
        lib.print.error('Failed to load custom ' .. arrayName .. ' emotes, ' .. arrayName .. ' does not exist!')
    end
    CRP[arrayName] = nil
end