local RSGCore = exports['rsg-core']:GetCoreObject()

-- -- if Config['CoreSettings']["ASCore"]["Version"] == "new" then
--     CoreName = Config['CoreSettings']["ASCore"]["Export"]
-- else
--     Citizen.CreateThread(function()
--         while true do
--             Citizen.Wait(10)
--             if CoreName == nil then
--                 TriggerEvent(Config['CoreSettings']["ASCore"]["Trigger"], function(obj) CoreName = obj end)
--                 Citizen.Wait(200)
--             end
--         end
--     end)
-- end

local RSGCore = exports['rsg-core']:GetCoreObject()
local player = false
local called = false
local x,y,z = nil
local TargetC = nil
local IsSpectating = false
local InGodMode = false
local InNoClipMode = false
local SuperJumpActive = false
local drawable_names = {"face", "masks", "hair", "torsos", "legs", "bags", "shoes", "neck", "undershirts", "vest", "decals", "jackets"}
local firsttime = true

RegisterKeyMapping('+openmenu', 'Open Admin Menu', 'keyboard', 'F6')

RegisterCommand("menu", function()
    RSGCore.Functions.TriggerCallback('quotus-admin:CheckPerms', function(result)
      if(result == true) then
        SendNUIMessage({
            type = "open",
    
        })
        SetNuiFocus(true, true)
    else
        return print('No perms.')
    end
    end)
 
end)

function GetDrawablesTotal()
    drawables = {}
    for i = 0, #drawable_names - 1 do
        drawables[i] = {drawable_names[i+1], GetNumberOfPedDrawableVariations(player, i)}
    end
    return drawables
end

function ToggleClothingToLoadPed()
    local ped = PlayerPedId()
    local drawables = GetDrawablesTotal()

    for num, _ in pairs(drawables) do
        if drawables[num][2] > 1 then
            component = tonumber(num)
            SetPedComponentVariation(ped, component, 1, 0, 0)
            Wait(250)
            SetPedComponentVariation(ped, component, 0, 0, 0)
            break
        end
    end
end

function SetSkin(model, setDefault)
    SetEntityInvincible(PlayerPedId(),true)
    if IsModelInCdimage(model) and IsModelValid(model) then
        RequestModel(model)
        while (not HasModelLoaded(model)) do
            Citizen.Wait(0)
        end
        SetPlayerModel(PlayerId(), model)
        SetModelAsNoLongerNeeded(model)
        player = PlayerPedId()
        FreezePedCameraRotation(player, true)
        SetPedMaxHealth(player, 200)
        ToggleClothingToLoadPed()
        SetPedDefaultComponentVariation(player)
        if setDefault and model ~= nil and (model == `mp_f_freemode_01` or model == `mp_m_freemode_01`) then
            SetPedHeadBlendData(player, 0, 0, 0, 15, 0, 0, 0, 1.0, 0, false)
            SetPedComponentVariation(player, 11, 0, 1, 0)
            SetPedComponentVariation(player, 8, 0, 1, 0)
            SetPedComponentVariation(player, 6, 1, 2, 0)
            SetPedHeadOverlayColor(player, 1, 1, 0, 0)
            SetPedHeadOverlayColor(player, 2, 1, 0, 0)
            SetPedHeadOverlayColor(player, 4, 2, 0, 0)
            SetPedHeadOverlayColor(player, 5, 2, 0, 0)
            SetPedHeadOverlayColor(player, 8, 2, 0, 0)
            SetPedHeadOverlayColor(player, 10, 1, 0, 0)
            SetPedHeadOverlay(player, 1, 0, 0.0)
            SetPedHairColor(player, 1, 1)
        end
    end
    SetEntityInvincible(PlayerPedId(),false)
end


RegisterNetEvent('asgard-adminmenu:client:OpenStable')
AddEventHandler('asgard-adminmenu:client:OpenStable', function()
    TriggerEvent("rsg-horses:client:menu")
end)

