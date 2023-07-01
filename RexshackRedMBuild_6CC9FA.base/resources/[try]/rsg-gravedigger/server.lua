local RSGCore = exports['rsg-core']:GetCoreObject()
data = {}

local TEXTS = Config.Texts
local TEXTURES = Config.Textures

local DiggedGraves = {}

RegisterServerEvent("ricx_grave_robbery:check_shovel")
AddEventHandler("ricx_grave_robbery:check_shovel", function(id)
    local _source = source
    if DiggedGraves[id] == true then 
        TriggerClientEvent('RSGCore:Notify', _source, TEXTS.GraveRobbed, 'error')
        return 
    end
    local count = nil
    if Config.framework == "redemrp" then
        local itemD = data.getItem(_source, Config.ShovelItem)
        if itemD and itemD.ItemAmount > 0 then 
            count = itemD.ItemAmount
        end
    elseif Config.framework == "vorp" then
        count = VorpInv.getItemCount(_source, Config.ShovelItem)
    elseif Config.framework == "rsg" then 
        local Player = RSGCore.Functions.GetPlayer(_source)
        local hasitem = Player.Functions.GetItemByName(Config.ShovelItem)
        if hasitem and hasitem.amount > 0 then 
            count = hasitem.amount
        end
    end
    if count and count > 0 then
        TriggerClientEvent("ricx_grave_robbery:start_dig", _source, id)
    else
        TriggerClientEvent('RSGCore:Notify', _source, TEXTS.NoShovel, 'error')
    end
end)
RegisterServerEvent("ricx_grave_robbery:reward")
AddEventHandler("ricx_grave_robbery:reward", function(id)
    local _source = source
    local tier = math.random(1, 5) -- Randomly select a tier
    local reward = Config.Rewards[tier] -- Get the reward for the selected tier

    if not reward then
        print("Invalid reward tier: " .. tier)
        return
    end

    Citizen.Wait(math.random(reward.minWaitTime, reward.maxWaitTime))

    if DiggedGraves[id] then
        TriggerClientEvent('RSGCore:Notify', _source, TEXTS.GraveRobbed, 'error')
        return
    end
    DiggedGraves[id] = true

    -- Get the loot box for the selected tier
    local items = reward.items -- Get the list of items for the selected tier
    local selectedItems = {} -- Table to store selected items

    -- Select a random amount of random items from the list
    local amount = math.random(1, 5)
    for i = 1, amount do
        local randomIndex = math.random(1, #items)
        local selectedItem = items[randomIndex]
        table.insert(selectedItems, selectedItem.item)
    end

    -- Give the selected items to the player
    if Config.framework == "redemrp" then
        local itemD = data.getItem(_source, lootbox)
        itemD.AddItem(1)
        for _, item in ipairs(selectedItems) do
            local itemD = data.getItem(_source, item)
            itemD.AddItem(1)
        end
    elseif Config.framework == "vorp" then
        VorpInv.addItem(_source, lootbox, 1)
        for _, item in ipairs(selectedItems) do
            VorpInv.addItem(_source, item, 1)
        end
    elseif Config.framework == "rsg" then
        local User = RSGCore.Functions.GetPlayer(_source)
        for _, item in ipairs(selectedItems) do
            User.Functions.AddItem(item, 1)
        end
    end

    TriggerClientEvent('RSGCore:Notify', _source, TEXTS.FoundItem, 'success')
    -- Notify the player about the found items individually
    for _, item in ipairs(selectedItems) do
        TriggerClientEvent('RSGCore:Notify', _source, "+ " .. item, 'success')
    end
end)
