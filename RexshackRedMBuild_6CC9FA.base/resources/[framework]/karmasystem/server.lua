local RSGCore = exports['rsg-core']:GetCoreObject()

RegisterServerEvent('addz_karmasystem:server_playerBounty')
AddEventHandler('addz_karmasystem:server_playerBounty',function(killer)
    local Player = RSGCore.Functions.GetPlayer(killer)

    if not Player then return end

    local wantedPlayerName = Player.PlayerData.charinfo.firstname..' '..Player.PlayerData.charinfo.lastname
    local players = GetPlayers()

    for i = 1, #players do
        local player = players[i]
        local plyrId = tonumber(player)

        if plyrId ~= killer then
            RSGCore.Functions.Notify(plyrId, wantedPlayerName..' has been put in Bounty for the crime he/she comitted!', 'primary', 8000)

            TriggerClientEvent('addz_karmasystem:client_setWantedBlip', plyrId, killer)
        end
    end

    TriggerClientEvent('addz_karmasystem:client_setKarma', killer)
end)

RegisterServerEvent('addz_karmasystem:server_bountyReward')
AddEventHandler('addz_karmasystem:server_bountyReward',function(bountyHunterId, type)
    local wantedPlayerId = source
    local bountyHunterName = ''
    local wantedPlayerName = ''

    if type == 1 then
        local bHunter = RSGCore.Functions.GetPlayer(bountyHunterId)

        if not bHunter then return end

        bountyHunterName = bHunter.PlayerData.charinfo.firstname..' '..bHunter.PlayerData.charinfo.lastname

        bHunter.Functions.AddMoney('cash', Config.Bounty)

        local wPlayer = RSGCore.Functions.GetPlayer(wantedPlayerId)

        if not wPlayer then return end

        wantedPlayerName = wPlayer.PlayerData.charinfo.firstname..' '..wPlayer.PlayerData.charinfo.lastname

        wPlayer.Functions.RemoveMoney('cash', Config.Bounty)

        local players = GetPlayers()

        for i = 1, #players do
            local player = players[i]
            local plyrId = tonumber(player)

            if plyrId ~= wantedPlayerId then
                RSGCore.Functions.Notify(plyrId, 'Bounty for '..wantedPlayerName..' has been claimed by '..bountyHunterName..'!', 'primary', 8000)

                TriggerClientEvent('addz_karmasystem:client_removeWantedBlip', plyrId, wantedPlayerId)
            end
        end
    elseif type == 2 then
        local wPlayer = RSGCore.Functions.GetPlayer(wantedPlayerId)

        if not wPlayer then return end

        wantedPlayerName = wPlayer.PlayerData.charinfo.firstname..' '..wPlayer.PlayerData.charinfo.lastname
        local players = GetPlayers()

        for i = 1, #players do
            local player = players[i]
            local plyrId = tonumber(player)

            if plyrId ~= wantedPlayerId then
                RSGCore.Functions.Notify(plyrId, 'Bounty for '..wantedPlayerName..' has been removed!', 'primary', 8000)

                TriggerClientEvent('addz_karmasystem:client_removeWantedBlip', plyrId, wantedPlayerId)
            end
        end
    end
end)