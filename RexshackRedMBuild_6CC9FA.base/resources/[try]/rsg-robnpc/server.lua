local RSGCore = exports['rsg-core']:GetCoreObject()



RegisterServerEvent("rsg-robnpc:server:givemoney")
    AddEventHandler("rsg-robnpc:server:givemoney", function(amount)
    local src = source
    local ply = RSGCore.Functions.GetPlayer(src)
    local amount = (math.random(Config.MinMoney, Config.MaxMoney))
    ply.Functions.AddMoney("cash", (amount))
end)