RegisterNetEvent('asgard-adminmenu:client:ChangeModel')
AddEventHandler('asgard-adminmenu:client:ChangeModel', function(model)
    local hashedModel = GetHashKey(model)
    if not IsModelInCdimage(hashedModel) or not IsModelValid(hashedModel) then return end
    SetSkin(hashedModel, true)
end)

RegisterNetEvent('asgard-adminmenu:client:OpenClothingMenu')
AddEventHandler('asgard-adminmenu:client:OpenClothingMenu', function(pid)
    TriggerServerEvent("rsg-clothes:LoadClothes", 2)
end)

RegisterNetEvent('asgard-adminmenu:client:OpenBarberMenu')
AddEventHandler('asgard-adminmenu:client:OpenBarberMenu', function(pid)
    OpenBarber()
end)

RegisterNetEvent('asgard-adminmenu:client:FixVehicle')
AddEventHandler('asgard-adminmenu:client:FixVehicle', function()
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped, true) then
        local veh = GetVehiclePedIsIn(ped, false)
        TriggerEvent('DoLongHudText', 'Your vehicle has been repaired', 1)
        SetVehicleFixed(veh)
        SetVehicleDirtLevel(veh, 0.0)
    end
end)



RegisterNetEvent('asgard-adminmenu:client:RemoveStress')
AddEventHandler('asgard-adminmenu:client:RemoveStress', function()
    RemoveStress()
end)


RegisterNetEvent('asgard-adminmenu:client:Csay')
AddEventHandler('asgard-adminmenu:client:Csay', function(msg)
    TriggerServerEvent('asgard-adminmenu:server:Csay',msg)
end)

