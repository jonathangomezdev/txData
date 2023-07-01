Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local years, months, days, hours, minutes, seconds = Citizen.InvokeNative(0x50C7A99057A69748, Citizen.PointerValueInt(), Citizen.PointerValueInt(), Citizen.PointerValueInt(), Citizen.PointerValueInt(), Citizen.PointerValueInt(), Citizen.PointerValueInt())
		
		if(hours == 23 or hours == 3 or hours == 7 or hours == 11 or hours == 15 or hours == 19) then
			if minutes == 55 then
				TriggerServerEvent("RestartAlert", Config.Messages.Minutes5)
			end
			if minutes == 58 then
				TriggerServerEvent("RestartAlert", Config.Messages.Minutes2)
			end
			if minutes == 59 then
				TriggerServerEvent("RestartAlert", Config.Messages.Minutes1)
			end
		end
	end
end)