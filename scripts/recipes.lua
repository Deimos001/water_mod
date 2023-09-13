local _G = GLOBAL
local TECH = _G.TECH
local Ingredient = _G.Ingredient
local CONSTRUCTION_PLANS =_G.CONSTRUCTION_PLANS

local function ModAtlas()
  return "images/tea_inventoryitem.xml"
end

AddRecipeFilter({name = "HYDRATION", atlas = ModAtlas, image = "hydration.tex", custom_pos=nil, recipes=nil,},nil)

if not (GLOBAL.KnownModIndex:IsModEnabled("workshop-2334209327") or GLOBAL.KnownModIndex:IsModForceEnabled("workshop-2334209327")) then
	AddRecipePostInit("fertilizer",function(v) v.ingredients = {Ingredient("poop", 3), Ingredient("boneshard", 2), Ingredient("bucket_empty", 1, ModAtlas(), nil,"bucket_empty.tex")} end)
	AddRecipe2("bucket_empty",{Ingredient("log",4)},TECH.NONE,{atlas = ModAtlas(), image = "bucket_empty.tex"},{"HYDRATION","TOOLS"})
else
	AddRecipePostInit("kyno_bucket_empty",function(v) v.ingredients = {Ingredient("log",4)} v.level = TECH.NONE end)
	AddRecipeToFilter("kyno_bucket_empty","HYDRATION")	
end

AddRecipeToFilter("refined_dust","HYDRATION")

AddRecipe2("bucket_steel_empty",{Ingredient("steelwool",2),Ingredient("hammer",0)},TECH.SCIENCE_TWO,{atlas = ModAtlas(), image = "bucket_steel_empty.tex",  description="bucket_empty"},{"HYDRATION","TOOLS"})

AddRecipe2("bucket_woodie_empty",{Ingredient("lucy",0),Ingredient("log",2)},TECH.NONE,{atlas = ModAtlas(), image = "bucket_woodie_empty.tex", builder_tag="woodcarver1", sg_state="carvewood_boards",  description="bucket_empty"},{"CHARACTER"})

AddRecipe2("spice_caffeinpepper",{Ingredient("caffeinberry_bean_cooked", 3, ModAtlas(), nil, "caffeinberry_bean_cooked.tex")},TECH.FOODPROCESSING_ONE,{atlas = ModAtlas(), builder_tag="professionalchef", numtogive=2, image = "spice_caffeinpepper.tex" ,nounlock=true},{"FOODPROCESSING"})

AddRecipe2("barrel",{Ingredient("boards",2),Ingredient("rope",3),Ingredient("charcoal",3)},TECH.SCIENCE_ONE,{placer = "barrel_placer", atlas = ModAtlas(), image = "barrel.tex"},{"CONTAINERS","HYDRATION"})

AddRecipe2("brewery",{Ingredient("boards",3),Ingredient("livinglog",3),Ingredient("rope",3),Ingredient("cutstone",6),Ingredient("goldnugget",4)},TECH.SCIENCE_TWO,{placer = "brewery_placer", atlas = ModAtlas(), image = "brewery.tex"},{"COOKING","HYDRATION"})

AddRecipe2("campkettle_item",{Ingredient("twigs",2),Ingredient("log",2),Ingredient("cutgrass",2)},TECH.NONE,{atlas = ModAtlas(), image = "campkettle.tex"},{"COOKING","LIGHT","HYDRATION"})

AddRecipe2("kettle",{Ingredient("twigs",6),Ingredient("rope",2),Ingredient("charcoal",2)},TECH.SCIENCE_ONE,{placer = "kettle_placer", atlas = ModAtlas(), image = "kettle.tex"},{"COOKING","HYDRATION"})

AddRecipe2("portablekettle_item",{Ingredient("transistor",2),Ingredient("cutstone",4),Ingredient("charcoal",3)},TECH.SCIENCE_TWO,{atlas = ModAtlas(), image = "portablekettle_item.tex"},{"COOKING","HYDRATION"})

AddRecipe2("desalinator",{Ingredient("boards",12),Ingredient("rope",6),Ingredient("rocks",6),Ingredient("nitre",6),Ingredient("charcoal",6)},TECH.SCIENCE_TWO,{placer = "desalinator_placer", atlas = ModAtlas(), image = "desalinator.tex", size = 32},{"CONTAINERS","GARDENING","HYDRATION"})

AddRecipe2("well_drilling_item",{Ingredient("trinket_6",4),Ingredient("transistor",2),Ingredient("goldnugget",4),Ingredient("flint",4),Ingredient("steelwool",2)},TECH.SCIENCE_TWO,{atlas = ModAtlas(), image = "well_drilling_item.tex"},{"GARDENING","HYDRATION"})

AddRecipe2("well_kit",{Ingredient("boards",2),Ingredient("cutstone",6),Ingredient("hammer",1)},TECH.SCIENCE_TWO,{atlas = ModAtlas(), image = "well_kit.tex"},{"GARDENING","HYDRATION"})

AddRecipe2("well_sprinkler_kit",{Ingredient("marble",4),Ingredient("moonglass",1),Ingredient("townportaltalisman",2),Ingredient("gears",1)},TECH.SCIENCE_TWO,{atlas = ModAtlas(), image = "well_sprinkler_kit.tex"},{"GARDENING","HYDRATION"})

--CONSTRUCTION_PLANS["hole"] = {Ingredient("boards",2),Ingredient("cutstone",6),Ingredient("hammer",1)}

AddDeconstructRecipe("well", {Ingredient("boards",2),Ingredient("cutstone",6)})

AddDeconstructRecipe("well_sprinkler", {Ingredient("marble",4),Ingredient("moonglass",1),Ingredient("townportaltalisman",2),Ingredient("gears",1)})
