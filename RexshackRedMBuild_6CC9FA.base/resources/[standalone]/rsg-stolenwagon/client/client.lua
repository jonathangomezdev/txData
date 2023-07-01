local RSGCore = exports['rsg-core']:GetCoreObject()
local spawnnpcbandits = false
local calloffnpcbandits = false
local cooldownSecondsRemaining = 0
local npcs = {}
local horse = {}
local carthash = nil
local cargohash = nil
local lighthash = nil
local distance = nil
local wagonSpawned = false

function DrawText3D(x, y, z, text)
    local onScreen,_x,_y=GetScreenCoordFromWorldCoord(x, y, z)
    SetTextScale(0.30, 0.30)
    SetTextFontForCurrentCommand(9)
    SetTextColor(255, 255, 255, 215)
    local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
    SetTextCentre(1)
    DisplayText(str,_x,_y)
end

Citizen.CreateThread(function()
    while true do
        Wait(1800)
        for v,k in pairs(Config.npcbandits) do
            local coords = GetEntityCoords(PlayerPedId())
            local dis = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, k.engage.x, k.engage.y, k.engage.z)
            if dis < Config.Triggernpcbandits and spawnnpcbandits == false then
                --print('trigger npcbandits')
                npcbanditsTrigger(k.npcbandits)
            end
            if dis >= Config.Calloffnpcbandits and spawnnpcbandits == true then
                --print('call off npcbandits')
                calloffnpcbandits = true
            end
        end
    end
end)

