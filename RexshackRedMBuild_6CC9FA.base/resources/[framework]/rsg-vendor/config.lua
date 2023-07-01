Config = {}

-- For language go to Locale/lang.lua

Config.AutoAddMarket = true
Config.MarketShop = 819673798

--Config.MenuImg = ""

Config.Percent = 10     -- PERCENT TO ROB
Config.ChanceFail = 8   -- CHANCE TO FAIL ROB (1 = 10%)
Config.RobTime = 7000   -- TIME TO ROB WHEN IT'S GOOD (1000 = 1 seconde)

Config.Model = {
    "A_M_M_BlWForeman_01",
    "A_M_M_BlWLaborer_01",
    "A_M_M_BynFancyTravellers_01",
    "A_M_M_MiddleSDTownfolk_03",
    "CS_ArchieDown",
    "CS_MRLINTON",
}


Config.Market = {
    -- saintdenis - Baker
    ["baker_1"]		= {coords = vector3(-372.8418273925781, 698.432861328125, 116.9992446899414),	npc = vector3(-372.8418273925781, 698.432861328125, 116.9992446899414-1),	heading = 73.4,	price = 1000},
	-- valentine - Guns 
	["guns_1"]			= {coords = vector3(-379.860595703125, 667.69384765625, 115.13060760498047),	npc = vector3(-379.860595703125, 667.69384765625, 115.13060760498047-1),	heading = 44.6,		price = 1000},
	-- rhodes - Butcher
	["butcher_1"]			= {coords = vector3(-372.20196533203125, 702.9083251953125, 116.75900268554688),	npc = vector3(-372.20196533203125, 702.9083251953125, 116.75900268554688-1),	heading = 61.7,	price = 1000},
	-- annesburg - Food
	["food_1"]			= {coords = vector3(-375.63201904296875, 676.0531616210938, 116.46888732910156),	npc = vector3(-375.63201904296875, 676.0531616210938, 116.46888732910156-1),	heading = 46.8,	price = 1000},
	-- emerald ranch - Hardward
	["hardware_1"]		= {coords = vector3(-373.3898620605469, 684.1771240234375, 117.23187255859375),	npc = vector3(-373.3898620605469, 684.1771240234375, 117.23187255859375 -1),	heading = 76.7,	price = 1000},
	-- blackwater
--	["blackwater_1"]		= {coords = vector3(-723.9505, -1254.252, 44.734088),	npc = vector3(-723.9505, -1254.252, 44.734088-1),	heading = 48.789546,	price = 1000},
	-- strawberry
--	["strawberry_1"]		= {coords = vector3(-1753.497, -385.2882, 156.49382),	npc = vector3(-1753.497, -385.2882, 156.49382-1),	heading = 227.77938,	price = 1000},
	-- thieveslanding
--	["thieveslanding_1"]	= {coords = vector3(-1389.585, -2337.569, 42.897602),	npc = vector3(-1389.585, -2337.569, 42.897602-1),	heading = 359.75198,	price = 1000},
	-- armadillo
--	["armadillo_1"]			= {coords = vector3(-3691.248, -2623.862, -13.76689),	npc = vector3(-3691.248, -2623.862, -13.76689-1),	heading = 91.805175,	price = 1000},
	-- tumbleweed
--	["tumbleweed_1"]		= {coords = vector3(-5514.908, -2947.664, -1.898856),	npc = vector3(-5514.908, -2947.664, -1.898856-1),	heading = 114.46785,	price = 1000},
	-- macfarlaneranch
	["macfarranch_1"]		= {coords = vector3(-2435.916015625, -2346.88720703125, 61.17550659179687),		npc = vector3(-2435.916015625, -2346.88720703125, 61.17550659179687-1),		heading = -165.57,	price = 1000},
}