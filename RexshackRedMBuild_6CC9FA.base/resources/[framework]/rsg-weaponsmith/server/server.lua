local RSGCore = exports['rsg-core']:GetCoreObject()

-----------------------------------------------------------------------------------

-- use cleankit
RSGCore.Functions.CreateUseableItem("cleankit", function(source, item)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    TriggerClientEvent('rsg-weaponsmith:client:serviceweapon', src, 'cleankit', 1)
end)

-----------------------------------------------------------------------------------

-- check player has items
RSGCore.Functions.CreateCallback('rsg-weaponsmith:server:checkitems', function(source, cb, craftitems)
    local src = source
    local hasItems = false
    local icheck = 0
    local Player = RSGCore.Functions.GetPlayer(src)
    for k, v in pairs(craftitems) do
        if Player.Functions.GetItemByName(v.item) and Player.Functions.GetItemByName(v.item).amount >= v.amount then
            icheck = icheck + 1
            if icheck == #craftitems then
                cb(true)
            end
        else
            TriggerClientEvent('RSGCore:Notify', src, Lang:t('error.you_dont_have_the_required_items'), 'error')
            cb(false)
            return
        end
    end
end)

-----------------------------------------------------------------------------------

-- finish crafting
RegisterServerEvent('rsg-weaponsmith:server:finishcrafting')
AddEventHandler('rsg-weaponsmith:server:finishcrafting', function(craftitems, receive)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    -- remove craftitems
    for k, v in pairs(craftitems) do
        if Config.Debug == true then
            print(v.item)
            print(v.amount)
        end
        Player.Functions.RemoveItem(v.item, v.amount)
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[v.item], "remove")
    end
    -- add items
    Player.Functions.AddItem(receive, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[receive], "add")
    TriggerClientEvent('RSGCore:Notify', src, Lang:t('success.crafting_finished'), 'success')
end)

-----------------------------------------------------------------------------------

-- Check Weapon Customisation Request
RSGCore.Functions.CreateCallback('rsg-weaponsmith:server:CheckCustRequest', function(source, cb)
    local empty = '[]'
    local data = {}
    local town = 0
	local Player = RSGCore.Functions.GetPlayer(source)
    local myJob = Player.PlayerData.job.name

    for i = 1, #Config.WeaponCraftingPoint do
        local loc = Config.WeaponCraftingPoint[i]
        local job = loc.job

        if myJob == job then
            town = loc.town

            break
        end
    end

    local result = MySQL.Sync.fetchAll('SELECT * FROM player_weapons WHERE enabled = 0 AND components != @empty AND price != 0.00 and town = @town',
    {
        empty = empty,
        town = town
    })

    if not result then
        return cb(nil)
    end

    local results = result

    for i = 1, #results do
        local res = results[i]
        local citizenid = res.citizenid
        local name = Player.PlayerData.charinfo.firstname..' '..Player.PlayerData.charinfo.lastname
        local serial = res.serial
        local price = res.price

        data[#data + 1] = {citizenid = citizenid, name = name, serial = serial, price = price}
    end

    if Config.Debug then
        for i = 1, #data do
            local cust = data[i]

            print(cust.name)
            print(cust.serial)
            print(cust.price)
        end
    end

    cb(data)
end)

-- Approve Weapon Customisation Request
RegisterServerEvent('rsg-weaponsmith:server:ApproveCustRequest')
AddEventHandler('rsg-weaponsmith:server:ApproveCustRequest', function(data)
    local src = source
    local Player = RSGCore.Functions.GetPlayerByCitizenId(data.citizenid) or RSGCore.Functions.GetOfflinePlayerByCitizenId(data.citizenid)
    local FullName = Player.PlayerData.charinfo.firstname..' '..Player.PlayerData.charinfo.lastname
    local Smith = RSGCore.Functions.GetPlayer(src)
    local SmithName = Smith.PlayerData.charinfo.firstname..' '..Smith.PlayerData.charinfo.lastname
    local empty = '[]'

    if Config.Debug then
        print(data.serial)
        print(data.citizenid)
        print(FullName)
        print(SmithName)
    end

    local result = MySQL.Sync.fetchAll('SELECT * FROM player_weapons WHERE citizenid = @citizenid AND serial = @serial AND enabled = 0 AND components != @empty AND price != 0.00',
    {
        citizenid = data.citizenid,
        serial = data.serial,
        empty = empty
    })

    if not result then return end

    MySQL.Sync.execute("UPDATE player_weapons SET enabled = 1, price = 0.00 WHERE serial = @serial AND citizenid = @citizenid",
    {
        ['serial'] = data.serial,
        ['citizenid'] = data.citizenid
    })

    local tsource = Player.PlayerData.source

    if tsource then
        RSGCore.Functions.Notify(tsource, 'Your weapon customisation request for a weapon with the serial number of '..data.serial..' has been approved by '..SmithName..'!\n\nPlease re-equip the weapon to apply the customisations effect!', 'primary', 5000)
    end

    RSGCore.Functions.Notify(src, 'You have approved '..FullName..'\'s weapon customisation request for a weapon with the serial number of '..data.serial..'!', 'primary', 5000)
end)