Config = {}

-- blip settings
Config.Blip = {
    blipName = 'Town Hall', -- Config.Blip.blipName
    blipSprite = 'blip_town', -- Config.Blip.blipSprite
    blipScale = 0.2 -- Config.Blip.blipScale
}

Config.TownHallLocations = {
    -- town hall locations
    { name = 'Valentine Town Hall', location = 'valentine-townhall', coords = vector3(-242.96, 753.60, 117.68), showblip = true, showmarker = false }, --valentine
    { name = 'St-denis Town Hall', location = 'st-denis-townhall', coords = vector3(2532.33, -1202.28, 52.90), showblip = true, showmarker = false }, --st denis
	{ name = 'Blackwater Town Hall', location = 'blackwater-townhall', coords = vector3(-798.6272583007812, -1202.50048828125, 44.19351577758789), showblip = true, showmarker = false }, --st denis
}


Config.Jobs = { -- not job must be in : qr-core -> shared -> jobs
    { job = 'farmer', lable = 'Farmer', description = 'Farm hand to help around the farm' },
    { job = 'unemployed', lable = 'Civilian', description = 'Like to do your own thing' },
	{ job = 'medic', lable = 'medic', description = 'fix people up' },
	{ job = 'railroad', lable = 'Railroad', description = 'transporter' },
--	{ job = 'valweaponsmith', lable = 'Valentine Weaponsmith', description = 'Valentine Weaponsmith' },
--	{ job = 'rhoweaponsmith', lable = 'Rhodes Weaponsmith', description = 'Rhodes Weaponsmith' },
--	{ job = 'valsaloontender', lable = 'Valentine Saloon', description = 'Liquor' },
--	{ job = 'blasaloontender', lable = 'Blackwater Saloon', description = 'Liquor' },	
--	{ job = 'rhosaloontender', lable = 'Rhodes Saloon', description = 'Liquor' },	
--	{ job = 'stdenissaloontender1', lable = 'Saint Denis Saloon 1', description = 'Liquor' },	
--	{ job = 'stdenissaloontender2', lable = 'Saint Denis Saloon 2', description = 'Liquor' },	
--	{ job = 'vansaloontender', lable = 'Van Horn Saloon', description = 'Liquor' },	
--	{ job = 'armsaloontender', lable = 'Armadillo Saloon', description = 'Liquor' },	
--	{ job = 'tumsaloontender', lable = 'Tumbleweed Saloon', description = 'Liquor' },
--	{ job = 'moonsaloontender1', lable = 'Lemoyne Speakeasy', description = 'Liquor' },
--	{ job = 'moonsaloontender2', lable = 'New Austin Speakeasy', description = 'Liquor' },
--	{ job = 'moonsaloontender3', lable = 'Cattail Pond Speakeasy', description = 'Liquor' },
--	{ job = 'moonsaloontender4', lable = 'Hanover Speakeasy', description = 'Liquor' },
--	{ job = 'moonsaloontender5', lable = 'Manzanita Post Speakeasy', description = 'Liquor' },
--	{ job = 'horsetrainer', lable = 'horsetrainer', description = 'Trainer' },
	{ job = 'blkwholesale', lable = 'Blackwater Wholesale Trader', description = 'Blackwater' },
	{ job = 'stdeniswholesale', lable = 'St Denis Wholesale Trader', description = 'St-Denis' },
	--{ job = 'Governor1', lable = 'Governor New Hanover', description = ' New-Hanover' },
	--{ job = 'Governor2', lable = 'Governor West Elizabeth', description = ' elizabeth' },
	--{ job = 'Governor3', lable = 'Governor New Austin', description = ' austin' },
	--{ job = 'Governor4', lable = 'Governor Ambarino', description = 'amberino' },
	--{ job = 'Governor5', lable = 'Governor Lemoyne', description = 'lemoyne' },
	{ job = 'lawyer', lable = 'laywer', description = 'lawyer' },
		{ job = 'bountyhunter', lable = 'Bounty Hunter', description = 'bountyhunter' },
	----{ job = 'prisonguard', lable = 'Guard', description = 'prison service' },
}