function GetPlayers()
    local players = {}

    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then
            players[#players+1]= i
        end
    end

    return players
end

RegisterNetEvent('asgard-adminmenu:client:RevivePlayer')
AddEventHandler('asgard-adminmenu:client:RevivePlayer', function(pid)
    Revive(pid)
end)

RegisterNetEvent('asgard-adminmenu:client:SpawnHorse')
AddEventHandler('asgard-adminmenu:client:SpawnHorse', function(HorseName)
    local src = source
    TriggerEvent('RSGCore:Command:SpawnHorseEv', src, HorseName)
end)


RegisterNetEvent('asgard-adminmenu:client:SpawnItem')
AddEventHandler('asgard-adminmenu:client:SpawnItem', function(name , amount)
    TriggerServerEvent('asgard-adminmenu:server:SpawnItem' , name , amount)
end)


RegisterNetEvent('asgard-adminmenu:client:SetTimeWeather')
AddEventHandler('asgard-adminmenu:client:SetTimeWeather', function(weather, time)
    if time ~= nil then
        TimeEvent(time)
    end
    if weather ~= nil then
        WeatherEvent(weather)
    end
end)


RegisterNetEvent('RSGCore:Command:SpawnHorseEv', function(HorseName)
    local ped = PlayerPedId()
    local hash = GetHashKey(HorseName)
    if not IsModelInCdimage(hash) then return end
    RequestModel(hash)
    while not HasModelLoaded(hash) do
        Wait(0)
    end

    local vehicle = CreatePed(hash, GetEntityCoords(ped), GetEntityHeading(ped), true, false)
    TaskWarpPedIntoVehicle(ped, vehicle, -1) -- Spawn the player onto "drivers" seat
    Citizen.InvokeNative(0x283978A15512B2FE, vehicle, true) -- Set random outfit variation / skin
    NetworkSetEntityInvisibleToNetwork(vehicle, true)
end)


RegisterNetEvent('asgard-adminmenu:client:GodModeToggle')
AddEventHandler('asgard-adminmenu:client:GodModeToggle', function()
    if InGodMode then
        SetPlayerInvincible(PlayerId(), false)
        InGodMode = false
    else
        SetPlayerInvincible(PlayerId(), true)
        InGodMode = true
    end
end)


RegisterNetEvent('asgard-adminmenu:client:NoclipToggle')
AddEventHandler('asgard-adminmenu:client:NoclipToggle', function()
    if InNoClipMode then
        TriggerEvent("admin:client:ToggleNoClip", false)
        InNoClipMode = false
    else
        TriggerEvent("admin:client:ToggleNoClip", true)
        InNoClipMode = true
    end
end)


RegisterNetEvent('asgard-adminmenu:client:SuperJump')
AddEventHandler('asgard-adminmenu:client:SuperJump', function()
    if SuperJumpActive then
        SuperJumpActive = false
    else
        SuperJumpActive = true
    end
end)

function Split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

RegisterNetEvent('asgard-adminmenu:client:TeleportToCoords')
AddEventHandler('asgard-adminmenu:client:TeleportToCoords', function(coords)
    coordssplit = Split(coords , ',')
    local pos = vector3(tonumber(coordssplit[1]),tonumber(coordssplit[2]),tonumber(coordssplit[3]))
    local ped = PlayerPedId()

    Citizen.CreateThread(function()
        RequestCollisionAtCoord(pos)
        SetEntityCoords(ped, pos)
        FreezeEntityPosition(ped, true)
        SetPlayerInvincible(PlayerId(), true)

        local startedCollision = GetGameTimer()

        while not HasCollisionLoadedAroundEntity(ped) do
            if GetGameTimer() - startedCollision > 5000 then break end
            Citizen.Wait(0)
        end

        FreezeEntityPosition(ped, false)
        SetPlayerInvincible(PlayerId(), false)
    end)
end)

RegisterNetEvent('asgard-adminmenu:client:TeleportToMarker')
AddEventHandler('asgard-adminmenu:client:TeleportToMarker', function(coords)
    local PlayerPedId = PlayerPedId
    local GetEntityCoords = GetEntityCoords
    local GetGroundZAndNormalFor_3dCoord = GetGroundZAndNormalFor_3dCoord
    local ped, coords = PlayerPedId(), GetWaypointCoords()
    local x, y, groundZ, Z_START = coords['x'], coords['y'], 850.0, 950.0
    local found = false

    for i = Z_START, 0, -25.0 do
        local z = i
        if (i % 2) ~= 0 then
            z = Z_START - i
        end
        Citizen.InvokeNative(0x387AD749E3B69B70, x, y, z, x, y, z, 50.0, 0)
        local curTime = GetGameTimer()
        while Citizen.InvokeNative(0xCF45DF50C7775F2A) do
            if GetGameTimer() - curTime > 1000 then
                break
            end
            Wait(0)
        end
        Citizen.InvokeNative(0x5A8B01199C3E79C3)
        SetEntityCoords(ped, x, y, z - 1000)
        while not HasCollisionLoadedAroundEntity(ped) do
            RequestCollisionAtCoord(x, y, z)
            if GetGameTimer() - curTime > 1000 then
                break
            end
            Wait(0)
        end
        -- Get ground coord. As mentioned in the natives, this only works if the client is in render distance.
        --found, groundZ = GetGroundZFor_3dCoord(x, y, z, false)
        found, groundZ = GetGroundZAndNormalFor_3dCoord(x, y, z)
        if found then
            Wait(0)
            SetEntityCoords(ped, x, y, groundZ)
            break
        end
        Wait(0)
    end

    Citizen.CreateThread(function()
        RequestCollisionAtCoord(pos)
        SetEntityCoords(ped, x, y, groundZ)
        FreezeEntityPosition(ped, true)
        SetPlayerInvincible(PlayerId(), true)

        local startedCollision = GetGameTimer()

        while not HasCollisionLoadedAroundEntity(ped) do
            if GetGameTimer() - startedCollision > 5000 then break end
            Citizen.Wait(0)
        end

        FreezeEntityPosition(ped, false)
        SetPlayerInvincible(PlayerId(), false)
    end)
end)


RegisterNetEvent("asgard-adminmenu:client:sendCoords")
AddEventHandler("asgard-adminmenu:client:sendCoords", function(coords)
    TargetC = coords
end)

RegisterNetEvent("asgard-adminmenu:client:Spectate")
AddEventHandler("asgard-adminmenu:client:Spectate", function(target)
    if not IsSpectating then
        TriggerServerEvent('asgard-adminmenu:server:GetCoords', target, IsSpectating)
        IsSpectating = true
    else
        TriggerServerEvent('asgard-adminmenu:server:GetCoords', target, IsSpectating)
        IsSpectating = false
    end
end)

RegisterNetEvent('asgard-adminmenu:client:attach')
AddEventHandler('asgard-adminmenu:client:attach', function(tSrc, toggle)
    local ped = PlayerPedId()
    local PlayerPos = GetEntityCoords(ped, false)
    if called == false then
        x,y,z = PlayerPos.x, PlayerPos.y, PlayerPos.z
    end
    Citizen.CreateThread(function()
        if toggle == true then
            called = true
            Citizen.Wait(300)
            if TargetC ~= nil then
                SetEntityVisible(ped, false)
                SetPlayerInvincible(ped, true)
                SetEntityCollision(ped,false,false)
                SetEntityCoordsNoOffset(PlayerPedId(), TargetC.x - 0.5, TargetC.y, TargetC.z, 0, 0, 4.0)
                local startedCollision = GetGameTimer()

                while not HasCollisionLoadedAroundEntity(PlayerPedId()) do
                    if GetGameTimer() - startedCollision > 5000 then break end
                    Citizen.Wait(0)
                end
    
                Citizen.Wait(500)
                SetEntityVisible(ped, false)
                SetPlayerInvincible(ped, true)
                SetEntityCollision(ped,false,false)
                local targId = GetPlayerFromServerId(tSrc)
                local targPed = GetPlayerPed(targId)
                
                DrawPlayerInfo(targId)
                AttachEntityToEntity(ped, targPed, 11816, 0.0, -1.48, 2.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
            else
                print("[asgard-adminmenu]: No Target Coords")
            end
        else
            TargetC = nil
            called = false
            DetachEntity(ped,true,true)
            SetEntityCollision(ped,true,true)
            SetPlayerInvincible(ped, false)
            SetEntityVisible(ped, true)
            StopDrawPlayerInfo()
            SetEntityCoords(ped, x,y,z)
        end
    end)    
end)


RegisterNetEvent("asgard-adminmenu:client:bringPlayer")
AddEventHandler("asgard-adminmenu:client:bringPlayer", function(targPos)
    Citizen.CreateThread(function()
        RequestCollisionAtCoord(targPos.x, targPos.y, targPos.z)
        SetEntityCoordsNoOffset(PlayerPedId(), targPos.x, targPos.y, targPos.z, 0, 0, 2.0)
        FreezeEntityPosition(PlayerPedId(), true)
        SetPlayerInvincible(PlayerId(), true)

        local startedCollision = GetGameTimer()

        while not HasCollisionLoadedAroundEntity(PlayerPedId()) do
            if GetGameTimer() - startedCollision > 5000 then break end
            Citizen.Wait(0)
        end

        FreezeEntityPosition(PlayerPedId(), false)
        SetPlayerInvincible(PlayerId(), false)
    end)    
end)

RegisterNetEvent('asgard-adminmenu:client:GiveCash')
AddEventHandler('asgard-adminmenu:client:GiveCash', function(reciever, amount)
    TriggerServerEvent("asgard-adminmenu:server:GiveCash", reciever, amount)
    
end)

RegisterNetEvent('asgard-adminmenu:client:KickPlayer')
AddEventHandler('asgard-adminmenu:client:KickPlayer', function(target, reason)
    if not reason then
        reason = "No Reason Given"
    end
    TriggerServerEvent('asgard-adminmenu:server:DropPlayer', target, reason)
end)




Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if SuperJumpActive then
            SetSuperJumpThisFrame(PlayerId())
        end

        if drawInfo then
			local text = {}
			local targetPed = GetPlayerPed(drawTarget)
			table.insert(text,"~g~Health:~s~  "..GetEntityHealth(targetPed).." / "..GetEntityMaxHealth(targetPed))
			table.insert(text,"~b~Armor:~s~  "..GetPedArmour(targetPed))
			for i,theText in pairs(text) do
				SetTextFont(0)
				SetTextProportional(1)
				SetTextScale(0.0, 0.30)
				SetTextDropshadow(0, 0, 0, 0, 255)
				SetTextEdge(1, 0, 0, 0, 255)
				SetTextDropShadow()
				SetTextOutline()
				SetTextEntry("STRING")
				AddTextComponentString(theText)
				EndTextCommandDisplayText(0.3, 0.7+(i/30))
			end
		end
    end
end)


RegisterNUICallback("close" , function(data, cb)
    SetNuiFocus(false ,false)
end)


RegisterNUICallback("getOnlinePlayers" , function(data, cb)
    RSGCore.Functions.TriggerCallback('quotus-admin:GetOnlinePlayers', function(result)
        wa = result
        cb(wa)
        print(wa)
    end)
    
end)


RegisterNUICallback("GetPlayerData" , function(data, cb)
    RSGCore.Functions.TriggerCallback('quotus-admin:GetPlayerData', function(result)
        cb(result)
    end)
  
end)

RegisterNUICallback("GetLogs" , function(data, cb)
    RSGCore.Functions.TriggerCallback('quotus-admin:GetLogs', function(result)
        cb(result)
    end)
   
end)

RegisterNUICallback("GetItems" , function(data, cb)
    local data = {}
    for k,v in pairs(RSGCore.Shared.Items) do
        table.insert(data , {name = k , displayname = v['label']})
    end
   Citizen.Wait(1000)
   cb(data)
end)

RegisterNUICallback("GetBannedPlayers" , function(data, cb)
    RSGCore.Functions.TriggerCallback('quotus-admin:GetBannedPlayers', function(result)
        cb(result)
    end)
end)



ShowBlips = false
RegisterNetEvent('asgard-adminmenu:client:toggleBlips')
AddEventHandler('asgard-adminmenu:client:toggleBlips', function()
    if not ShowBlips then
        ShowBlips = true
    else
        ShowBlips = false
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(1000)
        if ShowBlips then
            TriggerServerEvent('quotus-admin:GetPlayersForBlips')
        end
    end
end)

RegisterNetEvent('asgard-adminmenu:client:client:ShowBlips')
AddEventHandler('asgard-adminmenu:client:client:ShowBlips', function(players)
    local playeridx = GetPlayerFromServerId(player.id)
    local ped = GetPlayerPed(playeridx)
    local blip = GetBlipFromEntity(ped)

    for k, player in pairs(players) do
        if ShowBlips then
            if not DoesBlipExist(blip) then -- Blip doesn't exist, make it appear
                blip = AddBlipForEntity(ped)
                SetBlipSprite(blip, 1)
                Citizen.InvokeNative(0x5FBCA48327B914DF, blip, true)
            else -- Blip exist, update it
                local veh = GetVehiclePedIsIn(ped, false)
                local blipSprite = GetBlipSprite(blip)
                if not GetEntityHealth(ped) then -- Check if ped is death
                    if blipSprite ~= 274 then
                        SetBlipSprite(blip, 274)
                        Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false)
                    end
                elseif veh ~= 0 then -- Check if ped is in vehicle
                    local classveh = GetVehicleClass(veh)
                    local modelveh = GetEntityModel(veh)
                    if classveh == 15 then -- Vehicle type 15 Helicopters
                        if blipSprite ~= 422 then
                            SetBlipSprite(blip, 422)
                            Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false)
                        end
                    elseif classveh == 16 then -- Vehicle type 16 Planes
                        if modelveh == `besra` or modelveh == `hydra` or modelveh == `lazer` then   --Check if vehicle is military jet
                            if blipSprite ~= 424 then
                                SetBlipSprite(blip, 424)
                                Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false)
                            end
                        elseif blipSprite ~= 423 then
                            SetBlipSprite(blip, 423)
                            Citizen.InvokeNative (0x5FBCA48327B914DF, blip, false)
                        end
                    elseif classveh == 14 then -- Vehicle type 14 Boat
                        if blipSprite ~= 427 then
                            SetBlipSprite(blip, 427)
                            Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false)
                        end
                    elseif modelveh == `insurgent` or modelveh == `insurgent2` or modelveh == `limo2` then   -- Vehicle is armed car
                        if blipSprite ~= 426 then
                            SetBlipSprite(blip, 426)
                            Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false)
                        end
                    elseif modelveh == `rhino` then -- Vehicle is Rhino
                        if blipSprite ~= 421 then
                            SetBlipSprite(blip, 421)
                            Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false)
                        end
                    elseif blipSprite ~= 1 then -- default blip
                        SetBlipSprite(blip, 1)
                        Citizen.InvokeNative(0x5FBCA48327B914DF, blip, true)
                    end
                    -- Show number in case of passangers
                    passengers = GetVehicleNumberOfPassengers(veh)
                    if passengers then
                        if not IsVehicleSeatFree(veh, -1) then
                            passengers = passengers + 1
                        end
                        ShowNumberOnBlip(blip, passengers)
                    else
                        HideNumberOnBlip(blip)
                    end
                else    -- Ped is on foot
                    HideNumberOnBlip(blip)
                    if blipSprite ~= 1 then
                        SetBlipSprite(blip, 1)
                        Citizen.InvokeNative(0x5FBCA48327B914DF, blip, true)
                    end
                end

                SetBlipRotation(blip, math.ceil(GetEntityHeading(veh)))
                SetBlipNameToPlayerName(blip, playeridx)
                SetBlipScale(blip, 0.85)

                if IsPauseMenuActive() then
                    SetBlipAlpha(blip, 255)
                else
                    local x1, y1 = table.unpack(GetEntityCoords(PlayerPedId(), true))
                    local x2, y2 = table.unpack(GetEntityCoords(GetPlayerPed(playeridx), true))
                    local distance = (math.floor(math.abs(math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))) / -1)) + 900
                    if distance < 0 then
                        distance = 0
                    elseif distance > 255 then
                        distance = 255
                    end
                    SetBlipAlpha(blip, distance)
                end
            end
        else
            RemoveBlip(blip)
        end

    end
