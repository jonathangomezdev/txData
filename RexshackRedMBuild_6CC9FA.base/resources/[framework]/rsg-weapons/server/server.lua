local RSGCore = exports['rsg-core']:GetCoreObject()

-- start of use ammo

RSGCore.Functions.CreateUseableItem('ammo_revolver', function(source, item)
    TriggerClientEvent('rsg-weapons:client:AddAmmo', source, 'AMMO_REVOLVER', Config.AmountRevolverAmmo, item)
end)

RSGCore.Functions.CreateUseableItem('ammo_pistol', function(source, item)
    TriggerClientEvent('rsg-weapons:client:AddAmmo', source, 'AMMO_PISTOL', Config.AmountPistolAmmo, item)
end)

RSGCore.Functions.CreateUseableItem('ammo_repeater', function(source, item)
    TriggerClientEvent('rsg-weapons:client:AddAmmo', source, 'AMMO_REPEATER', Config.AmountRepeaterAmmo, item)
end)

RSGCore.Functions.CreateUseableItem('ammo_rifle', function(source, item)
    TriggerClientEvent('rsg-weapons:client:AddAmmo', source, 'AMMO_RIFLE', Config.AmountRifleAmmo, item)
end)

RSGCore.Functions.CreateUseableItem('ammo_shotgun', function(source, item)
    TriggerClientEvent('rsg-weapons:client:AddAmmo', source, 'AMMO_SHOTGUN', Config.AmountShotgunAmmo, item)
end)

RSGCore.Functions.CreateUseableItem('ammo_arrow', function(source, item)
    TriggerClientEvent('rsg-weapons:client:AddAmmo', source, 'AMMO_ARROW', Config.AmountArrowAmmo, item)
end)

RSGCore.Functions.CreateUseableItem('ammo_varmint', function(source, item)
    TriggerClientEvent('rsg-weapons:client:AddAmmo', source, 'AMMO_22', Config.AmountRifleAmmo, item)
end)

RSGCore.Functions.CreateUseableItem('ammo_rifle_elephant', function(source, item)
    TriggerClientEvent('rsg-weapons:client:AddAmmo', source, 'AMMO_RIFLE_ELEPHANT', Config.AmountRifleAmmo, item)
end)

-- end of use ammo

-- save ammo
RegisterNetEvent('rsg-weapons:server:SaveAmmo', function(serie, ammo, ammoclip)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local svslot = nil
    local itemData
    for v,k in pairs(Player.PlayerData.items) do
        if k.type == 'weapon' then
            if k.info.serie == serie then
                svslot = k.slot
                itemData = Player.Functions.GetItemBySlot(svslot)
                itemData.info.ammo = ammo
                itemData.info.ammoclip = ammoclip
                Player.Functions.RemoveItem(itemData.name, itemData.amount, svslot)
                Player.Functions.AddItem(itemData.name, itemData.amount, svslot, itemData.info)
            end
        end
    end
end)

-- remove ammo from player
RegisterServerEvent('rsg-weapons:server:removeWeaponAmmoItem')
AddEventHandler('rsg-weapons:server:removeWeaponAmmoItem', function(ammoitem)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(ammoitem, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[ammoitem], 'remove')
    RSGCore.Functions.Notify(src, Lang:t('success.weapon_reloaded'), 'success')
end)

RegisterNetEvent('rsg-weapons:server:removeWeaponItem', function(weaponName, amount)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(weaponName, amount)
end)

-- Components Loader
RegisterNetEvent('rsg-weapons:server:LoadComponents', function(serial, hash)
    local src = source
    local decode = json.decode
    local Player = RSGCore.Functions.GetPlayer(src)

    if not Player then return end

    local citizenid = Player.PlayerData.citizenid

    local result = MySQL.Sync.fetchAll('SELECT components FROM player_weapons WHERE serial = @serial AND citizenid = @citizenid AND Components = 1',
    {
        serial = serial,
        citizenid = citizenid
    })

    if not result[1] or result[1] == 0 then return end

    local components = decode(result[1].components)

    TriggerClientEvent('rsg-weapons:client:LoadComponents', src, components, hash)
end)