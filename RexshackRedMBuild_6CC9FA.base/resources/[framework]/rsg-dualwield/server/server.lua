local RSGCore = exports['rsg-core']:GetCoreObject()

RSGCore.Commands.Add("dualwield", 'dual wield weapons', {}, false, function(source, args)
    local src = source
	TriggerClientEvent('rsg-dualwield:client:dualwield', src)
end)
