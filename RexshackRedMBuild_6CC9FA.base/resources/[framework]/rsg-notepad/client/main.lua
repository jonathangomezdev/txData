local RSGCore = exports['rsg-core']:GetCoreObject()
local isUiOpen = false
local editingNotpadId = nil

-- Functions

local function openGui()
    local veh = GetVehiclePedIsUsing(PlayerPedId())
    if GetPedInVehicleSeat(veh, -1) ~= PlayerPedId() then
        SetPlayerControl(PlayerId(), 0, 0)
        SendNUIMessage({
            action = 'openNotepad',
        })
        isUiOpen = true
        SetNuiFocus(true, true);
    end
end

-- Events

RegisterNetEvent('rsg-notepad:client:OpenNotepadGui', function()
    if not isUiOpen then
        openGui()
    end
end)

RegisterNetEvent('rsg-notepad:client:CloseNotepad', function()
    SendNUIMessage({
        action = 'closeNotepad'
    })
    SetPlayerControl(PlayerId(), 1, 0)
    isUiOpen = false
    SetNuiFocus(false, false);
    ClearPedTasks(PlayerPedId())
    Wait(100)
end)

RegisterNetEvent('rsg-notepad:client:note', function()
    local player = PlayerPedId()
    
    if (DoesEntityExist(player) and not IsEntityDead(player)) then
		Citizen.InvokeNative(0x524B54361229154F, PlayerPedId(), GetHashKey("WORLD_HUMAN_WRITE_NOTEBOOK"), -1, false, false, false, false)
    end
end)

RegisterNetEvent('rsg-notepad:client:updateNotes', function(serverNotesPassed)
    TestLocalTable = serverNotesPassed
end)

-- Callbacks

RegisterNUICallback('escape', function(data, cb)
    local text = data.text
    TriggerEvent('rsg-notepad:client:CloseNotepad')
end)

RegisterNUICallback('updating', function(data, cb)
    local text = data.text
    TriggerServerEvent('rsg-notepad:server:updateNote', editingNotpadId, text)
    editingNotpadId = nil
    TriggerEvent('rsg-notepad:client:CloseNotepad')
end)