local RSGCore = exports['rsg-core']:GetCoreObject()


RSGCore.Functions.CreateUseableItem("shrooms", function(source, item)
    local Player = RSGCore.Functions.GetPlayer(source)
	local firstname = Player.PlayerData.charinfo.firstname
    local lastname = Player.PlayerData.charinfo.lastname
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('rsg-drugeffects:Mushroom', source, item.name)
	    TriggerClientEvent("rsg-drugeffects:SetGoldenDeadeye", source, item.name)
		TriggerEvent('rsg-log:server:CreateLog', 'police', 'ILLEGAL DRUGS 🍄 ', 'orange', firstname..' '..lastname..' IS EATING SHROOMS 🍄 🍄 ')
    end
end)

RSGCore.Functions.CreateUseableItem("opium", function(source, item)
    local Player = RSGCore.Functions.GetPlayer(source)
	local firstname = Player.PlayerData.charinfo.firstname
    local lastname = Player.PlayerData.charinfo.lastname
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('rsg-drugeffects:Opium', source, item.name)
	    TriggerClientEvent("rsg-drugeffects:SetGoldenStamina", source, item.name)
		TriggerEvent('rsg-log:server:CreateLog', 'police', 'ILLEGAL DRUGS 💊 ', 'orange', firstname..' '..lastname..' IS SMOKING OPIUM  💊💊')
    end
end)

RSGCore.Functions.CreateUseableItem("joint", function(source, item)
    local Player = RSGCore.Functions.GetPlayer(source)
	local firstname = Player.PlayerData.charinfo.firstname
    local lastname = Player.PlayerData.charinfo.lastname
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('rsg-drugeffects:JointAnim', source, item.name)
	    TriggerClientEvent("rsg-drugeffects:SetGoldenHealth", source, item.name)
		TriggerEvent('rsg-log:server:CreateLog', 'police', 'ILLEGAL DRUGS 🚬 ', 'orange', firstname..' '..lastname..' IS SMOKING A JOINT 🚬 ')
    end
end)


