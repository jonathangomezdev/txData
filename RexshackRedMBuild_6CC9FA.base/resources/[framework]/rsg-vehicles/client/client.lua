local RSGCore = exports['rsg-core']:GetCoreObject()

-- Prompts (start)
local OpenShops
local CloseShops
local OpenReturn
local CloseReturn
local ShopPrompt1 = GetRandomIntInRange(0, 0xffffff)
local ShopPrompt2 = GetRandomIntInRange(0, 0xffffff)
local ReturnPrompt1 = GetRandomIntInRange(0, 0xffffff)
local ReturnPrompt2 = GetRandomIntInRange(0, 0xffffff)
--Prompts (end)

local InMenu = false
local IsDriving = false
local OwnedData = {}
local MyVehicles
local TransferAllow

MenuData = {}
TriggerEvent("menu_base:getData", function(call)
    MenuData = call
end)

RegisterCommand("coach2livery", function()
    local Vehicle = GetVehiclePedIsIn(PlayerPed(), true)
    local LiveryID = Citizen.InvokeNative(0xBB765B8FD49A796C, Vehicle)

    if LiveryID == 0 then
        Citizen.InvokeNative(0xF89D82A0582E46ED, Vehicle, 1)
    elseif LiveryID == 1 then
        Citizen.InvokeNative(0xF89D82A0582E46ED, Vehicle, 2)
    elseif LiveryID == 2 then
        Citizen.InvokeNative(0xF89D82A0582E46ED, Vehicle, 2)
    elseif LiveryID == 3 then
        Citizen.InvokeNative(0xF89D82A0582E46ED, Vehicle, -1)
    end
        
    
end)

