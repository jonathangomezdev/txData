local QRCore = exports['qr-core']:GetCoreObject()

-----------------------------------------------------------------------------------

-- pickup pelt and store in inventory
Citizen.CreateThread(function()
	while true do
    Wait(1000)
	local ped = PlayerPedId()
	local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, ped)
	local pelthash = Citizen.InvokeNative(0x31FEF6A20F00B963, holding)
	if Config.Debug == true then
		print("holding: "..tostring(holding))
		print("pelthash: "..tostring(pelthash))
	end
	if holding ~= false then
		for i, row in pairs(Config.Pelts) do
			if pelthash == Config.Pelts[i]["pelthash"] then
				local rewarditem = Config.Pelts[i]["rewarditem"]
				local name = Config.Pelts[i]["name"]
				if Config.Debug == true then
					print("rewarditem: "..tostring(rewarditem))
					print("name: "..tostring(name))
				end
				local deleted = DeleteThis(holding)
				if deleted then
					QRCore.Functions.Notify(name..' Stored', 'primary')
					TriggerServerEvent('rsg-holding:server:storepelt', rewarditem)
				else
					QRCore.Functions.Notify('something went wrong!', 'error')
				end
			end
		end
	end
	end
end)

-----------------------------------------------------------------------------------

-- delete holding
function DeleteThis(holding)
    NetworkRequestControlOfEntity(holding)
    SetEntityAsMissionEntity(holding, true, true)
    Wait(100)
    DeleteEntity(holding)
    Wait(500)
    local entitycheck = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
    local holdingcheck = GetPedType(entitycheck)
    if holdingcheck == 0 then
        return true
    else
        return false
    end
end

-----------------------------------------------------------------------------------
