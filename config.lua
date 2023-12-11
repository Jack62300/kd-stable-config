-------------------------------
-- DOCUMENTATION : https://docs.kaddarem.com/
--------------------------------

-------------------------------------------
-- DON'T EDIT THIS FILE
-- TO OVERWRITE CONFIG VALUE, USE overwriteConfig.lua file instead
-------------------------------------------

Config = {}
Config.debug = false

Config.realisticMod = false
-- if true :
-- No horse teleportation. You can only whistle horse if he is near than you.
-- Horse are linked on the last stable you use to stabling it.

Config.distancePromptStore = 3.0 --maximum distance to display the prompt to open the store
Config.distanceSpawnPed = 15.0 --maximum distance to spawn the stable man
Config.distanceSpawnHorse = 50.0 --distance to spawn the horse when whistle
Config.distanceTeleportHorse = 200.0 -- maximum distance to whistle horse before teleport him
Config.ExtraLightIntensity = 15.0 --Light intensity when preview horse in stable
Config.syncTimer = 2000 --Loop timer to resync horse after using instance
Config.useMenuWithMouse = true --turn off to disable the mouse controler for the menu
Config.needAllHorseWagon = true --turn true to only allow wagon if all needed horses are selected
Config.refreshTimerHorseStat = 1000 --time in ms to calcul the new stat of horse. Little value = more precise but more heavy for CPU
Config.saveHorseStatTimer = 60*1000 --time in ms to save new horses stats in database
Config.disableHorseFlee = false --disable the possibility to flee horses
Config.usePromptHorseStatistics = true --turn off the prompt to display horses statistics
Config.maxDistanceWithHorseshoes = 100 --in kilometers
Config.warningMessageHorseshoePercent = 20 --display a warning message when the horseshoes is under this value
Config.stopRunHorseshoesPercent = 10 --disable horse run when horseshoes is under this value
Config.distanceSafeSpawn = 5.0 --minimal distance from the farest vehicle to be able to spawn a new one
Config.useHorseHolster = true --false to disable horse holster (if true, you can't ride other player's horses)
Config.showHorseLevelUp = true --false to turn of horse exp notifications

Config.winExpByWalk = { --horse exp win by walking
	distance = 200, --distance to earn new points (in meters)
	point = 1 --amount earn by each distance
}
-- Bonding level depend of the horse breed
-- Level 1 ~ 100 points
-- Level 2 ~ 250 points
-- Level 3 ~ 800 points
-- Level 4 ~ 1500 points


Config.horseSlots = 5 -- maximum of horse for players (set -1 to unlimited)
Config.wagonSlots = 5 -- maximum of horse for players (set -1 to unlimited)

Config.commands = { --set false to disable a command
	sidesiddle = "sidesaddle",
	fixWagon = "fixWagon",
	fixHorse = "fixHorse"
}

Config.allowCustomColorForHorse = true --turn off to remove the prompt to allow custom color on horse coat
Config.palettesForHorseCoat = {
	tint_generic_clean = false,
	tint_hair = false,
	tint_horse = true,
	tint_horse_leather = false,
	tint_leather = false,
	tint_makeup = false
}
Config.allowCustomColorForComponent = true --turn off to remove the prompt to allow custom color on horse component
Config.palettesForComponent = {
	tint_generic_clean = true,
	tint_hair = true,
	tint_horse = true,
	tint_horse_leather = true,
	tint_leather = true,
	tint_makeup = true
}

Config.saddlebagMod = 2
-- 0 : No horse saddlebag
-- 1 : Saddlebag only for horse owner
-- 2 : Everyone can access to the saddlebag

Config.saddlebag = {
	maxWeight = 500.0,
	maxSlots = 10 --for QBR & RSG & VORP
}
Config.wagonLocker = { --default locker size for wagon
	maxWeight = 1000.0,
	maxSlots = 50 --for QBR & RSG & VORP
}
Config.displayLockerSlotInStore = true --Set false to hide the maxSlots
Config.displayLockerWeightInStore = true --Set false to hide the maxWeight

