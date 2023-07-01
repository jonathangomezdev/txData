local RSGCore = exports['rsg-core']:GetCoreObject()
local oncooldown = false 

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)
        if oncooldown then
            Wait(300000)
            oncooldown = false 
        end
    end
end)




RegisterNetEvent("syn:carrot")
AddEventHandler("syn:carrot", function(source)

    local Ped = PlayerPedId()
    local onhorse = IsPedOnMount(Ped)
    local _source = source
    if onhorse then
        local horse = GetMount(Ped)
        TaskAnimalInteraction(Ped, horse, -224471938, GetHashKey("p_carrot02x"), 0) --Animazione
        local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, horse, 0)
        local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, horse, 1)
        if not tonumber(valueHealth) then valueHealth = 0 end
        if not tonumber(valueStamina) then valueStamina = 0 end
        Citizen.Wait(3500)
        Citizen.InvokeNative(0xC6258F41D86676E0, horse, 0, valueHealth + 30)
        Citizen.InvokeNative(0xC6258F41D86676E0, horse, 1, valueStamina + 5)
        if not oncooldown then 
            oncooldown = true 
            TriggerEvent('syn:exp', horse, 5) -- horse exp increase by 5
			QRCore.Functions.Notify('You feed some sugar!', 'success')
        end
    else
        TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
        TriggerEvent('fred_meta:consume', 10,5,0,0,0.0,0,0,0,0.0,0.0) --Fred Metabolism
		PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
        local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
        if number then
        print (number)
        Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
        else 
        Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
        end
        Citizen.Wait(1000)        
    end
    
end)



RegisterNetEvent("syn:apple")
AddEventHandler("syn:apple", function(source)

    local Ped = PlayerPedId()
    local onhorse = IsPedOnMount(Ped)
    local _source = source
    if onhorse then
        local horse = GetMount(Ped)
        TaskAnimalInteraction(Ped, horse, -224471938, GetHashKey("P_APPLE02X"), 0) --Animazione
        local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, horse, 0)
        local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, horse, 1)
        if not tonumber(valueHealth) then valueHealth = 0 end
        if not tonumber(valueStamina) then valueStamina = 0 end
		Citizen.Wait(3500)
        Citizen.InvokeNative(0xC6258F41D86676E0, horse, 0, valueHealth + 40)
        Citizen.InvokeNative(0xC6258F41D86676E0, horse, 1, valueStamina + 5) 
        if not oncooldown then 
            oncooldown = true 
            TriggerEvent('syn:exp', horse, 5) -- horse exp increase by 5
			QRCore.Functions.Notify('You feed some sugar!', 'success')
        end
    else
        TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
        TriggerEvent('fred_meta:consume', 10,0,0,0,0.0,0,0,0,0.0,0.0) --Fred Metabolism
		PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
        local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
        if number then
        print (number)
        Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
        else 
        Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
        end
        Citizen.Wait(1000)        
    end
    
end)


RegisterNetEvent("syn:horsestimulant")
AddEventHandler("syn:horsestimulant", function(source)
    local Ped = PlayerPedId()
    local onhorse = IsPedOnMount(Ped)
    local _source = source 
    local horse = GetMount(Ped)        
    TaskAnimalInteraction(PlayerPedId(), horse, -1355254781, GetHashKey("p_cs_syringe01x"), 0)
    local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, horse, 0)
    local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, horse, 1)   
    if not tonumber(valueHealth) then valueHealth = 0 end
    if not tonumber(valueStamina) then valueStamina = 0 end
    Citizen.Wait(3500)
    Citizen.InvokeNative(0xC6258F41D86676E0, horse, 0, valueHealth + 35)
    Citizen.InvokeNative(0xC6258F41D86676E0, horse, 1, valueStamina + 35)
    Citizen.InvokeNative(0xF6A7C08DF2E28B28, horse, 0, 1000.0)
    Citizen.InvokeNative(0xF6A7C08DF2E28B28, horse, 1, 1000.0)
    Citizen.InvokeNative(0x50C803A4CD5932C5, true) 
    Citizen.InvokeNative(0xD4EE21B7CC7FD350, true) 
    PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
    if not oncooldown then 
        oncooldown = true 
        TriggerEvent('syn:exp', horse, 5) -- horse exp increase by 20
		QRCore.Functions.Notify('You give the horse stims!', 'success')
    end
end)
 
RegisterNetEvent('syn:brush')
AddEventHandler('syn:brush', function(source)
    local _source = source
    local Ped = PlayerPedId()
	local onhorse = IsPedOnMount(Ped)
	local horse = GetMount(Ped) 
    local horse = Citizen.InvokeNative(0x4C8B59171957BCF7, PlayerPedId())
    local pCoords = GetEntityCoords(Ped)
    local cCoords = GetEntityCoords(horse)
    local Distanza = GetDistanceBetweenCoords(pCoords, cCoords)
        if Distanza < 2.0 then
        TaskAnimalInteraction(Ped, horse, 554992710, GetHashKey("horsebrush"), 0)
        local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, horse, 0) 
        if not tonumber(valueHealth) then valueHealth = 0 end
        Citizen.Wait(3000)
        Citizen.InvokeNative(0xC6258F41D86676E0, horse, 0, valueHealth + 5) 
        Citizen.InvokeNative(0x6585D955A68452A5, horse) 
        Citizen.InvokeNative(0xB5485E4907B53019, horse) 
        else
            if Config.QBCore then
                QRCore.Functions.Notify('You are not a horse!', 'success')
            elseif Config.redem then
                QRCore.Functions.Notify('You are not a horse!', 'success')
            end
            Wait(0)
        end
        if not oncooldown then 
            oncooldown = true 
            TriggerEvent('syn:exp', horse, 7) -- horse exp increase by 10
			QRCore.Functions.Notify('You brush the horse!', 'success')
        end
end)





