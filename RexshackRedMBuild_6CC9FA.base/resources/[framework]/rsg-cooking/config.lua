Config = {}

Config.Debug = false

Config.CampfireProps = {

    55104655, -- s_campfire01x
    -1892618927, -- s_campfire02x
    -732527717, -- p_cs_campfirecmbnd01x
    -1112289552, -- p_campfirecombined01x_off
    -96662597, -- p_campfirecombined02x
    174418135, -- p_campfirecombined03x
    1582699527, -- p_campfirecombined04x
    -808559472, -- p_kettle03x
    -1126885751, -- p_campfire05x_script
    -450300420, -- p_cookgrate01x
    1948816661, -- p_cookgrate02x
    -689630872, -- s_cookfire01x
    2145954873, -- p_stove01x
    -677652422, -- p_stove04x
    -2008369031, -- p_stove05x
    -1438090360, -- p_stove06x
    -1740286366, -- p_stove07x
    -2054771143, -- p_stove09x
}

Config.Recipes = {

 	["dough"] = {
        name =  'dough',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "flour", amount = 2 },
            [2] = { item = "water", amount = 1 },
            [3] = { item = "sugar", amount = 1 },		
        },
        receive = "dough"
    },
	["bread"] = {
        name =  'bread',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "dough", amount = 2 },
        },
        receive = "bread"
    },
	["cake"] = {
        name =  'cake',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "flour", amount = 1 },
            [2] = { item = "milk", amount = 1 },
            [3] = { item = "sugar", amount = 1 },
			[4] = { item = "egg", amount = 2 },
        },
        receive = "cake"
    },
		["biscuits"] = {
        name =  'biscuits',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "flour", amount = 1 },
            [2] = { item = "sugar", amount = 1 },
            [3] = { item = "water", amount = 1 },
        },
        receive = "biscuits"
    },
		["cookies"] = {
        name =  'cookies',
        crafttime = 5000,
        ingredients = {
            [1] = { item = "flour", amount = 1 },
            [2] = { item = "sugar", amount = 1 },
            [3] = { item = "water", amount = 1 },
        },
        receive = "cookies"
    }, 		
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