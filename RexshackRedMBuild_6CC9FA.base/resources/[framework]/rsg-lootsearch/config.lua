-- If you would like to contribute to this project or report an issue, please visit: https://github.com/IngPleb/qb-lootsearch
Config = {}

Config.General = {
    -- Model of the loot items -> can be entered as a string or as a number
    LootModels = {
        469031082, 193149167, 480104093, 1311783028, 704804902, -2056768113, 1770025672, -1239217512,-1347765365,-509256108,
		570671881, -258964962, -33495584, 1207272102, 1763873903, -1012405321, 1645316571, 29773816, 216063302, -799922861,
		-565436466, 614869605, -126396784, 944709406, 1399706895, 490621707, -370296889, 282918927, -944334101, -600811692, 1307304177, 
		1338551108, 944948591, -415485117, 295806611, 706800092, -370372976, 1380081115, 52933495},
		
    -- Search distance for rsg-target
    SearchDistance = 1.5,
    -- How long does it take to search trough loot
    DurationOfSearch = 8000, -- In miliseconds
    -- How long does before player can search again
    SearchCooldown = 60000, -- In miliseconds
    -- Time that loot is refilled and can be searched again
    RefillTime = 600000 -- In miliseconds
}

Config.Stress = {
    -- Should player get some stress after searching trough loot
    AddStress = true,
    -- How much stress should player get MIN
    MinStress = 1,
    -- How much stress should player get MAX
    MaxStress = 10
}

Config.Reward = {
    -- Chance of getting a reward in % (0-100)
    Chance = 100,
    -- Money
    Money = {
        Chance = 0, -- Chance to get money instead of an item in % (0-100)
        Min = 1,
        Max = 100
    },
    -- Minimal number of items that can be found
    MinNumberOfItems = 1,
    -- Maximal number of items that can be found
    MaxNumberOfItems = 2,

    -- Items you can get
    ItemList = {
        "smallnugget", "mediumnugget", "largenugget", "diamond", "aring", "dring", "emerald", "ering", "goldtooth", "goldwatch", "pocket_compass", "pocket_watch", "provision_bracelet_gold", "provision_bracelet_platinum", "provision_bracelet_silver", "provision_buckle_gold", "provision_buckle_platinum", "provision_buckle_silver", "provision_disco_shrunken_head", "provision_penelopes_bracelet", "provision_penelopes_necklace", "provision_signet_ring", "provision_silver_wedding_chain_ring", "rring", "rubis", "sap", "sring", "totem",
	},	
}

Config.Animations = {
    -- Animation dictionary
    AnimationDictionary = "script_rc@cldn@ig@rsc2_ig1_questionshopkeeper",
    -- Animation
    Animation = "inspectfloor_player"
}