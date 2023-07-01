local RSGCore = exports['rsg-core']:GetCoreObject()
local searching, nearest = false, 0

RegisterNetEvent("rsg-diamond:try_search")
RegisterNetEvent("rsg-diamond:do_search")
RegisterNetEvent("rsg-diamond:abort_search")
RegisterNetEvent("rsg-diamond:harvest")

AddEventHandler("rsg-diamond:try_search", function()
    searching, nearest = false, 0
end)

AddEventHandler("rsg-diamond:do_search", function(holeIndex, searchTime)
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), searchTime, true, false, false, false)
    RSGCore.Functions.Progressbar("searching", "Searching...", searchTime, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        ClearPedTasksImmediately(playerPed)
        nearest = 0
        searching = false
        TriggerServerEvent("rsg-diamond:do_search", holeIndex)
    end)
end)

AddEventHandler("rsg-diamond:harvest", function()
    local playerPed = PlayerPedId()
    local dict, anim = "mech_skin@chicken@field_dress", "success"
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(0)
    end
    TaskPlayAnim(playerPed, dict, anim, 1.0, 1.0, 4000, 16, 0.0, false, false, false, '', false)
    RSGCore.Functions.Progressbar("harvesting", "Harvesting...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        ClearPedTasksImmediately(playerPed)
        RemoveAnimDict(dict)
        TriggerServerEvent("rsg-diamond:harvest")
    end)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local sleep = true
        local pedID = PlayerPedId()
        local DeadOrDying = IsPedDeadOrDying(pedID)
        if (not searching) and (not DeadOrDying) then
            local coords = GetEntityCoords(pedID)
            for index, pos in ipairs(Config.DiamondMines) do
                local distance = #(coords - pos)
                if distance <= 1.5 then
                    exports['rsg-core']:DrawText('Press G to collect! ', 'left')
                    sleep = false
                    nearest = index
                    break
                else
                    exports['rsg-core']:HideText()
                end
            end
        elseif searching and DeadOrDying then
            searching = false
            TriggerServerEvent("rsg-diamond:abort_search")
        end
        if (not searching) and (nearest > 0) and (not DeadOrDying) then
            if IsControlJustReleased(0, RSGCore.Shared.Keybinds['G']) then
                if Config.ItemRequired == true then
                    local hasItem = RSGCore.Functions.HasItem('shovel', 1)
                    if hasItem then
                        sleep = true
                        searching = true
                        TriggerServerEvent("rsg-diamond:try_search", nearest)
                    else
                        RSGCore.Functions.Notify('you need a shovel!', 'error')
                    end
                else
                    sleep = true
                    searching = true
                    TriggerServerEvent("rsg-diamond:try_search", nearest)
                end
            end
        end
        nearest = 0
        if sleep then Citizen.Wait(500) end
    end
end)
