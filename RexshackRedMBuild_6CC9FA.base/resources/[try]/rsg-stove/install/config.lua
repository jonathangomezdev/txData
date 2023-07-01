Config = Config or {}

Config.Debug = false

Config.stoveRecipes = {

	["Fish Steak"] = {
        name =  'cooked_fish',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "raw_fish", amount = 1 },
        },
        receive = "cooked_fish"
    },
   ["Meat Steak"] = {
        name =  'cooked_meat',
        cooktime = 5000,
        ingredients = {
            [1] = { item = "raw_meat", amount = 1 },
        },
        receive = "cooked_meat"
    },
	
	["Stew"] = {
        name =  'stew',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "water", amount = 1 },
			[2] = { item = "raw_meat", amount = 1 },
			[3] = { item = "potato", amount = 1 }
        },
        receive = "stew"
    },
	
	["Sugarcube"] = {
        name =  'sugarcube',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "sugar", amount = 1 }
        },
        receive = "sugarcube"
    },
		["Scrambled Egg"] = {
        name =  'scrambledegg',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "egg", amount = 2 },
			[2] = { item = "milk", amount = 1 }
        },
        receive = "scrambledegg"
    },
	
	
		["Steak and Eggs"] = {
        name =  'steakeggs',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "raw_meat", amount = 1 },
			[2] = { item = "egg", amount = 2 }
        },
        receive = "steakeggs"
    }
	
	
}