end)

entityselected = nil

RegisterNetEvent('asgard-adminmenu:client:SelectEnity')
AddEventHandler('asgard-adminmenu:client:SelectEnity', function()
    local coordA = GetEntityCoords(PlayerPedId(), false)
    local coordB = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 5.0, 0.0)

    local offset = 0
    local rayHandle
    local entity

    for i = 0, 100 do
        rayHandle = CastRayPointToPoint(coordA.x, coordA.y, coordA.z, coordB.x, coordB.y, coordB.z + offset, 10, PlayerPedId(), -1)    
        a, b, c, d, entity = GetRaycastResult(rayHandle)
        offset = offset - 1
        if entity and Vdist(GetEntityCoords(entity, false), coordA) < 150 then break end
    end

    if entity then entityselected = entity end
    if entityselected and DoesEntityExist(entityselected) then
        x, y, z = table.unpack(GetEntityCoords(entityselected, true))
        SetDrawOrigin(x, y, z, 0)
        RequestStreamedTextureDict("helicopterhud", false)
        DrawSprite("helicopterhud", "hud_corner", -0.01, -0.01, 0.05, 0.05, 0.0, 0, 255, 0, 200)
        DrawSprite("helicopterhud", "hud_corner", 0.01, -0.01, 0.05, 0.05, 90.0, 0, 255, 0, 200)
        DrawSprite("helicopterhud", "hud_corner", -0.01, 0.01, 0.05, 0.05, 270.0, 0, 255, 0, 200)
        DrawSprite("helicopterhud", "hud_corner", 0.01, 0.01, 0.05, 0.05, 180.0, 0, 255, 0, 200)
        ClearDrawOrigin()
    end
