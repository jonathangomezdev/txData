local RSGCore = exports['rsg-core']:GetCoreObject()

Config = {}

Config['General'] = {
    ['SQLWrapper'] = 'oxmysql' -- Discord webhoook link when a banned player is trying to connect the server
}

Config['Webhooks'] = {
    ['Link'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi' -- Discord webhoook link when a banned player is trying to connect the server
}


EnterStable = function()
    TriggerEvent('jim-mechanic:client:Police:Menu')
end

WeatherEvent = function(weather)
    TriggerServerEvent("rsg-weathersync:server:setWeather", weather)
end

TimeEvent = function(time)
    return TriggerServerEvent('rsg-weathersync:server:setTime' , time , 0)
end

OpenClothing = function()
     TriggerEvent("rsg-clothing:client:openMenu", src, true)
end

OpenBarber = function()
     TriggerEvent("rsg-clothing:client:openMenu", src, true)
end

RemoveStress = function()
    TriggerEvent("client:updateStress",false, 0)
end

AddVehicleKeys = function(vehicle, plate)
    TriggerEvent("keys:addNew",vehicle,plate)
end

Revive = function(target)
    -- TriggerServerEvent("reviveGranted", v)
    -- TriggerEvent("Hospital:HealInjuries",true) 
    -- TriggerServerEvent("ems:healplayer", v)
    -- TriggerEvent("heal")
    TriggerServerEvent("hospital:server:RevivePlayer" , tonumber(target))
end