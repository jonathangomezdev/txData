Config = {}

Config.Debug = false

-- settings
Config.TraderCycle  = 60 -- mins until the cycle runs
Config.ChangeAmount = 0.01 -- amount to increase / decrease per cycle
Config.PromptKey    = 'J' -- key used for prompt



Config.Traders = {
    -- Thieves Landing Pawn Broker
    {
        prompt = "pawnbroker1",  -- must be unique
        header = "Pawn Broker", -- menu header
        coords = vector3(-1395.23, -2334.52, 42.92), -- location of the trader
        blip = { -- blip settings
            blipSprite = 'blip_ambient_quartermaster',
            blipScale = 0.2,
            blipName = "Pawn Broker",
        },
        showblip = true,
    },
	    -- Anseburg Pawn Broker
    {
        prompt = "pawnbroker2",  -- must be unique
        header = "Pawn Broker", -- menu header
        coords = vector3(2922.93, 1351.93, 44.86), -- location of the trader
        blip = { -- blip settings
            blipSprite = 'blip_ambient_quartermaster',
            blipScale = 0.2,
            blipName = "Pawn Broker",
        },
        showblip = true,
    },
	    -- Rhodes Pawn Broker
    {
        prompt = "pawnbroker3",  -- must be unique
        header = "Pawn Broker", -- menu header
        coords = vector3(1361.50, -1242.47, 79.91), -- location of the trader
        blip = { -- blip settings
            blipSprite = 'blip_ambient_quartermaster',
            blipScale = 0.2,
            blipName = "Pawn Broker",
        },
        showblip = true,
    }
}