end)


RegisterNetEvent('asgard-adminmenu:client:DeleteEntity')
AddEventHandler('asgard-adminmenu:client:DeleteEntity', function()
    if not entityselected then return end
    if not DoesEntityExist(entityselected) then return end

    Citizen.CreateThread(function()
        local timeout = 0

        while true do
            if timeout >= 3000 then return end
            timeout = timeout + 1

            NetworkRequestControlOfEntity(entityselected)

            local nTimeout = 0

            while not NetworkHasControlOfEntity(entityselected) and nTimeout < 1000 do
                nTimeout = nTimeout + 1
                NetworkRequestControlOfEntity(entityselected)
                Citizen.Wait(0)
            end

            SetEntityAsMissionEntity(entityselected, true, true)

            DeleteEntity(entityselected)
            if GetEntityType(entityselected) == 2 then DeleteVehicle(entityselected) end

            if not DoesEntityExist(entityselected) then cmd.vars.ent = nil return end

            Citizen.Wait(0)
        end
    end)
end)

RegisterNetEvent('asgard-adminmenu:client:tSay')
AddEventHandler('asgard-adminmenu:client:tSay', function(message)
    TriggerServerEvent('quotus-admin:server:tSay', message)
end)

RegisterNUICallback("bringPlayer" , function(data, cb)
    TriggerServerEvent("asgard-adminmenu:server:bringPlayer" , data.PlayerID , GetEntityCoords(GetPlayerPed(-1)))
end)


