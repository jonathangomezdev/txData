Config = {}

Config.defaultlang = "en" -- Default language ("en" English, "es" Español)
Config.ItemRequired = false
Config.SearchTimeMin = 5000 -- Minimum time, in milliseconds (1000 milliseconds = 1 second), taken to search a diamond mine.
Config.SearchTimeMax = 10000 -- Maximum time, in milliseconds (1000 milliseconds = 1 second), taken to search a diamond mine.
Config.SearchDelay = 600 -- Time, in seconds, before a diamond mine can be searched again.
Config.SearchRewardCount = 0,3 -- How many diamonds players can find per mine; Set this to a table like so {min,max} for random reward count per search; eg {0,3} will mean a random reward count between 0 and 3.

Config.DiamondItemName = "diamond" -- The item name of a Diamond; given to player on successful search (MUST be registered in your items database!).
Config.DiamondItemLabel = "Diamond" -- The display name of a Diamond. _U("item_diamond") will pull the name from your language file, or you can just put a name here yourself.

--Config.DiamondCustomUseFunction =  -- Set true if you already have a script which handles the usage of an item with the same name as Config.DiamondItemName.

-- The following settings are only used if Config.DiamondCustomUseFunction is not set to true
Config.DiamondGivenItemName = "p_diamond01x" -- The item name of what is rewarded when using a Diamond from inventory (MUST be registered in your items database!).
Config.DiamondGivenItemLabel = "Diamond Necklace" -- The display name of Config.DiamondGivenItemName. _U("item_necklace") will pull the name from your language file, or you can just put a name here yourself.
Config.DiamondGivenItemAmount = {1,3} -- How many items (Config.DiamondGivenItemName) players can obtain when using a Diamond from inventory; Set this to a table like so {min,max} for random item count when used; eg {1,3} will mean a random item count between 1 and 3.

Config.DiamondMines = { -- vector3(x,y,z)
	-- Diamond Mine 1
	vector3(-2092.28, 115.63, 241.03),
	vector3(-2107.26, 121.25, 237.79),
	vector3(-2129.75, 124.39, 236.52),
	vector3(-2146.47, 115.56, 239.504),
	vector3(-2136.15, 106.19, 242.94),
	vector3(-2137.10, 94.41, 246.43),
	-- Diamond Mine 2
	vector3(-2722.197021484375, 731.7373657226562, 172.18287658691406),
	vector3(-2713.39794921875, 718.161865234375, 171.3320770263672),
	vector3(-2708.381591796875, 731.70263671875, 175.8559112548828),
	vector3(-2716.978515625, 683.5261840820312, 175.7537841796875),
	vector3(-2720.6328125, 683.756591796875, 175.7709503173828)
}

