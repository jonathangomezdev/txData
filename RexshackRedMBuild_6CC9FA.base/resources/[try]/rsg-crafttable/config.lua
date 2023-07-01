Config = Config or {}

Config.Debug = true

Config.Recipes = {

	    ["Bandges"] = {
        name =  'bandges',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "cotton", amount = 3 }
        },
        receive = "bandage"
    },
		["Bedroll"] = {
        name =  'bedroll',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "cotton", amount = 5 }
        },
        receive = "bedroll"
    },
		["Tent"] = {
        name =  'Stew',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "wood", amount = 3 },
			[2] = { item = "cotton", amount = 6 }
        },
        receive = "tent"
    },
			["Campfire"] = {
        name =  'campfire',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "wood", amount = 4 }
        },
        receive = "campfire"
    },
	    ["Moonshine Kit"] = {
        name = 'moonshinekit',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "steel", amount = 2 },
			[2] = { item = "wood", amount = 2 }
        },
        receive = "moonshinekit"
    },
	    ["Canoe"] = {
        name = 'canoe',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "steel", amount = 1 },
			[2] = { item = "wood", amount = 2 }
        },
        receive = "canoe"
    },
	    ["Goldpan"] = {
        name = 'goldpan',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "steel", amount = 2 }
        },
        receive = "goldpan"
    }	,
	    ["Lockpick"] = {
        name = 'lockpick',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "steel", amount = 2 }
        },
        receive = "lockpick"
    }
	
	
}