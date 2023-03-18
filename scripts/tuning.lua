local TUNING = _G.TUNING
local hydration_per_day = 75
local wilson_thirst = GetModConfigData("thirst_max")
local seg_time = 30
local total_day_time = seg_time*16
local bucket_max_level = 20

-- 물을 담을수 있는 최대치
local tuning =
{
	CLEANSOURCE =
	{
		"oasislake",
		"hotspring",
	},

	CHILDS =
	{
		"wendy",
		"walter",
		"wurt",
		"webber",
	},

	SPOILED_DRINK_NUTRIENTS = {  12,  12,  12 },

	SPOILEDFOOD_FERTILIZE = 12,
	SPOILEDFOOD_SOILCYCLES = 12,
 	SPOILEDFOOD_WITHEREDCYCLES = 12,

	-- Maximum Amount of Water
	CUP_MAX_LEVEL = 1,
	RAIN_GIVE_WATER = .5,
	LOST_WATER = -.1,
	BUCKET_MAX_LEVEL = 5*bucket_max_level,
	BUCKET_LEVEL_PER_USE = bucket_max_level,

	CAMPKETTLE_MAX_LEVEL = 3,
	KETTLE_MAX_LEVEL = 5,
	BARREL_MAX_LEVEL = 360,
	BREWERY_MAX_LEVEL = 60,
	DESALINATOR_MAX_LEVEL = 20,

	-- Wateryprotection
	BUCKET_EXTINGUISH_HEAT_PERCENT = -1,
    BUCKET_TEMP_REDUCTION = 10,
    BUCKET_PROTECTION_TIME = 45,
	BUCKET_PROTECTION_DIST = 3,
    BUCKET_WATER_AMOUNT = 25,

	-- Sections
	BREWERY_SECTIONS = 20,

	WATER_MINTEMP = -5,
	WATER_MAXTEMP = 40,
	WATER_INITTEMP = 5,
	WATER_CLEAN_MINTEMP = 0,
	WATER_DIRTY_INITTEMP = -5,
	
	-- Moistures and getting wet
	-- BUCKET_DRINK_WET = 10,
	WATER_BARREL_WETNESS = 25,
	WATER_BARREL_EXTINGUISH_HEAT_PERCENT = -1,
	WATER_BARREL_TEMP_REDUCTION = 5,
	WATER_BARREL_PROTECTION_TIME = 30,
	WATER_BARREL_DIST = 15,

	-- Waterlevel
	WATERLEVEL_PER_SIP = 10,

	-- Basic Thirst Rate
	WILSON_THIRST = wilson_thirst, --Max Thirst
	WILSON_HUNGER_RATE = hydration_per_day/total_day_time,

	STALE_FOOD_THIRST = .5,
	SPOILED_FOOD_THIRST = .25,

	WICKERBOTTOM_STALE_FOOD_THIRST = .25,
	WICKERBOTTOM_SPOILED_FOOD_THIRST = 0,

	-- Hydration
	HYDRATION_SALT = hydration_per_day-90, -- Saltwater
	HYDRATION_POISON = hydration_per_day-80, -- Failed Fermentation
	HYDRATION_ROT = hydration_per_day-85, -- Rotten
	HYDRATION_NONE = 0, -- Suspicious Hibiscus
	HYDRATION_TINYMICROSCOPIC = hydration_per_day/24,
	HYDRATION_SUPERTINY = hydration_per_day/16,
	HYDRATION_TINY = hydration_per_day/12,
	HYDRATION_SMALLTINY = hydration_per_day/8, -- Normal Water, Failed Cooking
	HYDRATION_SMALL = hydration_per_day/6, -- Alcohols and Coffee
	HYDRATION_MEDSMALL = hydration_per_day/4, -- Mixed Beverage
	HYDRATION_MED = hydration_per_day/3, -- Tea and Florals
	HYDRATION_LARGE = hydration_per_day/2, -- Drinks made of specific ingredient(i.e. Banana Juice)
	HYDRATION_HUGE = hydration_per_day, -- Drinks with Special Effect, Lemon & Lime Soda
	HYDRATION_SUPERHUGE = hydration_per_day*2, -- Cola

	-- Hunger from Drinks
	DRINK_CALORIES_POISON = 3,
	DRINK_CALORIES = 5,

	-- Alcohol side-effects
	ALCOHOL_POISON = -5,
	SANITY_POISON = -5,

	-- sleep dodlet tick
	SLEEP_THIRST_PER_TICK = -1,

	-- alet
	THIRST_THRESH = .333,

	--Cooking Time
	INCORRECT_BOIL = .25,
	DESALINATION_TIME = 1,
	KETTLE_WATER = .3, -- Boiling Water
	KETTLE_TEA = .5, -- Teas
	KETTLE_FRUIT = .8, -- Fruit Beverage
	KETTLE_VEGGIE = .8, -- Veggie Beverage
	KETTLE_DECORATION = .85, -- Floral Infusions
	KETTLE_LUXURY_GOODS = 1, -- Drinks with special effects (except temperature)
	KETTLE_ABI = .85, -- Suspicious Hibiscus
	BEER_WAIT = GetModConfigData("beer_wait"), --Alcoholic Ferments
	SODA_WAIT = GetModConfigData("soda_wait"), --Non-Alcoholic Ferments

	TEA_TREE_REGROWTH_TIME_MULT = 1,
	CAFFEINBERRY_REGROWTH_TIME_MULT = 1,

	CAFFEIN_TIME = GetModConfigData("caffein_time"),
	CAFFEIN_SPEED = GetModConfigData("caffein_speed"),
	TEASLEEP_TIME = GetModConfigData("sleeping_time"),
	INTOXICATION_TIME = GetModConfigData("alcohol_time"),
	IMMUNE_TIME = GetModConfigData("immune_time"),
	GHOST_TIME = GetModConfigData("ghost_time"),

	--well sprinkler
	SPRINKLER_MAX_FUEL_TIME = total_day_time,
	MOISTURE_SPRINKLER_PERCENT_INCREASE_PER_SPRAY = 0.5,
	FIND_WATER_RANGE = 20,
	SPRINKLER_RANGE = 15,
	SPRINKLER_PLACER_SCALE = 1.55,
}

for i,v in pairs(tuning) do
	TUNING[i] = v
end
