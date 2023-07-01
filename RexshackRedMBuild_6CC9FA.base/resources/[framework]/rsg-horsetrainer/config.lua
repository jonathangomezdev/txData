Config = {}

Config.Debug = false

-- settings
------------------------------------------------------------------------------------
Config.TrainingEXPNotification = true -- show notification regarding Horse's EXP
------------------------------------------------------------------------------------
Config.FullyTrained = 5000 -- anything above 100 is overpower stamina and health
------------------------------------------------------------------------------------
Config.LeadingXpTime = 10000 -- in millisectonds (10000 = 10 secs / 60000 = 1 min)
Config.LeadingXpIncrease = 25 -- amount of xp per update
------------------------------------------------------------------------------------
Config.RidingEXPNotifications = true
Config.RidingDistance = 10 -- in metres
Config.RidingXpTime = 10000 -- 10 seconds
Config.RidingXpIncreaseTrainer = 10 -- amount of xp per update
Config.CleaningXpIncrease = 15 -- amount of xp per clean
------------------------------------------------------------------------------------
Config.FeedingXpIncrease = 5 -- amount of xp per feed
------------------------------------------------------------------------------------
Config.HorseCleanCooldown = 1 -- cooldown before cleaning can take place again (in mins)
Config.HorseFeedCooldown = 1 -- cooldown before feeding can take place again (in mins)
------------------------------------------------------------------------------------

-- horse trainer shop
Config.TrainerShop = {
     [1] = { name = "horsetrainingbrush",  price = 10,   amount = 500,  info = {}, type = "item", slot = 1, },
     [2] = { name = "horsetrainingcarrot", price = 0.50, amount = 500,  info = {}, type = "item", slot = 2, },
	 [3] = { name = "horsereviver", price = 15.50, amount = 500,  info = {}, type = "item", slot = 3, },
}
