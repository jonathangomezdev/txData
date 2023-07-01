Config = {}

-- settings
Config.Debug = false
Config.SellTime = 10000

Config.Pelts = { -- reward item false or 'itemname'
	
	-- BEAR
	[1] =  { -- a_c_bear_01 / PROVISION_BEAR_FUR_POOR
		["pelthash"] = 957520252,
		["name"] = "Poor Bear Pelt",
		["rewarditem"] = 'poor_bear_pelt'
	},
    [2] =  { -- a_c_bear_01 / PROVISION_BEAR_FUR
		["pelthash"] = 143941906,
		["name"] = "Good Bear Pelt",
		["rewarditem"] = 'good_bear_pelt'
	},
    [3] =  { -- a_c_bear_01 / PROVISION_BEAR_FUR_PRISTINE
		["pelthash"] = 1292673537,
		["name"] = "Perfect Bear Pelt",
		["rewarditem"] = 'perfect_bear_pelt'
	},
	 
	-- BLACK_BEAR
    [4] =  { -- a_c_bearblack_01 / PROVISION_BLACK_BEAR_FUR_POOR
		["pelthash"] = 1083865179,
		["name"] = "Poor Black Bear Pelt",
		["rewarditem"] = 'poor_black_bear_pelt'
	},
    [5] =  { -- a_c_bearblack_01 / PROVISION_BLACK_BEAR_FUR
		["pelthash"] = 1490032862,
		["name"] = "Good Black Bear Pelt",
		["rewarditem"] = 'good_black_bear_pelt'
	},
    [6] =  { -- a_c_bearblack_01 / PROVISION_BLACK_BEAR_FUR_PRISTINE
		["pelthash"] = 663376218,
		["name"] = "Perfect Black Bear Pelt",
		["rewarditem"] = 'perfect_black_bear_pelt'
	},
	
	-- BOAR
    [7] =  { -- a_c_boar_01 / PROVISION_BOAR_SKIN_POOR
		["pelthash"] = 1248540072,
		["name"] = "Poor Boar Pelt",
		["rewarditem"] = 'poor_boar_pelt'
	},
    [8] =  { -- a_c_boar_01 / PROVISION_BOAR_SKIN
		["pelthash"] = 2116849039,
		["name"] = "Good Boar Pelt",
		["rewarditem"] = 'good_boar_pelt'
	},
    [9] =  { -- a_c_boar_01 / PROVISION_BOAR_SKIN_PRISTINE
		["pelthash"] = -1858513856,
		["name"] = "Perfect Boar Pelt",
		["rewarditem"] = 'perfect_boar_pelt'
	},
	
	-- BUCK
    [10] =  { -- a_c_buck_01 / PROVISION_BUCK_FUR_POOR
		["pelthash"] = 1603936352,
		["name"] = "Poor Buck Pelt",
		["rewarditem"] = 'poor_buck_pelt'
	},
    [11] =  { -- a_c_buck_01 / PROVISION_BUCK_FUR
		["pelthash"] = -868657362,
		["name"] = "Good Buck Pelt",
		["rewarditem"] = 'good_buck_pelt'
	},
    [12] =  { -- a_c_buck_01 / PROVISION_BUCK_FUR_PRISTINE
		["pelthash"] = -702790226,
		["name"] = "Perfect Buck Pelt",
		["rewarditem"] = 'perfect_buck_pelt'
	},

	-- BUFFALO
    [13] =  { -- a_c_buffalo_01 / PROVISION_BUFFALO_FUR_POOR
		["pelthash"] = -1730060063,
		["name"] = "Poor Buffalo Pelt",
		["rewarditem"] = 'poor_buffalo_pelt'
	},
    [14] =  { -- a_c_buffalo_01 / PROVISION_BUFFALO_FUR
		["pelthash"] = -591117838,
		["name"] = "Good Buffalo Pelt",
		["rewarditem"] = 'good_buffalo_pelt'
	},
    [15] =  { -- a_c_buffalo_01 / PROVISION_BUFFALO_FUR_PRISTINE
		["pelthash"] = -237756948,
		["name"] = "Perfect Buffalo Pelt",
		["rewarditem"] = 'perfect_buffalo_pelt'
	},

	-- BULL
    [16] =  { -- a_c_bull_01 / PROVISION_BULL_HIDE_POOR
		["pelthash"] = 9293261,
		["name"] = "Poor Bull Hide",
		["rewarditem"] = 'poor_bull_pelt'
	},
    [17] =  { -- a_c_bull_01 / PROVISION_BULL_HIDE
		["pelthash"] = -536086818,
		["name"] = "Good Bull Hide",
		["rewarditem"] = 'good_bull_pelt'
	},
    [18] =  { -- a_c_bull_01 / PROVISION_BULL_HIDE_PRISTINE
		["pelthash"] = -53270317,
		["name"] = "Perfect Bull Hide",
		["rewarditem"] = 'poor_bull_pelt'
	},

	-- COUGAR
    [19] =  { -- a_c_cougar_01 / PROVISION_COUGAR_FUR_POOR
		["pelthash"] = 1914602340,
		["name"] = "Poor Cougar Pelt",
		["rewarditem"] = 'poor_cougar_pelt'
	},
    [20] =  { -- a_c_cougar_01 / PROVISION_COUGAR_FUR
		["pelthash"] = 459744337,
		["name"] = "Good Cougar Pelt",
		["rewarditem"] = 'good_cougar_pelt'
	},
    [21] =  { -- a_c_cougar_01 / PROVISION_COUGAR_FUR_PRISTINE
		["pelthash"] = -1791452194,
		["name"] = "Perfect Cougar Pelt",
		["rewarditem"] = 'perfect_cougar_pelt'
	},

	-- COW
    [22] =  { -- a_c_cow / PROVISION_COW_HIDE_POOR
		["pelthash"] = 334093551,
		["name"] = "Poor Cow Hide",
		["rewarditem"] = 'poor_cow_pelt'
	},
    [23] =  { -- a_c_cow / PROVISION_COW_HIDE
		["pelthash"] = 1150594075,
		["name"] = "Good Cow Hide",
		["rewarditem"] = 'good_cow_pelt'
	},
    [24] =  { -- a_c_cow / PROVISION_COW_HIDE_PRISTINE
		["pelthash"] = -845037222,
		["name"] = "Perfect Cow Hide",
		["rewarditem"] = 'perfect_cow_pelt'
	},
	
	-- COYOTE
    [25] =  { -- a_c_coyote_01 / PROVISION_COYOTE_FUR_POOR
		["pelthash"] = -1558096473,
		["name"] = "Poor Coyote Pelt",
		["rewarditem"] = 'poor_coyote_pelt'
	},
    [26] =  { -- a_c_coyote_01 / PROVISION_COYOTE_FUR
		["pelthash"] = 1150939141,
		["name"] = "Good Coyote Pelt",
		["rewarditem"] = 'good_coyote_pelt'
	},
    [27] =  { -- a_c_coyote_01 / PROVISION_COYOTE_FUR_PRISTINE
		["pelthash"] = -794277189,
		["name"] = "Perfect Coyote Pelt",
		["rewarditem"] = 'perfect_coyote_pelt'
	},
		
	-- DEER
    [28] =  { -- a_c_deer_01 / PROVISION_DEER_HIDE_POOR
		["pelthash"] = -662178186,
		["name"] = "Poor Deer Pelt",
		["rewarditem"] = 'poor_deer_pelt'
	},
    [29] =  { -- a_c_deer_01 / PROVISION_DEER_HIDE
		["pelthash"] = -1827027577,
		["name"] = "Good Deer Pelt",
		["rewarditem"] = 'good_deer_pelt'
	},
    [30] =  { -- a_c_deer_01 / PROVISION_DEER_HIDE_PRISTINE
		["pelthash"] = -1035515486,
		["name"] = "Perfect Deer Pelt",
		["rewarditem"] = 'perfect_deer_pelt'
	},
	
	-- ELK
    [31] =  { -- a_c_elk_01 / PROVISION_ELK_FUR_POOR
		["pelthash"] = 2053771712,
		["name"] = "Poor Elk Pelt",
		["rewarditem"] = 'poor_elk_pelt'
	},
    [32] =  { -- a_c_elk_01 / PROVISION_ELK_FUR
		["pelthash"] = 1181652728,
		["name"] = "Good Elk Pelt",
		["rewarditem"] = 'good_elk_pelt'
	},
    [33] =  { -- a_c_elk_01 / PROVISION_ELK_FUR_PRISTINE
		["pelthash"] = -1332163079,
		["name"] = "Perfect Elk Pelt",
		["rewarditem"] = 'perfect_elk_pelt'
	},
	
	-- FOX
    [34] =  { -- a_c_fox_01 / PROVISION_FOX_FUR_POOR
		["pelthash"] = 1647012424,
		["name"] = "Poor Fox Pelt",
		["rewarditem"] = 'poor_fox_pelt'
	},
    [35] =  { -- a_c_fox_01 / PROVISION_FOX_FUR
		["pelthash"] = 238733925,
		["name"] = "Good Fox Pelt",
		["rewarditem"] = 'good_fox_pelt'
	},
    [36] =  { -- a_c_fox_01 / PROVISION_FOX_FUR_PRISTINE
		["pelthash"] = 500722008,
		["name"] = "Perfect Fox Pelt",
		["rewarditem"] = 'perfect_fox_pelt'
	},
	
	-- GOAT
    [37] =  { -- a_c_goat_01 / PROVISION_GOAT_HAIR_POOR
		["pelthash"] = 699990316,
		["name"] = "Poor Goat Hide",
		["rewarditem"] = 'poor_goat_pelt'
	},
    [38] =  { -- a_c_goat_01 / PROVISION_GOAT_HAIR
		["pelthash"] = 1710714415,
		["name"] = "Good Goat Hide",
		["rewarditem"] = 'good_goat_pelt'
	},
    [39] =  { -- a_c_goat_01 / PROVISION_GOAT_HAIR_PRISTINE
		["pelthash"] = -1648383828,
		["name"] = "Perfect Goat Hide",
		["rewarditem"] = 'perfect_goat_pelt'
	},
	
	-- JAVELINA
    [40] =  { -- a_c_javelina_01 / PROVISION_JAVELINA_SKIN_POOR
		["pelthash"] = -99092070,
		["name"] = "Poor Peccary Pig Pelt",
		["rewarditem"] = 'poor_javelina_pelt'
	},
    [41] =  { -- a_c_javelina_01 / PROVISION_JAVELINA_SKIN
		["pelthash"] = -1379330323,
		["name"] = "Good Peccary Pig Pelt",
		["rewarditem"] = 'good_javelina_pelt'
	},
    [42] =  { -- a_c_javelina_01 / PROVISION_JAVELINA_SKIN_PRISTINE
		["pelthash"] = 1963510418,
		["name"] = "Perfect Peccary Pig Pelt",
		["rewarditem"] = 'perfect_javelina_pelt'
	},
	
	-- MOOSE
    [43] =  { -- a_c_moose_01 / PROVISION_MOOSE_FUR_POOR
		["pelthash"] = 1868576868,
		["name"] = "Poor Moose Pelt",
		["rewarditem"] = ''
	},
    [44] =  { -- a_c_moose_01 / PROVISION_MOOSE_FUR
		["pelthash"] = 1636891382,
		["name"] = "Good Moose Pelt",
		["rewarditem"] = ''
	},
    [45] =  { -- a_c_moose_01 / PROVISION_MOOSE_FUR_PRISTINE
		["pelthash"] = -217731719,
		["name"] = "Perfect Moose Pelt",
		["rewarditem"] = ''
	},
	
	-- OXEN
    [46] =  { -- a_c_ox_01 / PROVISION_OXEN_HIDE_POOR
		["pelthash"] = 462348928,
		["name"] = "Poor Ox Hide",
		["rewarditem"] = 'poor_ox_pelt'
	},
    [47] =  { -- a_c_ox_01 / PROVISION_OXEN_HIDE
		["pelthash"] = 1208128650,
		["name"] = "Good Ox Hide",
		["rewarditem"] = 'good_ox_pelt'
	},
    [48] =  { -- a_c_ox_01 / PROVISION_OXEN_HIDE_PRISTINE
		["pelthash"] = 659601266,
		["name"] = "Perfect Ox Hide",
		["rewarditem"] = 'perfect_ox_pelt'
	},
	
	-- PANTHER
    [49] =  { -- a_c_panther_01 / PROVISION_PANTHER_FUR_POOR
		["pelthash"] = 1584468323,
		["name"] = "Poor Panther Pelt",
		["rewarditem"] = 'poor_panther_pelt'
	},
    [50] =  { -- a_c_panther_01 / PROVISION_PANTHER_FUR
		["pelthash"] = -395646254,
		["name"] = "Good Panther Pelt",
		["rewarditem"] = 'good_panther_pelt'
	},
    [51] =  { -- a_c_panther_01 / PROVISION_PANTHER_FUR_PRISTINE
		["pelthash"] = 1969175294,
		["name"] = "Perfect Panther Pelt",
		["rewarditem"] = 'perfect_panther_pelt'
	},
	
	-- PIG
    [52] =  { -- a_c_pig_01 / PROVISION_PIG_SKIN_POOR
		["pelthash"] = -308965548,
		["name"] = "Poor Pig Hide",
		["rewarditem"] = 'poor_pig_pelt'
	},
    [53] =  { -- a_c_pig_01 / PROVISION_PIG_SKIN
		["pelthash"] = -57190831,
		["name"] = "Good Pig Hide",
		["rewarditem"] = 'good_pig_pelt'
	},
    [54] =  { -- a_c_pig_01 / PROVISION_PIG_SKIN_PRISTINE
		["pelthash"] = -1102272634,
		["name"] = "Perfect Pig Hide",
		["rewarditem"] = 'perfect_pig_pelt'
	},
	
	-- PRONGHORN
    [55] =  { -- a_c_pronghorn_01 / PROVISION_PRONGHORN_FUR_POOR
		["pelthash"] = -983605026,
		["name"] = "Poor Pronghorn Hide",
		["rewarditem"] = 'poor_pronghorn_pelt'
	},
    [56] =  { -- a_c_pronghorn_01 / PROVISION_PRONGHORN_FUR
		["pelthash"] = 554578289,
		["name"] = "Good Pronghorn Hide",
		["rewarditem"] = 'good_pronghorn_pelt'
	},
    [57] =  { -- a_c_pronghorn_01 / PROVISION_PRONGHORN_FUR_PRISTINE
		["pelthash"] = -1544126829,
		["name"] = "Perfect Pronghorn Hide",
		["rewarditem"] = 'perfect_pronghorn_pelt'
	},
	
	-- RAM
    [58] =  { -- a_c_bighornram_01 / PROVISION_RAM_HIDE_POOR
		["pelthash"] = 1796037447,
		["name"] = "Poor Ram Hide",
		["rewarditem"] = 'poor_bighornram_pelt'
	},
    [59] =  { -- a_c_bighornram_01 / PROVISION_RAM_HIDE
		["pelthash"] = -476045512,
		["name"] = "Good Ram Hide",
		["rewarditem"] = 'good_bighornram_pelt'
	},
    [60] =  { -- a_c_bighornram_01 / PROVISION_RAM_HIDE_PRISTINE
		["pelthash"] = 1795984405,
		["name"] = "Perfect Ram Hide",
		["rewarditem"] = 'perfect_bighornram_pelt'
	},
	
	-- SHEEP
    [61] =  { -- a_c_sheep_01 / PROVISION_SHEEP_WOOL_POOR
		["pelthash"] = 1729948479,
		["name"] = "Poor Sheep Hide",
		["rewarditem"] = 'poor_sheep_pelt'
	},
    [62] =  { -- a_c_sheep_01 / PROVISION_SHEEP_WOOL
		["pelthash"] = -1317365569,
		["name"] = "Good Sheep Hide",
		["rewarditem"] = 'good_sheep_pelt'
	},
    [63] =  { -- a_c_sheep_01 / PROVISION_SHEEP_WOOL_PRISTINE
		["pelthash"] = 1466150167,
		["name"] = "Perfect Sheep Hide",
		["rewarditem"] = 'perfect_sheep_pelt'
	},
	
	-- WOLF
    [64] =  { -- a_c_wolf / PROVISION_WOLF_FUR_POOR
		["pelthash"] = 85441452,
		["name"] = "Poor Wolf Pelt",
		["rewarditem"] = 'poor_wolf_pelt'
	},
    [65] =  { -- a_c_wolf / PROVISION_WOLF_FUR
		["pelthash"] = 1145777975,
		["name"] = "Good Wolf Pelt",
		["rewarditem"] = 'good_wolf_pelt'
	},
    [66] =  { -- a_c_wolf / PROVISION_WOLF_FUR_PRISTINE
		["pelthash"] = 653400939,
		["name"] = "Perfect Wolf Pelt",
		["rewarditem"] = 'perfect_wolf_pelt'
	},
	
	-- ALLIGATOR
    [67] =  { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN_POOR
		["pelthash"] = 1806153689,
		["name"] = "Poor Alligator Skin",
		["rewarditem"] = 'poor_alligator_pelt'
	},
    [68] =  { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN
		["pelthash"] = -802026654,
		["name"] = "Good Alligator Skin",
		["rewarditem"] = 'good_alligator_pelt'
	},
    [69] =  { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN_PRISTINE
		["pelthash"] = -1625078531,
		["name"] = "Perfect Alligator Skin",
		["rewarditem"] = 'perfect_alligator_pelt'
	},
	
	-- LEGENDARY
    [70] =  { -- mp_a_c_alligator_01 / Legendary Sun Gator
		["pelthash"] = -1621144167,
		["name"] = "Legendary Sun Gator Skin",
		["rewarditem"] = 'legendary_alligator_pelt'
	},
    [71] =  { -- mp_a_c_beaver_01 / Legendary Moon Beaver
		["pelthash"] = -251416414,
		["name"] = "Legendary Moon Beaver Pelt",
		["rewarditem"] = 'legendary_beaver_pelt'
	},
    [72] =  { -- mp_a_c_boar_01 / Legendary Wakpa Boar
		["pelthash"] = -1249752300,
		["name"] = "Legendary Wakpa Boar Pelt",
		["rewarditem"] = 'legendary_boar_pelt'
	},
    [73] =  { -- mp_a_c_cougar_01 / Legendary Maza Cougar
		["pelthash"] = 397926876,
		["name"] = "Legendary Maza Cougar Pelt",
		["rewarditem"] = 'legendary_cougar_pelt'
	},
    [74] =  { -- mp_a_c_coyote_01 / Legendary Midnight Paw Coyote
		["pelthash"] = 1728819413,
		["name"] = "Legendary Midnight Paw Coyote Pelt",
		["rewarditem"] = 'legendary_coyote_pelt'
	},
    [75] =  { -- mp_a_c_panther_01 / Legendary Ghost Panther
		["pelthash"] = 836208559,
		["name"] = "Legendary Ghost Panther Pelt",
		["rewarditem"] = 'legendary_panther_pelt'
	},
    [76] =  { -- mp_a_c_wolf_01? / Legendary Onyx Wolf
		["pelthash"] = -1548204069,
		["name"] = "Legendary Onyx Wolf Pelt",
		["rewarditem"] = 'legendary_wolf_pelt'
	},
    [77] =  { -- mp_a_c_wolf_01 / Legendary Emerald Wolf Pelt
		["pelthash"] = -1946740647,
		["name"] = "Legendary Emerald Wolf Pelt",
		["rewarditem"] = 'legendary_wolf_pelt'
	},
	
}
