local RSGCore = exports['rsg-core']:GetCoreObject()

------------------------------------------------------------------------------------------------------

-- prompts and blips
Citizen.CreateThread(function()
    for tobacco, v in pairs(Config.TobaccoFactoryLocations) do
        exports['rsg-core']:createPrompt(v.prompt, v.coords, RSGCore.Shared.Keybinds['J'], 'Open ' .. v.name, {
            type = 'client',
            event = 'rsg-tobaccofactory:client:factorymenu',
            args = {},
        })
        if v.showblip == true then
            local FactoryBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.coords)
            SetBlipSprite(FactoryBlip, GetHashKey(Config.Blip.blipSprite), true)
            SetBlipScale(FactoryBlip, Config.Blip.blipScale)
            Citizen.InvokeNative(0x9CB1A1623062F402, FactoryBlip, Config.Blip.blipName)
        end
    end
end)

-- draw marker if set to true in config
CreateThread(function()
    while true do
        local sleep = 0
        for fishvendor, v in pairs(Config.TobaccoFactoryLocations) do
            if v.showmarker == true then
                Citizen.InvokeNative(0x2A32FAA57B937173, 0x07DCE236, v.coords, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 215, 0, 155, false, false, false, 1, false, false, false)
            end
        end
        Wait(sleep)
    end
end)

------------------------------------------------------------------------------------------------------

-- factory menu
RegisterNetEvent('rsg-tobaccofactory:client:factorymenu', function()
    factoryMenu = {}
    factoryMenu = {
        {
            header = "🏭 | Factory Menu",
            isMenuHeader = true,
        },
    }
    for k, v in pairs(Config.FactoryOptions) do
        local item = {}
        local text = ""
        for k, v in pairs(v.factoryitems) do
            text = text .. "- " .. RSGCore.Shared.Items[v.item].label .. ": " .. v.amount .. "x <br>"
        end
        factoryMenu[#factoryMenu + 1] = {
            header = k,
            txt = text,
            params = {
                event = 'rsg-tobaccofactory:client:checkitems',
                args = {
                    name = v.name,
                    item = k,
                    factorytime = v.factorytime,
                    receive = v.receive
                }
            }
        }
    end
    factoryMenu[#factoryMenu + 1] = {
        header = "❌ | Close Menu",
        txt = '',
        params = {
            event = 'rsg-menu:closeMenu',
        }
    }
    exports['rsg-menu']:openMenu(factoryMenu)
end)

------------------------------------------------------------------------------------------------------

-- check player has the items
RegisterNetEvent('rsg-tobaccofactory:client:checkitems', function(data)
    RSGCore.Functions.TriggerCallback('rsg-tobaccofactory:server:itemcheck', function(hasRequired)
    if (hasRequired) then
        if Config.Debug == true then
            print("passed")
        end
        TriggerEvent('rsg-tobaccofactory:client:startfactory', data.name, data.item, tonumber(data.factorytime), data.receive)
    else
        if Config.Debug == true then
            print("failed")
        end
        return
    end
    end, Config.FactoryOptions[data.item].factoryitems)
end)

-- start factory
RegisterNetEvent('rsg-tobaccofactory:client:startfactory', function(name, item, factorytime, receive)
    local factoryitems = Config.FactoryOptions[item].factoryitems
    RSGCore.Functions.Progressbar('make-product', 'Making a '..name, factorytime, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent('rsg-tobaccofactory:server:giveitem', factoryitems, receive)
    end)
end)

------------------------------------------------------------------------------------------------------
