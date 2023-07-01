local RSGCore = exports['rsg-core']:GetCoreObject()
--local RSGCore = nil
--TriggerEvent("redemrp:getSharedObject", function(obj) RSGCore = obj end)

RegisterServerEvent('borp_fightclub:givemoney')
AddEventHandler('borp_fightclub:givemoney', function(action, amount)
	local _source = source
	local price = Config.Price
	--local character = RSGCore.GetPlayerFromId(_source)
	local character = RSGCore.Functions.GetPlayer(_source)
	character.Functions.AddMoney('cash', price)
	--TriggerClientEvent('RSGCore:Notify', _source, "You Got Paid "..price, 5000)
	TriggerClientEvent('RSGCore:Notify', _source, " Nice K.O, Here is you money " ..price)

end)