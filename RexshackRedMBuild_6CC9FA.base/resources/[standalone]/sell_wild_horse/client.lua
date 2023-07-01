local RSGCore = exports['rsg-core']:GetCoreObject()

local Debug = false

local SellWildHorse = 0
local Broken = 2

local MapBlips = {
    { name = 'Sell Wild Horse', sprite = -1103135225, x=-860.012, y=-1381.414, z=42.57}, --
    { name = 'Sell Wild Horse', sprite = -1103135225, x=-5522.55, y=-3029.57, z=-3.215}, --
    { name = 'Sell Wild Horse', sprite = -1103135225, x=-384.74,y= 783.82, z= 114.86}, --
    { name = 'Sell Wild Horse', sprite = -1103135225, x=972.66, y=-1842.48, z=45.60}, --
	{ name = 'Sell Wild Horse', sprite = -1103135225, x=-2409.97, y=-2462.99, z=60.25}, --
}

function DrawText(x,y,text)
    SetTextScale(0.35,0.35)
    SetTextColor(255,255,255,255)--r,g,b,a
    SetTextCentre(true)--true,false
    SetTextDropshadow(1,0,0,0,200)--distance,r,g,b,a
    SetTextFontForCurrentCommand(0)
    DisplayText(CreateVarString(10, "LITERAL_STRING", text), x, y)
end

--[[ BLIPS ]]--
Citizen.CreateThread(function()
    for k,v in pairs(MapBlips) do
        if v.name ~= nil then
            local blip = N_0x554d9d53f696d002(1664425300, v.x, v.y, v.z)
            SetBlipSprite(blip, v.sprite, 1)
            SetBlipScale(blip, 0.2)
            Citizen.InvokeNative(0x9CB1A1623062F402, blip, v.name)
        end
    end
end)

--[[ MARKER ]]--
CreateThread(function()
    while true do
        Wait(0)

        for k,v in pairs(MapBlips) do
            if not Config.AllowMarker then goto continue end

            Citizen.InvokeNative(0x2A32FAA57B937173, 0x07DCE236, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 215, 0, 155, false, false, false, 1, false, false, false)

            ::continue::
        end
    end
end)

Citizen.CreateThread(function()
    while Debug do
        Wait(1)

        for k,v in pairs(MapBlips) do
            local coords = GetEntityCoords(PlayerPedId())
            local distance = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v.x, v.y, v.z, true)

            DrawText(0.5, 0.02, "Wild Horse Area Debug!")
            DrawText(0.5, 0.04, "Player Coords: "..tostring(coords))

            if distance > 2.0 then goto continue end

            DrawText(0.5, 0.10, "In Location!")

            ::continue::
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(20)

        for k,v in pairs(MapBlips) do
            local coords1 = GetEntityCoords(PlayerPedId())
            local distance1 = GetDistanceBetweenCoords(coords1.x, coords1.y, coords1.z, v.x, v.y, v.z, true)

            if distance1 > 2.0 and not Citizen.InvokeNative(0x580417101DDB492F, 0, Config.SellKey) then goto continue end

            SellWildHorseFunction()
            -- Wait(10000)

            ::continue::
        end
    end
end)

function SellWildHorseFunction()
    local PlayerPed = PlayerPedId()

    if SellWildHorse ~= 0 and GetMount(PlayerPed) == SellWildHorse then
        Citizen.InvokeNative(0x48E92D3DDE23C23A,PlayerPed,1,0,0,0,0)
        Citizen.Wait(2200)
        DeleteEntity(SellWildHorse)
        SellWildHorse= 0
        PlaySoundFrontend("Witness", "HUD_Wanted_Sounds", true, 1)
        TriggerServerEvent("bm-sellwildhorse:server:sold")
        return
    end

    
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local size = GetNumberOfEvents(0)

        if size <= 0 then goto continue1 end

        for i = 0, size - 1 do
            local eventAtIndex = GetEventAtIndex(0, i)

            if eventAtIndex ~= GetHashKey("EVENT_HORSE_BROKEN") then goto continue2 end

            local eventDataSize = 3
            local eventDataStruct = DataView.ArrayBuffer(24)
            eventDataStruct:SetInt32(0 ,0)
            eventDataStruct:SetInt32(8 ,0)
            eventDataStruct:SetInt32(16 ,0)
            local is_data_exists = Citizen.InvokeNative(0x57EC5FA4D4D6AFCA,0,i,eventDataStruct:Buffer(),eventDataSize)

            if not is_data_exists and eventDataStruct:GetInt32(16) ~= Broken and PlayerPedId() ~= eventDataStruct:GetInt32(0) then goto continue2 end

            SellWildHorse = eventDataStruct:GetInt32(8)

            ::continue2::
        end

        ::continue1::
    end
end)