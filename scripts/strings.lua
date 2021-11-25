_G=GLOBAL
local STRINGS = _G.STRINGS
local rec = STRINGS.RECIPE_DESC
local nm = STRINGS.NAMES
local gen = STRINGS.CHARACTERS.GENERIC.DESCRIBE

--[[TUNING.BEER_ONDRINK = "Oh... I feel drunk"
TUNING.BEER_OFFDRINK = "So refreshing! I feel amazing"
TUNING.POHMEL = "That's disgusting, but I feel better now."
TUNING.STAR_BAKS = "Not Starbaks, but it's okay"
TUNING.TEA_YAWN = ""
TUNING.RED_TEA_SPEEP = ""
TUNING.BARRLE_ENERGY = "Energy - "
TUNING.BARRLE_WATERLEVEL = "%. Water Level "]]--

STRINGS.NAMES.WATERWELL	  = "Water well"
STRINGS.RECIPE_DESC.WATERWELL = "Brings deep groundwater."

STRINGS.NAMES.HOLE	  = "Strange Dirt"
STRINGS.RECIPE_DESC.HOLE = "That seems odd."

STRINGS.NAMES.HOLE2	  = "A Hole"
STRINGS.RECIPE_DESC.HOLE2 = "Seems like I can build a water well right there."

STRINGS.NAMES.BUCKET	= "Bucket"
STRINGS.RECIPE_DESC.BUCKET = "An empty bucket"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BUCKET = "I can fill it with water, or something else."

STRINGS.NAMES.KETTLE	= "Kettle"
STRINGS.RECIPE_DESC.KETTLE = "The last thing of your past life."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.KETTLE = "Finally, I can make tea now!"

STRINGS.NAMES.KETTLE_PORT	= "Portable Kettle"
STRINGS.RECIPE_DESC.KETTLE_PORT = "Pocket kettle!."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.KETTLE_PORT = "I can take it inside my backpack!"

STRINGS.NAMES.BUCKETFULL = "Bucket with water"
STRINGS.NAMES.BUCKETRAIN = "Bucket with rainwater"
STRINGS.NAMES.BUCKETDIRT = "Bucket with dirty water"
STRINGS.NAMES.BUCKETOASIS = "Bucket with oasis water"

STRINGS.CHARACTERS.GENERIC.DESCRIBE.BUCKETFULL = "It's filled with water."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BUCKETRAIN = "It's filled with water."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BUCKETDIRT = "It's filled with water, but is dirty"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BUCKETSALT = "It's filled with water, but is salty"

STRINGS.NAMES.BUCKETICE	= "Ice Bucket"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BUCKETICE = "Now it's useless."

STRINGS.NAMES.WATERWELL_ITEM = "Water well parts"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.WATERWELL_ITEM = "Parts for a water well."

STRINGS.NAMES.WATERBARRLE = "Barrel"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.WATERBARRLE = "I can contain my water here."

STRINGS.NAMES.BEER_BARRLE = "Beer Barrel"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BEER_BARRLE = "I can make beer here."

STRINGS.NAMES.CUP = "Empty cup"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP = "For drinking tea!"
STRINGS.RECIPE_DESC.CUP = "Container for drinks."

STRINGS.NAMES.CUP_WATER = "Cup of water"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP_WATER = "I can drink it"

STRINGS.NAMES.CUP_COFFE = "Cup of coffee"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP_COFFE = "Delicious!"

STRINGS.NAMES.CUP_TEE = "Cup of tea"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP_TEE = "I need milk."

STRINGS.NAMES.CUP_RED = "Dragon Drink"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP_RED = "Smells really good!"

STRINGS.NAMES.CUP_MONSTER = "Monster Drink"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP_MONSTER = "Is it a tea made out of monsters?"

STRINGS.NAMES.CUP_SPIDER = "Cup of spider syrup"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP_SPIDER = "Spider syrup? sounds disgusting."

STRINGS.NAMES.CUP_BEER = "Cup of beer"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP_BEER = "It's light or dark?"

