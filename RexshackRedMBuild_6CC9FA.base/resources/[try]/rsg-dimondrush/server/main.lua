local RSGCore = exports['rsg-core']:GetCoreObject()

RegisterServerEvent("rsg-diamond:try_search")
RegisterServerEvent("rsg-diamond:do_search")
RegisterServerEvent("rsg-diamond:abort_search")
RegisterServerEvent("rsg-diamond:harvest")

local holes_searched = {}
local holes_searching = {}

local function AbortSearch(_source)
    for k, v in ipairs(holes_searching) do
        if v then
            if v == _source then
                holes_searching[k] = false
            end
        end
    end
end

AddEventHandler("rsg-diamond:try_search", function(holeIndex)
    local _source = source
    local allow = true
    local curtime = os.time()
    if holes_searching[holeIndex] then
        TriggerClientEvent('RSGCore:Notify', _source, 'This hole is currently being searched.', 'error')
        return
    end
    holes_searching[holeIndex] = _source
    if holes_searched[holeIndex] then
        if curtime < (holes_searched[holeIndex] + Config.SearchDelay) then
            TriggerClientEvent('RSGCore:Notify', _source, 'Not enough time has passed since this hole was last searched.', 'error')
            allow = false
        end
    end
    if not allow then
        holes_searching[holeIndex] = false
        TriggerClientEvent("rsg-diamond:try_search", _source)
        return
    end
    holes_searched[holeIndex] = curtime
    local searchTime = math.random(Config.SearchTimeMin, Config.SearchTimeMax)
    TriggerClientEvent("rsg-diamond:do_search", _source, holeIndex, searchTime)
end)

AddEventHandler("rsg-diamond:do_search", function(holeIndex)
    local _source = source
    if (holes_searching[holeIndex] or 0) ~= _source then
        TriggerClientEvent("rsg-diamond:try_search", _source)
        return
    end
    holes_searching[holeIndex] = false
    local count
    if type(Config.SearchRewardCount) == "table" then
        count = math.random(Config.SearchRewardCount[1], Config.SearchRewardCount[2])
    else
        count = Config.SearchRewardCount
    end
    local Player = RSGCore.Functions.GetPlayer(_source)
    Player.Functions.AddItem(Config.DiamondItemName, count)
    TriggerClientEvent('RSGCore:Notify', _source, 'You found ' .. count .. ' ' .. Config.DiamondItemLabel, 'success')
end)

AddEventHandler("rsg-diamond:abort_search", function()
    AbortSearch(source)
end)

local harvesting = {}
AddEventHandler("rsg-diamond:harvest", function()
    local _source = source
    if not harvesting[_source] then return end
    local Player = RSGCore.Functions.GetPlayer(_source)
    Player.Functions.AddItem(Config.DiamondGivenItemName, harvesting[_source])
    TriggerClientEvent('RSGCore:Notify', _source, 'You harvested ' .. harvesting[_source] .. ' ' .. Config.DiamondGivenItemLabel, 'success')
    harvesting[_source] = nil
end)

RSGCore.Functions.CreateUseableItem(Config.DiamondItemName, function(source)
    if harvesting[source] then return end
    local count
    if type(Config.DiamondGivenItemAmount) == "table" then
        count = math.random(Config.DiamondGivenItemAmount[1], Config.DiamondGivenItemAmount[2])
    else
        count = Config.DiamondGivenItemAmount
    end
    local Player = RSGCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem(Config.DiamondItemName, 1)
    harvesting[source] = count
    TriggerClientEvent("rsg-diamond:harvest", source)
end)

AddEventHandler("playerDropped", function(reason)
    AbortSearch(source)
end)

AddEventHandler("onResourceStart", function(resourceName)
    if resourceName == GetCurrentResourceName() then
        for k, v in ipairs(Config.DiamondMines) do
            holes_searched[k] = false
            holes_searching[k] = false
        end
    end
end)
