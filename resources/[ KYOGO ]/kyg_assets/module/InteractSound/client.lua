local function playInteractSound(soundFile, soundVolume)
    SendNUIMessage({ action = 'interact-sound', interact = soundFile, volume = soundVolume or 0.3 })
end

exports('playInteractSound', playInteractSound)

------
-- RegisterNetEvent InteractSound_CL:Sound:PlayOnOne
--
-- @param soundFile    - The name of the soundfile within the client/html/sounds/ folder.
--                     - Can also specify a folder/sound file.
-- @param soundVolume  - The volume at which the soundFile should be played. Nil or don't
--                     - provide it for the default of standardVolumeOutput. Should be between
--                     - 0.1 to 1.0.
--
-- Starts playing a sound locally on a single client.
------
RegisterNetEvent('InteractSound_CL:PlayOnOne')
AddEventHandler('InteractSound_CL:PlayOnOne', playInteractSound)

------
-- RegisterNetEvent InteractSound_CL:Sound:PlayOnAll
--
-- @param soundFile    - The name of the soundfile within the client/html/sounds/ folder.
--                     - Can also specify a folder/sound file.
-- @param soundVolume  - The volume at which the soundFile should be played. Nil or don't
--                     - provide it for the default of standardVolumeOutput. Should be between
--                     - 0.1 to 1.0.
--
-- Starts playing a sound on all clients who are online in the server.
------
RegisterNetEvent('InteractSound_CL:PlayOnAll')
AddEventHandler('InteractSound_CL:PlayOnAll', playInteractSound)

------
-- RegisterNetEvent InteractSound_CL:Sound:PlayWithinDistance
--
-- @param playOnEntity    - The entity network id (will be converted from net id to entity on client)
--                        - of the entity for which the max distance is to be drawn from.
-- @param maxDistance     - The maximum float distance (client uses Vdist) to allow the player to
--                        - hear the soundFile being played.
-- @param soundFile       - The name of the soundfile within the client/html/sounds/ folder.
--                        - Can also specify a folder/sound file.
-- @param soundVolume     - The volume at which the soundFile should be played. Nil or don't
--                        - provide it for the default of standardVolumeOutput. Should be between
--                        - 0.1 to 1.0.
--
-- Starts playing a sound on a client if the client is within the specificed maxDistance from the playOnEntity.
-- @TODO Change sound volume based on the distance the player is away from the playOnEntity.
------
RegisterNetEvent('InteractSound_CL:PlayWithinDistance')
AddEventHandler('InteractSound_CL:PlayWithinDistance', function(otherPlayerCoords, maxDistance, soundFile, soundVolume)
    local myCoords = GetEntityCoords(PlayerPedId())
    local distance = #(myCoords - otherPlayerCoords)

    if distance < maxDistance then
        playInteractSound(soundFile, soundVolume)
    end
end)