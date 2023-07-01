local RSGCore = exports['rsg-core']:GetCoreObject()

RegisterServerEvent("bm-sellwildhorse:server:sold")
AddEventHandler("bm-sellwildhorse:server:sold", function()
    local _source = source
    local Player = RSGCore.Functions.GetPlayer(_source)
	local firstname = Player.PlayerData.charinfo.firstname
    local lastname = Player.PlayerData.charinfo.lastname
    local am = math.random(Config.SellHorse.MinPrice, Config.SellHorse.MaxPrice)

    if not Player.Functions.AddMoney("cash", am, "wild-horse-sold") then return end

    TriggerClientEvent('RSGCore:Notify', _source, "Horse sold for "..am.."!", 'primary')
	TriggerEvent('rsg-log:server:CreateLog', 'wildhorse', 'WILD HORSE 🐎', 'yellow', firstname..' '..lastname..' Horse sold for '..am..' 💰 ')
end)
