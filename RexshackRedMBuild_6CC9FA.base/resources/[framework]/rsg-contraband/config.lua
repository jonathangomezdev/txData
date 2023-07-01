Config = Config or {}

Config.MinimumLawmen = 0 -- number of lawmen on server to be able to deal
Config.LawmenJob = 'police' -- job name for the lawmen on your server

-- contraband list
Config.ContrabandList = {
    "moonshine",
	"cocaine",
}

-- contraband price
Config.ContrabandPrice = { -- set your contraband selling and scam prices
    ["moonshine"] = { min = 15, max = 35, scammin = 1, scammax = 3 },
	["cocaine"] = { min = 20, max = 45, scammin = 1, scammax = 3 },
}
