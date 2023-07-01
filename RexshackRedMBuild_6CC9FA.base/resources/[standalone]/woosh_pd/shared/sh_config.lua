local RSGCore = exports['rsg-core']:GetCoreObject()
Config = {}

Config.MenuType = "ox" -- Supported options are 'qb' or 'ox'. (qb-menu or ox_lib)
-- IF YOU USE 'ox' YOU **MUST** UNCOMMENT THE OX LINE IN THE FXMANIFEST.
Config.PulloverKey = "O" -- Default H, the key you press to flag down a vehicle.
Config.PulloverPresses = 1 -- The amount of times you must press the above key to trigger a flag down.
Config.MenuKey = "G" -- Default G, the key you press to bring up the menu if you choose to close it.
Config.MaxDistance = 50.0 -- The max distance a ped can go from the officer before they're 'free', Max 150.0

Config.ValidJobs = {
    "police",
}
Config.VehicleClasses = { -- https://docs.fivem.net/natives/?_0x29439776AAA00A62
    18, -- Emergency
    19, -- Military
}

Config.EnableRandomWarrants = true
Config.WarrantChance = 30
Config.NoWarrants = "No warrants for this person."
Config.HasWarrant = "Individual has a warrant for: "
Config.RandomWarrantReasons = {
    "Murder of a cat.",
    "Improper use of a firearm.",
    "Wanted for questioning",
}

Config.EnableGangAffiliations = true
Config.GangChance = 30
Config.NoGang = "No known gang affiliation for this individual."
Config.HasGang = "Known gang affiliation with: "
Config.Gangs = {
    "Hangang",
    "Leygang",
    "Ausgang",
    "Elizgang",
    "Cartel",
}


Config.ShowText = true -- Toggle the left side text when you have someone pulled over.
Config.HoldText = "You currently have someone held. \nUse the keybind to open the menu." -- Text that lets the officer know they currently have someone pullover.
Config.ChaseText = "Currently chasing a fleeing suspect! Stay close.." -- Text that lets the officer know they currently have someone pullover.
Config.Direction = "left" -- Side of the screen to show hold text.

function HideTheText()
    exports['ox_lib']:HideText()
end

function DrawTheText(message)
    exports['ox_lib']:DrawText(message, Config.Direction)
end

-- Name Generation
Config.pedMaleF = {"George", "Isaac", "Steve", "Daniel", "Mike", "Michael", "Terry", "Jay", "Eugene", "Jorje", "Derek", "Frank", "Fernando", "Peter", "Pete", "Liam", "Lionel", "Larry", "Garry", "Paul", "Steven", "Stephen", "Saul", "Zane", "Harry", "Jake", "Dean", "Francis", "Patar", "Nuno", "Terrance"}
Config.pedFemaleF = {"Anna", "Olivia", "Emma", "Charlotte", "Amelia", "Sophia", "Mia", "Isabella", "Mia", "Evelyn", "Harper", "Luna", "Camila", "Gianna", "Eleanor", "Ella", "Abigail", "Sofia", "Avery", "Emily", "Aria", "Hazel", "Nova", "Lily", "Stella", "Willow", "Victoria", "Leah", "Addison", "Zoe" , "Natalie", "Natalia", "Valentina", "Bella", "Josephine", "Claire", "Audrey", "Autumn", "Delilah", "Piper", "Rylee", "Clara", "Liliana", "Samantha", "Eden", "Maeve", "Remi", "Melody"}
Config.pedLast = {"Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Miller", "Davis", "Rodriguez", "Martinez", "Hernandez", "Lopez", "Gonzalez", "Wilson", "Anderson", "Thomas", "Taylor", "Moore", "Jackson", "Martin", "Lee", "Perez", "Thompson", "White", "Harris", "Sanchez", "Clark", "King", "Allen", "Young", "Garcia", "King", "Lewis", "Hall", "Wilson", "Miller", "Moore"}
-- Notification when you get their license back, for translation purposes.
Config.TheyShowYouLicense = "They show you their license, and it reads:\n"
Config.Born = "born"
Config.Aged = " aged "

Config.MenuLabel = "Suspect Menu"
Config.Follow_Horse = "Follow my Horse"
Config.LetGo = "Release Individual"
Config.RequestID = "Request License/ID"
Config.FollowMe = "Follow Me"
Config.Escort = "Grab onto wrists/Let go"
Config.FaceMe = "Face me please"
Config.Release_and_let_them_keep_vehicle = "Release Individual, Ride Away"
Config.Release_but_dont_let_them_keep_vehicle = "Release Individual, Walk Away"
Config.Cuff = "Detain (Cuff)"
Config.Uncuff = "Uncuff"
Config.Place_in_squad_car = "Place on Wagon"
Config.Jail = "Send to Jail"
Config.ExitMenu = "Exit Menu"
Config.StepOut = "Step off the Horse & follow"
Config.InspectVehicle = "Look for illegals inside Wagon"
Config.InspectPerson = "Search individual"