Config.keys = {
	enter = "INPUT_FRONTEND_ACCEPT",
	buyGold = "INPUT_INTERACT_ANIMAL",
	favourite = "INPUT_SHOP_SPECIAL",
	ride = "INPUT_FRONTEND_RB",
	bequeath = "INPUT_OPEN_SATCHEL_MENU",
	release = "INPUT_FRONTEND_RS",
	unequip = "INPUT_SHOP_SELL",
	saddlebag = "INPUT_CREATOR_ACCEPT",
	wagonLocker = "INPUT_SHOP_SPECIAL",
	takeSaddlebag = "INPUT_FRONTEND_RS",
	colorPalette = "INPUT_CREATOR_RS",
	takeLantern = "INPUT_HUD_SPECIAL"
}

Config.items = {
	feed = {
		{
			name = 'carrots', --item name
			health = 30, --health bonus for horse
			stamina = 30, --stamina bonus for horse
			remove = true,
		},
	},
	brush = {  --let empty to unlimited horse brush
		{
			name = "horsebrush",
			remove = false,
		}
	}
}

Config.stables = {
	{
		id = "valentine",--must be unique
		name = "Valentine",
		location = vec4(-365.15,792.68,115.18,178.47),
		pedModel = `u_m_m_bwmstablehand_01`,
		blip = `blip_shop_horse`,--set to false to turn the blip off
    disableHorseMenu = false, --set to true to disable the horse menu part
    disableWagonMenu = false, --set to true to disable the wagon menu part
		horsesAvailable = {},--let empty to allow all horses, use false to disable
		canBuyHorseComponents = true, --use false to disable the buying of horse components
		previewHorse = vec4(-369.59,793.00,115.15,177.26), --location to preview new horse
		previewMyHorse = vec4(-371.76,786.87,115.16,272.08), --location to preview your horse
		equipMyHorse = vec4(-371.76,786.87,115.16,272.08), --location for the ride horse scene
		wagonsAvailable = {},--let empty to allow all wagons, use false to disable
		previewWagon = vec4(-371.76,786.87,115.16,272.08), --location to preview wagon
		spawnWagon = vec4(-370.69, 775.85, 116.26, 269.11), --location to spawn wagon
		storeSaddle = vec4(-365.235, 790.888, 116.175,0.0),
		inside = { --polyzone
			vec3(-376.765, 793.418, 116.124),
			vec3(-363.036, 793.695, 116.188),
			vec3(-362.191, 784.502, 116.180),
			vec3(-376.236, 783.673, 116.177)
		}
	},
	{
		id = "saintDenis",--must be unique
		name = "Saint Denis",
		location = vector4(2512.399, -1457.067, 46.312, 87.925),
		pedModel = `u_m_m_bwmstablehand_01`,
		blip = `blip_shop_horse`,--set to false to turn the blip off
    disableHorseMenu = false, --set to true to disable the horse menu part
    disableWagonMenu = false, --set to true to disable the wagon menu part
		horsesAvailable = {1,2,3,4,10},--let empty to allow all horses
		canBuyHorseComponents = true, --use false to disable the buying of horse components
		previewHorse = vec4(2509.034, -1449.872, 45.400, 86.799), --location to preview new horse
		previewMyHorse = vec4(2509.034, -1449.872, 45.400, 86.799), --location to preview your horse
		equipMyHorse = vec4(2502.963, -1452.935, 46.313, 174.038), --location for the ride horse scene
		wagonsAvailable = {},--let empty to allow all wagons
		previewWagon = vec4(2502.689, -1441.257, 45.313, 177.895), --location to preview wagon
		spawnWagon = vec4(2502.689, -1441.257, 45.313, 348.528), --location to spawn wagon
		storeSaddle = vec3(2510.665, -1456.786, 46.314),
		inside = { --polyzone
			vec3(2499.959, -1464.172, 46.313),
			vec3(2499.969, -1436.472, 46.317),
			vec3(2510.713, -1436.171, 46.312),
			vec3(2516.296, -1463.877, 46.312)
		}
	},
	{
		id = "strawberry",--must be unique
		name = "Strawberry",
		location = vec4(-1817.261, -559.600, 156.177, 164.684),
		pedModel = `u_m_m_bwmstablehand_01`,
		blip = `blip_shop_horse`,--set to false to turn the blip off
    disableHorseMenu = false, --set to true to disable the horse menu part
    disableWagonMenu = false, --set to true to disable the wagon menu part
		horsesAvailable = {1,2,3,4,10},--let empty to allow all horses
		canBuyHorseComponents = true, --use false to disable the buying of horse components
		previewHorse = vec4(-1820.033, -555.669, 155.177, 160.508), --location to preview new horse
		previewMyHorse = vec4(-1821.550, -561.547, 155.060, 253.239), --location to preview your horse
		equipMyHorse = vec4(-1821.550, -561.547, 155.060, 253.239), --location for the ride horse scene
		wagonsAvailable = {},--let empty to allow all wagons
		previewWagon = vec4(-1821.550, -561.547, 155.060, 253.239), --location to preview wagon
		spawnWagon = vec4(-1821.550, -561.547, 155.060, 253.239), --location to spawn wagon
		storeSaddle =vec4(-1817.614, -560.796, 156.063, 324.503),
		inside = { --polyzone
			vec3(-1826.193, -562.865, 155.063),
			vec3(-1824.735, -557.522, 155.240),
			vec3(-1813.957, -560.743, 155.145),
			vec3(-1815.262, -565.798, 155.045)
		}
	},
	{
		id = "blackwater",--must be unique
		name = "Blackwater",
		location = vec4(-878.606, -1368.115, 43.527, 276.638),
		pedModel = `u_m_m_bwmstablehand_01`,
		blip = `blip_shop_horse`,--set to false to turn the blip off
    disableHorseMenu = false, --set to true to disable the horse menu part
    disableWagonMenu = false, --set to true to disable the wagon menu part
		horsesAvailable = {1,2,3,4,10},--let empty to allow all horses
		canBuyHorseComponents = true, --use false to disable the buying of horse components
		previewHorse = vec4(-867.165, -1371.482, 42.659, 355.048), --location to preview new horse
		previewMyHorse = vec4(-863.397, -1366.342, 42.549, 83.688), --location to preview your horse
		equipMyHorse = vec4(-863.397, -1366.342, 42.549, 83.688), --location for the ride horse scene
		wagonsAvailable = {},--let empty to allow all wagons
		previewWagon = vec4(-863.397, -1366.342, 42.549, 83.688), --location to preview wagon
		spawnWagon = vec4(-863.397, -1366.342, 42.549, 83.688), --location to spawn wagon
		storeSaddle =vec4(-878.075, -1367.790, 43.528, 99.837),
		inside = { --polyzone
			vec3(-879.179, -1370.857, 41.525),
			vec3(-879.761, -1360.371, 41.921),
			vec3(-858.781, -1360.444, 41.659),
			vec3(-856.944, -1372.157, 41.538)
		}
	},
	{
		id = "tumbleweed",--must be unique
		name = "Tumbleweed",
		location = vec4(-5515.295, -3039.497, -2.388, 182.161),
		pedModel = `u_m_m_bwmstablehand_01`,
		blip = `blip_shop_horse`,--set to false to turn the blip off
    disableHorseMenu = false, --set to true to disable the horse menu part
    disableWagonMenu = false, --set to true to disable the wagon menu part
		horsesAvailable = {1,2,3,4,10},--let empty to allow all horses
		canBuyHorseComponents = true, --use false to disable the buying of horse components
		previewHorse = vec4(-5522.499, -3038.960, -3.304, 181.992), --location to preview new horse
		previewMyHorse = vec4(-5522.063, -3044.438, -3.388, 265.561), --location to preview your horse
		equipMyHorse = vec4(-5522.063, -3044.438, -3.388, 265.561), --location for the ride horse scene
		wagonsAvailable = {},--let empty to allow all wagons
		previewWagon = vec4(-5522.063, -3044.438, -3.388, 265.561), --location to preview wagon
		spawnWagon = vec4(-5522.063, -3044.438, -3.388, 265.561), --location to spawn wagon
		storeSaddle =vec4(-5515.173, -3040.729, -2.388, 340.582),
		inside = { --polyzone
			vec3(-5511.550, -3047.357, -3.388),
			vec3(-5526.960, -3047.235, -3.388),
			vec3(-5526.293, -3037.693, -3.126),
			vec3(-5512.541, -3037.925, -3.387)
		}
	},
	{
		id = "emerald",--must be unique
		name = "Emerald",
		location = vec4(1206.332, -191.566, 101.483, 286.763),
		pedModel = `u_m_m_bwmstablehand_01`,
		blip = `blip_shop_horse`,--set to false to turn the blip off
    disableHorseMenu = false, --set to true to disable the horse menu part
    disableWagonMenu = false, --set to true to disable the wagon menu part
		horsesAvailable = {},--let empty to allow all horses
		canBuyHorseComponents = true, --use false to disable the buying of horse components
		previewHorse = vec4(1203.866, -196.192, 100.517, 285.963), --location to preview new horse
		previewMyHorse = vec4(1210.128, -195.117, 100.386, 19.516), --location to preview your horse
		equipMyHorse = vec4(1210.128, -195.117, 100.386, 19.516), --location for the ride horse scene
		wagonsAvailable = {},--let empty to allow all wagons
		previewWagon = vec4(1210.128, -195.117, 100.386, 19.516), --location to preview wagon
		spawnWagon = vec4(1210.128, -195.117, 100.386, 19.516), --location to spawn wagon
		storeSaddle =vec4(1207.473, -191.853, 101.389, 79.665),
		inside = { --polyzone
			vec3(1208.220, -199.161, 100.549),
			vec3(1204.978, -188.366, 100.482),
			vec3(1210.377, -186.652, 100.371),
			vec3(1213.372, -197.565, 100.425)
		}
	},
}