-- Start Vehicles
Citizen.CreateThread(function()
    ShopOpen()
    ShopClosed()
    ReturnOpen()
    ReturnClosed()

    while true do
        Citizen.Wait(0)
        local player = PlayerPedId()
        local coords = GetEntityCoords(player)
        local sleep = true
        local dead = IsEntityDead(player)
        local hour = GetClockHours()

        if InMenu == false and not dead then
            for shopId, shopConfig in pairs(Config.vehicleShops) do
                if shopConfig.shopHours then
                    if hour >= shopConfig.shopClose or hour < shopConfig.shopOpen then
                        if not Config.vehicleShops[shopId].BlipHandle and shopConfig.blipAllowed then
                            AddBlip(shopId)
                        end
                        if Config.vehicleShops[shopId].BlipHandle then
                            Citizen.InvokeNative(0x662D364ABF16DE2F, Config.vehicleShops[shopId].BlipHandle, GetHashKey(shopConfig.blipColorClosed)) -- BlipAddModifier
                        end
                        if shopConfig.NPC then
                            DeleteEntity(shopConfig.NPC)
                            DeletePed(shopConfig.NPC)
                            SetEntityAsNoLongerNeeded(shopConfig.NPC)
                            shopConfig.NPC = nil
                        end
                        local coordsDist = vector3(coords.x, coords.y, coords.z)
                        local coordsShop = vector3(shopConfig.npcx, shopConfig.npcy, shopConfig.npcz)
                        local coordsVehicle = vector3(shopConfig.vehiclex, shopConfig.vehicley, shopConfig.vehiclez)
                        local distanceShop = #(coordsDist - coordsShop)
                        local distanceVehicle = #(coordsDist - coordsVehicle)

                        if (distanceShop <= shopConfig.distanceShop) and not IsPedInAnyVehicle(player, true) then
                            sleep = false
                            local shopClosed = CreateVarString(10, 'LITERAL_STRING', _U("closed") .. shopConfig.shopOpen .. _U("am") .. shopConfig.shopClose .. _U("pm"))
                            PromptSetActiveGroupThisFrame(ShopPrompt2, shopClosed)

                            if Citizen.InvokeNative(0xC92AC953F0A982AE, CloseShops) then -- UiPromptHasStandardModeCompleted

                                Wait(100)
                                RSGCore.Functions.Notify(_U("shopClosed"), 'error', 6000)
                            end
                        elseif (distanceVehicle <= shopConfig.distanceReturn) and IsPedInAnyVehicle(player, true) then
                            sleep = false
                            local returnClosed = CreateVarString(10, 'LITERAL_STRING', _U("closed") .. shopConfig.shopOpen .. _U("am") .. shopConfig.shopClose .. _U("pm"))
                            PromptSetActiveGroupThisFrame(ReturnPrompt2, returnClosed)

                            if Citizen.InvokeNative(0xC92AC953F0A982AE, CloseReturn) then -- UiPromptHasStandardModeCompleted

                                Wait(100)
                                RSGCore.Functions.Notify(_U("shopClosed"), 'error', 6000)
                            end
                        end
                    elseif hour >= shopConfig.shopOpen then
                        if not Config.vehicleShops[shopId].BlipHandle and shopConfig.blipAllowed then
                            AddBlip(shopId)
                        end
                        if Config.vehicleShops[shopId].BlipHandle then
                            Citizen.InvokeNative(0x662D364ABF16DE2F, Config.vehicleShops[shopId].BlipHandle, GetHashKey(shopConfig.blipColorOpen)) -- BlipAddModifier
                        end
                        if not shopConfig.NPC and shopConfig.npcAllowed then
                            SpawnNPC(shopId)
                        end
                        local coordsDist = vector3(coords.x, coords.y, coords.z)
                        local coordsShop = vector3(shopConfig.npcx, shopConfig.npcy, shopConfig.npcz)
                        local coordsVehicle = vector3(shopConfig.vehiclex, shopConfig.vehicley, shopConfig.vehiclez)
                        local distanceShop = #(coordsDist - coordsShop)
                        local distanceVehicle = #(coordsDist - coordsVehicle)

                        if (distanceShop <= shopConfig.distanceShop) and not IsPedInAnyVehicle(player, true) then
                            sleep = false
                            local shopOpen = CreateVarString(10, 'LITERAL_STRING', shopConfig.promptName)
                            PromptSetActiveGroupThisFrame(ShopPrompt1, shopOpen)

                            if Citizen.InvokeNative(0xC92AC953F0A982AE, OpenShops) then -- UiPromptHasStandardModeCompleted

                                MainMenu(shopId)
                                DisplayRadar(false)
                                TaskStandStill(player, -1)
                            end
                        elseif (distanceVehicle <= shopConfig.distanceReturn) and IsPedInAnyVehicle(player, true) then
                            sleep = false
                            local returnOpen = CreateVarString(10, 'LITERAL_STRING', shopConfig.promptName)
                            PromptSetActiveGroupThisFrame(ReturnPrompt1, returnOpen)

                            if Citizen.InvokeNative(0xC92AC953F0A982AE, OpenReturn) then -- UiPromptHasStandardModeCompleted

                                local currentLocation = shopConfig.location
                                local vehicleGarage = OwnedData.location
                                local vehicleName = OwnedData.name
                                if currentLocation == vehicleGarage then
                                    ReturnVehicle(shopId)
                                else
                                    if TransferAllow then
                                        local driveTransfer = "driveTransfer"
                                        TriggerServerEvent("rsg-vehicles:TransferVehicle", OwnedData, currentLocation, driveTransfer)
                                        ReturnVehicle(shopId)
                                        RSGCore.Functions.Notify(_U("your") .. vehicleName .. _U("available"), 'success', 6000)
                                    else
                                        ReturnVehicle(shopId)
                                        RSGCore.Functions.Notify(_U("your") .. vehicleName .. _U("returned") .. vehicleGarage, 'success', 6000)
                                    end
                                end
                            end
                        end
                    end
                else
                    if not Config.vehicleShops[shopId].BlipHandle and shopConfig.blipAllowed then
                        AddBlip(shopId)
                    end
                    if Config.vehicleShops[shopId].BlipHandle then
                        Citizen.InvokeNative(0x662D364ABF16DE2F, Config.vehicleShops[shopId].BlipHandle, GetHashKey(shopConfig.blipColorOpen)) -- BlipAddModifier
                    end
                    if not shopConfig.NPC and shopConfig.npcAllowed then
                        SpawnNPC(shopId)
                    end
                    local coordsDist = vector3(coords.x, coords.y, coords.z)
                    local coordsShop = vector3(shopConfig.npcx, shopConfig.npcy, shopConfig.npcz)
                    local coordsVehicle = vector3(shopConfig.vehiclex, shopConfig.vehicley, shopConfig.vehiclez)
                    local distanceShop = #(coordsDist - coordsShop)
                    local distanceVehicle = #(coordsDist - coordsVehicle)

                    if (distanceShop <= shopConfig.distanceShop) and not IsPedInAnyVehicle(player, true) then
                        sleep = false
                        local shopOpen = CreateVarString(10, 'LITERAL_STRING', shopConfig.promptName)
                        PromptSetActiveGroupThisFrame(ShopPrompt1, shopOpen)

                        if Citizen.InvokeNative(0xC92AC953F0A982AE, OpenShops) then -- UiPromptHasStandardModeCompleted

                            MainMenu(shopId)
                            DisplayRadar(false)
                            TaskStandStill(player, -1)
                        end
                    elseif (distanceVehicle <= shopConfig.distanceReturn) and IsPedInAnyVehicle(player, true) then
                        sleep = false
                        local returnOpen = CreateVarString(10, 'LITERAL_STRING', shopConfig.promptName)
                        PromptSetActiveGroupThisFrame(ReturnPrompt1, returnOpen)

                        if Citizen.InvokeNative(0xC92AC953F0A982AE, OpenReturn) then -- UiPromptHasStandardModeCompleted

                            local currentLocation = shopConfig.location
                            local vehicleGarage = OwnedData.location
                            local vehicleName = OwnedData.name
                            if currentLocation == vehicleGarage then
                                ReturnVehicle(shopId)
                            else
                                if TransferAllow then
                                    local driveTransfer = "driveTransfer"
                                    TriggerServerEvent("rsg-vehicles:TransferVehicle", OwnedData, currentLocation, driveTransfer)
                                    ReturnVehicle(shopId)
                                    RSGCore.Functions.Notify(_U("your") .. vehicleName .. _U("available"), 'success', 6000)
                                else
                                    ReturnVehicle(shopId)
                                    RSGCore.Functions.Notify(_U("your") .. vehicleName .. _U("returned") .. vehicleGarage, 'success', 6000)
                                end
                            end
                        end
                    end
                end
            end
        end
        if sleep then
            Citizen.Wait(1000)
        end
    end
end)

