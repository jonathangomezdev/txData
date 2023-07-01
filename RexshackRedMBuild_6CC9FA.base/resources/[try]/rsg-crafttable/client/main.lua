local RSGCore = exports['rsg-core']:GetCoreObject()
local crafttable = 0
local deployedtable = nil

exports['rsg-target']:AddTargetModel(-1588092656, {
    options = {
        {
            type = "client",
            event = 'rsg-crafttable:client:pickup',
            icon = "fas fa-undo",
            label = "Pickup Crafttable",
            distance = 3.0
        }
    }
})

exports['rsg-target']:AddTargetModel(-1588092656, {
    options = {
        {
            icon = 'far fa-gear',
            label = 'Crafting Table',
            type = "client",
            event = 'rsg-crafttable:client:CraftTableMenu',
        },
    },
    distance = 2.0,
})

RegisterNetEvent('rsg-crafttable:client:pickup', function()
    if deployedtable ~= nil then
        local obj = NetworkGetEntityFromNetworkId(deployedtable)
        local objCoords = GetEntityCoords()
        local ped = PlayerPedId()
        NetworkRequestControlOfEntity(obj)
        SetEntityAsMissionEntity(obj,false,true)
        DeleteEntity(obj)
        DeleteObject(obj)
        if not DoesEntityExist(obj) then
            TriggerServerEvent('rsg-crafttable:server:pickup', deployedtable)
            TriggerServerEvent('rsg-crafttable:server:pickuptab')
            deployedtable = nil
        end
        Wait(500)
        ClearPedTasks(ped)
    else
        -- handle case where object has not been deployed
        RSGCore.Functions.Notify("No crafttable equipment to pick up.", 'error')
    end
end)

RegisterNetEvent('rsg-crafttable:client:crafttable', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)
    local forward = GetEntityForwardVector(ped)
    local x, y, z = table.unpack(coords + forward * 0.5)
    local object = CreateObject(GetHashKey('mp005_s_posse_ammotable01x'), x, y, z, true, false, false)
    TaskStartScenarioInPlace(ped, GetHashKey("WORLD_HUMAN_CROUCH_INSPECT"), -1, true, "StartScenario", 5000, false)
    PlaceObjectOnGroundProperly(object)
    SetEntityHeading(object, heading)
    FreezeEntityPosition(object, true)
	Wait(500)
    ClearPedTasks(ped)
    deployedtable = NetworkGetNetworkIdFromEntity(object)
end)

RegisterNetEvent('rsg-crafttable:client:CraftTableMenu', function()
    CraftTable = {}
    for k, v in pairs(Config.Recipes) do
        local item = {}
        local text = ""
        for k, v in pairs(v.ingredients) do
            text = text .. "" .. RSGCore.Shared.Items[v.item].label .. ":" .. v.amount .. "x"
        end
        CraftTable[#CraftTable + 1] = {

            title = k,
            description = text,
            event = 'rsg-crafttable:client:checkingredients',
            args = {
                name = v.name,
                item = k,
                crafttime = v.crafttime,
                receive = v.receive
            }
        }
    end
    lib.registerContext({
        id = 'rsg:craft_table',
        title = 'Crafting Table',
        options = CraftTable
    })
    lib.showContext('rsg:craft_table')
end)

RegisterNetEvent('rsg-crafttable:client:checkingredients', function(data)
    RSGCore.Functions.TriggerCallback('rsg-crafttable:server:checkingredients', function(hasRequired)
    if (hasRequired) then
        if Config.Debug == true then
            print("passed")
        end
        TriggerEvent('rsg-crafttable:crafting', data.name, data.item, tonumber(data.crafttime), data.receive)
    else
        if Config.Debug == true then
            print("failed")
        end
        return
    end
    end, Config.Recipes[data.item].ingredients)
end)

RegisterNetEvent('rsg-crafttable:crafting', function(name, item, crafttime, receive)
    local ingredients = Config.Recipes[item].ingredients
    local ped = PlayerPedId()
    TaskStartScenarioInPlace(ped, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), crafttime, true, false, false, false)
    RSGCore.Functions.Progressbar('craft-table', 'crafting'..name, crafttime, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent('rsg-crafttable:server:finishcrafting', ingredients, receive)
        ClearPedTasks(ped)
    end)
end)