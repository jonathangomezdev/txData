CreateThread(function()
    exports['rsg-target']:AddPlayer({
        options = {
            { 
                type = "client",
                event = "tc-giveCash:client:menu",
                icon = "fas fa-money",
                label = "Give Cash",
            },
        },
        distance = 3.0 
    })
end)


RegisterNetEvent('tc-giveCash:client:menu', function()
    local input = exports['rsg-input']:ShowInput({
        header = "Give Cash",
        submitText = "Give Cash",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'id',
                text = 'ID Of Player'
            },
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = '$ amount'
            }
        }
    })
    if input then
        if not input.id or not input.amount then return end
        TriggerServerEvent("tc-giveCash:server:charge", input.id, input.amount)
    end
end)
