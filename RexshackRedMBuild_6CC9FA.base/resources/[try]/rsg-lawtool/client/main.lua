local RSGCore = exports['rsg-core']:GetCoreObject()
local lawtool = 0
local deployedtable = nil

exports['rsg-target']:AddTargetModel(1149781183, {
    options = {
        {
            type = "client",
            event = 'rsg-lawtool:client:pickup',
            icon = "fas fa-undo",
            label = "Pickup Law Tool Box",
            distance = 3.0
        }
    }
})

exports['rsg-target']:AddTargetModel(1149781183, {
    options = {
        {
            icon = 'far fa-gear',
            label = 'Law Tool Box',
            type = "client",
            event = 'rsg-lawtool:client:lawtoolMenu',
        },
    },
    distance = 2.0,
})

RegisterNetEvent('rsg-lawtool:client:pickup', function()
    if deployedtable ~= nil then
        local obj = NetworkGetEntityFromNetworkId(deployedtable)
        local objCoords = GetEntityCoords()
        local ped = PlayerPedId()
        NetworkRequestControlOfEntity(obj)
        SetEntityAsMissionEntity(obj,false,true)
        DeleteEntity(obj)
        DeleteObject(obj)
        if not DoesEntityExist(obj) then
            TriggerServerEvent('rsg-lawtool:server:pickup', deployedtable)
            TriggerServerEvent('rsg-lawtool:server:pickuptab')
            deployedtable = nil
        end
        Wait(500)
        ClearPedTasks(ped)
    else
        -- handle case where object has not been deployed
        RSGCore.Functions.Notify("No Law Tool Box equipment to pick up.", 'error')
    end
end)

RegisterNetEvent('rsg-lawtool:client:lawtool', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)
    local forward = GetEntityForwardVector(ped)
    local x, y, z = table.unpack(coords + forward * 0.5)
    local object = CreateObject(GetHashKey('p_boxlrgtool01x'), x, y, z, true, false, false)
    TaskStartScenarioInPlace(ped, GetHashKey("WORLD_HUMAN_CROUCH_INSPECT"), -1, true, "StartScenario", 5000, false)
    PlaceObjectOnGroundProperly(object)
    SetEntityHeading(object, heading)
    FreezeEntityPosition(object, true)
	Wait(500)
    ClearPedTasks(ped)
    deployedtable = NetworkGetNetworkIdFromEntity(object)
end)

RegisterNetEvent('rsg-lawtool:client:lawtoolMenu', function()
    lawtool = {}
    for k, v in pairs(Config.lawtoolRecipes) do
        local item = {}
        local text = ""
        for k, v in pairs(v.ingredients) do
            text = text .. "" .. RSGCore.Shared.Items[v.item].label .. ":" .. v.amount .. "x"
        end
        lawtool[#lawtool + 1] = {

            title = k,
            description = text,
            event = 'rsg-lawtool:client:checkingredients',
            args = {
                name = v.name,
                item = k,
                crafttime = v.crafttime,
                receive = v.receive
            }
        }
    end
    lib.registerContext({
        id = 'rsg:lawtool',
        title = 'Law Tool Box',
        options = lawtool
    })
    lib.showContext('rsg:lawtool')
end)

RegisterNetEvent('rsg-lawtool:client:checkingredients', function(data)
    RSGCore.Functions.TriggerCallback('rsg-lawtool:server:checkingredients', function(hasRequired)
    if (hasRequired) then
        if Config.Debug == true then
            print("passed")
        end
        TriggerEvent('rsg-lawtool:crafting', data.name, data.item, tonumber(data.crafttime), data.receive)
    else
        if Config.Debug == true then
            print("failed")
        end
        return
    end
    end, Config.lawtoolRecipes[data.item].ingredients)
end)

RegisterNetEvent('rsg-lawtool:crafting', function(name, item, crafttime, receive)
    local ingredients = Config.lawtoolRecipes[item].ingredients
    local ped = PlayerPedId()
    TaskStartScenarioInPlace(ped, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), crafttime, true, false, false, false)
    RSGCore.Functions.Progressbar('lawtool', 'crafting'..name, crafttime, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent('rsg-lawtool:server:finishcrafting', ingredients, receive)
        ClearPedTasks(ped)
    end)
end)