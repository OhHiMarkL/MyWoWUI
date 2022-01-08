
EncounterDetailsDB = {
	["emotes"] = {
		{
			{
				0.2009999999991123, -- [1]
				"Your foolish crusade ends here, mortals. The legion comes and with it this world breathes its dying breath!", -- [2]
				"Archimonde", -- [3]
				7, -- [4]
			}, -- [1]
			["boss"] = "Mannoroth",
		}, -- [1]
		{
			{
				0.2009999999991123, -- [1]
				"Your foolish crusade ends here, mortals. The legion comes and with it this world breathes its dying breath!", -- [2]
				"Archimonde", -- [3]
				7, -- [4]
			}, -- [1]
			["boss"] = "Mannoroth",
		}, -- [2]
		{
			{
				1.266000000001441, -- [1]
				"The final hour is at hand, the master comes! This is your purpose, summoners. Mannoroth will be whole again!", -- [2]
				"Gul'dan", -- [3]
				7, -- [4]
			}, -- [1]
			{
				17.08500000000095, -- [1]
				"Wha- What is this? Gul'dan what have you done? I am... So weak...", -- [2]
				"Mannoroth", -- [3]
				7, -- [4]
			}, -- [2]
			{
				19.52599999999984, -- [1]
				"Fear not, Mannoroth. The fel gift empowers you... Make them suffer!", -- [2]
				"Gul'dan", -- [3]
				7, -- [4]
			}, -- [3]
			{
				20.73800000000119, -- [1]
				"|cFFFF0000%s|r begins to empower the Fel Spire!", -- [2]
				"Gul'dan", -- [3]
				1, -- [4]
			}, -- [4]
			{
				20.73800000000119, -- [1]
				"These mortals cannot be this strong. Gul'dan, do something!", -- [2]
				"Mannoroth", -- [3]
				7, -- [4]
			}, -- [5]
			{
				21.90999999999985, -- [1]
				"|cFFFF0000%s|r begins to empower the Fel Spire!", -- [2]
				"Gul'dan", -- [3]
				1, -- [4]
			}, -- [6]
			["boss"] = "Mannoroth",
		}, -- [3]
	},
	["encounter_spells"] = {
		[187052] = {
			["school"] = 8,
			["token"] = {
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Contracted Engineer",
		},
		[184472] = {
			["school"] = 32,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
		},
		[184476] = {
			["school"] = 32,
			["token"] = {
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Dia Darkwhisper",
		},
		[184449] = {
			["school"] = 32,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_PERIODIC_DAMAGE"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Dia Darkwhisper",
		},
		[188886] = {
			["school"] = 4,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Felfire Artillery",
		},
		[180927] = {
			["school"] = 4,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Felfire Artillery",
		},
		[186883] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Felfire Flamebelcher",
		},
		[181094] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Felfire Demolisher",
		},
		[184357] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Gurtogg Bloodboil",
		},
		[190313] = {
			["school"] = 32,
			["token"] = {
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Archimonde",
		},
		[184675] = {
			["school"] = 32,
			["token"] = {
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Dia Darkwhisper",
		},
		[185175] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Fel Iron Summoner",
		},
		[187074] = {
			["school"] = 8,
			["token"] = {
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Hulking Berserker",
		},
		[180945] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Felfire Demolisher",
		},
		[185147] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Fel Iron Summoner",
		},
		[180080] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Felfire Artillery",
		},
		[188888] = {
			["school"] = 4,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Felfire Flamebelcher",
		},
		[180082] = {
			["school"] = 4,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Felfire Artillery",
		},
		[186993] = {
			["school"] = 4,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Blademaster Jubei'thos",
		},
		[183023] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Soulbound Construct",
		},
		[183329] = {
			["school"] = 32,
			["token"] = {
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Soul of Socrethar",
		},
		[184847] = {
			["school"] = 8,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_PERIODIC_DAMAGE"] = true,
			},
			["source"] = "Gurtogg Bloodboil",
		},
		[182171] = {
			["school"] = 4,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_PERIODIC_DAMAGE"] = true,
			},
		},
	},
}
