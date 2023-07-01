local RSGCore = exports['rsg-core']:GetCoreObject()
local stove = 0
local deployedtable = nil

exports['rsg-target']:AddTargetModel(-2054771143, {
    options = {
        {
            type = "client",
            event = 'rsg-stove:client:pickup',
            icon = "fas fa-undo",
            label = "Pickup Stove",
            distance = 3.0
        }
    }
})

exports['rsg-target']:AddTargetModel(-2054771143, {
    options = {
        {
            icon = 'far fa-gear',
            label = 'Stove',
            type = "client",
            event = 'rsg-stove:client:StoveMenu',
        },
    },
    distance = 2.0,
})

RegisterNetEvent('rsg-stove:client:pickup', function()
    if deployedtable ~= nil then
        local obj = NetworkGetEntityFromNetworkId(deployedtable)
        local objCoords = GetEntityCoords()
        local ped = PlayerPedId()
        NetworkRequestControlOfEntity(obj)
        SetEntityAsMissionEntity(obj,false,true)
        DeleteEntity(obj)
        DeleteObject(obj)
        if not DoesEntityExist(obj) then
            TriggerServerEvent('rsg-stove:server:pickup', deployedtable)
            TriggerServerEvent('rsg-stove:server:pickuptab')
            deployedtable = nil
        end
        Wait(500)
        ClearPedTasks(ped)
    else
        -- handle case where object has not been deployed
        RSGCore.Functions.Notify("No stove equipment to pick up.", 'error')
    end
end)

RegisterNetEvent('rsg-stove:client:stove', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)
    local forward = GetEntityForwardVector(ped)
    local x, y, z = table.unpack(coords + forward * 0.5)
    local object = CreateObject(GetHashKey('p_stove09x'), x, y, z, true, false, false)
    TaskStartScenarioInPlace(ped, GetHashKey("WORLD_HUMAN_CROUCH_INSPECT"), -1, true, "StartScenario", 5000, false)
    PlaceObjectOnGroundProperly(object)
    SetEntityHeading(object, heading)
    FreezeEntityPosition(object, true)
	Wait(500)
    ClearPedTasks(ped)
    deployedtable = NetworkGetNetworkIdFromEntity(object)
end)

RegisterNetEvent('rsg-stove:client:StoveMenu', function()
    Stove = {}
    for k, v in pairs(Config.stoveRecipes) do
        local item = {}
        local text = ""
        for k, v in pairs(v.ingredients) do
            text = text .. "" .. RSGCore.Shared.Items[v.item].label .. ":" .. v.amount .. "x"
        end
        Stove[#Stove + 1] = {

            title = k,
            description = text,
            event = 'rsg-stove:client:checkingredients',
            args = {
                name = v.name,
                item = k,
                crafttime = v.crafttime,
                receive = v.receive
            }
        }
    end
    lib.registerContext({
        id = 'rsg:stove',
        title = 'Stove',
        options = Stove
    })
    lib.showContext('rsg:stove')
end)

RegisterNetEvent('rsg-stove:client:checkingredients', function(data)
    RSGCore.Functions.TriggerCallback('rsg-stove:server:checkingredients', function(hasRequired)
    if (hasRequired) then
        if Config.Debug == true then
            print("passed")
        end
        TriggerEvent('rsg-stove:crafting', data.name, data.item, tonumber(data.crafttime), data.receive)
    else
        if Config.Debug == true then
            print("failed")
        end
        return
    end
    end, Config.stoveRecipes[data.item].ingredients)
end)

RegisterNetEvent('rsg-stove:crafting', function(name, item, crafttime, receive)
    local ingredients = Config.stoveRecipes[item].ingredients
    local ped = PlayerPedId()
    TaskStartScenarioInPlace(ped, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), crafttime, true, false, false, false)
    RSGCore.Functions.Progressbar('stove', 'crafting'..name, crafttime, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent('rsg-stove:server:finishcrafting', ingredients, receive)
        ClearPedTasks(ped)
    end)
end)