-- Wagon Storage
RegisterNetEvent('rsg-vehicles:client:wagonStorage', function()
	RSGCore.Functions.GetPlayerData(function(PlayerData)
	local cid = PlayerData.citizenid
    TriggerServerEvent("inventory:server:OpenInventory", "stash", 'wagon'..cid, {
        maxweight = 4000000,
        slots = 42,
    })
    TriggerEvent("inventory:client:SetCurrentStash", 'wagon'..cid)
	end)
end)

-- Main Vehicles Menu
function MainMenu(shopId)
    MenuData.CloseAll()
    InMenu = true
    local elements = {
        {
            label = _U("buyVehicle"),
            value = "buy",
            desc = _U("newVehicle")
        },
        {
            label = _U("own"),
            value = "own",
            desc = _U("owned")
        }
    }
    MenuData.Open('default', GetCurrentResourceName(), 'menu_base',
    {
        title = Config.vehicleShops[shopId].shopName,
        subtext = _U("mainMenu"),
        align = "top-left",
        elements = elements,
    },
    function(data, menu)
        if data.current == "backup" then
            _G[data.trigger]()
        end
        if data.current.value == "buy" then
            BuyMenu(shopId)
        end
        if data.current.value == "own" then
            local location = Config.vehicleShops[shopId].location
            TriggerServerEvent('rsg-vehicles:GetOwnedVehicles', location, shopId)
        end
    end,
    function(data, menu)
        menu.close()
        InMenu = false
        ClearPedTasksImmediately(PlayerPedId())
        DisplayRadar(true)
    end)
