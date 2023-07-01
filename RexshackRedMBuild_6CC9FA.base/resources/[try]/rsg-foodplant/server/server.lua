local RSGCore = exports['rsg-core']:GetCoreObject()

RegisterServerEvent('qbr-foodplant:addHerbs')
AddEventHandler('qbr-foodplant:addHerbs', function() 
	local src = source
	local Player = RSGCore.Functions.GetPlayer(src)
	local firstname = Player.PlayerData.charinfo.firstname
    local lastname = Player.PlayerData.charinfo.lastname
	local randomNumber = math.random(1,100)

	if randomNumber > 0 and randomNumber <= 70 then
		local _subRan = math.random(1,5)
			if _subRan == 1 then
				Player.Functions.AddItem('carrotseed', givecarrot)
				TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['carrotseed'], "add")
				TriggerClientEvent('RSGCore:Notify', src, 'you found a carrotseed')
				TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' Is gathering food   🍚')
			elseif _subRan == 3 then
				Player.Functions.AddItem('tomato', givetomatoseed)
				TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['tomato'], "add")
				TriggerClientEvent('RSGCore:Notify', src, 'you found tomatoes')
				TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' Is gathering food   🍚')
			elseif _subRan == 4 then
				Player.Functions.AddItem('cornseed', givecornseed)
				TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['cornseed'], "add")
				TriggerClientEvent('RSGCore:Notify', src, 'you found cornseed')
				TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' Is gathering food   🍚')
			else
			TriggerClientEvent('RSGCore:Notify', src, 'you failed to find anything')
		end

	elseif randomNumber > 70 and randomNumber <= 100 then
		local _subRan = math.random(1,4)
			if _subRan == 1 then
				Player.Functions.AddItem('indtobacco', giveindtobacco)
				TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['indtobacco'], "add")
				TriggerClientEvent('RSGCore:Notify', src, 'you found indian tobacco')
				TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' Is gathering food   🍚')
			elseif _subRan == 2 then
				Player.Functions.AddItem('broccoliseed', givebroccoliseed)
				TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['broccoliseed'], "add")
				TriggerClientEvent('RSGCore:Notify', src, 'you found broccoliseed')
				TriggerEvent('rsg-log:server:CreateLog', 'shops', 'Gathering ', 'orange', firstname..' '..lastname..' Is gathering food   🍚')
			else
				TriggerClientEvent('RSGCore:Notify', src, 'you failed to find anything')
			end
		end
	end)

