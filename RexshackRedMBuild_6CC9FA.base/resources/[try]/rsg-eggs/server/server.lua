local RSGCore = exports['rsg-core']:GetCoreObject()

RegisterServerEvent('qbr-eggs:addHerbs')
AddEventHandler('qbr-eggs:addHerbs', function() 
	local src = source
	local Player = RSGCore.Functions.GetPlayer(src)
	local firstname = Player.PlayerData.charinfo.firstname
    local lastname = Player.PlayerData.charinfo.lastname
	local randomNumber = math.random(1,100)

	if randomNumber > 0 and randomNumber <= 70 then
		local _subRan = math.random(1,5)
			if _subRan == 1 then
				Player.Functions.AddItem('egg', giveegg)
				TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['egg'], "add")
				TriggerClientEvent('RSGCore:Notify', src, 'you found a egg')
				TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' Is gathering egg   🥔')
			elseif _subRan == 3 then
				Player.Functions.AddItem('egg', giveegg)
				TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['egg'], "add")
				TriggerClientEvent('RSGCore:Notify', src, 'you found egg')
				TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' Is gathering egg   🥔')
			elseif _subRan == 4 then
				Player.Functions.AddItem('egg', giveegg)
				TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['egg'], "add")
				TriggerClientEvent('RSGCore:Notify', src, 'you found egg')
				TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' Is gathering egg   🥔')
			else
			TriggerClientEvent('RSGCore:Notify', src, 'you failed to find anything')
			TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' failed gathering egg   🥔')
		end

	elseif randomNumber > 70 and randomNumber <= 100 then
		local _subRan = math.random(1,4)
			if _subRan == 1 then
				Player.Functions.AddItem('egg', giveegg)
				TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['egg'], "add")
				TriggerClientEvent('RSGCore:Notify', src, 'you found egg')
				TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' Is gathering egg   🥔')
			elseif _subRan == 2 then
				Player.Functions.AddItem('egg', giveegg)
				TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['egg'], "add")
				TriggerClientEvent('RSGCore:Notify', src, 'you found egg')
				TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' Is gathering egg   🥔')
			else
				TriggerClientEvent('RSGCore:Notify', src, 'you failed to find anything')
				TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' failed gathering egg   🥔')
			end
		end
	end)

