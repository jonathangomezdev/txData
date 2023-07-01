-- If you would like to contribute to this project or report an issue, please visit: https://github.com/IngPleb/qb-trashsearch
Config = {}

Config.General = {
    -- Model of the trash bins -> can be entered as a string or as a number
    TrashBinModels = {
        50927092, },
    -- Search distance for qb-target
    SearchDistance = 1.5,
    -- How long does it take to search trough trash
    DurationOfSearch = 8000, -- In miliseconds
    -- How long does before player can search again
    SearchCooldown = 60000, -- In miliseconds
    -- Time that trash is refilled and can be searched again
    RefillTime = 600000 -- In miliseconds
}

Config.Stress = {
    -- Should player get some stress after searching trough trash
    AddStress = true,
    -- How much stress should player get MIN
    MinStress = 1,
    -- How much stress should player get MAX
    MaxStress = 10
}

Config.Reward = {
    -- Chance of getting a reward in % (0-100)
    Chance = 75,
    -- Money
    Money = {
        Chance = 25, -- Chance to get money instead of an item in % (0-100)
        Min = 1,
        Max = 100
    },
    -- Minimal number of items that can be found
    MinNumberOfItems = 1,
    -- Maximal number of items that can be found
    MaxNumberOfItems = 2,

    -- Items you can get
    ItemList = {
        "water", "bread", "smallnugget", "iron", "lockpick"
	},	
}

Config.Animations = {
    -- Animation dictionary
    AnimationDictionary = "script_rc@cldn@ig@rsc2_ig1_questionshopkeeper",
    -- Animation
    Animation = "inspectfloor_player"
}