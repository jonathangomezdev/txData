Config = {}

Config.defaultlang = "en"
Config.shopKey = 0x760A9C6F
Config.optionKey = 0xF1301666
Config.returnKey = 0xD9D0E1C0
Config.transferAllow = true

Config.vehicleShops = {
    blackwater = {
        shopName = "Blackwater Garage",
        location = "blackwater", -- DON'T CHANGE
        promptName = "Blackwater Vehicles",
        blipAllowed = true,
        blipName = "Garage",
        blipSprite = 1012165077,
        blipColorOpen = "BLIP_MODIFIER_MP_COLOR_32",
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        -- Spawnlocatie van de NPCw
        npcx = -816.04, npcy = -1199.25, npcz = 42.83, npch = 90.00,
        -- Spawnlocatie van het voertuig
        -- vector4(, , , 83.8)
        vehiclex = -821.29, vehicley = -1199.04, vehiclez = 43.50, vehicleh = 90.0,
        -- Spawnlocatie na het terugbrengen
        playerx = -816.04, playery = -1199.25, playerz = 42.83, playerh = 90.00,
        distanceShop = 2.0,
        distanceReturn = 6.0,
        npcAllowed = true,
        npcModel = "A_M_M_UniBoatCrew_01",
        shopHours = false,
        shopOpen = 7,
        shopClose = 21,
        vehicles = {
            coach2 = {
                vehicleName = "Coach 1",
                vehicleModel = "coach2",
                buyPrice = 300,
                sellPrice = 100,
                transferPrice = 5
            },
            coach3 = {
                vehicleName = "Coach 2",
                vehicleModel = "coach3",
                buyPrice = 310,
                sellPrice = 100,
                transferPrice = 5
            },
            coach4 = {
                vehicleName = "Coach 3",
                vehicleModel = "coach3",
                buyPrice = 315,
                sellPrice = 100,
                transferPrice = 5
            },
            coach5 = {
                vehicleName = "Coach 4",
                vehicleModel = "coach3",
                buyPrice = 320,
                sellPrice = 100,
                transferPrice = 5
            },
            coach6 = {
                vehicleName = "Coach 5",
                vehicleModel = "coach3",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach001x = {
                vehicleName = "Stage Coach 1",
                vehicleModel = "stagecoach001x",
                buyPrice = 400,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach002x = {
                vehicleName = "Stage Coach 2",
                vehicleModel = "stagecoach002x",
                buyPrice = 415,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach003x = {
                vehicleName = "Stage Coach 3",
                vehicleModel = "stagecoach003x",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach004x = {
                vehicleName = "Stage Coach 4",
                vehicleModel = "stagecoach004x",
                buyPrice = 460,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach005x = {
                vehicleName = "Stage Coach 5",
                vehicleModel = "stagecoach004x",
                buyPrice = 470,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach006x = {
                vehicleName = "Stage Coach 6",
                vehicleModel = "stagecoach004x",
                buyPrice = 480,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach004_2x = {
                vehicleName = "Stage Coach 7",
                vehicleModel = "stagecoach004_2x",
                buyPrice = 490,
                sellPrice = 100,
                transferPrice = 5
            },
            cart01 = {
                vehicleName = "Cart 1",
                vehicleModel = "cart01",
                buyPrice = 250,
                sellPrice = 100,
                transferPrice = 5
            },
            cart02 = {
                vehicleName = "Cart 2",
                vehicleModel = "cart02",
                buyPrice = 260,
                sellPrice = 100,
                transferPrice = 5
            },
            cart03 = {
                vehicleName = "Cart 3",
                vehicleModel = "cart03",
                buyPrice = 270,
                sellPrice = 100,
                transferPrice = 5
            },
            cart04 = {
                vehicleName = "Cart 4",
                vehicleModel = "cart04",
                buyPrice = 280,
                sellPrice = 100,
                transferPrice = 5
            },
            cart05 = {
                vehicleName = "Cart 5",
                vehicleModel = "cart05",
                buyPrice = 290,
                sellPrice = 100,
                transferPrice = 5
            },
            cart06 = {
                vehicleName = "Cart 6",
                vehicleModel = "cart06",
                buyPrice = 300,
                sellPrice = 100,
                transferPrice = 5
            },
            cart07 = {
                vehicleName = "Cart 7",
                vehicleModel = "cart07",
                buyPrice = 310,
                sellPrice = 100,
                transferPrice = 5
            },
            cart08 = {
                vehicleName = "Cart 8",
                vehicleModel = "cart08",
                buyPrice = 320,
                sellPrice = 100,
                transferPrice = 5
            },
            chuckwagon000x = {
                vehicleName = "Chunk Huifkar",
                vehicleModel = "chuckwagon000x",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            chuckwagon002x = {
                vehicleName = "Chunk Laad Huifkar",
                vehicleModel = "chuckwagon002x",
                buyPrice = 650,
                sellPrice = 100,
                transferPrice = 5
            },
            coal_wagon = {
                vehicleName = "Kolenwagen",
                vehicleModel = "coal_wagon",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
            gatchuck = {
                vehicleName = "Boeren Huifkar",
                vehicleModel = "gatchuck",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            huntercart01 = {
                vehicleName = "Hunter Laadbak",
                vehicleModel = "huntercart01",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
            buggy01 = {
                vehicleName = "Buggy 1",
                vehicleModel = "buggy01",
                buyPrice = 250,
                sellPrice = 100,
                transferPrice = 5
            },
            buggy02 = {
                vehicleName = "Buggy 2",
                vehicleModel = "buggy02",
                buyPrice = 250,
                sellPrice = 100,
                transferPrice = 5
            },
            buggy03 = {
                vehicleName = "Buggy 3",
                vehicleModel = "buggy03",
                buyPrice = 250,
                sellPrice = 100,
                transferPrice = 5
            },
        },
    },
    annesburg = {
        shopName = "Annesburg Garage",
        location = "annesburg", -- DON'T CHANGE
        promptName = "Annesburg Vehicles",
        blipAllowed = true,
        blipName = "Garage",
        blipSprite = 1012165077,
        blipColorOpen = "BLIP_MODIFIER_MP_COLOR_32",
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        -- Spawnlocatie van de NPC
        npcx = 2948.96, npcy = 1353.35, npcz = 43.70, npch = 76.5,
        -- Spawnlocatie van het voertuig
        vehiclex = 2943.48, vehicley = 1352.91, vehiclez = 44.02, vehicleh = 160.0,
        -- Spawnlocatie na het terugbrengen
        playerx = 2948.96, playery = 1353.35, playerz = 43.70, playerh = 76.5,
        distanceShop = 2.0,
        distanceReturn = 6.0,
        npcAllowed = true,
        npcModel = "A_M_M_UniBoatCrew_01",
        shopHours = false,
        shopOpen = 7,
        shopClose = 21,
        vehicles = {
            coach2 = {
                vehicleName = "Coach 1",
                vehicleModel = "coach2",
                buyPrice = 300,
                sellPrice = 100,
                transferPrice = 5
            },
            coach3 = {
                vehicleName = "Coach 2",
                vehicleModel = "coach3",
                buyPrice = 310,
                sellPrice = 100,
                transferPrice = 5
            },
            coach4 = {
                vehicleName = "Coach 3",
                vehicleModel = "coach3",
                buyPrice = 315,
                sellPrice = 100,
                transferPrice = 5
            },
            coach5 = {
                vehicleName = "Coach 4",
                vehicleModel = "coach3",
                buyPrice = 320,
                sellPrice = 100,
                transferPrice = 5
            },
            coach6 = {
                vehicleName = "Coach 5",
                vehicleModel = "coach3",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach001x = {
                vehicleName = "Stage Coach 1",
                vehicleModel = "stagecoach001x",
                buyPrice = 400,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach002x = {
                vehicleName = "Stage Coach 2",
                vehicleModel = "stagecoach002x",
                buyPrice = 415,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach003x = {
                vehicleName = "Stage Coach 3",
                vehicleModel = "stagecoach003x",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach004x = {
                vehicleName = "Stage Coach 4",
                vehicleModel = "stagecoach004x",
                buyPrice = 460,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach005x = {
                vehicleName = "Stage Coach 5",
                vehicleModel = "stagecoach004x",
                buyPrice = 470,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach006x = {
                vehicleName = "Stage Coach 6",
                vehicleModel = "stagecoach004x",
                buyPrice = 480,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach004_2x = {
                vehicleName = "Stage Coach 7",
                vehicleModel = "stagecoach004_2x",
                buyPrice = 490,
                sellPrice = 100,
                transferPrice = 5
            },
            cart01 = {
                vehicleName = "Cart 1",
                vehicleModel = "cart01",
                buyPrice = 250,
                sellPrice = 100,
                transferPrice = 5
            },
            cart02 = {
                vehicleName = "Cart 2",
                vehicleModel = "cart02",
                buyPrice = 260,
                sellPrice = 100,
                transferPrice = 5
            },
            cart03 = {
                vehicleName = "Cart 3",
                vehicleModel = "cart03",
                buyPrice = 270,
                sellPrice = 100,
                transferPrice = 5
            },
            cart04 = {
                vehicleName = "Cart 4",
                vehicleModel = "cart04",
                buyPrice = 280,
                sellPrice = 100,
                transferPrice = 5
            },
            cart05 = {
                vehicleName = "Cart 5",
                vehicleModel = "cart05",
                buyPrice = 290,
                sellPrice = 100,
                transferPrice = 5
            },
            cart06 = {
                vehicleName = "Cart 6",
                vehicleModel = "cart06",
                buyPrice = 300,
                sellPrice = 100,
                transferPrice = 5
            },
            cart07 = {
                vehicleName = "Cart 7",
                vehicleModel = "cart07",
                buyPrice = 310,
                sellPrice = 100,
                transferPrice = 5
            },
            cart08 = {
                vehicleName = "Cart 8",
                vehicleModel = "cart08",
                buyPrice = 320,
                sellPrice = 100,
                transferPrice = 5
            },
            chuckwagon000x = {
                vehicleName = "Chunk Huifkar",
                vehicleModel = "chuckwagon000x",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            chuckwagon002x = {
                vehicleName = "Chunk Laad Huifkar",
                vehicleModel = "chuckwagon002x",
                buyPrice = 650,
                sellPrice = 100,
                transferPrice = 5
            },
            coal_wagon = {
                vehicleName = "Kolenwagen",
                vehicleModel = "coal_wagon",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
            gatchuck = {
                vehicleName = "Boeren Huifkar",
                vehicleModel = "gatchuck",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            huntercart01 = {
                vehicleName = "Hunter Laadbak",
                vehicleModel = "huntercart01",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
        },
    },
    stdenis = {
        shopName = "Saint-Denis Garage",
        location = "stdenis", -- DON'T CHANGE
        promptName = "Saint-Denis Vehicles",
        blipAllowed = true,
        blipName = "Garage",
        blipSprite = 1012165077,
        blipColorOpen = "BLIP_MODIFIER_MP_COLOR_32",
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        -- Spawnlocatie van de NPC
        npcx = 2652.92, npcy = -1450.15, npcz = 46.72, npch = 280.0,
        -- Spawn Location (Wagon)
        vehiclex = 2658.03, vehicley = -1449.67, vehiclez = 45.23, vehicleh = 0.0,
        -- Spawnlocatie na het terugbrengen
        playerx = 2652.92, playery = -1450.15, playerz = 46.72, playerh = 280.0,
        distanceShop = 2.0,
        distanceReturn = 6.0,
        npcAllowed = true,
        npcModel = "A_M_M_UniBoatCrew_01",
        shopHours = false,
        shopOpen = 7,
        shopClose = 21,
        vehicles = {
            coach2 = {
                vehicleName = "Coach 1",
                vehicleModel = "coach2",
                buyPrice = 300,
                sellPrice = 100,
                transferPrice = 5
            },
            coach3 = {
                vehicleName = "Coach 2",
                vehicleModel = "coach3",
                buyPrice = 310,
                sellPrice = 100,
                transferPrice = 5
            },
            coach4 = {
                vehicleName = "Coach 3",
                vehicleModel = "coach3",
                buyPrice = 315,
                sellPrice = 100,
                transferPrice = 5
            },
            coach5 = {
                vehicleName = "Coach 4",
                vehicleModel = "coach3",
                buyPrice = 320,
                sellPrice = 100,
                transferPrice = 5
            },
            coach6 = {
                vehicleName = "Coach 5",
                vehicleModel = "coach3",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach001x = {
                vehicleName = "Stage Coach 1",
                vehicleModel = "stagecoach001x",
                buyPrice = 400,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach002x = {
                vehicleName = "Stage Coach 2",
                vehicleModel = "stagecoach002x",
                buyPrice = 415,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach003x = {
                vehicleName = "Stage Coach 3",
                vehicleModel = "stagecoach003x",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach004x = {
                vehicleName = "Stage Coach 4",
                vehicleModel = "stagecoach004x",
                buyPrice = 460,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach005x = {
                vehicleName = "Stage Coach 5",
                vehicleModel = "stagecoach004x",
                buyPrice = 470,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach006x = {
                vehicleName = "Stage Coach 6",
                vehicleModel = "stagecoach004x",
                buyPrice = 480,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach004_2x = {
                vehicleName = "Stage Coach 7",
                vehicleModel = "stagecoach004_2x",
                buyPrice = 490,
                sellPrice = 100,
                transferPrice = 5
            },
            cart01 = {
                vehicleName = "Cart 1",
                vehicleModel = "cart01",
                buyPrice = 250,
                sellPrice = 100,
                transferPrice = 5
            },
            cart02 = {
                vehicleName = "Cart 2",
                vehicleModel = "cart02",
                buyPrice = 260,
                sellPrice = 100,
                transferPrice = 5
            },
            cart03 = {
                vehicleName = "Cart 3",
                vehicleModel = "cart03",
                buyPrice = 270,
                sellPrice = 100,
                transferPrice = 5
            },
            cart04 = {
                vehicleName = "Cart 4",
                vehicleModel = "cart04",
                buyPrice = 280,
                sellPrice = 100,
                transferPrice = 5
            },
            cart05 = {
                vehicleName = "Cart 5",
                vehicleModel = "cart05",
                buyPrice = 290,
                sellPrice = 100,
                transferPrice = 5
            },
            cart06 = {
                vehicleName = "Cart 6",
                vehicleModel = "cart06",
                buyPrice = 300,
                sellPrice = 100,
                transferPrice = 5
            },
            cart07 = {
                vehicleName = "Cart 7",
                vehicleModel = "cart07",
                buyPrice = 310,
                sellPrice = 100,
                transferPrice = 5
            },
            cart08 = {
                vehicleName = "Cart 8",
                vehicleModel = "cart08",
                buyPrice = 320,
                sellPrice = 100,
                transferPrice = 5
            },
            chuckwagon000x = {
                vehicleName = "Chunk Huifkar",
                vehicleModel = "chuckwagon000x",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            chuckwagon002x = {
                vehicleName = "Chunk Laad Huifkar",
                vehicleModel = "chuckwagon002x",
                buyPrice = 650,
                sellPrice = 100,
                transferPrice = 5
            },
            coal_wagon = {
                vehicleName = "Kolenwagen",
                vehicleModel = "coal_wagon",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
            gatchuck = {
                vehicleName = "Boeren Huifkar",
                vehicleModel = "gatchuck",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            huntercart01 = {
                vehicleName = "Hunter Laadbak",
                vehicleModel = "huntercart01",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
        },
    },
    wallacestation = {
        shopName = "Wallace Station Garage",
        location = "wallacestation", -- DON'T CHANGE
        promptName = "Wallace Station Vehicles",
        blipAllowed = true,
        blipName = "Garage",
        blipSprite = 1012165077,
        blipColorOpen = "BLIP_MODIFIER_MP_COLOR_32",
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        -- Spawnlocatie van de NPC
        npcx = -1308.85, npcy = 387.98, npcz = 94.38, npch = 150.0,
        -- Spawn Location (Wagon)
        vehiclex = -1312.02, vehicley = 383.43, vehiclez = 94.53, vehicleh = 260.0,
        -- Spawnlocatie na het terugbrengen
        playerx = -1308.85, playery = 387.98, playerz = 94.38, playerh = 150.0,
        distanceShop = 2.0,
        distanceReturn = 6.0,
        npcAllowed = true,
        npcModel = "A_M_M_UniBoatCrew_01",
        shopHours = false,
        shopOpen = 7,
        shopClose = 21,
        vehicles = {
            coach2 = {
                vehicleName = "Coach 1",
                vehicleModel = "coach2",
                buyPrice = 300,
                sellPrice = 100,
                transferPrice = 5
            },
            coach3 = {
                vehicleName = "Coach 2",
                vehicleModel = "coach3",
                buyPrice = 310,
                sellPrice = 100,
                transferPrice = 5
            },
            coach4 = {
                vehicleName = "Coach 3",
                vehicleModel = "coach3",
                buyPrice = 315,
                sellPrice = 100,
                transferPrice = 5
            },
            coach5 = {
                vehicleName = "Coach 4",
                vehicleModel = "coach3",
                buyPrice = 320,
                sellPrice = 100,
                transferPrice = 5
            },
            coach6 = {
                vehicleName = "Coach 5",
                vehicleModel = "coach3",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach001x = {
                vehicleName = "Stage Coach 1",
                vehicleModel = "stagecoach001x",
                buyPrice = 400,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach002x = {
                vehicleName = "Stage Coach 2",
                vehicleModel = "stagecoach002x",
                buyPrice = 415,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach003x = {
                vehicleName = "Stage Coach 3",
                vehicleModel = "stagecoach003x",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach004x = {
                vehicleName = "Stage Coach 4",
                vehicleModel = "stagecoach004x",
                buyPrice = 460,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach005x = {
                vehicleName = "Stage Coach 5",
                vehicleModel = "stagecoach004x",
                buyPrice = 470,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach006x = {
                vehicleName = "Stage Coach 6",
                vehicleModel = "stagecoach004x",
                buyPrice = 480,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach004_2x = {
                vehicleName = "Stage Coach 7",
                vehicleModel = "stagecoach004_2x",
                buyPrice = 490,
                sellPrice = 100,
                transferPrice = 5
            },
            cart01 = {
                vehicleName = "Cart 1",
                vehicleModel = "cart01",
                buyPrice = 250,
                sellPrice = 100,
                transferPrice = 5
            },
            cart02 = {
                vehicleName = "Cart 2",
                vehicleModel = "cart02",
                buyPrice = 260,
                sellPrice = 100,
                transferPrice = 5
            },
            cart03 = {
                vehicleName = "Cart 3",
                vehicleModel = "cart03",
                buyPrice = 270,
                sellPrice = 100,
                transferPrice = 5
            },
            cart04 = {
                vehicleName = "Cart 4",
                vehicleModel = "cart04",
                buyPrice = 280,
                sellPrice = 100,
                transferPrice = 5
            },
            cart05 = {
                vehicleName = "Cart 5",
                vehicleModel = "cart05",
                buyPrice = 290,
                sellPrice = 100,
                transferPrice = 5
            },
            cart06 = {
                vehicleName = "Cart 6",
                vehicleModel = "cart06",
                buyPrice = 300,
                sellPrice = 100,
                transferPrice = 5
            },
            cart07 = {
                vehicleName = "Cart 7",
                vehicleModel = "cart07",
                buyPrice = 310,
                sellPrice = 100,
                transferPrice = 5
            },
            cart08 = {
                vehicleName = "Cart 8",
                vehicleModel = "cart08",
                buyPrice = 320,
                sellPrice = 100,
                transferPrice = 5
            },
            chuckwagon000x = {
                vehicleName = "Chunk Huifkar",
                vehicleModel = "chuckwagon000x",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            chuckwagon002x = {
                vehicleName = "Chunk Laad Huifkar",
                vehicleModel = "chuckwagon002x",
                buyPrice = 650,
                sellPrice = 100,
                transferPrice = 5
            },
            coal_wagon = {
                vehicleName = "Kolenwagen",
                vehicleModel = "coal_wagon",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
            gatchuck = {
                vehicleName = "Boeren Huifkar",
                vehicleModel = "gatchuck",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            huntercart01 = {
                vehicleName = "Hunter Laadbak",
                vehicleModel = "huntercart01",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
        },
    },
    omasgarage = {
        shopName = "Omas Garage",
        location = "omasgarage", -- DON'T CHANGE
        promptName = "Omas Garage",
        blipAllowed = true,
        blipName = "Garage",
        blipSprite = 1012165077,
        blipColorOpen = "BLIP_MODIFIER_MP_COLOR_32",
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        -- Spawnlocatie van de NPC
        npcx = 1181.18, npcy = 425.69, npcz = 91.78, npch = 235.0,
        -- Spawn Location (Wagon)
        vehiclex = 1200.33, vehicley = 414.79, vehiclez = 91.55, vehicleh = 150.0,
        -- Spawnlocatie na het terugbrengen
        playerx = 1181.18, playery = 425.69, playerz = 92.78, playerh = 235.0,
        distanceShop = 2.0,
        distanceReturn = 6.0,
        npcAllowed = true,
        npcModel = "A_M_M_UniBoatCrew_01",
        shopHours = false,
        shopOpen = 7,
        shopClose = 21,
        vehicles = {
            coach2 = {
                vehicleName = "Coach 1",
                vehicleModel = "coach2",
                buyPrice = 300,
                sellPrice = 100,
                transferPrice = 5
            },
            coach3 = {
                vehicleName = "Coach 2",
                vehicleModel = "coach3",
                buyPrice = 310,
                sellPrice = 100,
                transferPrice = 5
            },
            coach4 = {
                vehicleName = "Coach 3",
                vehicleModel = "coach3",
                buyPrice = 315,
                sellPrice = 100,
                transferPrice = 5
            },
            coach5 = {
                vehicleName = "Coach 4",
                vehicleModel = "coach3",
                buyPrice = 320,
                sellPrice = 100,
                transferPrice = 5
            },
            coach6 = {
                vehicleName = "Coach 5",
                vehicleModel = "coach3",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach001x = {
                vehicleName = "Stage Coach 1",
                vehicleModel = "stagecoach001x",
                buyPrice = 400,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach002x = {
                vehicleName = "Stage Coach 2",
                vehicleModel = "stagecoach002x",
                buyPrice = 415,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach003x = {
                vehicleName = "Stage Coach 3",
                vehicleModel = "stagecoach003x",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach004x = {
                vehicleName = "Stage Coach 4",
                vehicleModel = "stagecoach004x",
                buyPrice = 460,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach005x = {
                vehicleName = "Stage Coach 5",
                vehicleModel = "stagecoach004x",
                buyPrice = 470,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach006x = {
                vehicleName = "Stage Coach 6",
                vehicleModel = "stagecoach004x",
                buyPrice = 480,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach004_2x = {
                vehicleName = "Stage Coach 7",
                vehicleModel = "stagecoach004_2x",
                buyPrice = 490,
                sellPrice = 100,
                transferPrice = 5
            },
            cart01 = {
                vehicleName = "Cart 1",
                vehicleModel = "cart01",
                buyPrice = 250,
                sellPrice = 100,
                transferPrice = 5
            },
            cart02 = {
                vehicleName = "Cart 2",
                vehicleModel = "cart02",
                buyPrice = 260,
                sellPrice = 100,
                transferPrice = 5
            },
            cart03 = {
                vehicleName = "Cart 3",
                vehicleModel = "cart03",
                buyPrice = 270,
                sellPrice = 100,
                transferPrice = 5
            },
            cart04 = {
                vehicleName = "Cart 4",
                vehicleModel = "cart04",
                buyPrice = 280,
                sellPrice = 100,
                transferPrice = 5
            },
            cart05 = {
                vehicleName = "Cart 5",
                vehicleModel = "cart05",
                buyPrice = 290,
                sellPrice = 100,
                transferPrice = 5
            },
            cart06 = {
                vehicleName = "Cart 6",
                vehicleModel = "cart06",
                buyPrice = 300,
                sellPrice = 100,
                transferPrice = 5
            },
            cart07 = {
                vehicleName = "Cart 7",
                vehicleModel = "cart07",
                buyPrice = 310,
                sellPrice = 100,
                transferPrice = 5
            },
            cart08 = {
                vehicleName = "Cart 8",
                vehicleModel = "cart08",
                buyPrice = 320,
                sellPrice = 100,
                transferPrice = 5
            },
            chuckwagon000x = {
                vehicleName = "Chunk Huifkar",
                vehicleModel = "chuckwagon000x",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            chuckwagon002x = {
                vehicleName = "Chunk Laad Huifkar",
                vehicleModel = "chuckwagon002x",
                buyPrice = 650,
                sellPrice = 100,
                transferPrice = 5
            },
            coal_wagon = {
                vehicleName = "Kolenwagen",
                vehicleModel = "coal_wagon",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
            gatchuck = {
                vehicleName = "Boeren Huifkar",
                vehicleModel = "gatchuck",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            huntercart01 = {
                vehicleName = "Hunter Laadbak",
                vehicleModel = "huntercart01",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
        },
    },
    vanhorn = {
        shopName = "Van Horn Garage",
        location = "vanhorn", -- DON'T CHANGE
        promptName = "Van Horn Garage",
        blipAllowed = true,
        blipName = "Garage",
        blipSprite = 1012165077,
        blipColorOpen = "BLIP_MODIFIER_MP_COLOR_32",
        blipColorClosed = "BLIP_MODIFIER_MP_COLOR_10",
        -- Spawnlocatie van de NPC
        npcx = 2933.49, npcy = 567.65, npcz = 44.94, npch = 350.0,
        -- Spawn Location (Wagon)
        vehiclex = 2936.93, vehicley = 575.01, vehiclez = 44.58, vehicleh = 350.0,
        -- Spawnlocatie na het terugbrengen
        playerx = 2933.49, playery = 567.65, playerz = 44.94, playerh = 350.0,
        distanceShop = 2.0,
        distanceReturn = 6.0,
        npcAllowed = true,
        npcModel = "A_M_M_UniBoatCrew_01",
        shopHours = false,
        shopOpen = 7,
        shopClose = 21,
        vehicles = {
            coach2 = {
                vehicleName = "Coach 1",
                vehicleModel = "coach2",
                buyPrice = 300,
                sellPrice = 100,
                transferPrice = 5
            },
            coach3 = {
                vehicleName = "Coach 2",
                vehicleModel = "coach3",
                buyPrice = 310,
                sellPrice = 100,
                transferPrice = 5
            },
            coach4 = {
                vehicleName = "Coach 3",
                vehicleModel = "coach3",
                buyPrice = 315,
                sellPrice = 100,
                transferPrice = 5
            },
            coach5 = {
                vehicleName = "Coach 4",
                vehicleModel = "coach3",
                buyPrice = 320,
                sellPrice = 100,
                transferPrice = 5
            },
            coach6 = {
                vehicleName = "Coach 5",
                vehicleModel = "coach3",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach001x = {
                vehicleName = "Stage Coach 1",
                vehicleModel = "stagecoach001x",
                buyPrice = 400,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach002x = {
                vehicleName = "Stage Coach 2",
                vehicleModel = "stagecoach002x",
                buyPrice = 415,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach003x = {
                vehicleName = "Stage Coach 3",
                vehicleModel = "stagecoach003x",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach004x = {
                vehicleName = "Stage Coach 4",
                vehicleModel = "stagecoach004x",
                buyPrice = 460,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach005x = {
                vehicleName = "Stage Coach 5",
                vehicleModel = "stagecoach004x",
                buyPrice = 470,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach006x = {
                vehicleName = "Stage Coach 6",
                vehicleModel = "stagecoach004x",
                buyPrice = 480,
                sellPrice = 100,
                transferPrice = 5
            },
            stagecoach004_2x = {
                vehicleName = "Stage Coach 7",
                vehicleModel = "stagecoach004_2x",
                buyPrice = 490,
                sellPrice = 100,
                transferPrice = 5
            },
            cart01 = {
                vehicleName = "Cart 1",
                vehicleModel = "cart01",
                buyPrice = 250,
                sellPrice = 100,
                transferPrice = 5
            },
            cart02 = {
                vehicleName = "Cart 2",
                vehicleModel = "cart02",
                buyPrice = 260,
                sellPrice = 100,
                transferPrice = 5
            },
            cart03 = {
                vehicleName = "Cart 3",
                vehicleModel = "cart03",
                buyPrice = 270,
                sellPrice = 100,
                transferPrice = 5
            },
            cart04 = {
                vehicleName = "Cart 4",
                vehicleModel = "cart04",
                buyPrice = 280,
                sellPrice = 100,
                transferPrice = 5
            },
            cart05 = {
                vehicleName = "Cart 5",
                vehicleModel = "cart05",
                buyPrice = 290,
                sellPrice = 100,
                transferPrice = 5
            },
            cart06 = {
                vehicleName = "Cart 6",
                vehicleModel = "cart06",
                buyPrice = 300,
                sellPrice = 100,
                transferPrice = 5
            },
            cart07 = {
                vehicleName = "Cart 7",
                vehicleModel = "cart07",
                buyPrice = 310,
                sellPrice = 100,
                transferPrice = 5
            },
            cart08 = {
                vehicleName = "Cart 8",
                vehicleModel = "cart08",
                buyPrice = 320,
                sellPrice = 100,
                transferPrice = 5
            },
            chuckwagon000x = {
                vehicleName = "Chunk Huifkar",
                vehicleModel = "chuckwagon000x",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            chuckwagon002x = {
                vehicleName = "Chunk Laad Huifkar",
                vehicleModel = "chuckwagon002x",
                buyPrice = 650,
                sellPrice = 100,
                transferPrice = 5
            },
            coal_wagon = {
                vehicleName = "Kolenwagen",
                vehicleModel = "coal_wagon",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
            gatchuck = {
                vehicleName = "Boeren Huifkar",
                vehicleModel = "gatchuck",
                buyPrice = 450,
                sellPrice = 100,
                transferPrice = 5
            },
            huntercart01 = {
                vehicleName = "Hunter Laadbak",
                vehicleModel = "huntercart01",
                buyPrice = 350,
                sellPrice = 100,
                transferPrice = 5
            },
        },
    },
}
