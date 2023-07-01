local RSGCore = exports['rsg-core']:GetCoreObject()

-- use lawtool
RSGCore.Functions.CreateUseableItem("lawtool", function(source, item)
	local src = source
	local Player = RSGCore.Functions.GetPlayer(src)
	TriggerClientEvent('rsg-lawtool:client:lawtool', src)
	Player.Functions.RemoveItem('lawtool', 1)
	TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['lawtool'], "remove")
end)

RegisterServerEvent('rsg-lawtool:server:pickuptab')
AddEventHandler('rsg-lawtool:server:pickuptab', function()
	local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
	Player.Functions.AddItem('lawtool', 1)
	TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['lawtool'], "add")
end)

RegisterNetEvent('rsg-lawtool:server:pickup')
AddEventHandler('rsg-lawtool:server:pickup', function(entity)
    local src = source
    xSound:Destroy(src, tostring(entity))
end)

RSGCore.Functions.CreateCallback('rsg-lawtool:server:checkingredients', function(source, cb, ingredients)
    local src = source
    local hasItems = false
    local icheck = 0
    local Player = RSGCore.Functions.GetPlayer(src)
    for k, v in pairs(ingredients) do
        if Player.Functions.GetItemByName(v.item) and Player.Functions.GetItemByName(v.item).amount >= v.amount then
            icheck = icheck + 1
            if icheck == #ingredients then
                cb(true)
            end
        else
            TriggerClientEvent('RSGCore:Notify', src, 'you don/t have the require items!', 'error')
            cb(false)
            return
        end
    end
end)

-- finish cooking
RegisterServerEvent('rsg-lawtool:server:finishcrafting')
AddEventHandler('rsg-lawtool:server:finishcrafting', function(ingredients, receive)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    -- remove ingredients
    for k, v in pairs(ingredients) do
        if Config.Debug == true then
            print(v.item)
            print(v.amount)
        end
        Player.Functions.RemoveItem(v.item, v.amount)
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[v.item], "remove")
    end
    Player.Functions.AddItem(receive, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[receive], "add")
    TriggerClientEvent('RSGCore:Notify', src, 'crafting finished!', 'success')
end)