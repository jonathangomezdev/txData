local RSGCore = exports['rsg-core']:GetCoreObject()
local xSound = exports.xsound
local isPlaying = false

RSGCore.Functions.CreateUseableItem("fence1", function(source, item)
    local Player = RSGCore.Functions.GetPlayer(source)
	local firstname = Player.PlayerData.charinfo.firstname
    local lastname = Player.PlayerData.charinfo.lastname
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("rsg_fence1:client:placeDJEquipment", source, item.name)
		TriggerEvent('rsg-log:server:CreateLog', 'camp', 'BEDTIME 💤', 'yellow', firstname..' '..lastname..' 💤 IS SETTING UP A barrier 💤')
    end
end)


RegisterNetEvent('rsg_fence1:server:pickedup', function(entity)
    local src = source
    xSound:Destroy(-1, tostring(entity))
end)


RegisterNetEvent('rsg_fence1:Server:RemoveItem', function(item, amount)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(item, amount)
end)

RegisterServerEvent('rsg_fence1:server:pickeupdecks')
AddEventHandler('rsg_cookkit:server:pickeupdecks', function()
	local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
	Player.Functions.AddItem('fence1', 1)
	TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['fence1'], "add")
end)