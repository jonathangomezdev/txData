Config = {}

-- settings
Config.MinimumLawmen = 1 -- amount of lawman needed for heist
Config.BankLockdown = 300 -- amount of seconds until bank lockdown (300 = 5 mins)
Config.BankCooldown = 3600 -- amount of time in seconds until bank can be robbed again (3600 = 1hr)

-- lock valentine bank doors
Config.VaultDoors = {
    2343746133, -- left gate locked (no access)
    1340831050, -- left gate locked (use lockpick)
    334467483, -- interior side door to office (no access)
    2307914732, -- back door
    576950805, -- vault door (use dynamite)
}

-- set the item rewards
Config.RewardItems = {
    'goldbar', -- example
    'goldwatch', -- example
    'treasure1', -- example
}

-- set item rewards amount
Config.SmallRewardAmount = 1
Config.MediumRewardAmount = 2
Config.LargeRewardAmount = 3

-- set the money award gveing for large reward amount
Config.MoneyRewardType = 'bloodmoney' -- cash or bloodmoney
Config.MoneyRewardAmount = 500 -- amount of money to give player

Config.HeistNpcs = {
    [1] = { ["Model"] = "CS_VALSHERIFF", ["Pos"] = vector3(-303.67, 778.37, 118.72 -1), ["Heading"] = 94.96 },
    [2] = { ["Model"] = "CS_VALSHERIFF", ["Pos"] = vector3(-316.27, 774.87, 118.05 -1), ["Heading"] = 339.55 },
    [3] = { ["Model"] = "CS_VALSHERIFF", ["Pos"] = vector3(-308.59, 759.95, 118.73 -1), ["Heading"] = 194.29 },
    [4] = { ["Model"] = "CS_VALSHERIFF", ["Pos"] = vector3(-298.43, 762.16, 118.75 -1), ["Heading"] = 3.53 },
    [5] = { ["Model"] = "CS_VALSHERIFF", ["Pos"] = vector3(-307.31, 777.03, 123.58 -1), ["Heading"] = 193.17 },
}

-- -1 DOORSTATE_INVALID,
-- 0 DOORSTATE_UNLOCKED,
-- 1 DOORSTATE_LOCKED_UNBREAKABLE,
-- 2 DOORSTATE_LOCKED_BREAKABLE,
-- 3 DOORSTATE_HOLD_OPEN_POSITIVE,
-- 4 DOORSTATE_HOLD_OPEN_NEGATIVE