end

-- Buy Vehicles Menu
function BuyMenu(shopId)
    MenuData.CloseAll()
    InMenu = true
    local player = PlayerPedId()
    local elements = {}

    for vehicle, vehicleConfig in pairs(Config.vehicleShops[shopId].vehicles) do
        elements[#elements + 1] = {
            label = vehicleConfig.vehicleName,
            value = vehicle,
            desc = _U("price") .. vehicleConfig.buyPrice,
            info = vehicleConfig,
        }
    end
    MenuData.Open('default', GetCurrentResourceName(), 'menu_base',
    {
        title = Config.vehicleShops[shopId].shopName,
        subtext = _U("buyVehicle"),
        align = "top-left",
        elements = elements,
        lastmenu = 'MainMenu',
    },
    function(data, menu)
        if data.current == "backup" then
            _G[data.trigger](shopId)
        end
        if data.current.value then
            local buyData = data.current.info
            local location = Config.vehicleShops[shopId].location

            TriggerServerEvent('rsg-vehicles:BuyVehicle', buyData, location)
            menu.close()
            InMenu = false
            ClearPedTasksImmediately(player)
            DisplayRadar(true)
        end
    end,
    function(data, menu)
        menu.close()
        InMenu = false
        ClearPedTasksImmediately(player)
        DisplayRadar(true)
    end)
end

-- Menu to Manage Owned Vehicles at Shop Location
RegisterNetEvent("rsg-vehicles:OwnedVehiclesMenu")
AddEventHandler("rsg-vehicles:OwnedVehiclesMenu", function(ownedVehicles, shopId)
    MenuData.CloseAll()
    InMenu = true
    local elements = {}

    for vehicle, ownedVehicleData in pairs(ownedVehicles) do
        elements[#elements + 1] = {
            label = ownedVehicleData.name,
            value = vehicle,
            desc = _U("chooseVehicle"),
            info = ownedVehicleData,
        }
    end
    MenuData.Open('default', GetCurrentResourceName(), 'menu_base',
    {
        title = Config.vehicleShops[shopId].shopName,
        subtext = _U("own"),
        align = "top-left",
        elements = elements,
        lastmenu = 'MainMenu',
    },
    function(data, menu)
        if data.current == "backup" then
            _G[data.trigger](shopId)
        end
        OwnedData = data.current.info
        if data.current.value then
            VehicleMenu(shopId)
        end
    end,
    function(data, menu)
        menu.close()
        InMenu = false
        ClearPedTasksImmediately(PlayerPedId())
        DisplayRadar(true)
    end)
end)

-- Menu to Launch, Sell or Transfer Owned Vehicles
function VehicleMenu(shopId)
    MenuData.CloseAll()
    InMenu = true
    local vehicleName = OwnedData.name
    local vehicleModel = OwnedData.model
    local vehicleData = Config.vehicleShops[shopId].vehicles[vehicleModel]
    local sellPrice = vehicleData.sellPrice
    TransferAllow = Config.transferAllow
    local player = PlayerPedId()
    local descTransfer

    if TransferAllow then
        descTransfer = _U("transfer") .. vehicleName .. _U("transferShop")
    else
        descTransfer = _U("transferDisabledMenu")
    end

    local elements = {
        {
            label = _U("launch"),
            value = "launch",
            desc = _U("launchVehicle") .. vehicleName
        },
        {
            label = _U("sellVehicle"),
            value = "sell",
            desc = _U("sell") .. vehicleName .. _U("frcash") .. sellPrice
        },
        {
            label = _U("transferVehicle"),
            value = "transfer",
            desc = descTransfer
        }
    }
    MenuData.Open('default', GetCurrentResourceName(), 'menu_base' .. shopId,
    {
        title = Config.vehicleShops[shopId].shopName,
        subtext = vehicleName,
        align = "top-left",
        elements = elements,
        lastmenu = 'MainMenu',
    },
    function(data, menu)
        if data.current == "backup" then
            _G[data.trigger](shopId)
        end
        if data.current.value == "launch" then

            menu.close()
            InMenu = false
            ClearPedTasksImmediately(player)
            DisplayRadar(true)
            SpawnVehicle()

        elseif data.current.value == "sell" then

            TriggerServerEvent('rsg-vehicles:SellVehicle', OwnedData, vehicleData)
            menu.close()
            InMenu = false
            ClearPedTasksImmediately(player)
            DisplayRadar(true)

        elseif data.current.value == "transfer" then

            if TransferAllow then
                TransferVehicle(vehicleData, shopId)
            else
                RSGCore.Functions.Notify(_U("transferDisabled"), 'error', 6000)
            end
        end
    end,
    function(data, menu)
        menu.close()
        InMenu = false
        ClearPedTasksImmediately(player)
        DisplayRadar(true)
    end)