Config.LimitJailingToValidLocations = true
Config.JailLocations =         {
            vector2(3318.3984375, -657.3021850586),
            vector2(3318.3984375, -657.3021850586),
            vector2(3384.744140625, -640.3119506836),
            vector2(3406.6110839844, -678.14178466796),
            vector2(3368.9548339844, -724.2036743164),
            vector2(3334.6440429688, -704.1216430664),
            vector2(3329.4631347656, -698.779296875),
            vector2(3318.314453125, -656.95434570312)
        },
        minZ = 44.26696395874,
        maxZ = 46.395713806152
    }
}
}
Config.Not_Near_A_Valid_Send_Off_Location = "You are not near a valid location for the bus to pick your suspect up."
Config.Enable_Payment_Reward_For_Jailing_NPC = true
Config.MoneyType_Jailing = "cash" -- bank/cash
Config.MinMoney_Jailing = 250
Config.MaxMoney_Jailing = 450

Config.CanResistArrest = false
Config.ResistChance = 10 -- Chance to resist the cuffing from 1-100, number must be at or below this option to try and resist.

Config.EnableChaseMinigame = true -- Chase the ped, make them surrender by either sticking to their vehicle for long enough, or breaking their engine
Config.FleeMinigameChance = 10 -- Chance to resist the pullover from 1-100 and run, number must be at or below this option to try and flee.
Config.RequiredChaseDistance = 30.0 -- Distance required to maintain to make the fleeing NPC begin to sweat
Config.LongGoneDistance = 350.0 -- The amount of distance they need to be from you to be truely 'gone'
Config.ChaseInterval = 300 -- The amount of milliseconds between distance checks, higher numbers = longer chases

function DoNotification(message)
    -- print(message)
    
    -- Replace this with your own notification system.
    -- Example;
    RSGCore.Functions.Notify(message)
end

Config.Suspect_Dead_Or_Too_Far = "The individual you were dealing with has died, or you moved too far away from them."
Config.FollowNoti = "They are now attempting to follow you."
Config.ReleaseNoti = "The suspect has been released and is now free to go about their day."
Config.StepOutNoti = "The suspect steps off of their horse."
Config.FaceMeNoti = "The suspect will keep facing you."
Config.FollowFootNoti = "The suspect will now try and stay with you."
Config.Release_and_let_them_keep_vehicle_Noti = "The suspect gets in their vehicle and drives away, going about their day."
Config.Release_but_dont_let_them_keep_vehicle_Noti = "The suspect walks away from the situation."
Config.UncuffNoti = "You uncuff the suspect."
Config.JailNoti = "You send the suspect off to jail."
Config.Place_in_squad_car_Noti = "The suspect will now attempt to get into a free seat in the back of your squad car."
Config.CuffNoti = "You handcuff the suspect."
Config.ClosedMenu = "You closed the menu, use the keybind to re-open it."
Config.FoundNothingNotiVehicle = "You found nothing worth noting inside the vehicle."
Config.FoundNothingNotiPerson = "You found nothing illegal on the person."
Config.Suspect_Is_Fleeing = "The suspect is fleeing! Taze them to secure them in cuffs."
Config.CommandOnFoot = "You ask the person for a few minutes of their time."
Config.NoWarrantIllegals = "The person had no reason to be jailed, you found nothing and they had no warrants."


-- THESE ARE NOT REAL ITEMS, AND PURELY BUILD A NOTIFICATION TO FURTHER RP WITH THE NPC.

-- You discover..
Config.YouDiscover = "You discover "
Config.RandomAmountMin = 0
Config.RandomAmountMax = 10
-- ...
Config.RandomItem = {
    "cocaine bags",
    "knifes",
    "bags of marijuana",
    "burner phones",
    "illegal frogs",
}
-- in..
Config.In = " in "
Config.RandomLocationVehicle = {
    "the passenger seat.",
    "the glovebox.",
    "the bottom of the seat.",
    "the back seat.",
    "the dashboard.",
    "the door compartment.",
    "the bulging headrest.",
    "the cup holder.",
}
Config.RandomLocationPerson = {
    "their back pocket.",
    "their inside pocket.",
    "their shoes.",
    "the back of their pants.",
    "the front of their pants.",
    "their pockets.",
}

Config.DebugMode = false
Config.DebugCheckJob = false

function Debug(message)
    if Config.DebugMode then
        print(message)
    end
end