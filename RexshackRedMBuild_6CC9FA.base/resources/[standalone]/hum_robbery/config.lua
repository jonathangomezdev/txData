Config = {}
----------------- Prompts ----------------- 
Config.StartRob = "Shoot Gun In Air To Start Robbery"
Config.Register = "Press [~e~E~q~] to break into Register"
Config.Completed = "Press [~e~E~q~] to get your money"


----------------- Timers ----------------- 
Config.RobberyTime = 60000 -- in ms
Config.Policealert = 5000 -- in ms
Config.Cooldown = 1000000 -- Cooldown beetwen the robberys
Config.Payout = math.random (20,75)


----------------- Tables ----------------- 
Config.Items = {
    "largenugget",
    "mediumnugget"
}

Config.RobItem = {
    "lockpick"
}


Config.Shops = {
	{ coords = vector3(-324.25668334961, 804.17126464844, 116.88167572021), name = "Valentine General Store" },
	{ coords = vector3(2825.3081054688, -1320.1149902344, 45.755676269531), name = "Saint Denis General Store"},
	{ coords = vector3(-783.89166259766, -1321.6003417969, 42.884174346924), name = "Blackwater General Store"},
	{ coords = vector3(-1789.5017089844, -387.52227783203, 159.32858276367), name = "Strawberry General Store" },
	{ coords = vector3(-3687.3408203125, -2622.71875, -14.431159973145), name = "Armadillo General Store"},
	{ coords = vector3(-5486.3012695313, -2937.5539550781, -1.3999969363213), name = "Tumbleweed General Store" },
	{ coords = vector3(1330.0543212891, -1293.6337890625, 76.021408081055), name = "Rhodes General Store" }
}

