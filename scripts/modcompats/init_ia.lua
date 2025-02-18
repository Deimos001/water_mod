GLOBAL.setfenv(1, GLOBAL)

SLOTMACHINE_LOOT.goodspawns.slot_dust = 1
SLOTMACHINE_LOOT.actions.slot_dust = {
    treasure = "slot_dust",
}
AddTreasureLoot("slot_dust", {
    loot = {
        nitre = 1,
        rocks = 2,
        saltrock = 1,
        refined_dust_blueprint = 1,
    },
})

SLOTMACHINE_LOOT.goodspawns.slot_soda_collection = 1
SLOTMACHINE_LOOT.actions.slot_soda_collection = {
    treasure = "slot_soda_collection",
}
AddTreasureLoot("slot_soda_collection", {
    loot = {
    	fruitsoda = 5,
    	lemonlimesoda = 5,
        cola = 5,
        colaquantum = 5,
    },
})

SLOTMACHINE_LOOT.goodspawns.slot_advanced_farm = 1
SLOTMACHINE_LOOT.actions.slot_advanced_farm = {
    treasure = "slot_advanced_farm",
}
AddTreasureLoot("slot_advanced_farm", {
    loot = {
		farm_plow_item = 4,
    	golden_farm_hoe = 2,
    	well_drilling_item = 1,
        well_sprinkler_kit = 1,
    },
})

SLOTMACHINE_LOOT.okspawns.slot_well = 5
SLOTMACHINE_LOOT.actions.slot_well = {
    treasure = "slot_well",
}
AddTreasureLoot("slot_well", {
    loot = {
    	boards = 2,
    	cutstone = 6,
        hammer = 1,
        well_drilling_item = 1,
    },
})

SLOTMACHINE_LOOT.okspawns.slot_drink = 5
SLOTMACHINE_LOOT.actions.slot_drink = {
    treasure = "slot_drink",
}

AddTreasureLoot("slot_drink", {
    loot = {
    	water_clean = 2,
    	berries_juice = 2,
    	carrot_tea = 2,
    	greentea = 2,
    },
})

SLOTMACHINE_LOOT.okspawns.slot_caffinberry = 5
SLOTMACHINE_LOOT.actions.slot_caffinberry = {
    treasure = "slot_caffinberry",
}
AddTreasureLoot("slot_caffinberry", {
    loot = {
    	caffinberry_bean = 3,
    	dug_caffinberry = 1,
    },
})

SLOTMACHINE_LOOT.okspawns.slot_teatree = 5
SLOTMACHINE_LOOT.actions.slot_teatree = {
    treasure = "slot_teatree",
}
AddTreasureLoot("slot_teatree", {
    loot = {
    	tealeaves = 3,
    	dug_tea_tree = 1,
    },
})

AddRecipePostInit("bucket_steel_empty", function(recipe)
	local ingredient = recipe:FindAndConvertIngredient("steelwool")
	if ingredient then
	    ingredient:AddDictionaryPrefab("needlespear")
	end
end)

AddRecipePostInit("well_sprinkler_kit", function(recipe)
	local ingredient = recipe:FindAndConvertIngredient("marble")
	if ingredient then
	    ingredient:AddDictionaryPrefab("limestonenugget")
	end
	local ingredient = recipe:FindAndConvertIngredient("moonglass")
	if ingredient then
	    ingredient:AddDictionaryPrefab("ia_messagebottleempty")
	end
	local ingredient = recipe:FindAndConvertIngredient("townportaltalisman")
	if ingredient then
	    ingredient:AddDictionaryPrefab("dragoonheart")
	end
end)

AddRecipePostInit("well_drilling_item", function(recipe)
	local ingredient = recipe:FindAndConvertIngredient("trinket_6")
	if ingredient then
	    ingredient:AddDictionaryPrefab("tar")
	end
	local ingredient = recipe:FindAndConvertIngredient("steelwool")
	if ingredient then
    	ingredient:AddDictionaryPrefab("needlespear")
	end
end)