end

function TransferVehicle(vehicleData, shopId)
    MenuData.CloseAll()
    InMenu = true
    local name = OwnedData.name
    local location = OwnedData.location
    local transferPrice = vehicleData.transferPrice

    local elements = {}

    for _, shopConfig in pairs(Config.vehicleShops) do
        elements[#elements + 1] = {
            label = shopConfig.shopName,
            value = shopConfig.location,
            desc = _U("transfer") .. name .. _U("frcash") .. transferPrice
        }
    end
    MenuData.Open('default', GetCurrentResourceName(), 'menu_base',
    {
        title = Config.vehicleShops[shopId].shopName,
        subtext = name,
        align = "top-left",
        elements = elements,
        lastmenu = 'MainMenu',
    },
    function(data, menu)
        if data.current == "backup" then
            _G[data.trigger](shopId)
        end
        local transferLocation = data.current.value
        if transferLocation then
            local menuTransfer = "menuTransfer"
            local shopName = Config.vehicleShops[transferLocation].shopName
            if transferLocation ~= location then
                TriggerServerEvent("rsg-vehicles:TransferVehicle", OwnedData, transferLocation, menuTransfer, vehicleData, shopName)
                menu.close()
                InMenu = false
                ClearPedTasksImmediately(PlayerPedId())
                DisplayRadar(true)
            else
                RSGCore.Functions.Notify(_U("noTransfer"), 'error', 6000)
            end
        end
    end,
    function(data, menu)
        menu.close()
        InMenu = false
        ClearPedTasksImmediately(PlayerPedId())
        DisplayRadar(true)
    end)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if IsControlJustReleased(0, Config.optionKey) then
            if IsPedInAnyVehicle(PlayerPedId(), true) and IsDriving == true then
                WagonOptionsMenu()
            else
                return
            end
        end
    end
end)

function WagonOptionsMenu()
    MenuData.CloseAll()
    InMenu = true
    local player = PlayerPedId()
    local elements = {
        {
            label = 'Opslag',
            value = "opslag",
            desc = 'Opbergruimte'
        -- },{
        --     label = 'Customize',
        --     value = "customize",
        --     desc = 'Aanpassingen'
        },{
            label = _U("returnMenu"),
            value = "return",
            desc = _U("returnAction")
        }
    }
    MenuData.Open('default', GetCurrentResourceName(), 'menu_base', {
        title    = _U("vehicleMenu"),
        subtext  = _U("vehicleSubMenu"),
        align    = "top-left",
        elements = elements,
    }, function(data, menu)
        if data.current.value == "opslag" then
            TriggerEvent('rsg-vehicles:client:wagonStorage')
        -- elseif data.current.value == "customize" then
        --     WagonExtraMenu()
        elseif data.current.value == "return" then
            TaskLeaveVehicle(player, MyVehicles, 0)
            menu.close()
            InMenu = false
            IsDriving = false
            Wait(15000)
            DeleteEntity(MyVehicles)
        end
    end,
    function(data, menu)
        menu.close()
        InMenu = false
        ClearPedTasksImmediately(player)
        DisplayRadar(true)
    end)
end

