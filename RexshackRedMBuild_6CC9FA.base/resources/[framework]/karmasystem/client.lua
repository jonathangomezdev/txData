local wantedBlips = {}
local wantedPlayers = {}
local bountyHunter = 0

local AddWantedPlayer = function(playerid)
    if not wantedPlayers[playerid] or not DoesBlipExist(wantedPlayers[playerid]) then
        wantedPlayers[playerid] = playerid

        return playerid
    end

    return nil
end

local AddBlipForEntity = function(blip, entity)
    return Citizen.InvokeNative(0x23f74c2fda6e7c61, blip, entity)
end

local AddBlip = function(table, entity, blipHash)
    if not table[entity] or not DoesBlipExist(table[entity]) then
        local blip = AddBlipForEntity(blipHash, entity)
        table[entity] = blip

        SetBlipSprite(blip, Config.WantedPlayerBlip, 1)

        return blip
    end

    return nil
end

local SetBlipNameFromPlayerString = function(blip, playerString)
    Citizen.InvokeNative(0x9CB1A1623062F402 , blip, playerString)
end

CreateThread(function()
    local isBounty = false

    while true do
        Wait(0)

        local ped = PlayerPedId()
        local dead = IsEntityDead(ped)
        local serverPlayerPedId = GetPlayerServerId(PlayerId())

        if dead then
            if wantedPlayers[serverPlayerPedId] ~= serverPlayerPedId then
                Wait(500)

                local PedKiller = GetPedSourceOfDeath(ped)

                if IsEntityAPed(PedKiller) and IsPedAPlayer(PedKiller) then
                    Killer = NetworkGetPlayerIndexFromPed(PedKiller)
                end

                if Killer ~= PlayerId() and not isBounty then
                    TriggerServerEvent('addz_karmasystem:server_playerBounty', GetPlayerServerId(Killer))

                    isBounty = true
                end
            else
                Wait(60000) -- Wait a minute for wanted player revive, please change according to your respawn time, or else the killer will be put in bounty

                wantedPlayers[serverPlayerPedId] = nil
            end
        else
            isBounty = false

            Wait(500)
        end
    end
end)

RegisterNetEvent('addz_karmasystem:client_setWantedBlip')
AddEventHandler('addz_karmasystem:client_setWantedBlip', function(killerid)
    local killerPlayer = GetPlayerFromServerId(killerid)
    local killerPed = GetPlayerPed(killerPlayer)

    AddWantedPlayer(killerid)

    local blip = AddBlip(wantedBlips, killerPed, -700928964)

    SetBlipNameFromPlayerString(blip, 'Wanted Player ID: '..killerid)
end)

RegisterNetEvent('addz_karmasystem:client_removeWantedBlip')
AddEventHandler('addz_karmasystem:client_removeWantedBlip', function(killerid)
    local killerPlayer = GetPlayerFromServerId(killerid)
    local killerPed = GetPlayerPed(killerPlayer)

    for entity, blip in pairs(wantedBlips) do
        if entity == killerPed then
            RemoveBlip(blip)

            wantedBlips[entity] = nil
        end
    end
end)

RegisterNetEvent('addz_karmasystem:client_setKarma')
AddEventHandler('addz_karmasystem:client_setKarma', function()
    local bountyValue = 'BOUNTY: $'..Config.Bounty

    SendNUIMessage(
    {
        action = "setWanted",
        bounty  = bountyValue
    })

    local timer = Config.Timer

    CreateThread(function()
        while timer > 0 do
            Wait(0)

            local ped = PlayerPedId()
            local dead = IsEntityDead(ped)

            if dead then
                Wait(500)

                local PedBountyHunter = GetPedSourceOfDeath(ped)

                if IsEntityAPed(PedBountyHunter) and IsPedAPlayer(PedBountyHunter) then
                    bountyHunter = NetworkGetPlayerIndexFromPed(PedBountyHunter)
                end

                if bountyHunter ~= PlayerId() then
                    timer = timer - timer

                    TriggerServerEvent('addz_karmasystem:server_bountyReward', GetPlayerServerId(bountyHunter), 1)

                    SendNUIMessage(
                    {
                        action = "wantedClose"
                    })

                    wantedPlayers[ped] = nil
                end
            else
                Wait(1000)

                timer = timer - 1000
            end
        end
    end)

    CreateThread(function()
        while timer > 0 do
            Wait(0)

            if timer < 1 then
                SendNUIMessage(
                {
                    action = "wantedClose"
                })

                wantedPlayers[PlayerPedId()] = nil

                TriggerServerEvent('addz_karmasystem:server_bountyReward',0, 2)

                return
            end
        end
    end)
end)

RegisterCommand('wanted', function()
    TriggerEvent('addz_karmasystem:client_setKarma')
end)