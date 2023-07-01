Config = {}

Config.Debug = false

-- settings
Config.DistanceSpawn = 20.0 -- Distance before spawning/despawning the ped. (GTA Units.)
Config.FadeIn = true

Config.PedList = {


	-- roulette
    {    -- roulette Valentine 
        model = `CS_DESMOND`,
        coords = vector4(-308.48, 803.88, 118.97, 190.0),
    },
	-- casino
	{    -- roulette1 boat 
		model = `CS_DESMOND`,
        coords = vector4(2870.544677734375, -1399.77978515625, 43.4344596862793, -178),
    },
		{    -- roulette2 boat 
		model = `CS_DESMOND`,
        coords = vector4(2876.88330078125, -1413.3724365234375, 43.35580825805664, -13.12532234191894),
    },
	{    -- blackjack1 boat 
		model = `A_M_O_SDUpperClass_01`,
        coords = vector4(2882.531005859375, -1409.73974609375, 43.35551452636719, 142.22),
    },
		{    -- blackjack1 boat 
		model = `A_M_O_SDUpperClass_01`,
        coords = vector4(2869.8486328125, -1406.374755859375, 43.39793395996094, -40.47),
    },
		{    -- bar boat 
		model = `A_M_O_SDUpperClass_01`,
        coords = vector4(2865.4765625, -1398.7293701171875, 43.53638458251953, -131.95),
    },
	{    -- Landing Pawn Broker 
		model = `A_M_O_SDUpperClass_01`,
        coords = vector4(-1395.23, -2334.52, 42.92, 92.59),
    },
		{    -- Annesburgh Pawn Broker 
		model = `A_M_O_SDUpperClass_01`,
        coords = vector4(2922.931640625, 1351.934814453125, 44.8647575378418, -116.52),
    },
	
		{    -- Rhode Pawn Broker 
		model = `A_M_O_SDUpperClass_01`,
        coords = vector4(1361.504638671875, -1242.4783935546875, 79.91365814208984, -73.63),
    },
	
	

	-- trappers
    {    -- trapper vendor Valentine 
        model = `U_M_M_SDTRAPPER_01`,
        coords = vector4(-333.9737, 773.49157, 116.22194, 111.8759),
    },
    {    -- trapper vendor Saint Denis 
        model = `U_M_M_SDTRAPPER_01`,
        coords = vector4(2832.3193, -1223.699, 47.654289, 190.36814),
    },
    {    -- trapper vendor Riggs Station 
        model = `U_M_M_SDTRAPPER_01`,
        coords = vector4(-1007.607, -549.5084, 99.39138, 282.4226),
    },
    {    -- trapper vendor West Elizabeth 
        model = `U_M_M_SDTRAPPER_01`,
        coords = vector4(-2844.197, 142.13876, 184.61907, 255.25524),
    },
    {    -- trapper vendor Stawberry 
        model = `U_M_M_SDTRAPPER_01`,
        coords = vector4(-1745.992, -388.9831, 156.59568, 107.79673),
    },
    {    -- trapper vendor Tumbleweed 
        model = `U_M_M_SDTRAPPER_01`,
        coords = vector4(-5511.721, -2951.048, -1.83548, 165.87483),
    },
	-- butchers
    {    -- butcher Valentine 
        model = `U_M_M_VALBUTCHER_01`,
        coords = vector4(-339.26, 767.7, 116.57, 103.16),
    },
    {    -- butcher Saint Denis
        model = `U_M_M_VALBUTCHER_01`,
        coords = vector4(2817.6848, -1323.25, 46.607814, 54.587085),
    },
    {    -- butcher Rhodes
        model = `U_M_M_VALBUTCHER_01`,
        coords = vector4(1297.3735, -1277.661, 75.876304, 158.4201),
    },
    {    -- butcher Annesburg
        model = `U_M_M_VALBUTCHER_01`,
        coords = vector4(2934.1706, 1301.2891, 44.483638, 78.346809),
    },
    {    -- butcher Tumbleweed
        model = `U_M_M_VALBUTCHER_01`,
        coords = vector4(-5509.831, -2947.271, -1.89185, 256.48596),
    },
    {    -- butcher Blackwater
        model = `U_M_M_VALBUTCHER_01`,
        coords = vector4(-753.0086, -1284.84, 43.470008, 267.18395),
    },
    {    -- butcher Strawberry
        model = `U_M_M_VALBUTCHER_01`,
        coords = vector4(-1753.137, -392.8364, 156.24348, 189.32403),
    },
    {    -- butcher Van Horn
        model = `U_M_M_VALBUTCHER_01`,
        coords = vector4(2992.4711, 572.20001, 44.365322, 263.94104),
    },
    {    -- butcher Spider Gorge
        model = `U_M_M_VALBUTCHER_01`,
        coords = vector4(-1356.811, 2420.0056, 307.49148, 301.39794),
    },
    {    -- butcher Riggs Station
        model = `U_M_M_VALBUTCHER_01`,
        coords = vector4(-1007.92, -541.2982, 99.108978, 281.41009),
    },
	-- fish vendor
    {    -- fish vendor Valentine 
        model = `CS_FISHCOLLECTOR`,
        coords = vector4(-335.4444, 762.00537, 116.5845, 45.516292),
    },
    {    -- fish vendor Saint Denis 
        model = `CS_FISHCOLLECTOR`,
        coords = vector4(2661.7463, -1506.055, 45.968948, 321.56686),
    },
    {    -- fish vendor Rhodes
        model = `CS_FISHCOLLECTOR`,
        coords = vector4(1292.9885, -1273.963, 75.870391, 181.20063),
    },
    {    -- fish vendor Annesburg
        model = `CS_FISHCOLLECTOR`,
        coords = vector4(3018.2368, 1352.096, 42.713443, 23.409223),
    },
    {    -- fish vendor Van Horn
        model = `CS_FISHCOLLECTOR`,
        coords = vector4(2991.539, 558.93402, 44.357906, 4.9385623),
    },
    {    -- fish vendor Van Horn
        model = `CS_FISHCOLLECTOR`,
        coords = vector4(2991.539, 558.93402, 44.357906, 4.9385623),
    },
    {    -- fish vendor Blackwater
        model = `CS_FISHCOLLECTOR`,
        coords = vector4(-723.9387, -1254.361, 44.734092, 49.674472),
    },
    {    -- fish vendor Tumbleweed
        model = `CS_FISHCOLLECTOR`,
        coords = vector4(-5513.404, -2944.167, -2.001027, 29.520355),
    },
    {    -- fish vendor Tumbleweed
        model = `CS_FISHCOLLECTOR`,
        coords = vector4(-1452.24, -2684.517, 41.256187, 221.86631),
    },
    {    -- vendor Valentine
        model = `A_M_M_BLWObeseMen_01`,
        coords = vector4(-262.6581, 762.9500, 118.1483, -58.92),
    },
	 {    -- vendor Blackwater
        model = `A_M_M_BLWObeseMen_01`,
        coords = vector4(-869.28, -1312.01, 43.01, 115.07),
    },
	{    -- vendor St Denis
        model = `A_M_M_BLWObeseMen_01`,
        coords = vector4(2794.31, -1350.14, 46.71, -131.50),
    },
	{    -- vendor St Vanhorn
        model = `A_M_M_BLWObeseMen_01`,
        coords = vector4(2987.28, 574.61, 44.61, 30.00),
    },
	{    -- vendor Mining
        model = `A_M_M_BLWObeseMen_01`,
        coords = vector4(2435.36, -1511.59, 45.97, 30.00),
    },
    {    -- pet vendor Valentine
        model = `A_F_M_BTCObeseWomen_01`,
        coords = vector4(-360.5959, 784.40, 116.15, 254.57),
    },
    {    -- cart hire Valentine
        model = `A_M_M_deliverytravelers_warm_01`,
        coords = vector4(-360.26, 802.67, 116.25, 235.24),
    },
    {    -- cart hire Rhodes
        model = `A_M_M_deliverytravelers_warm_01`,
        coords = vector4(1326.73, -1348.21, 78.42, 177.17),
    },
    {    -- cart hire St Denis
        model = `A_M_M_deliverytravelers_warm_01`,
        coords = vector4(2497.87, -1445.85, 46.32, 101.40),
    },
    {    -- cart hire Van Horn
        model = `A_M_M_deliverytravelers_warm_01`,
        coords = vector4(2983.54, 589.39, 44.16, 158.38),
    },
    {    -- cart hire Annesburg
        model = `A_M_M_deliverytravelers_warm_01`,
        coords = vector4(2984.87, 1421.62, 44.90, 176.77),
    },
    {    -- cart hire Strawberry
        model = `A_M_M_deliverytravelers_warm_01`,
        coords = vector4(-1779.50, -441.53, 155.06, 89),
    },
    {    -- cart hire Armadillo
        model = `A_M_M_deliverytravelers_warm_01`,
        coords = vector4(-3676.43, -2605.17, -13.72507, 170.74),
    },
    {    -- cart hire Tumbleweed
        model = `A_M_M_deliverytravelers_warm_01`,
        coords = vector4(-5512.87, -2929.12, -2.32, 168.93),
    },
    {    -- barber Valentine
        model = `s_m_m_barber_01`,
        coords = vector4(-307.96, 814.16, 118.99, 190.93),
    },
    {    -- barber Saint Denis
        model = `s_m_m_barber_01`,
        coords = vector4(2656.16, -1180.87, 53.28, 176.33),
    },
    {    -- barber Blackwater
        model = `s_m_m_barber_01`,
        coords = vector4(-815.88, -1364.72, 43.75, 268.01),
    },
    {    -- estate agent New Hanover
        model = `A_M_O_SDUpperClass_01`,
        coords = vector4(-250.8893, 743.20239, 118.08129, 105.66469),
    },
    {    -- estate agent West Elizabeth
        model = `A_M_O_SDUpperClass_01`,
        coords = vector4(-792.3216, -1203.232, 43.645206, 184.15261),
    },
    {    -- estate agent New Austin
        model = `A_M_O_SDUpperClass_01`,
        coords = vector4(-3658.934, -2620.835, -13.3414, 8.4051847),
    },
    {    -- estate agent Ambarino
        model = `A_M_O_SDUpperClass_01`,
        coords = vector4(-1347.746, 2405.7084, 307.06127, 296.02886),
    },
    {    -- estate agent Lemoyne
        model = `A_M_O_SDUpperClass_01`,
        coords = vector4(2596.5463, -1299.845, 52.817153, 304.04638),
    },
	    {    -- Val Train
        model = `U_M_M_RhdTrainStationWorker_01`,
        coords = vector4(-162.5611, 638.82128, 114.03203, 148.31669 ),
    },
	    {   -- delivery Saint Denis
        model = `A_M_M_SDDockForeman_01`,
        coords = vector4(2904.1989, -1169.292, 46.112228, 96.722068),
    },
    {   -- delivery Valentine 
        model = `A_M_M_FOREMAN`,
        coords = vector4(-339.0577, 814.22424, 116.96039, 125.19566),
    },
    {   -- delivery Blackwater 
        model = `A_M_M_FOREMAN`,
        coords = vector4(-743.7046, -1218.822, 43.29129, 94.302909),
    },
    {   -- delivery Strawberry
        model = `U_M_M_BiVForeman_01`,
        coords = vector4(-1798.899, -425.6275, 156.37739, 352.46316),
    },
    {   -- delivery Mcfarlands Ranch
        model = `U_M_M_BiVForeman_01`,
        coords = vector4(-2357.585, -2367.583, 62.18066, 168.52516),
    },
    {   -- delivery Tumbleweed
        model = `A_M_M_SDDockForeman_01`,
        coords = vector4(-5529.143, -2932.52, -1.95342, 212.60365),
    },
	{  -- valentine store
		model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(-324.628, 803.9818, 117.39, -81.17),
	},
	{  -- Rhodes Store 
		 model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(1330.227, -1293.41, 77.021, 68.88),
	},
	{  -- Escalera Store 
		 model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(-5714.056, -4533.13, -12.09, 43.33),
	},
	
	{  -- Strawberry store
		 model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(-1789.66, -387.918, 160.32, 56.96),
	},   
	{  -- Blackwater Store 
		 model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(-784.738, -1321.73, 43.884, 179.63),
    }, 
	{  -- Blackwater Gun Store 
		 model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(-866.67, -1290.84, 43.10, 29.23),
    }, 
	
	{  -- Armadillo store
		 model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(-3687.34, -2623.53, -14.43, -85.32),
	},   
	{  -- Tumbleweed store
    
		 model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(-5485.70, -2938.08, -1.299, 127.72),
    },   
	{  -- ST Denis store 
		 model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(2824.863, -1319.74, 46.755, -39.61),
   }, 
   {  -- Vanhorn store 
		 model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(3025.420, 561.7910, 44.722, -99.20),
	},
	{  -- El Mat BM 
		 model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(-1900.38, -4012.27, -9.68, -158.07),
	},
    {    -- Val Town Hall 
        model = `A_M_O_SDUpperClass_01`,	
        coords = vector4(-242.30, 754.36, 117.69, 104.24),
    },
    {    -- Val Job Manager
        model = `CS_DESMOND`,
        coords = vector4(-240.95, 750.77, 117.69, 108.13),
    },	
	{    -- Blackw Town Hall
        model = `A_M_O_SDUpperClass_01`,
        coords = vector4(-798.6272583007812, -1202.50048828125, 44.19351577758789, 173.37),
    },
    {    -- BlackW Job Manager
        model = `CS_DESMOND`,
        coords = vector4(-805.6376953125, -1202.853271484375, 43.6395263671875, 171.29),
    },
	    {   -- delivery Oil Fields
        model = `U_M_M_HtlForeman_01`,
        coords = vector4(444.06781, 695.92626, 116.71598, 91.313453),
    },
	{    -- vendor Blackmarket
        model = `A_M_M_BLWObeseMen_01`,
        coords = vector4(-1874.13, -4027.08, -7.73, 175.45	),
    },
	{   -- dirtyworks Moonshine 1
        model = `A_M_M_SDDockForeman_01`,
        coords = vector4(-2377.2229, 476.2617, 131.2398, 352.5959),
    },
    {   -- dirtyworks Moonshine 2
        model = `A_M_M_FOREMAN`,
        coords = vector4(-6003.3999, -3133.9880, -1.3391, 59.9198),
    },
    {   -- dirtyworks Moonshine 3
        model = `A_M_M_FOREMAN`,
        coords = vector4(1844.1267, -1830.6840, 44.0031, 1.8112),
    },
    {   -- stolenwagon New Hanover 
        model = `A_M_M_FOREMAN`,
        coords = vector4(1880.6100, 129.1103, 98.4843, 204.8635),
    },
    {    --stolenwagon West Elizabeth
        model = `A_M_O_SDUpperClass_01`,
        coords = vector4(-1999.0942, 426.0144, 121.5083, 290.8182),
    },
    {   -- stolenwagon New Austin 
        model = `A_F_M_BTCObeseWomen_01`,
        coords = vector4(-4698.7144, -3750.8535, 12.9545, 343.5464),
    },
	{    -- goldbar vendor (Blackwater)
		model = `A_M_M_RHDObeseMen_01`,
		coords = vector4(-821.3707, -1279.122, 43.638046, 262.09585),
    },
	{    -- goldbar vendor (Hidden)
		model = `A_M_M_SDDockForeman_01`,
		coords = vector4(335.4310607910156, 1504.4434814453125, 181.87600708007812, -129.72),
    },
		{  -- Casa General Store
		model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(-2250.90380859375, -3831.3330078125, -17.12589454650879, -55.7),
	},
		{  -- El Mat General Store
		model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(-1839.07763671875, -4007.075439453125, -6.03437376022338, -158.0),
	},
		{  -- TorQ General Store
		model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(-1082.626708984375, -3555.3681640625, 47.58073425292969, -55.7),
	},
			{  -- Chup General Store
		model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(-4139.40478515625, -4328.34423828125, 2.42173314094543, 8.4),
	},
			{  -- Casa General saloon
		model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(-2230.972412109375, -3790.863525390625, -17.08398056030273, 137.4),
	},
		{  -- El Mat General saloon
		model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(-1906.693603515625, -4015.796630859375, -9.67409515380859, 107.6),
	},
		{  -- TorQ General saloon
		model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(-1082.8212890625, -3545.8193359375, 46.1254997253418, -55.7),
	},
			{  -- Chup General saloon
		model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(-4137.5888671875, -4390.1787109375, 1.43679463863372, -79.9),
	},
				{  -- Sep witchdoctor saloon
		model = `U_M_M_NbxGeneralStoreOwner_01`,
		coords = vector4(-2812.47412109375, -4396.720703125, -17.12651634216308, -164.66),
	},
}