STRINGS.NAMES.CUP_WINE = "Cup of wine"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP_WINE = "That's a typical drink."

STRINGS.NAMES.CUP_MEAD = "Cup of mead"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP_MEAD = "It looks sweet, but it's alcohol."

STRINGS.NAMES.TEE_PLANT = "Tea plant"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TEE_PLANT = "I can make tea with it, right?"

STRINGS.NAMES.TEE = "Tea leaves"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TEE = "That smell is amazing!"

STRINGS.NAMES.TEE_S = "Herbal tea"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TEE_S = "Smells like real tea!"

STRINGS.NAMES.TEE_M = "Monster tea"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TEE_M = "That smells disgusting!"

STRINGS.NAMES.TEE_G = "Ghostly tea"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TEE_G = "Wendy would love it."
STRINGS.CHARACTERS.WENDY.DESCRIBE.TEE_G = "Abigail, I'm coming!"

STRINGS.NAMES.TEE_R = "Dragon tea"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TEE_R = "Brew of a dragonfruit."

STRINGS.NAMES.TEE_R2 = "Hibiscus tea"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TEE_R2 = "Indian brew."

STRINGS.NAMES.CUP_HIBISCUS = "Cup of hibiscus"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP_HIBISCUS = "Sweet Indian tea."

STRINGS.NAMES.CUP_ABI = "Ghostly Drink"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP_ABI = "Wendy loves it!"
STRINGS.CHARACTERS.WENDY.DESCRIBE.CUP_ABI = "Abigail I'm coming!"

STRINGS.NAMES.TEE_TREE = "Tea tree"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TEE_TREE = "It's a tree of tea!"

STRINGS.NAMES.COFFE_BEANS = "Coffee beans"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.COFFE_BEANS = "I can make coffee, yes!"

STRINGS.NAMES.MR_BEEFALO = "Mr beefalo"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MR_BEEFALO = "Are you really a beefalo?"

STRINGS.NAMES.SHADOWWILSON = "Shadow statue"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.SHADOWWILSON = "Spooky and scary."

STRINGS.NAMES.CUPSJOURNAL = "Recipe Book"
STRINGS.RECIPE_DESC.CUPSJOURNAL = "This book contains a lot of drinks recipes"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUPSJOURNAL = "I can find recipes here."

STRINGS.NAMES.WHEAT = "Wheat"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.WHEAT = "Looks like grain."

STRINGS.NAMES.CUTWHEAT = "Cut wheat"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUTWHEAT = "Useful for baking bread."

STRINGS.NAMES.DUG_WHEAT = "Wheat"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.DUG_WHEAT = "Straight from the ground."

STRINGS.NAMES.FLOUR = "Flour"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.FLOUR = "Now I can bake bread!"

STRINGS.NAMES.BREAD = "Bread" 
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BREAD = "Mmm, bread, finally!"

STRINGS.NAMES.BUN = "Sweet Bun" 
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BUN = "Straight from the oven."

STRINGS.NAMES.CUP_STRANG = "Strange drink" 
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP_STRANG = "Tastes awful..."
STRINGS.RECIPE_DESC.CUP_STRANG = "Even the name isn't appealing."

STRINGS.NAMES.DUG_COFFEBUSH = "Coffee Bush" 
STRINGS.CHARACTERS.GENERIC.DESCRIBE.DUG_COFFEBUSH = "Can't make coffee without coffee beans. "

STRINGS.NAMES.DUG_TEE_TREE = "Tea tree" 
STRINGS.CHARACTERS.GENERIC.DESCRIBE.DUG_TEE_TREE = "The leaves smell amazing."

STRINGS.CHARACTERS.GENERIC.DESCRIBE.HOLE2 = "I've made a hole in the ground, for what?"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.WATERWELL = "Water from here seem clean."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.HOLE = "I cannot see the bottom."

STRINGS.NAMES.WATER_MAHINE = "Mini Hydro station"
STRINGS.RECIPE_DESC.WATER_MAHINE = "Get water from hot tempatures."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.WATER_MAHINE = "I should fuel it up."

