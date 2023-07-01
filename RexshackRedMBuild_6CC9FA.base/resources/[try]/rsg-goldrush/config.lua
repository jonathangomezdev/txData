Config = {}

-- prop used to trigger
Config.Prop = 'p_goldcradlestand01x' -- prop used for the moonshine

-- set the reward items
Config.RewardItems = {
    'smallnugget',
	'mediumnugget',
	'largenugget',
}

-- set the amount of nuggets to give
Config.SmallRewardAmount = 1 -- one reward
Config.MediumRewardAmount = 1 -- two rewards
Config.LargeRewardAmount = 1 -- three rewards
Config.GoldChance = 80 -- (80 = 20% changce of not finding gold) / (70 = 30% changce of not finding gold).. and so on

-----------------------------------------------------------------------------------------------------------
Config.CampfireProps = {
    1968857405, -- s_campfire01x

}


-- debug
Config.Debug = false

-- settings
Config.StorageMaxWeight = 4000000
Config.StorageMaxSlots = 48

-----------------------------------------------------------------------------------

-- job blip
Config.Blip = {
    blipName = 'goldsmelter', -- Config.Blip.blipName
    blipSprite = 'blip_cash_bag', -- Config.Blip.blipSprite
    blipscale = 0.1 -- Config.Blip.blipScale
}

-- job prompt locations
Config.GoldsmelterLocations = {
    {name = 'goldsmelter', location = 'goldsmelter', coords = vector3(-2153.691, 538.40887, 116.94351), showblip = true, showmarker = true},
    {name = 'goldsmelter1', location = 'goldsmelter1', coords = vector3(600.35656, 2044.8552, 213.20777), showblip = true, showmarker = true},
    {name = 'goldsmelter2', location = 'goldsmelter2', coords = vector3(2369.0917, 1077.9345, 84.48645), showblip = true, showmarker = true}
}



Config.parts = {

    -- base parts
    ['Gold Smelter'] = {
        name = 'goldsmelt',
        lable = 'Gold Smelter',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'steel', amount = 2 },
			[2] = { item = 'wood', amount = 2 },
            [3] = { item = 'smallnugget', amount = 1 },
        },
        receive = 'goldsmelt'
    },
    
    ['Moonshine kit'] = {
        name = 'moonshinekit',
        lable = 'Moonshinekit',
        crafttime = 20000,
        craftitems = {
            [1] = { item = 'steel', amount = 2 },
			[2] = { item = 'wood', amount = 4 },
            [3] = { item = 'smallnugget', amount = 1 },
        },
        receive = 'moonshinekit'
    },
	
}




----------------------------Sell gold BARS
--Config.VendorShops = {
    -- Blackwater
 
 --   {
  --      prompt = "goldbar-sellshop",  -- must be unique
  --      header = "Goldbar Vendor", -- menu header
   --     coords = vector3(-820.8051, -1279.332, 43.638046), -- location of sell shop
  --      blip = { -- blip settings
  --          blipSprite = 'blip_ambient_loan_shark',
 --           blipscale = 0.2,
 --           blipName = "Goldbar Vendor",
 --       },
 --       showblip = true,
 --       shopdata = { -- shop data
 --            			{
 --               title = "smallnugget",
 --               description = "sell smallnugget",
--                price = 6.25,
--                item = "smallnugget",
--                image = "smallnugget.png"
--            },
--			{
--                title = "mediumnugget",
--                description = "sell mediumnugget",
--                price = 17.00,
--                item = "mediumnugget",
--                image = "mediumnugget.png"
--            },
--			{
--                title = "largenugget",
--                description = "sell largenugget",
--                price = 32.00,
--                item = "largenugget",
--                image = "largenugget.png"
--            },
--			{
--                title = "goldbar",
--                description = "sell goldbar",
--                price = 500.0,
--                item = "goldbar",
--                image = "goldbar.png"
--            },
--        },
--    },
--   -- Hidden
 
--    {
--        prompt = "goldbar-sellshop",  -- must be unique
--        header = "Goldbar Vendor", -- menu header
--        coords = vector3(335.4310607910156, 1504.4434814453125, 181.87600708007812), -- location of sell shop
--        blip = { -- blip settings
--            blipSprite = 'blip_ambient_loan_shark',
--            blipscale = 0.2,
--            blipName = "Goldbar Vendor",
--        },
--        showblip = true,
--        shopdata = { -- shop data
--             			{
--                title = "smallnugget",
--                description = "sell smallnugget",
--                price = 6.25,
--                item = "smallnugget",
--                image = "smallnugget.png"
--            },
--			{
--                title = "mediumnugget",
--                description = "sell mediumnugget",
--                price = 17.00,
--                item = "mediumnugget",
--                image = "mediumnugget.png"
--            },
--			{
--                title = "largenugget",
--                description = "sell largenugget",
--                price = 32.00,
--                item = "largenugget",
--                image = "largenugget.png"
--            },
--			{
 --               title = "goldbar",
 --               description = "sell goldbar",
 --               price = 500.0,
--                item = "goldbar",
--                image = "goldbar.png"
--            },
--        },
--    },





--}

--[[ 
- Locations
- vector3(-2156.744, 538.26055, 116.97595)
- vector3(601.88073, 2047.6282, 213.17745)
- vector3(2369.4924, 1081.9393, 84.22956)
 ]]
 