Config.activities = {
	speed = {
		price = {money = 5, gold = 8},
		numberRepeatToLevelUp = 2
	},
	acceleration = {
		price = {money = 5, gold = 8},
		numberRepeatToLevelUp = 2
	},
	handling = {
		price = 5,
		numberRepeatToLevelUp = 2
	}
}

Config.trainings = {
	{
		inside = {
			vec3(-380.670, 767.151, 116.089),
			vec3(-398.417, 765.606, 115.804),
			vec3(-402.168, 768.392, 115.727),
			vec3(-403.746, 787.087, 115.772),
			vec3(-400.821, 790.560, 115.963),
			vec3(-385.480, 791.913, 115.882),
			vec3(-381.809, 788.601, 115.925)
		},
		blip = `blip_horse_owned_bonding_4`,--set to false to turn the blip off
		jobs = {}, --let empty to not restrict to a specific job,
		activities = {'speed','acceleration','handling'} --'speed'/'acceleration'/'handling'
	}
}


Config.prices = {
	horse_saddles = 5,
	horse_saddlebags = 5,
	saddle_stirrups = 5,
	saddle_horns = 5,
	horse_blankets = 5,
	horse_bedrolls = 5,
	horse_manes = 5,
	horse_tails = 5,
	horse_shoes = 5,
	horse_accessories = 5,
	horse_bridles = 5,
	saddle_lanterns = 5,
	horse_mustache = 5,
	wagon = 100,
	horse = 100,
	vehicle_tints = 10,
	vehicle_propsets = 10,
	vehicle_liveries = 10,
	vehicle_lantern_propsets = 10,
	vehicle_extras = 10,
	horse_outfits = 10,
	reviveHorse = {money=100, gold = 23} --set false to disable the revive of horse
}



