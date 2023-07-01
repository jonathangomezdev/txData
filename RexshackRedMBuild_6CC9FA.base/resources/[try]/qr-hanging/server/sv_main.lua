local RSGCore = exports['rsg-core']:GetCoreObject()
RegisterNetEvent("qbr-hanging:policeCheck")
AddEventHandler("qbr-hanging:policeCheck", function(closestPlayer, id)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if Player.PlayerData.job.name == "police" then
       TriggerClientEvent("qbr-hanging:doHang", closestPlayer, closestPlayer, id)
    else
        RSGCore.Functions.Notify(source, 'you are not police', 'error')
    end
end)
