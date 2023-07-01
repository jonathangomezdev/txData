local RSGCore = exports['rsg-core']:GetCoreObject()

RegisterServerEvent('rsg-stolenwagon:server:robplayer')
AddEventHandler('rsg-stolenwagon:server:robplayer', function()
	local src = source
	local Player = RSGCore.Functions.GetPlayer(src)
	Player.Functions.SetMoney('cash', 0)
end)

RegisterNetEvent('rsg-stolenwagon:server:givereward', function(cashreward)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.AddMoney('Bloodmoney',cashreward)
end)