local QRCore = exports['rsg-core']:GetCoreObject()

-- teleport prompts
Citizen.CreateThread(function()
    for teleports, v in pairs(Config.Teleports) do
        exports['rsg-core']:createPrompt(v.promptname, v.coords, QRCore.Shared.Keybinds['J'], v.name, {
            type = 'client',
            event = 'rsg-teleport:client:useteleport',
            args = { v.destination, v.restrict, v.access },
        })
    end
end)

-- draw marker if set to true in config
CreateThread(function()
    while true do
        local sleep = 0
        for teleports, v in pairs(Config.Teleports) do
            if v.showmarker == true then
                Citizen.InvokeNative(0x2A32FAA57B937173, 0x07DCE236, v.coords, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 215, 0, 155, false, false, false, 1, false, false, false)
            end
        end
        Wait(sleep)
    end
end)

-- do teleport
RegisterNetEvent('rsg-teleport:client:useteleport')
AddEventHandler('rsg-teleport:client:useteleport', function(destination, restrict, access)
    local Player = QRCore.Functions.GetPlayerData()
    local job = Player.job.name
    local gang = Player.gang.name
    print(restrict)
    print(access)
    if restrict == true then
        if job == access or gang == access then
            DoScreenFadeOut(500)
            Wait(1000)
            Citizen.InvokeNative(0x203BEFFDBE12E96A, PlayerPedId(), destination)
            Wait(1500)
            DoScreenFadeIn(1800)
        else
            QRCore.Functions.Notify('you are not authorised!', 'error')
        end
    else
        DoScreenFadeOut(500)
        Wait(1000)
        Citizen.InvokeNative(0x203BEFFDBE12E96A, PlayerPedId(), destination)
        Wait(1500)
        DoScreenFadeIn(1800)
    end
end)
