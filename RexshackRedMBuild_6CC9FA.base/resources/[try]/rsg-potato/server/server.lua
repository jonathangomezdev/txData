local RSGCore = exports['rsg-core']:GetCoreObject()

RegisterServerEvent('qbr-potato:addHerbs')
AddEventHandler('qbr-potato:addHerbs', function() 
	local src = source
	local Player = RSGCore.Functions.GetPlayer(src)
	local firstname = Player.PlayerData.charinfo.firstname
    local lastname = Player.PlayerData.charinfo.lastname
	local randomNumber = math.random(1,100)

	if randomNumber > 0 and randomNumber <= 70 then
		local _subRan = math.random(1,5)
			if _subRan == 1 then
				Player.Functions.AddItem('potato', givepotato)
				TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['potato'], "add")
				TriggerClientEvent('RSGCore:Notify', src, 'you found a potato')
				TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' Is gathering potato   🥔')
			elseif _subRan == 3 then
				Player.Functions.AddItem('potato', givepotato)
				TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['potato'], "add")
				TriggerClientEvent('RSGCore:Notify', src, 'you found potato')
				TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' Is gathering potato   🥔')
			elseif _subRan == 4 then
				Player.Functions.AddItem('potato', givepotato)
				TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['potato'], "add")
				TriggerClientEvent('RSGCore:Notify', src, 'you found potato')
				TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' Is gathering potato   🥔')
			else
			TriggerClientEvent('RSGCore:Notify', src, 'you failed to find anything')
			TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' failed gathering potato   🥔')
		end

	elseif randomNumber > 70 and randomNumber <= 100 then
		local _subRan = math.random(1,4)
			if _subRan == 1 then
				Player.Functions.AddItem('potato', givepotato)
				TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['potato'], "add")
				TriggerClientEvent('RSGCore:Notify', src, 'you found potato')
				TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' Is gathering potato   🥔')
			elseif _subRan == 2 then
				Player.Functions.AddItem('potato', givepotato)
				TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['potato'], "add")
				TriggerClientEvent('RSGCore:Notify', src, 'you found potato')
				TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' Is gathering potato   🥔')
			else
				TriggerClientEvent('RSGCore:Notify', src, 'you failed to find anything')
				TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' failed gathering potato   🥔')
			end
		end
	end)

