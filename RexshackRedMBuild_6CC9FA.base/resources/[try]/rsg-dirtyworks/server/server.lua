local RSGCore = exports['rsg-core']:GetCoreObject()

RegisterNetEvent('rsg-dirtyworks:server:givereward', function(cashreward)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.AddMoney('Bloodmoney',cashreward)
    Player.Functions.AddItem('moonshine', 10)
        TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items['moonshine'], "add")
end)