function WagonExtraMenu()
    MenuData.CloseAll()
    InMenu = true
    local player = PlayerPedId()
    local elements = {
        {
            label = 'Lampen',
            value = "lampen",
            desc = 'Verlichting voor je voertuig'
        }
    }
    MenuData.Open('default', GetCurrentResourceName(), 'menu_base', {
        title    = _U("vehicleMenu"),
        subtext  = _U("vehicleSubMenu"),
        align    = "top-left",
        elements = elements,
    }, function(data, menu)
        if data.current.value == "lampen" then
            local CurrentVehicle = GetVehiclePedIsIn(PlayerPedId())

            if CurrentVehicle == GetHashKey('cart01') then
                Citizen.InvokeNative(0xC0F0417A90402742, CurrentVehicle, GetHashKey("pg_teamster_cart01_lightupgrade3"))
            elseif CurrentVehicle == GetHashKey('cart06') then
                Citizen.InvokeNative(0xC0F0417A90402742, CurrentVehicle, GetHashKey("pg_teamster_cart06_lightupgrade3"))
            end
        end
    end,
    function(data, menu)
        menu.close()
        InMenu = false
        ClearPedTasksImmediately(player)
        DisplayRadar(true)
    end)
end

function SpawnVehicle()
    if MyVehicles then
        DeleteEntity(MyVehicles)
    end
    local player = PlayerPedId()
    local name = OwnedData.name
    local model = OwnedData.model
    local location = OwnedData.location
    local vehicleConfig = Config.vehicleShops[location]
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(500)
    end
    MyVehicles = CreateVehicle(model, vehicleConfig.vehiclex, vehicleConfig.vehicley, vehicleConfig.vehiclez, vehicleConfig.vehicleh, true, false)
    SetVehicleOnGroundProperly(MyVehicles)
    SetModelAsNoLongerNeeded(model)
    SetEntityInvincible(MyVehicles, 1)
    DoScreenFadeOut(500)
    Wait(500)
    SetPedIntoVehicle(player, MyVehicles, -1)
    Wait(500)
    DoScreenFadeIn(500)
    local vehicleBlip = Citizen.InvokeNative(0x23F74C2FDA6E7C61, -1749618580, MyVehicles) -- BlipAddForEntity
    SetBlipSprite(vehicleBlip, GetHashKey("blip_ambient_coach"), true)
    Citizen.InvokeNative(0x9CB1A1623062F402, vehicleBlip, name) -- SetBlipName
    IsDriving = true
    RSGCore.Functions.Notify(_U("vehicleMenuTip"), 'success', 6000)
end

-- Return Vehicle Using Prompt at Shop Location
function ReturnVehicle(shopId)
    local player = PlayerPedId()
    local shopConfig = Config.vehicleShops[shopId]
    local coords = vector3(shopConfig.playerx, shopConfig.playery, shopConfig.playerz)
    TaskLeaveVehicle(player, MyVehicles, 0)
    DoScreenFadeOut(500)
    Wait(500)
    SetEntityCoords(player, coords.x, coords.y, coords.z)
    Wait(500)
    DoScreenFadeIn(500)
    IsDriving = false
    DeleteEntity(MyVehicles)
end

-- Menu Prompts
function ShopOpen()
    local str = _U("shopPrompt")
    OpenShops = PromptRegisterBegin()
    PromptSetControlAction(OpenShops, Config.shopKey)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(OpenShops, str)
    PromptSetEnabled(OpenShops, 1)
    PromptSetVisible(OpenShops, 1)
    PromptSetStandardMode(OpenShops, 1)
    PromptSetGroup(OpenShops, ShopPrompt1)
    Citizen.InvokeNative(0xC5F428EE08FA7F2C, OpenShops, true) -- UiPromptSetUrgentPulsingEnabled
    PromptRegisterEnd(OpenShops)
end

