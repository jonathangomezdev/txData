local RSGCore = exports['rsg-core']:GetCoreObject()

-- check player has items
RSGCore.Functions.CreateCallback('rsg-tobaccofactory:server:itemcheck', function(source, cb, factoryitems)
    local src = source
    local hasItems = false
    local icheck = 0
    local Player = RSGCore.Functions.GetPlayer(src)
    for k, v in pairs(factoryitems) do
        if Player.Functions.GetItemByName(v.item) and Player.Functions.GetItemByName(v.item).amount >= v.amount then
            icheck = icheck + 1
            if icheck == #factoryitems then
                cb(true)
            end
        else
            TriggerClientEvent('RSGCore:Notify', src, 'You don\'t have the required items!', 'error')
            cb(false)
            return
        end
    end
end)

-- finish factory job
RegisterServerEvent('rsg-tobaccofactory:server:giveitem')
AddEventHandler('rsg-tobaccofactory:server:giveitem', function(factoryitems, receive)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    -- remove factoryitems
    for k, v in pairs(factoryitems) do
        if Config.Debug == true then
            print(v.item)
            print(v.amount)
        end
        Player.Functions.RemoveItem(v.item, v.amount)
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[v.item], "remove")
    end
    -- add items
    Player.Functions.AddItem(receive, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[receive], "add")
    TriggerClientEvent('RSGCore:Notify', src, 'factory job finished', 'success')
end)