RegisterNUICallback("setFav" , function(data, cb)
    TriggerServerEvent("asgard-adminmenu:server:setFav" , data.fav)
end)

RegisterNUICallback("selectEntity" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:SelectEnity")
end)



RegisterNUICallback("deleteEntity" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:DeleteEntity")
end)



RegisterNUICallback("GiveCash" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:GiveCash" , data.Target , data.amount)
end)
RegisterNUICallback("Noclip" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:NoclipToggle")
end)

RegisterNUICallback("Kick" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:KickPlayer" , data.Target , data.reason)
end)

RegisterNUICallback("toggleBlips" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:toggleBlips")
end)




RegisterNUICallback("FixVehicle" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:FixVehicle")
end)

RegisterNUICallback("ChangeModel" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:ChangeModel" , data.model)
end)

RegisterNUICallback("RevivePlayer" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:RevivePlayer" , data.Target )
end)

RegisterNUICallback("SpawnHorse" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:SpawnHorse" , HorseName)
end)

RegisterNUICallback("GodModeToggle" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:GodModeToggle")
end)

RegisterNUICallback("Csay" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:Csay" , data.text)
end)

RegisterNUICallback("tSay" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:tSay" , data.text)
end)


RegisterNUICallback("setWeather" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:SetTimeWeather" ,data.weather, data.time)
end)