STRINGS.NAMES.ICE_MAHINE = "Defroster "
STRINGS.RECIPE_DESC.ICE_MAHINE = "Turns ice into water!"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.ICE_MAHINE = "Turns ice into water!"

STRINGS.NAMES.GRASS_BAG = "Bag of herbs"
STRINGS.RECIPE_DESC.GRASS_BAG = "A magical bag with plants inside."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.GRASS_BAG = "I should open it."

STRINGS.RECIPE_DESC.FLOUR = "Bake some delicious bread"
STRINGS.RECIPE_DESC.COFFE_BEANS = "Used to make coffee."
STRINGS.RECIPE_DESC.TEE_S = "Ceylon tea."
STRINGS.RECIPE_DESC.TEE_M = "Seems like this is a treat for monsters only."
STRINGS.RECIPE_DESC.TEE_G = "Wendy would love this."
STRINGS.RECIPE_DESC.TEE_R = "A brew made of dragon fruit."
STRINGS.RECIPE_DESC.TEE_R2 = "Red Indian drink."
STRINGS.RECIPE_DESC.BEER_BARRLE = "Refresh your mind!"
STRINGS.RECIPE_DESC.WATERBARRLE = "The best container for water."
STRINGS.RECIPE_DESC.WATERWELL_ITEM = "Find a hole and build your water well."

STRINGS.NAMES.COFFEBUSH = "Coffee Bush" 
STRINGS.CHARACTERS.GENERIC.DESCRIBE.COFFEBUSH = "Seems odd, reminds me of fire. "

STRINGS.NAMES.COFFE_BEANS_RAW = "Raw coffee beans" 
STRINGS.CHARACTERS.GENERIC.DESCRIBE.COFFE_BEANS_RAW = "I should try and cook it."

STRINGS.NAMES.TEA_BERRY = "Berry tea"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TEA_BERRY = "That smell is tasty."
STRINGS.RECIPE_DESC.TEA_BERRY = "Sweet fruity tea."

STRINGS.NAMES.TEA_CARROT = "Carrtot tea"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TEA_CARROT = "I hope it will tasty."
STRINGS.RECIPE_DESC.TEA_CARROT = "Vegetarians tea?"

STRINGS.NAMES.TEA_CACTUS = "Cactus flower tea"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TEA_CACTUS = "I hope tea not will sharp like cactus."
STRINGS.RECIPE_DESC.TEA_CACTUS = "Relax and drink some cold tea."

STRINGS.NAMES.TEA_BANANA = "Banana-tropic tea"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TEA_BANANA = "I think it need drink when hot."
STRINGS.RECIPE_DESC.TEA_BANANA = "Tea from tropics."

STRINGS.NAMES.TEA_HONEY = "Herbal tea with honey"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TEA_HONEY = "Now honey not looks useless."
STRINGS.RECIPE_DESC.TEA_HONEY = "Make your tea sweet a bit."

STRINGS.NAMES.CUP_BERRY = "Cup of berry tea"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP_BERRY = "That smell is tasty."

STRINGS.NAMES.CUP_CARROT = "Cup of carrot tea"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP_CARROT = "That not looks tasty."

STRINGS.NAMES.CUP_CACTUS = "Cup of cactus flower tea"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP_CACTUS = "Amazing exotic tea."

STRINGS.NAMES.CUP_BANANA = "Cup of tropic tea"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP_BANANA = "I think it need drink when hot."

STRINGS.NAMES.CUP_HONEY = "Cup of tea with honey"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CUP_HONEY = "Sweet very sweet."

STRINGS.AW_DRINK = "Drink"

STRINGS.CUP_WATERDIRTY = "Cup of dirty water"
STRINGS.CUP_WATERRAW = "Cup of raw water"

STRINGS.NAMES.CAMPKETTLE = "Camp kettle"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CAMPKETTLE = "It always need fuel."
STRINGS.RECIPE_DESC.CAMPKETTLE = "Your kettle for first times."


