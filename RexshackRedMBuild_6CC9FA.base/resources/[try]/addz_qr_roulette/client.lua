local RSGCore = exports['rsg-core']:GetCoreObject()

local game_during = false
local elements = {}
local ingame = false
local chip = 0

RegisterNetEvent('addz_qr_roulette:start')
AddEventHandler('addz_qr_roulette:start', function(money)
	local chip = money
	Citizen.Trace('RULET CHIP ' .. chip)
	if chip >= 10 then
		Citizen.Trace('START GAME')
		SendNUIMessage({
			type = "show_table",
			zetony = chip
		})
		ingame = true
		SetNuiFocus(true, true)
	else
		RSGCore.Functions.Notify('You need at least 10 chips to play!', 'error')

		SendNUIMessage({

			type = "reset_bet"
		})
	end
end)

RegisterNUICallback('exit', function(data, cb)
	
	SetNuiFocus(false, false)
        ingame = false
	cb('ok')
end)

RegisterNUICallback('betup', function(data, cb)
	
	TriggerServerEvent('InteractSound_SV:PlayOnOne', 'betup', 1.0)
    TriggerServerEvent('InteractSound_SV:PlayOnOne', 'demo', 1.0)
	cb('ok')
end)

RegisterNUICallback('roll', function(data, cb)
	TriggerEvent('addz_qr_roulette:start_game', data.kolor, data.kwota)
	cb('ok')
end)

RegisterNetEvent('addz_qr_roulette:start_game')
AddEventHandler('addz_qr_roulette:start_game', function(action, amount)
    TriggerServerEvent('InteractSound_SV:PlayOnOne', 'demo', 1.0)
	local amount = amount
	if game_during == false then
		TriggerServerEvent('addz_qr_roulette:removemoney', amount)
		local betOnColor = action

		RSGCore.Functions.Notify("You have bet "..amount.." chips on "..betOnColor..". The wheel is spinning...", 'primary')
		game_during = true
		local randomNumber = math.floor(math.random() * 36)
		--local randomNumber = 0
		SendNUIMessage({
			type = "show_roulette",
			hwButton = randomNumber
		})
		TriggerServerEvent('InteractSound_SV:PlayOnOne', 'ruletka', 1.0)
		Citizen.Wait(10000)
		local red = {32,19,21,25,34,27,36,30,23,5,16,1,14,9,18,7,12,3};
		local black = {15,4,2,17,6,13,11,8,10,24,33,20,31,22,29,28,35,26};
		local function has_value (tab, val)
			for index, value in ipairs(tab) do
				if value == val then
					return true
				end
			end
			return false
		end
		if action == 'black' then
			local win = amount * 2
			if has_value(black, randomNumber) then
				SendNUIMessage({type = 'hide_roulette'})
				SetNuiFocus(false, false)
			    ingame = false
				RSGCore.Functions.Notify("Black wins! "..win.." Dollar!", 'success')
				TriggerServerEvent('addz_qr_roulette:givemoney', action, win )
			else				
				SendNUIMessage({type = 'hide_roulette'})
				SetNuiFocus(false, false)
			    ingame = false
				RSGCore.Functions.Notify("Unfortunately next to it. Try it again!", 'primary')
			end
		elseif action == 'red' then
			local win = amount * 2
			if has_value(red, randomNumber) then
				SendNUIMessage({type = 'hide_roulette'})
				SetNuiFocus(false, false)
			    ingame = false

				RSGCore.Functions.Notify("Red wins! "..win.." Dollar!", 'success')
				TriggerServerEvent('addz_qr_roulette:givemoney', action, win )
			else
				SendNUIMessage({type = 'hide_roulette'})
				SetNuiFocus(false, false)
			    ingame = false
				RSGCore.Functions.Notify("Unfortunately next to it. Try it again!", 'primary')
			end
		elseif action == 'green' then
			local win = amount * 14
			if randomNumber == 0 then
				SendNUIMessage({type = 'hide_roulette'})
				SetNuiFocus(false, false)
			    ingame = false
				RSGCore.Functions.Notify("green! "..win.." Dollar!", 'success')
				TriggerServerEvent('addz_qr_roulette:givemoney', action, win )
			else
				SendNUIMessage({type = 'hide_roulette'})
				SetNuiFocus(false, false)
			    ingame = false
				RSGCore.Functions.Notify("Unfortunately next to it. Try it again!", 'primary')

			end
		end

		SendNUIMessage({type = 'hide_roulette'})
		SetNuiFocus(false, false)
		ingame = false
		game_during = false
		--TriggerEvent('addz_qr_roulette:start')
	else
		RSGCore.Functions.Notify("The wheel is turning ...", 'primary')

	end
end)

-- create roulette blips and prompt event --add by addzodus
Citizen.CreateThread(function()

	print('start roulette thread')
	for i = 1, #Config.RouletteLocation, 1 do
		print('roulette location ' .. json.encode(Config.RouletteLocation[i]))
		exports['rsg-core']:createPrompt(Config.RouletteLocation[i].name, Config.RouletteLocation[i].location, 0xF3830D8E, 'Open ' .. Config.RouletteLocation[i].name, {
			type = 'client',
			event = 'addz_qr_roulette:client_StartRoulette',
		})

		local rouletteBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, Config.RouletteLocation[i].location)
		SetBlipSprite(rouletteBlip, 3619367274, true)
		SetBlipScale(rouletteBlip, 0.2)
		Citizen.InvokeNative(0x9CB1A1623062F402, rouletteBlip, 'Roulette')
	end

end)

RegisterNetEvent('addz_qr_roulette:client_StartRoulette', function()

	--TriggerServerEvent('addz_qr_roulette:checkmoney')
	local playerMoney = RSGCore.Functions.GetPlayerData().money.cash

	TriggerEvent('addz_qr_roulette:start', playerMoney)
	

end)

