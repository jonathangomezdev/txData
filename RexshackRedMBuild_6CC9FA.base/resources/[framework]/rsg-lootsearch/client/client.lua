local RSGCore = exports['rsg-core']:GetCoreObject()

CreateThread(function()
    exports['rsg-target']:AddTargetModel(Config.General.LootModels, {
        options = {
            {
                event = 'rsg-lootsearch:server:searchLoot',
                type = 'server',
                icon = "fa-solid fa-trash-can",
                label = Lang:t('info.search'),
            },
        },
        distance = Config.General.SearchDistance,
    })
end)

RegisterNetEvent('rsg-lootsearch:client:searchLoot', function(binId)
    RSGCore.Functions.Progressbar('rsg-lootsearch:searchingTrash', Lang:t("progressbar.searching"), Config.General.DurationOfSearch, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = Config.Animations.AnimationDictionary,
        anim = Config.Animations.Animation,
        flags = 16,
    }, {}, {}, function() -- Play When Done
        -- Clear ped task
        ClearPedTasks(PlayerPedId())

        TriggerServerEvent('rsg-lootsearch:server:searchedLoot', binId)

        -- Add stress
        if Config.Stress.AddStress then
            TriggerServerEvent('hud:server:GainStress', math.random(Config.Stress.MinStress, Config.Stress.MaxStress))
        end
    end, function() -- Play When Cancel
        -- Clear ped task
        ClearPedTasks(PlayerPedId())
    end)
end)