Config.modelPrices = {}
for category in pairs (Config.prices) do
	Config.modelPrices[category] = {}
	Config.modelPrices[category] = {}
end

Config.modelPrices['horse_saddles'][2] = {money = 50,gold = 2}

Config.horses = {
	[1] = {
		price = {money=2.75,gold = 2},
		name = "No die",
		noDieByAge = true,
		age = 2,
		variations = {
			"A_C_Horse_AmericanPaint_Greyovero",
			"A_C_Horse_AmericanPaint_Overo",
			"A_C_Horse_AmericanPaint_SplashedWhite",
			"a_c_horse_eagleflies",
			"A_C_Horse_AmericanPaint_Tobiano"
		},
		attributes = {
			speed = 4,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 2,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		}
	},
	[2] = {
		price = {money=2.75},
		name = "Age 1",
		age = 1,
		variations = {
			"A_C_Horse_AmericanStandardbred_Black",
			"A_C_Horse_AmericanStandardbred_Buckskin",
			"A_C_Horse_AmericanStandardbred_PalominoDapple",
			"A_C_Horse_AmericanStandardbred_SilverTailBuckskin"
		},
		attributes = {
			speed = 8,
			maxSpeed = 8, -- speed<>10
			acceleration = 8,
			maxAcceleration = 9, -- acceleration<>10
			handling= 2,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		}
	},
	[3] = {
		price = {gold=2},
		name = "Age 3",
		age = 3,
		variations = {
			"A_C_Horse_Andalusian_DarkBay",
			"A_C_Horse_Andalusian_Perlino",
			"A_C_Horse_Andalusian_RoseGray"
		},
		attributes = {
			speed = 3,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		}
	},
	[4] = {
		price = {money=25.15,gold = 2},
		attributes = {
			speed = 4,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 8,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 3,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_Appaloosa_BlackSnowflake",
			"A_C_Horse_Appaloosa_Blanket",
			"A_C_Horse_Appaloosa_BrownLeopard",
			"A_C_Horse_Appaloosa_FewSpotted_PC",
			"A_C_Horse_Appaloosa_Leopard",
			"A_C_Horse_Appaloosa_LeopardBlanket",
			"a_c_horse_gang_charles",
			"a_c_horse_gang_uncle_endlesssummer"
		}
	},
	[5] = {
		attributes = {
			speed = 1,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 4,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 4,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_Arabian_Black",
			"A_C_Horse_Arabian_Grey",
			"A_C_Horse_Arabian_RedChestnut",
			"a_c_horse_arabian_redchestnut_pc",
			"A_C_Horse_Arabian_RoseGreyBay",
			"A_C_Horse_Arabian_WarpedBrindle_PC",
			"A_C_Horse_Arabian_White",
			"a_c_horse_gang_dutch"
		}
	},
	[6] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_Ardennes_BayRoan",
			"A_C_Horse_Ardennes_IronGreyRoan",
			"A_C_Horse_Ardennes_StrawberryRoan",
			"a_c_horse_gang_bill"
		}
	},
	[7] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 2,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_Belgian_BlondChestnut",
			"A_C_Horse_Belgian_MealyChestnut"
		}
	},
	[8] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 2,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_DutchWarmblood_ChocolateRoan",
			"A_C_Horse_DutchWarmblood_SealBrown",
			"A_C_Horse_DutchWarmblood_SootyBuckskin"
		}
	},
	[9] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 3,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_HungarianHalfbred_DarkDappleGrey",
			"A_C_Horse_HungarianHalfbred_FlaxenChestnut",
			"A_C_Horse_HungarianHalfbred_LiverChestnut",
			"A_C_Horse_HungarianHalfbred_PiebaldTobiano",
			"a_c_horse_gang_john"
		}
	},
	[10] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_KentuckySaddle_Black",
			"A_C_Horse_KentuckySaddle_ButterMilkBuckskin_PC",
			"A_C_Horse_KentuckySaddle_ChestnutPinto",
			"A_C_Horse_KentuckySaddle_Grey",
			"A_C_Horse_KentuckySaddle_SilverBay",
			"a_c_horse_gang_uncle"
		}
	},
	[11] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 3,--1 = heavy, 2 = standard, 3 = race, 4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_Kladruber_Black",
			"A_C_Horse_Kladruber_Silver",
			"A_C_Horse_Kladruber_Cremello",
			"A_C_Horse_Kladruber_Grey",
			"A_C_Horse_Kladruber_DappleRoseGrey",
			"A_C_Horse_Kladruber_White"
		}
	},
	[12] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 4,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_MissouriFoxTrotter_AmberChampagne",
			"A_C_Horse_MissouriFoxTrotter_SableChampagne",
			"A_C_Horse_MissouriFoxTrotter_SilverDapplePinto",
			"a_c_horse_missourifoxtrotter_blueroan",
			"a_c_horse_missourifoxtrotter_buckskinbrindle",
			"a_c_horse_missourifoxtrotter_dapplegrey",
			"a_c_horse_gang_micah"
		}
	},
	[13] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_Morgan_Bay",
			"A_C_Horse_Morgan_BayRoan",
			"A_C_Horse_Morgan_FlaxenChestnut",
			"A_C_Horse_Morgan_LiverChestnut_PC",
			"A_C_Horse_Morgan_Palomino"
		}
	},
	[14] = {
		attributes = {
			speed = 10,-- 1<>10
			maxSpeed = 10, -- speed<>10
			acceleration = 10,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 2,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = { "A_C_Horse_MP_Mangy_Backup" }
	},
	[15] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_Mustang_GoldenDun",
			"A_C_Horse_Mustang_GrulloDun",
			"A_C_Horse_Mustang_TigerStripedBay",
			"A_C_Horse_Mustang_WildBay",
			"a_c_horse_mustang_buckskin",
			"a_c_horse_mustang_chestnuttovero",
			"a_c_horse_mustang_reddunovero",
			"a_c_horse_gang_lenny",
			"a_c_horse_gang_sadie_endlesssummer"
		}
	},
	[16] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_Nokota_BlueRoan",
			"A_C_Horse_Nokota_ReverseDappleRoan",
			"A_C_Horse_Nokota_WhiteRoan",
			"a_c_horse_gang_charles_endlesssummer",
			"a_c_horse_gang_karen"
		}
	},
	[17] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_Shire_DarkBay",
			"A_C_Horse_Shire_LightGrey",
			"A_C_Horse_Shire_RavenBlack"
		}
	},
	[18] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_SuffolkPunch_RedChestnut",
			"A_C_Horse_SuffolkPunch_Sorrel"
		}
	},
	[19] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_TennesseeWalker_BlackRabicano",
			"A_C_Horse_TennesseeWalker_Chestnut",
			"A_C_Horse_TennesseeWalker_DappleBay",
			"A_C_Horse_TennesseeWalker_FlaxenRoan",
			"A_C_Horse_TennesseeWalker_MahoganyBay",
			"A_C_Horse_TennesseeWalker_RedRoan",
			"A_C_Horse_TennesseeWalker_GoldPalomino_PC"
		}
	},
	[20] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_Thoroughbred_BlackChestnut",
			"A_C_Horse_Thoroughbred_BloodBay",
			"A_C_Horse_Thoroughbred_Brindle",
			"A_C_Horse_Thoroughbred_DappleGrey",
			"A_C_Horse_Thoroughbred_ReverseDappleBlack"
		}
	},
	[21] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_Turkoman_DarkBay",
			"A_C_Horse_Turkoman_Gold",
			"A_C_Horse_Turkoman_Silver",
			"a_c_horse_turkoman_chestnut",
			"a_c_horse_turkoman_grey",
			"a_c_horse_turkoman_perlino",
			"a_c_horse_gang_sadie"
		}
	},
	[22] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_Criollo_Dun",
			"A_C_Horse_Criollo_MarbleSabino",
			"A_C_Horse_Criollo_BayFrameOvero",
			"A_C_Horse_Criollo_BayBrindle",
			"A_C_Horse_Criollo_SorrelOvero",
			"A_C_Horse_Criollo_BlueRoanOvero"
		}
	},
	[23] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Horse_Breton_SteelGrey",
			"A_C_Horse_Breton_MealyDapple",
			"A_C_Horse_Breton_SealBrown",
			"A_C_Horse_Breton_GrulloDun",
			"A_C_Horse_Breton_Sorrel",
			"A_C_Horse_Breton_RedRoan"
		}
	},
	[24] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_HORSE_NORFOLKROADSTER_BLACK",
			"A_C_HORSE_NORFOLKROADSTER_SPECKLEDGREY",
			"A_C_HORSE_NORFOLKROADSTER_PIEBALDROAN",
			"A_C_HORSE_NORFOLKROADSTER_ROSEGREY",
			"A_C_HORSE_NORFOLKROADSTER_DAPPLEDBUCKSKIN",
			"A_C_HORSE_NORFOLKROADSTER_SPOTTEDTRICOLOR"
		}
	},
	[25] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_HorseMulePainted_01"
		}
	},
	[26] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_HorseMule_01"
		}
	},
	[27] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"A_C_Donkey_01"
		}
	},
	[28] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"a_c_horse_gypsycob_piebald",
			"a_c_horse_gypsycob_skewbald",
			"a_c_horse_gypsycob_splashedbay",
			"a_c_horse_gypsycob_splashedpiebald",
			"a_c_horse_gypsycob_whiteblagdon",
		}
	},
	[29] = {
		attributes = {
			speed = 5,-- 1<>10
			maxSpeed = 8, -- speed<>10
			acceleration = 5,-- 1<>10
			maxAcceleration = 9, -- acceleration<>10
			handling= 1,--1 = heavy,2 = standard,3 = race,4 = elite
			maxHandling = 4, --handling<>4
		},
		variations = {
			"a_c_horse_buell_warvets",
		}
	},
}