RegisterNUICallback("SuperJump" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:SuperJump")
end)


RegisterNUICallback("TeleportToCoords" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:TeleportToCoords" , data.coords)
end)

RegisterNUICallback("TeleportToMarker" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:TeleportToMarker")
end)

RegisterNUICallback("Spectate" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:Spectate" , data.target)
end)




RegisterNUICallback("BanPlayer" , function(data, cb)
    TriggerServerEvent("quotus-admin:BanPlayer", data.Target, data.reason, data.length)
end)


RegisterNUICallback("SpawnItem" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:SpawnItem" , data.item , data.amount)
end)

RegisterNUICallback("OpenStable" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:OpenStable")
end)

RegisterNUICallback("OpenClothingMenu" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:OpenClothingMenu")
end)

RegisterNUICallback("OpenBarberMenu" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:OpenBarberMenu")
end)

RegisterNUICallback("RemoveStress" , function(data, cb)
    TriggerEvent("asgard-adminmenu:client:RemoveStress")
end)




devmode = false
RegisterNetEvent('asgard-adminmenu:client:DevModeToggle')
AddEventHandler('asgard-adminmenu:client:DevModeToggle', function()
    if devmode then
        devmode = false
    else
        devmode = true
    end
end)

RegisterNUICallback('DevmodeToggle' , function()
    TriggerEvent("asgard-adminmenu:client:DevModeToggle")
end)

RegisterNUICallback('DevmodeStatus' , function(data , cb)
    cb(devmode)
end)
