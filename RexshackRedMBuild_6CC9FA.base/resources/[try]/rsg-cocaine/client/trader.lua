local RSGCore = exports['rsg-core']:GetCoreObject()
local cocaineshop

-- prompts
Citizen.CreateThread(function()
    for cocaineshop, v in pairs(Config.CocaineShopLocations) do
        exports['rsg-core']:createPrompt(v.location, v.coords, RSGCore.Shared.Keybinds['J'], 'Open ' .. v.name, {
            type = 'client',
            event = 'rsg-cocaine:client:openMenu',
            args = {},
        })
        if v.showblip == true then
            local cocaineBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.coords)
            SetBlipSprite(cocaineBlip, Config.Blip.blipSprite, 1)
            SetBlipScale(cocaineBlip, Config.Blip.blipScale)
            Citizen.InvokeNative(0x9CB1A1623062F402, cocaineBlip, Config.Blip.blipName)
        end
    end
end)

-- draw marker if set to true in config
CreateThread(function()
    while true do
        local sleep = 0
        for cocaineshop, v in pairs(Config.CocaineShopLocations) do
            if v.showmarker == true then
                Citizen.InvokeNative(0x2A32FAA57B937173, 0x07DCE236, v.coords, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 215, 0, 155, false, false, false, 1, false, false, false)
            end
        end
        Wait(sleep)
    end
end)

-- outlaw menu
RegisterNetEvent('rsg-cocaine:client:openMenu', function(data)
    exports['rsg-menu']:openMenu({
        {
            header = "| Cocaine Trader Menu |",
            isMenuHeader = true,
        },
        {
            header = "Trade 10 Cocaine Leaves",
            txt = "trade 10 cocaine laves for 1 cocaine bag",
            params = {
                event = 'rsg-cocaine:server:tradecocaine',
                isServer = true,
                args = {trade = 1}
            }
        },
        {
            header = "Trade 50 Cocaine Leaves",
            txt = "trade 50 cocaine leaves for 5 cocaine bags",
            params = {
                event = 'rsg-cocaine:server:tradecocaine',
                isServer = true,
                args = {trade = 5}
            }
        },
        {
            header = "Trade 100 Cocaine Leaves",
            txt = "trade 100 cocaine leaves for 10 cocaine bags",
            params = {
                event = 'rsg-cocaine:server:tradecocaine',
                isServer = true,
                args = {trade = 10}
            }
        },
        {
            header = "Open Trader Shop",
            txt = "buy cocaine trade items",
            params = {
                event = 'rsg-cocaine:client:OpenCocaineShop',
                isServer = false,
                args = {}
            }
        },
        {
            header = "Close Menu",
            txt = '',
            params = {
                event = 'rsg-menu:closeMenu',
            }
        },
    })
end)

-- Cocaine trader shop
RegisterNetEvent('rsg-cocaine:client:OpenCocaineShop')
AddEventHandler('rsg-cocaine:client:OpenCocaineShop', function()
    local ShopItems = {}
    ShopItems.label = "Cocaine Trader"
    ShopItems.items = Config.CocaineShop
    ShopItems.slots = #Config.CocaineShop
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "cocaineShop_"..math.random(1, 99), ShopItems)
end)