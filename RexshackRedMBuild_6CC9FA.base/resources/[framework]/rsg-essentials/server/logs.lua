local RSGCore = exports['rsg-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['anticheat'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['levels'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['playermoney'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['joinleave'] = 'https://discord.com/api/webhooks/1083522001509023784/CoAUetINB9B9y_C4XrRb6kTCyiTTJZVeobkB4uKu4Xd7xQGIq5iTiPJTBd8-7R4t6DS6',
    ['banking'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['occ'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['robbing'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['stash'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['drop'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['dealers'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['shops'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['bans'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['gangmenu'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['fishing'] = 'https://discord.com/api/webhooks/1083522452073746512/RNtA_JleCoele9k5KsoN-GvcXaLLnoG3tQi89yC3uy3uqgcjGF5s73-fpiNvPNNN5k1J',
    ['goldpanning'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['loot'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['hotel'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
    ['beekeeper'] = 'https://discord.com/api/webhooks/1083338419909967882/YpwpxfWCCHnf9U_VXqFLAIxyW52XzVkJ3XidsGUe5CpNDAlL3RdBka6bD5zsmWkwhPi_',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('rsg-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = Config.DiscordWHAuthorName,
                ['icon_url'] = Config.DiscordWHImage,
            },
        }
    }
    PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = Config.DiscordWHLogUserName, embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = Config.DiscordWHLogUserName, content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

RSGCore.Commands.Add('testwebhook', Lang:t('log.test_your_discord_webhook'), {}, false, function()
    TriggerEvent('rsg-log:server:CreateLog', 'testwebhook', Lang:t('log.test_webhook'), 'default', Lang:t('log.webhook_setup_successfully'))
end, 'god')