function npcbanditsTrigger(npcbandits)
    spawnnpcbandits = true
    for v,k in pairs(npcbandits) do
        local horsemodel = GetHashKey(Config.HorseModels[math.random(1,#Config.HorseModels)])
        local banditmodel = GetHashKey(Config.npcbanditsModel[math.random(1,#Config.npcbanditsModel)])
        local banditWeapon = Config.Weapons[math.random(1,#Config.Weapons)]
        RequestModel(banditmodel)
        if not HasModelLoaded(banditmodel) then RequestModel(banditmodel) end
        while not HasModelLoaded(banditmodel) do Wait(1) end
        Citizen.Wait(100)
        -- create npcbandits
        npcs[v] = CreatePed(banditmodel, k, true, true, true, true)
        Citizen.InvokeNative(0x283978A15512B2FE, npcs[v], true)
        Citizen.InvokeNative(0x23f74c2fda6e7c61, 953018525, npcs[v])
        -- give weapon to npcbandits
        GiveWeaponToPed(npcs[v], banditWeapon, 50, true, true, 1, false, 0.5, 1.0, 1.0, true, 0, 0)
        SetCurrentPedWeapon(npcs[v], banditWeapon, true)
        -- create horse sit npcbandits on horse
        RequestModel(horsemodel)
        if not HasModelLoaded(horsemodel) then RequestModel(horsemodel) end
        while not HasModelLoaded(horsemodel) do Wait(1) end
        Citizen.Wait(100)
        horse[v] = CreatePed(horsemodel, k, true, true, true, true)
        Citizen.InvokeNative(0x283978A15512B2FE, horse[v], true)
        Citizen.InvokeNative(0xD3A7B003ED343FD9, horse[v],0x20359E53,true,true,true) --saddle
        Citizen.InvokeNative(0xD3A7B003ED343FD9, horse[v],0x508B80B9,true,true,true) --blanket
        Citizen.InvokeNative(0xD3A7B003ED343FD9, horse[v],0xF0C30271,true,true,true) --bag
        Citizen.InvokeNative(0xD3A7B003ED343FD9, horse[v],0x12F0DF9F,true,true,true) --bedroll
        Citizen.InvokeNative(0xD3A7B003ED343FD9, horse[v],0x67AF7302,true,true,true) --stirups
        Citizen.InvokeNative(0x028F76B6E78246EB, npcs[v], horse[v], -1)
        TaskCombatPed(npcs[v], PlayerPedId())
    end
end

-- delete npcbandits on resouce restart
AddEventHandler("onResourceStop",function(resourceName)
    for v,k in pairs(npcs) do
        DeleteEntity(k)
    end
    for v,k in pairs(horse) do
        DeleteEntity(k)
    end
end)

Citizen.CreateThread(function()
    npcs = {}
    horse = {}
    while true do
        Wait(3000)
        if IsPedDeadOrDying(PlayerPedId(), true) and spawnnpcbandits == true then
            RSGCore.Functions.Notify('Watch out', 'primary')
            Wait(5000)
            TriggerServerEvent('rsg-stolenwagon:server:robplayer')
            RSGCore.Functions.Notify('and you have been robbed', 'primary')
            for v,k in pairs(npcs) do
                DeleteEntity(k)
            end
            for v,k in pairs(horse) do
                DeleteEntity(k)
            end
            calloffnpcbandits = false
            spawnnpcbandits = false
            break
        end
        if calloffnpcbandits == true then
            for v,k in pairs(npcs) do
                DeleteEntity(k)
            end
            for v,k in pairs(horse) do
                DeleteEntity(k)
            end
            calloffnpcbandits = false
            spawnnpcbandits = false
            RSGCore.Functions.Notify('Watch Out', 'primary')
            break
        end
    end
end)

-- cooldown timer
function cooldownTimer()
    cooldownSecondsRemaining = Config.Cooldown
    Citizen.CreateThread(function()
        while cooldownSecondsRemaining > 0 do
            Wait(1000)
            cooldownSecondsRemaining = cooldownSecondsRemaining - 1
            print(cooldownSecondsRemaining)
        end
    end)
end

-- prompts and blips 
Citizen.CreateThread(function()
    for stolenwagon, v in pairs(Config.stolenwagonLocations) do
        exports['rsg-core']:createPrompt(v.stolenwagonid, v.startcoords, RSGCore.Shared.Keybinds['J'], v.name, {
            type = 'client',
            event = 'rsg-stolenwagon:client:vehiclespawn',
            args = { v.stolenwagonid, v.cart, v.cartspawn, v.cargo, v.light, v.endcoords, v.showgps },
        })
        if v.showblip == true then
            local stolenwagonBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.startcoords)
            SetBlipSprite(stolenwagonBlip, GetHashKey(Config.Blip.blipSprite), true)
            SetBlipScale(stolenwagonBlip, Config.Blip.blipScale)
            Citizen.InvokeNative(0x9CB1A1623062F402, stolenwagonBlip, Config.Blip.blipName)
        end
    end
end)

RegisterNetEvent('rsg-stolenwagon:client:vehiclespawn')
AddEventHandler('rsg-stolenwagon:client:vehiclespawn', function(stolenwagonid, cart, cartspawn, cargo, light, endcoords, showgps)
    if wagonSpawned == false then
        local playerPed = PlayerPedId()
        local carthash = GetHashKey(cart)
        local cargohash = GetHashKey(cargo)
        local lighthash = GetHashKey(light)
        local distance = GetDistanceBetweenCoords(cartspawn.x, cartspawn.y, cartspawn.z, endcoords.x, endcoords.y, endcoords.z) 
        local cashreward = (math.floor(distance) / 7)
        
        if Config.Debug == true then
            print('carthash '..carthash)
            print('cargohash '..cargohash)
            print('lighthash '..lighthash)
            print('distance '..distance)
            print('Bloodmoneyreward '..cashreward)
        end
        
        RequestModel(carthash, cargohash, lighthash)
        while not HasModelLoaded(carthash, cargohash, lighthash) do
            RequestModel(carthash, cargohash, lighthash)
            Citizen.Wait(0)
        end
        
        local coords = vector3(cartspawn.x, cartspawn.y, cartspawn.z)
        local heading = cartspawn.w
        local vehicle = CreateVehicle(carthash, coords, heading, true, false)
        SetVehicleOnGroundProperly(vehicle)
        Wait(200)
        SetModelAsNoLongerNeeded(carthash)
        Citizen.InvokeNative(0xD80FAF919A2E56EA, vehicle, cargohash)
        Citizen.InvokeNative(0xC0F0417A90402742, vehicle, lighthash)
        TaskEnterVehicle(playerPed, vehicle, 10000, -1, 1.0, 1, 0)
        if showgps == true then
            StartGpsMultiRoute(GetHashKey("COLOR_RED"), true, true)
            AddPointToGpsMultiRoute(endcoords)
            SetGpsMultiRouteRender(true)
        end
        wagonSpawned = true
        while true do
            local sleep = 1000
            if wagonSpawned == true then
                local vehpos = GetEntityCoords(vehicle, true)
                if #(vehpos - endcoords) < 250.0 then
                    sleep = 0
                    DrawText3D(endcoords.x, endcoords.y, endcoords.z + 0.98, "Stolen Wagon Drop Off")
                    if #(vehpos - endcoords) < 3.0 then
                        if showgps == true then
                            ClearGpsMultiRoute(endcoords)
                        end
                        endcoords = nil
                        DeleteVehicle(vehicle)
                        TriggerServerEvent('rsg-stolenwagon:server:givereward', cashreward)
                        wagonSpawned = false
                    end
                end
            end
            Wait(sleep)
        end
    end
end)


