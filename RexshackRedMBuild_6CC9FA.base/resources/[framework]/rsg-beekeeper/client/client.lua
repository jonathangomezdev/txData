local RSGCore = exports['rsg-core']:GetCoreObject()
local spawned = false
local bees_cloud_group = "core"
local bees_cloud_name = "ent_amb_insect_bee_swarm"
local cooldownSecondsRemaining = 0
local isBusy = false

---------------------------------------------------------------------------------

-- spawn beehives / bees
Citizen.CreateThread(function()
    while true do
    Wait(0)
        if spawned == false then
            for k,v in pairs(Config.BeeHives) do
                local hash = GetHashKey(v.model)
                while not HasModelLoaded(hash) do
                    Wait(10)
                    RequestModel(hash)
                end
                RequestModel(hash)
                beehive = CreateObject(hash, v.coords -1, true, false, false)
                SetEntityHeading(beehive, v.heading)
                SetEntityAsMissionEntity(beehive, true)
                PlaceObjectOnGroundProperly(beehive, true)
                FreezeEntityPosition(beehive, true)
                Citizen.InvokeNative(0xA10DB07FC234DD12, bees_cloud_group)
                bees = Citizen.InvokeNative(0xBA32867E86125D3A , bees_cloud_name, v.coords, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
                spawned = true
            end
        end
    end
end)

---------------------------------------------------------------------------------
local MapBlips = {
        { name = 'beekeeper', sprite = -1735903728, x=-471.5865, y=860.32104, z=126.72114}, --
        { name = 'beekeeper', sprite = -1735903728, x=-1642.77, y=-335.851, z=172.22273}, --
        { name = 'beekeeper', sprite = -1735903728, x=-871.2145, y=-1083.776, z=58.306953}, --
        { name = 'beekeeper', sprite = -1735903728, x=-2300.35, y=-2385.453, z=63.183452}, --
        { name = 'beekeeper', sprite = -1735903728, x=1397.8061, y=-1117.391, z=75.270698}, --
        { name = 'beekeeper', sprite = -1735903728, x=857.7091, y=-1889.626, z=44.464122}, --
    }
exports['rsg-target']:AddTargetModel(Config.BeeHiveProps, {
    options = {
        {
            type = "client",
            event = 'rsg-beekeeper:client:checkhive',
            icon = "fas fa-bee",
            label = 'Check Hive',
            distance = 2.0
        }
    }
})

Citizen.CreateThread(function()
    for k,v in pairs(MapBlips) do
        if v.name ~= nil then
            local blip = N_0x554d9d53f696d002(1664425300, v.x, v.y, v.z)
            SetBlipSprite(blip, v.sprite, 1)
            SetBlipScale(blip, 0.2)
            Citizen.InvokeNative(0x9CB1A1623062F402, blip, v.name)
        end
    end
end)

---------------------------------------------------------------------------------

function HasRequirements(requirements)
    local found_requirements = {}
    local count = 0
    local missing = {}
    for i, require in ipairs(requirements) do
        if RSGCore.Functions.HasItem(require) then
            found_requirements[#found_requirements + 1] = require
            count = count + 1
        else
            missing[#missing + 1] = require
        end
    end

    if count == #requirements then
        return true
    elseif count == 0 then
        RSGCore.Functions.Notify("You are missing all of the requirements: " .. table.concat(missing, ", "), 'error')
        return false
    else
        RSGCore.Functions.Notify("You are missing the following requirements: " .. table.concat(missing, ", "), 'error')
        return false
    end
end

---------------------------------------------------------------------------------

-- make honey
RegisterNetEvent('rsg-beekeeper:client:checkhive')
AddEventHandler('rsg-beekeeper:client:checkhive', function()
    if isBusy == false and cooldownSecondsRemaining == 0 then
        local hasItems = HasRequirements({'honeyframe'})
        if hasItems then
            isBusy = true
            local player = PlayerPedId()
            TaskStartScenarioInPlace(player, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), Config.CheckTime, true, false, false, false)
            Wait(Config.CheckTime)
            ClearPedTasks(player)
            SetCurrentPedWeapon(player, `WEAPON_UNARMED`, true)
            TriggerServerEvent('rsg-beekeeper::server:givehoney')
            PlaySoundFrontend("SELECT", "RDRO_Character_Creator_Sounds", true, 0)
            cooldownTimer()
            isBusy = false
        end
    else
        RSGCore.Functions.Notify('Bees still busy making more honey!', 'primary')
    end
end)

---------------------------------------------------------------------------------

-- cooldown timer
function cooldownTimer()
    cooldownSecondsRemaining = Config.Cooldown
    Citizen.CreateThread(function()
        while cooldownSecondsRemaining > 0 do
            Wait(1000)
            cooldownSecondsRemaining = cooldownSecondsRemaining - 1
            --print(cooldownSecondsRemaining)
        end
    end)
end

---------------------------------------------------------------------------------

--- bee-sting effect
Citizen.CreateThread(function()
    while true do
        Wait(5000)
        for k,v in pairs(Config.BeeHives) do
            if IsEntityAtCoord(PlayerPedId(), v.coords, 3.0, 3.0, 3.0, 0, 1, 0) then
                local ped = PlayerPedId()
                local health = GetEntityHealth(ped)
                if health > 0 then 
                    SetEntityHealth(ped, health - Config.BeeSting)
                    PlayPain(ped, 9, 1, true, true)
                end
            end
        end
    end
end)

---------------------------------------------------------------------------------
