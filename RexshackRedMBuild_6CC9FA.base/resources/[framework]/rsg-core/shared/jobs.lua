RSGShared = RSGShared or {}

RSGShared.ForceJobDefaultDutyAtLogin = false -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved

RSGShared.Jobs = {
    ['unemployed'] = {
        label = 'Civilian',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 15
            },
        },
    },
    ['horsetrainer'] = {
        label = 'Horse Trainer',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 30
            },
            ['1'] = {
                name = 'Trainer',
                payment = 60
            },
            ['2'] = {
                name = 'Master',
                isboss = true,
                payment = 120
            },
        },
    },
    ['farmer'] = {
        label = 'Farmer',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Farm Hand',
                payment = 20
            },
            ['1'] = {
                name = 'Farm Owner',
                isboss = true,
                payment = 100
            },
        },
    },
    ['valweaponsmith'] = { --valentine
        label = 'Valentine Weaponsmith',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 75
            },
            ['1'] = {
                name = 'Master',
                isboss = true,
                payment = 150
            },
        },
    },
    ['rhoweaponsmith'] = { -- rhodes
        label = 'Rhodes Weaponsmith',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 75
            },
            ['1'] = {
                name = 'Master',
                isboss = true,
                payment = 150
            },
        },
    },
    ['bwweaponsmith'] = { -- Blackwater
        label = 'Blackwater Weaponsmith',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 75
            },
            ['1'] = {
                name = 'Master',
                isboss = true,
                payment = 150
            },
        },
    },
    ['stweaponsmith'] = { -- Strawberry
        label = 'Strawberry Weaponsmith',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 75
            },
            ['1'] = {
                name = 'Master',
                isboss = true,
                payment = 150
            },
        },
    },		
    ['valsaloontender'] = { --valentine
        label = 'Valentine Saloon',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 20
            },
            ['1'] = {
                name = 'Tender',
                payment = 35
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 75
            },
        },
    },
    ['blasaloontender'] = { --blackwater
        label = 'Blackwater Saloon',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 20
            },
            ['1'] = {
                name = 'Tender',
                payment = 35
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 75
            },
        },
    },
    ['rhosaloontender'] = { --rhodes
        label = 'Rhodes Saloon',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 20
            },
            ['1'] = {
                name = 'Tender',
                payment = 35
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 75
            },
        },
    },
    ['stdenissaloontender1'] = { --saint denis 1
        label = 'Saint Denis Saloon 1',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 50
            },
            ['1'] = {
                name = 'Tender',
                payment = 75
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 125
            },
        },
    },
    ['stdenissaloontender2'] = { --saint denis 2
        label = 'Saint Denis Saloon 2',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 50
            },
            ['1'] = {
                name = 'Tender',
                payment = 75
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 125
            },
        },
    },
    ['vansaloontender'] = { --van horn
        label = 'Van Horn Saloon',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 20
            },
            ['1'] = {
                name = 'Tender',
                payment = 35
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 75
            },
        },
    },
    ['armsaloontender'] = { --armadillo
        label = 'Armadillo Saloon',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 20
            },
            ['1'] = {
                name = 'Tender',
                payment = 35
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 75
            },
        },
    },
    ['tumsaloontender'] = { --tumbleweed
        label = 'Tumbleweed Saloon',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 20
            },
            ['1'] = {
                name = 'Tender',
                payment = 35
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 75
            },
        },
    },
    ['moonsaloontender1'] = { --lemoyne speakeasy
        label = 'Lemoyne Speakeasy',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
             ['0'] = {
                name = 'Trainee',
                payment = 20
            },
            ['1'] = {
                name = 'Tender',
                payment = 35
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 75
            },
        },
    },
    ['moonsaloontender2'] = { --new austin speakeasy
        label = 'New Austin Speakeasy',
        defaultDuty = true,
        offDutyPay = false,
		grades = {
             ['0'] = {
                name = 'Trainee',
                payment = 20
            },
            ['1'] = {
                name = 'Tender',
                payment = 35
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 75
            },
        },
    },
    ['moonsaloontender3'] = { --cattail pond speakeasy
        label = 'Cattail Pond Speakeasy',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 20
            },
            ['1'] = {
                name = 'Tender',
                payment = 35
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 75
            },
        },
    },
    ['moonsaloontender4'] = { --hanover speakeasy
        label = 'Hanover Speakeasy',
        defaultDuty = true,
        offDutyPay = false,
         grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 20
            },
            ['1'] = {
                name = 'Tender',
                payment = 35
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 75
            },
        },
    },
    ['moonsaloontender5'] = { --manzanita post speakeasy
        label = 'Manzanita Post Speakeasy',
        defaultDuty = true,
        offDutyPay = false,
         grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 20
            },
            ['1'] = {
                name = 'Tender',
                payment = 35
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 75
            },
        },
    },
    ['stdeniswholesale'] = {
        label = 'St Denis Wholesale Trader',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 45
            },
            ['1'] = {
                name = 'Tender',
                payment = 90
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 150
            },
        },
    },
    ['blkwholesale'] = {
        label = 'Blackwater Wholesale Trader',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 45
            },
            ['1'] = {
                name = 'Tender',
                payment = 90
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 150
            },
        },
    },
    ['railroad'] = {
        label = 'Railroad',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 45
            },
            ['1'] = {
                name = 'Tender',
                payment = 90
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 150
            },
        },
    },
    ['police'] = {
        label = 'Law Enforcement',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
            ['1'] = {
                name = 'Officer',
                payment = 60
            },
            ['2'] = {
                name = 'Sergeant',
                payment = 70
            },
            ['3'] = {
                name = 'Lieutenant',
                payment = 80
            },
            ['4'] = {
                name = 'Chief',
                isboss = true,
                payment = 100
            },
        },
    },
    ['medic'] = {
        label = 'Medic',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 25
            },
            ['1'] = {
                name = 'Officer',
                payment = 25
            },
            ['2'] = {
                name = 'Sergeant',
                payment = 25
            },
            ['3'] = {
                name = 'Lieutenant',
                payment = 25
            },
            ['4'] = {
                name = 'Chief',
                isboss = true,
                payment = 100
            },
        },
    },
    ['realestate'] = {
        label = 'Real Estate',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 30
            },
            ['1'] = {
                name = 'Officer',
                payment = 40
            },
            ['2'] = {
                name = 'Sergeant',
                payment = 50
            },
            ['3'] = {
                name = 'Lieutenant',
                payment = 60
            },
            ['4'] = {
                name = 'Chief',
                isboss = true,
                payment = 70
            },
        },
    },
	['farmercreator'] = {
        label = 'Farmer creator',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'owner',
                isboss = true,
                payment = 100
            },
        },
    },
    ['judge'] = {
        label = 'Honorary',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Judge',
                payment = 100
            },
        },
    },
    ['lawyer'] = {
        label = 'Law Firm',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Associate',
                payment = 100
            },
        },
    },
    ['bountyhunter'] = {
        label = 'Bounty Hunter',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'bountyhunter',
                payment = .50
            },
        },
    },
   ['goldsmelter'] = {
        label = 'Gold Smelter',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Greenhorn',
                payment = 5
            },
            ['1'] = {
                name = 'Gold King',
                isboss = true,
                payment = 15
            },
        },
    },
    ['goldsmelter1'] = {
        label = 'Gold Smelter',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Greenhorn',
                payment = 5
            },
            ['1'] = {
                name = 'Gold King',
                isboss = true,
                payment = 15
            },
        },
    },
    ['goldsmelter2'] = {
        label = 'Gold Smelter',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Greenhorn',
                payment = 5
            },
            ['1'] = {
                name = 'Gold King',
                isboss = true,
                payment = 15
            },
        },
    },	
    ['governor1'] = {
        label = 'Governor New Hanover',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Governor',
                isboss = true,
                payment = 100
            },
        },
    },
	['reporter'] = {
        label = 'reporter',
        defaultDuty = true,
        offDutyPay = true,
        grades = {
            ['0'] = {
                name = 'Reporter',
                payment = 100
            },
        },
    },
    ['governor2'] = {
        label = 'Governor West Elizabeth',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Governor',
                isboss = true,
                payment = 100
            },
        },
    },
    ['governor3'] = {
        label = 'Governor New Austin',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Governor',
                isboss = true,
                payment = 100
            },
        },
    },
    ['governor4'] = {
        label = 'Governor Ambarino',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Governor',
                isboss = true,
                payment = 100
            },
        },
    },
    ['governor5'] = {
        label = 'Governor Lemoyne',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Governor',
                isboss = true,
                payment = 100
            },
        },
    },
}