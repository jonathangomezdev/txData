local RSGCore = exports['rsg-core']:GetCoreObject()

-- Buy New Vehicles
RegisterServerEvent('rsg-vehicles:BuyVehicle')
AddEventHandler('rsg-vehicles:BuyVehicle', function(buyData, location)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local citizenId = Player.PlayerData.citizenid
    local name = buyData.vehicleName
    local model = buyData.vehicleModel
    local buyPrice = buyData.buyPrice
    local money = Player.PlayerData.money.cash
    if money >= buyPrice then
        Player.Functions.RemoveMoney('cash', buyPrice)
        TriggerClientEvent('RSGCore:Notify', src, _U("bought") .. name .. _U("frcash") .. buyPrice, 'success', 6000)

        MySQL.Async.execute('INSERT INTO vehicles (citizenid, name, model, location) VALUES (@citizenid, @name, @model, @location)', {
            ['@citizenid'] = citizenId,
            ['@name'] = name,
            ['@model'] = model,
            ['@location'] = location
        })
    else
        TriggerClientEvent('RSGCore:Notify', src, _U("shortCash"), 'error', 6000)
    end
end)

-- Get List of Owned Vehicles
RegisterServerEvent('rsg-vehicles:GetOwnedVehicles')
AddEventHandler('rsg-vehicles:GetOwnedVehicles', function(location, shopId)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local citizenId = Player.PlayerData.citizenid

    local result = MySQL.query.await('SELECT * FROM vehicles WHERE citizenid = @citizenid AND location = @location', {
        ['@citizenid'] = citizenId,
        ['@location'] = location
    })
    if result[1] then
        TriggerClientEvent("rsg-vehicles:OwnedVehiclesMenu", src, result, shopId)
    else
        TriggerClientEvent('RSGCore:Notify', src, _U("noVehicles"), 'error', 6000)
    end
end)

-- Sell Owned Vehicles
RegisterServerEvent('rsg-vehicles:SellVehicle')
AddEventHandler('rsg-vehicles:SellVehicle', function(ownedData, vehicleData)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local citizenId = Player.PlayerData.citizenid
    local name = ownedData.name
    local model = ownedData.model
    local location = ownedData.location
    local sellPrice = vehicleData.sellPrice

    Player.Functions.AddMoney('cash', sellPrice)
    TriggerClientEvent('RSGCore:Notify', src, _U("sold") .. name .. _U("frcash") .. sellPrice, 'success', 6000)

    MySQL.Async.execute('DELETE FROM vehicles WHERE citizenid = @citizenid AND location = @location AND name = @name AND model = @model LIMIT 1', {
        ['@citizenid'] = citizenId,
        ['@location'] = location,
        ['@name'] = name,
        ['@model'] = model
    })
end)

-- Transfer Owned Vehicles Between Shops
RegisterServerEvent('rsg-vehicles:TransferVehicle')
AddEventHandler('rsg-vehicles:TransferVehicle', function(ownedData, transferLocation, transferMode, vehicleData, shopName)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local citizenId = Player.PlayerData.citizenid
    local name = ownedData.name
    local model = ownedData.model
    local location = ownedData.location

    if transferMode == "menuTransfer" then
        local transferPrice = vehicleData.transferPrice
        local money = Player.PlayerData.money.cash
        if money >= transferPrice then
            Player.Functions.RemoveMoney('cash', transferPrice)
            TriggerClientEvent('RSGCore:Notify', src, _U("transferred") .. name .. _U("to") .. shopName .. _U("frcash") .. transferPrice, 'success', 7000)

            MySQL.Async.execute('UPDATE vehicles SET location = @transferLocation WHERE citizenid = @citizenid AND location = @location AND name = @name AND model = @model LIMIT 1', {
                ['@citizenid'] = citizenId,
                ['@location'] = location,
                ['@name'] = name,
                ['@model'] = model,
                ['@transferLocation'] = transferLocation
            })
        else
            TriggerClientEvent('RSGCore:Notify', src, _U("shortCash"), 'error', 6000)
        end

    elseif transferMode == "driveTransfer" then

        MySQL.Async.execute('UPDATE vehicles SET location = @transferLocation WHERE citizenid = @citizenid AND location = @location AND name = @name AND model = @model LIMIT 1', {
            ['@citizenid'] = citizenId,
            ['@location'] = location,
            ['@name'] = name,
            ['@model'] = model,
            ['@transferLocation'] = transferLocation
        })
    end
end)