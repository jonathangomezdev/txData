local RSGCore = exports['rsg-core']:GetCoreObject()

local players = {}
-- Key = entity id
-- Value = time of the search
local searechBins = {}

local function hasCooldownPassed(src)
    local last = players[src]
    if last then
        local now = GetGameTimer()
        if now - last < Config.General.SearchCooldown then
            return false
        end
    end
    return true
end

local function hasBeenSearched(binId)
    local last = searechBins[binId]
    if last then
        local now = GetGameTimer()
        if now - last < Config.General.RefillTime then
            return true
        end
    end
    return false
end

local function isLegit(src)
    local playersLastSearch = players[src]
    if not playersLastSearch then
        return true
    end

    if GetGameTimer() - playersLastSearch >= Config.General.DurationOfSearch then
        return true
    end

    return false
end

RegisterNetEvent('rsg-lootsearch:server:searchLoot', function(data)
    local src = source

    -- If cooldown didnt pass display error message to a player with the remaining
    -- time to wait
    if not hasCooldownPassed(src) then
        local timeLeft = ((players[src] + Config.General.SearchCooldown - GetGameTimer()) / 1000)

        TriggerClientEvent('RSGCore:Notify', src, Lang:t("error.cooldown", { time = math.floor(timeLeft) }), "error")
        return
    end

    -- If player has already searched trash in the last 10 minutes
    -- display error message
    local binId = data.entity
    if hasBeenSearched(binId) then
        TriggerClientEvent('RSGCore:Notify', src, Lang:t("error.hasBeenSearched"), "error")
        return
    end

    TriggerClientEvent('rsg-lootsearch:client:searchLoot', src, binId)
end)

local function rollPrecentage(precantage)
    local roll = math.random(1, 100)
    if roll <= precantage then
        return true
    end
    return false
end

-- Register NetEvent rsg-trashsearch:server:searchedLoot
RegisterNetEvent('rsg-lootsearch:server:searchedLoot', function(binId)
    local src = source

    -- Check if player is legit
    if not isLegit(src) then
        TriggerClientEvent("rsg-anticheat:client:ban", src, "rsg-lootsearch -> Player " .. GetPlayerName(src) .. " tried to bypass cooldown")
        error("rsg-lootsearch -> Player tried to bypass cooldown")
    end

    local player = RSGCore.Functions.GetPlayer(src)

    -- Set last search time
    players[src] = GetGameTimer()

    -- Set last search time
    searechBins[binId] = GetGameTimer()

    if not rollPrecentage(Config.Reward.Chance) then
        TriggerClientEvent('RSGCore:Notify', src, Lang:t("error.nothingFound"), "error")
        return
    end

    if rollPrecentage(Config.Reward.Money.Chance) then
        local amount = math.random(Config.Reward.Money.Min, Config.Reward.Money.Max)
        TriggerClientEvent('RSGCore:Notify', src, Lang:t("reward.money", { amount = amount }), "success")
        player.Functions.AddMoney("cash", amount)
        return
    end

    local items = {}

    for i = 1, math.random(Config.Reward.MinNumberOfItems, Config.Reward.MaxNumberOfItems) do
        local item = Config.Reward.ItemList[math.random(1, #Config.Reward.ItemList)]
        items[#items + 1] = item
    end

    for k, v in pairs(items) do
        player.Functions.AddItem(v, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[v], "add")
    end
end)