Config.wagons = {
  [1] = {
		price = {money = 500.0, gold = 15},
		model = "armysupplywagon",
		locker = {
			maxWeight = 5000.0,
			maxSlots = 15
		}
	},
  [2] = {
		price = 10.0,
		model = "bountywagon01x",
	},
  [3] = {
		price = {gold = 5},
		model = "buggy01",
	},
  [4] = {
		model = "buggy02",
	},
  [5] = {
		model = "buggy03",
	},
  [6] = {
		model = "cart01",
	},
  [7] = {
		model = "cart02",
	},
  [8] = {
		model = "cart03",
	},
  [9] = {
		model = "cart04",
	},
  [10] = {
		model = "cart05",
	},
  [11] = {
		model = "cart06",
	},
  [12] = {
		model = "cart07",
	},
  [13] = {
		model = "cart08",
	},
  [14] = {
		model = "chuckwagon000x",
	},
  [15] = {
		model = "chuckwagon002x",
	},
  [16] = {
		model = "coach2",
	},
  [18] = {
		model = "coach3",
	},
  [19] = {
		model = "coach4",
	},
  [20] = {
		model = "coach5",
	},
  [21] = {
		model = "coach6",
	},
  [22] = {
		model = "coal_wagon",
	},
  [23] = {
		model = "gatchuck_2",
	},
  [24] = {
		model = "gatchuck",
	},
  [25] = {
		model = "huntercart01",
	},
  [26] = {
		model = "oilwagon01x",
	},
  [27] = {
		model = "oilwagon02x",
	},
  [28] = {
		model = "policewagon01x",
	},
  [29] = {
		model = "policewagongatling01x",
	},
  [30] = {
		model = "stagecoach001x",
	},
  [31] = {
		model = "stagecoach002x",
	},
  [32] = {
		model = "stagecoach003x",
	},
  [33] = {
		model = "stagecoach004_2x",
	},
  [34] = {
		model = "stagecoach004x",
	},
  [35] = {
		model = "stagecoach005x",
	},
  [36] = {
		model = "stagecoach006x",
	},
  [38] = {
		model = "supplywagon",
	},
  [39] = {
		model = "utilliwag",
	},
  [40] = {
		model = "wagon02x",
	},
  [41] = {
		model = "wagon03x",
	},
  [42] = {
		model = "wagon04x",
	},
  [44] = {
		model = "wagon05x",
	},
  [45] = {
		model = "wagon06x",
	},
  [46] = {
		model = "wagonarmoured01x",
	},
  [47] = {
		model = "wagoncircus01x",
	},
  [48] = {
		model = "wagoncircus02x",
	},
  [49] = {
		model = "wagondairy01x",
	},
  [50] = {
		model = "wagondoc01x",
	},
  [51] = {
		model = "wagonprison01x",
	},
  [52] = {
		model = "wagontraveller01x",
	},
  [53] = {
		model = "wagonwork01x",
	},
  [54] = {
		model = "warwagon2",
	},
}

exports('getConfig', function()
	return Config
end)