function ShopClosed()
    local str = _U("shopPrompt")
    CloseShops = PromptRegisterBegin()
    PromptSetControlAction(CloseShops, Config.shopKey)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(CloseShops, str)
    PromptSetEnabled(CloseShops, 1)
    PromptSetVisible(CloseShops, 1)
    PromptSetStandardMode(CloseShops, 1)
    PromptSetGroup(CloseShops, ShopPrompt2)
    Citizen.InvokeNative(0xC5F428EE08FA7F2C, CloseShops, true) -- UiPromptSetUrgentPulsingEnabled
    PromptRegisterEnd(CloseShops)
end

function ReturnOpen()
    local str = _U("returnPrompt")
    OpenReturn = PromptRegisterBegin()
    PromptSetControlAction(OpenReturn, Config.returnKey)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(OpenReturn, str)
    PromptSetEnabled(OpenReturn, 1)
    PromptSetVisible(OpenReturn, 1)
    PromptSetStandardMode(OpenReturn, 1)
    PromptSetGroup(OpenReturn, ReturnPrompt1)
    Citizen.InvokeNative(0xC5F428EE08FA7F2C, OpenReturn, true) -- UiPromptSetUrgentPulsingEnabled
    PromptRegisterEnd(OpenReturn)
end

function ReturnClosed()
    local str = _U("returnPrompt")
    CloseReturn = PromptRegisterBegin()
    PromptSetControlAction(CloseReturn, Config.returnKey)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(CloseReturn, str)
    PromptSetEnabled(CloseReturn, 1)
    PromptSetVisible(CloseReturn, 1)
    PromptSetStandardMode(CloseReturn, 1)
    PromptSetGroup(CloseReturn, ReturnPrompt2)
    Citizen.InvokeNative(0xC5F428EE08FA7F2C, CloseReturn, true) -- UiPromptSetUrgentPulsingEnabled
    PromptRegisterEnd(CloseReturn)
end

-- Blips
function AddBlip(shopId)
    local shopConfig = Config.vehicleShops[shopId]
    if shopConfig.blipAllowed then
        shopConfig.BlipHandle = N_0x554d9d53f696d002(1664425300, shopConfig.npcx, shopConfig.npcy, shopConfig.npcz) -- BlipAddForCoords
        SetBlipSprite(shopConfig.BlipHandle, shopConfig.blipSprite, 1)
        SetBlipScale(shopConfig.BlipHandle, 0.2)
        Citizen.InvokeNative(0x9CB1A1623062F402, shopConfig.BlipHandle, shopConfig.blipName) -- SetBlipName
    end
end

-- NPCs
function LoadModel(npcModel)
    local model = GetHashKey(npcModel)
    RequestModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(100)
    end
end

function SpawnNPC(shopId)
    local shopConfig = Config.vehicleShops[shopId]
    LoadModel(shopConfig.npcModel)
    if shopConfig.npcAllowed then
        local npc = CreatePed(shopConfig.npcModel, shopConfig.npcx, shopConfig.npcy, shopConfig.npcz, shopConfig.npch, false, true, true, true)
        Citizen.InvokeNative(0x283978A15512B2FE, npc, true) -- SetRandomOutfitVariation
        SetEntityCanBeDamaged(npc, false)
        SetEntityInvincible(npc, true)
        Wait(500)
        FreezeEntityPosition(npc, true)
        SetBlockingOfNonTemporaryEvents(npc, true)
        Config.vehicleShops[shopId].NPC = npc
    end
end

AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    if InMenu == true then
        ClearPedTasksImmediately(PlayerPedId())
        PromptDelete(OpenShops)
        PromptDelete(CloseShops)
        PromptDelete(OpenReturn)
        PromptDelete(CloseReturn)
        MenuData.CloseAll()
    end

    if MyVehicles then
        DeleteEntity(MyVehicles)
    end

    for _, shopConfig in pairs(Config.vehicleShops) do
        if shopConfig.BlipHandle then
            RemoveBlip(shopConfig.BlipHandle)
        end
        if shopConfig.NPC then
            DeleteEntity(shopConfig.NPC)
            DeletePed(shopConfig.NPC)
            SetEntityAsNoLongerNeeded(shopConfig.NPC)
        end
    end
end)
