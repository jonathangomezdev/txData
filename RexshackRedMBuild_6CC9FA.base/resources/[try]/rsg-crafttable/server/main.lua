local RSGCore = exports['rsg-core']:GetCoreObject()

-- use crafttable
RSGCore.Functions.CreateUseableItem("crafttable", function(source, item)
	local src = source
	local Player = RSGCore.Functions.GetPlayer(src)
	TriggerClientEvent('rsg-crafttable:client:crafttable', src)
	Player.Functions.RemoveItem('crafttable', 1)
	TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['crafttable'], "remove")
end)

RegisterServerEvent('rsg-crafttable:server:pickuptab')
AddEventHandler('rsg-crafttable:server:pickuptab', function()
	local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
	Player.Functions.AddItem('crafttable', 1)
	TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['crafttable'], "add")
end)

RegisterNetEvent('rsg-crafttable:server:pickup')
AddEventHandler('rsg-crafttable:server:pickup', function(entity)
    local src = source
    xSound:Destroy(src, tostring(entity))
end)

RSGCore.Functions.CreateCallback('rsg-crafttable:server:checkingredients', function(source, cb, ingredients)
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
RegisterServerEvent('rsg-crafttable:server:finishcrafting')
AddEventHandler('rsg-crafttable:server:finishcrafting', function(ingredients, receive)
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