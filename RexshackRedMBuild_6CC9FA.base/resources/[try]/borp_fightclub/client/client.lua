local starting = false
local already = false
local count = {}
local createdped = {}
local pressing = false
local gpsx = 0.0
local gpsy = 0.0
local gpsz = 0.0

	-- ADD BLIP
-- see: https://filmcrz.github.io/blips/
Citizen.CreateThread(function()
    Wait(100)
    local blip = Citizen.InvokeNative(0x554d9d53f696d002, 1664425300, Config.blip[1].pos.X, Config.blip[1].pos.Y, Config.blip[1].pos.Z)
    SetBlipSprite(blip, -1081805875)
    Citizen.InvokeNative(0x9CB1A1623062F402, blip, Config.prompt_group_name)
end)		
	

function missionstart()

--Elige el array de coordenadas(lugar)
	local randomNCoords = math.random(21)
	local chossenCoords = {}
	print(randomNCoords)

	if randomNCoords == 1 then
		chossenCoords = Config.Coordenates.coords
	elseif randomNCoords == 2 then
		chossenCoords = Config.Coordenates.coords2
	elseif randomNCoords == 3 then
		chossenCoords = Config.Coordenates.coords3
	elseif randomNCoords == 4 then
		chossenCoords = Config.Coordenates.coords4
	elseif randomNCoords == 5 then
		chossenCoords = Config.Coordenates.coords5
	elseif randomNCoords == 6 then
		chossenCoords = Config.Coordenates.coords6
	elseif randomNCoords == 7 then
		chossenCoords = Config.Coordenates.coords7
	elseif randomNCoords == 8 then
		chossenCoords = Config.Coordenates.coords8
	elseif randomNCoords == 9 then
		chossenCoords = Config.Coordenates.coords9
	elseif randomNCoords == 10 then
		chossenCoords = Config.Coordenates.coords10
	elseif randomNCoords == 11 then
		chossenCoords = Config.Coordenates.coords11
	elseif randomNCoords == 12 then
		chossenCoords = Config.Coordenates.coords12
	elseif randomNCoords == 13 then
		chossenCoords = Config.Coordenates.coords13
	elseif randomNCoords == 14 then
		chossenCoords = Config.Coordenates.coords14
	elseif randomNCoords == 15 then
		chossenCoords = Config.Coordenates.coords15
	elseif randomNCoords == 16 then
		chossenCoords = Config.Coordenates.coords16
	elseif randomNCoords == 17 then
		chossenCoords = Config.Coordenates.coords17
	elseif randomNCoords == 18 then
		chossenCoords = Config.Coordenates.coords18
	elseif randomNCoords == 19 then
		chossenCoords = Config.Coordenates.coords19
	elseif randomNCoords == 20 then
		chossenCoords = Config.Coordenates.coords20
	elseif randomNCoords == 21 then
		chossenCoords = Config.Coordenates.coords21
	end



	for k,item in pairs(chossenCoords) do
		
	--Take a random model
		local modelNumeroRandom = math.random(32)
		local modelRandom = Config.models[modelNumeroRandom].hash
		local _hash = GetHashKey(modelRandom)
		RequestModel(_hash)
		if not HasModelLoaded(_hash) then 
			RequestModel(_hash) 
		end
	
		while not HasModelLoaded(_hash) do 
			Citizen.Wait(1) 
		end
		
	print(modelNumeroRandom)

		createdped[k] = CreatePed(_hash, item.x, item.y, item.z, true, true, true, true)
		Citizen.InvokeNative(0x283978A15512B2FE, createdped[k], true)
		Citizen.InvokeNative(0x23f74c2fda6e7c61, 953018525, createdped[k])
		gpsx = item.x
		gpsy = item.y
		gpsz = item.z
		
	-- SET_PED_MAX_HEALTH
	--Ped becomes agressive to the player
		TaskCombatPed(createdped[k],PlayerPedId())
		count[k] = createdped[k]
		print(count[k])
	end
	--StartGpsMultiRoute(6, true, true)
        
    -- Add the points
   -- AddPointToGpsMultiRoute(gpsx, gpsy, gpsz)
   -- AddPointToGpsMultiRoute(gpsx, gpsy, gpsz)

    -- Set the route to render
	--SetGpsMultiRouteRender(true)

	starting = true
	Wait(1000)
	Citizen.CreateThread(function()
		local x = #chossenCoords
		local pl = Citizen.InvokeNative(0x217E9DC48139933D)
		while starting == true do
			Citizen.Wait(0)
			for k,v in pairs(createdped) do
				if IsEntityDead(v) then
					if count[k] ~= nil then
						x = x - 1
						count[k] = nil
						if x == 0 then			
							DrawTxt(Config.ObjectivesKilledMessage, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
							TriggerServerEvent('borp_fightclub:givemoney')
							stopmission()
						end
					end
				end
				if IsPlayerDead(pl) then
					DrawTxt(Config.DeadMessage, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
					stopmission()
				end
			end
		end
	end)
end

function stopmission()
	Wait(5000)
	pressing = false
	starting = false
	already = false
	--SetGpsMultiRouteRender(false)
	for k,v in pairs(createdped) do
		DeletePed(v)
		Wait(500)
	end
	table.remove{createdped}
	table.remove{count}
end

function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str)
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
	SetTextCentre(centre)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
	Citizen.InvokeNative(0xADA9255D, 1);
    DisplayText(str, x, y)
end

function startdialog()
	Citizen.CreateThread(function()
	  local timetocheck = 600
		while timetocheck >= 0  do
			Citizen.Wait(0)
			DrawTxt(Config.KillingMessage, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
			timetocheck = timetocheck - 1
		end
	end)
end

Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local _source = source
		for k,v in pairs(Config.Locations) do
            local distance = GetDistanceBetweenCoords(coords, v['x'], v['y'], v['z'], true)
				if distance < 1.0 and not already then
					DrawTxt(Config.HuntingMessage, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
					if IsControlJustPressed(2, 0xC7B5340A) and not pressing then
						stopmission()
						pressing = true
						missionstart()
						startdialog()
						already = true
					end
			end
		end
	end
end)
