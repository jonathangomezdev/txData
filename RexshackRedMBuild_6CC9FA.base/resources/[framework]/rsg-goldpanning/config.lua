Config = {}

-- set the reward items
Config.RewardItems = {
    'smallnugget',
    'mediumnugget',
    'largenugget',
}

-- set the amount of nuggets to give
Config.SmallRewardAmount  = 1
Config.MediumRewardAmount = 1
Config.LargeRewardAmount  = 1
Config.GoldChance = 40 -- (30 = 70% changce of not finding gold)

-- set the amount of nuggets to give in hotspot
Config.HSSmallRewardAmount   = 3
Config.HSMediumRewardAmount  = 3
Config.HSHSLargeRewardAmount = 5
Config.HSGoldChance = 80 -- (70 = 30% changce of not finding gold

-- gold hotspot zones
Config.HotspotZones = { 
    [1] = {
        zones = { 
            vector2(-2668.4643554688, -331.17501831055),
            vector2(-2676.6958007813, -345.48364257813),
            vector2(-2692.796875, -341.9401550293),
            vector2(-2691.8974609375, -334.74746704102)
        },
        minZ = 142.12985229492,
        maxZ = 143.64106750488
    },
    [2] = {
        zones = { 
            vector2(1542.0013427734, -7162.8862304688),
            vector2(1547.5384521484, -7171.96875),
            vector2(1556.6940917969, -7168.587890625),
            vector2(1550.9084472656, -7158.328125)
        },
        minZ = 62.612213134766,
        maxZ = 63.129043579102
    },
    [3] = {
        zones = { 
            vector2(1514.1949462891, -823.47784423828),
            vector2(1519.41015625, -791.90856933594),
            vector2(1531.0574951172, -793.21038818359),
            vector2(1528.7896728516, -831.01409912109)
        },
        minZ = 39.245231628418,
        maxZ = 45.775279998779
    },
    [4] = {
        zones = { 
            vector2(2934.697265625, 2320.26171875),
            vector2(2911.2963867188, 2292.7060546875),
            vector2(2881.9921875, 2354.5239257812),
            vector2(2909.8156738281, 2374.8308105469)
        },
        minZ = 155.96199035645,
        maxZ = 158.42863464355
    },
    [5] = {
        zones = { 
            vector2(-489.40991210938, 135.47169494629),
            vector2(-569.49005126953, 158.77899169922),
            vector2(-604.72796630859, 188.51971435547),
            vector2(-448.50299072266, 186.46026611328)
        },
        minZ = 40.824508666992,
        maxZ = 42.837841033936
    },
    [6] = {
        zones = { 
            vector2(612.04937744141, 2076.751953125),
            vector2(590.32482910156, 2086.3139648438),
            vector2(539.77697753906, 1990.0228271484),
            vector2(596.48907470703, 1963.8748779297)
        },
        minZ = 209.84762573242,
        maxZ = 214.69573974609
    },
}

Config.WaterTypes = {
    [1] =  {["name"] = "San Luis River",        ["waterhash"] = -1504425495,    ["watertype"] = "river"},
    [2] =  {["name"] = "Upper Montana River",   ["waterhash"] = -1781130443,    ["watertype"] = "river"},
    [3] =  {["name"] = "Owanjila",              ["waterhash"] = -1300497193,    ["watertype"] = "river"},
    [4] =  {["name"] = "HawkEye Creek",         ["waterhash"] = -1276586360,    ["watertype"] = "river"},
    [5] =  {["name"] = "Little Creek River",    ["waterhash"] = -1410384421,    ["watertype"] = "river"},
    [6] =  {["name"] = "Dakota River",          ["waterhash"] = 370072007,      ["watertype"] = "river"},
    [7] =  {["name"] = "Beartooth Beck",        ["waterhash"] = 650214731,      ["watertype"] = "river"},
    [8] =  {["name"] = "Deadboot Creek",        ["waterhash"] = 1245451421,     ["watertype"] = "river"},
    [9] =  {["name"] = "Spider Gorge",          ["waterhash"] = -218679770,     ["watertype"] = "river"},
    [10] =  {["name"] = "Roanoke Valley",       ["waterhash"] = -1229593481,    ["watertype"] = "river"},
    [11] =  {["name"] = "Lannahechee River",    ["waterhash"] = -2040708515,    ["watertype"] = "river"},
    [12] =  {["name"] = "Random1",              ["waterhash"] = 231313522,      ["watertype"] = "river"},
    [13] =  {["name"] = "Random2",              ["waterhash"] = 2005774838,     ["watertype"] = "river"},
    [14] =  {["name"] = "Random3",              ["waterhash"] = -1287619521,    ["watertype"] = "river"},
    [15] =  {["name"] = "Random4",              ["waterhash"] = -1308233316,    ["watertype"] = "river"},
    [16] =  {["name"] = "Random5",              ["waterhash"] = -196675805,     ["watertype"] = "river"},
    [17] =  {["name"] = "Arroyo De La Vibora",  ["waterhash"] = -49694339,      ["watertype"] = "river"},
}
