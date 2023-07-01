local QRCore = exports['qr-core']:GetCoreObject()

-- store pelt to inventory
RegisterNetEvent('rsg-holding:server:storepelt')
AddEventHandler('rsg-holding:server:storepelt', function(pelt)
	local src = source
	local Player = QRCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(pelt, 1)
	TriggerClientEvent('inventory:client:ItemBox', src, QRCore.Shared.Items[pelt], "add")
end)