Config = {}

-- debug
Config.Debug = false

-- settings
Config.StorageMaxWeight = 4000000
Config.StorageMaxSlots = 48

-- blip settings
Config.Blip = {
    blipName = 'Weaponsmith', -- Config.Blip.blipName
    blipSprite = 'blip_shop_gunsmith', -- Config.Blip.blipSprite
    blipScale = 0.2 -- Config.Blip.blipScale
}

Config.WeaponCraftingPoint = {

    {   -- valentine
        name = 'Valentine Weapon Crafting', 
        prompt = 'weaponsmith-1',
        job = 'valweaponsmith',
        coords = vector3(-277.2185, 779.09729, 119.50399), 
        showblip = false, 
        showmarker = true
    },
    {   -- rhodes
        name = 'Rhodes Weapon Crafting', 
        prompt = 'weaponsmith-2',
        job = 'rhoweaponsmith',
        coords = vector3(1327.1809, -1322.01, 77.888885), 
        showblip = false, 
        showmarker = true
    },

}

Config.WeaponPartsCrafting = {

    -- base weapon items
    ['trigger'] = {
        name = 'trigger',
        lable = 'Trigger',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'steel', amount = 1 },
        },
        receive = 'trigger'
    },
    
    ['hammer'] = {
        name = 'hammer',
        lable = 'Hammer',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'steel', amount = 1 },
        },
        receive = 'hammer'
    },
    
    ['barrel'] = {
        name = 'barrel',
        lable = 'Barrel',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'steel', amount = 1 },
        },
        receive = 'barrel'
    },
    
    ['spring'] = {
        name = 'spring',
        lable = 'Spring',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'steel', amount = 1 },
        },
        receive = 'spring'
    },
    
    ['frame'] = {
        name = 'frame',
        lable = 'Frame',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'steel', amount = 1 },
        },
        receive = 'frame'
    },

    ['grip'] = {
        name = 'grip',
        lable = 'Grip',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'steel', amount = 1 },
            [2] = { item = 'wood', amount = 1 },
        },
        receive = 'grip'
    },

    ['cylinder'] = {
        name = 'cylinder',
        lable = 'Cylinder',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'steel', amount = 1 },
        },
        receive = 'cylinder'
    },
    
}

Config.RevloverCrafting = {
    
    -- revlover crafting
    ['weapon_revolver_navy'] = {
        name = 'weapon_revolver_navy',
        lable = 'Navy Revolver',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },
            [6] = { item = 'cylinder', amount = 1 },
        },
        receive = 'weapon_revolver_navy'
    },
    
}

Config.PistolCrafting = {
    
    -- pistol crafting
		['weapon_pistol_volcanic'] = {
        name = 'weapon_pistol_volcanic',
        lable = 'Pistol Volcanic',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },
            [6] = { item = 'cylinder', amount = 1 },
        },
        receive = 'weapon_pistol_volcanic'
    },

}

Config.RepeaterCrafting = {
    
    -- repeater crafting
		['weapon_repeater_evans'] = {
        name = 'weapon_repeater_evans',
        lable = 'Repeater evans',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },
            [6] = { item = 'cylinder', amount = 1 },
        },
        receive = 'weapon_repeater_evans'
    },

}

Config.RifleCrafting = {
    
    -- rifle crafting
		['weapon_rifle_elephant'] = {
        name = 'weapon_rifle_elephant',
        lable = 'Elephant rifle',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },
            [6] = { item = 'cylinder', amount = 1 },
        },
        receive = 'weapon_rifle_elephant'
    },

}

Config.ammoCrafting = {
    
    -- ammo crafting
	['ammo_repeater'] = {
        name = 'ammo_repeater',
        lable = 'repeater ammo',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'steel',  amount = 1 },
            [2] = { item = 'iron',   amount = 1 },
        },
        receive = 'ammo_repeater'
    },
	['ammo_revolver'] = {
        name = 'ammo_revolver',
        lable = 'revolver ammo',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'steel',  amount = 2 },
            [2] = { item = 'iron',   amount = 1 },
        },
        receive = 'ammo_revolver'
    },
	['ammo_rifle'] = {
        name = 'ammo_rifle',
        lable = 'rifle ammo',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'steel',  amount = 2 },
            [2] = { item = 'iron',   amount = 1 },
        },
        receive = 'ammo_rifle'
    },
	['ammo_pistol'] = {
        name = 'ammo_pistol',
        lable = 'pistol ammo',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'steel',  amount = 2 },
            [2] = { item = 'iron',   amount = 1 },
        },
        receive = 'ammo_pistol'
    },
	['ammo_shotgun'] = {
        name = 'ammo_shotgun',
        lable = 'shotgun ammo',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'steel',  amount = 2 },
            [2] = { item = 'iron',   amount = 1 },
        },
        receive = 'ammo_shotgun'
    },
	['ammo_arrow'] = {
        name = 'ammo_arrow',
        lable = 'arrow ammo',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'wood',  amount = 1 },
            [2] = { item = 'iron',   amount = 1 },
        },
        receive = 'ammo_arrow'
    },

}

Config.ShotgunCrafting = {
    
    -- shotgun crafting
		['weapon_shotgun_doublebarrel'] = {
        name = 'weapon_shotgun_doublebarrel',
        lable = 'Shotgun ',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 2 },
            [5] = { item = 'grip',     amount = 1 },
            [6] = { item = 'cylinder', amount = 2 },
        },
        receive = 'weapon_shotgun_doublebarrel'
    },
	['weapon_shotgun_doublebarrel_exotic'] = {
        name = 'weapon_shotgun_doublebarrel_exotic',
        lable = ' Exotic Shotgun ',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 2 },
            [5] = { item = 'grip',     amount = 1 },
            [6] = { item = 'cylinder', amount = 2 },
        },
        receive = 'weapon_shotgun_doublebarrel_exotic'
    },

}
