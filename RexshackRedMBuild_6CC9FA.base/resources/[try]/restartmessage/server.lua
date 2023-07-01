RegisterServerEvent("RestartAlert")
AddEventHandler("RestartAlert", function(text)
	TriggerClientEvent('chatMessage', -1, "^8^*" .. Config.Prefix .. "^0^r ", {30, 144, 255}, text)
	
	if Config.SpamWarning == true then
		TriggerClientEvent('chatMessage', -1, "^8^*" .. Config.Prefix .. "^0^r ", {30, 144, 255}, text)
		TriggerClientEvent('chatMessage', -1, "^8^*" .. Config.Prefix .. "^0^r ", {30, 144, 255}, text)
	end
end)
