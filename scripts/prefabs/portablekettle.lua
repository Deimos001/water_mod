require "prefabutil"

local preparedrink = require("preparedrink")

local assets =
{
    Asset("ANIM", "anim/portablekettle.zip"),
	Asset("ANIM", "anim/portablekettle_meter_dirty.zip"),
	Asset("ANIM", "anim/portablekettle_meter_water.zip"),
    Asset("ANIM", "anim/ui_cookpot_1x4.zip"),
}

local assets_item =
{
    Asset("ANIM", "anim/portablekettle.zip"),
}

local prefabs_portablekettle =
{
    "collapse_small",
    "ash",
	"portablekettle_item",
}

local prefabs_item =
{
    "portablekettle",
}

local function ChangeToItem(inst)
    --[[if inst.components.stewer.product ~= nil and inst.components.stewer:IsDone() then
        inst.components.stewer:Harvest()
    end]]
    if inst.components.container ~= nil then
        inst.components.container:DropEverything()
    end

    local item = SpawnPrefab("portablekettle_item")
    item.Transform:SetPosition(inst.Transform:GetWorldPosition())
    item.AnimState:PlayAnimation("collapse")
    item.SoundEmitter:PlaySound("dontstarve/common/together/portable/cookpot/collapse")
end

local function onhammered(inst)--, worker)
    if inst.components.burnable ~= nil and inst.components.burnable:IsBurning() then
        inst.components.burnable:Extinguish()
    end

    if inst:HasTag("burnt") then
        inst.components.lootdropper:SpawnLootPrefab("ash")
        local fx = SpawnPrefab("collapse_small")
        fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
        fx:SetMaterial("metal")
    else
        ChangeToItem(inst)
    end

    inst:Remove()
end

local function onhit(inst)--, worker)
    if not inst:HasTag("burnt") then
        if inst.components.stewer:IsCooking() then
            inst.AnimState:PlayAnimation("hit_cooking")
            inst.AnimState:PushAnimation("cooking_loop", true)
            inst.SoundEmitter:PlaySound("dontstarve/common/cookingpot_close")
        elseif inst.components.stewer:IsDone() then
            inst.AnimState:PlayAnimation("hit_full")
            inst.AnimState:PushAnimation("idle_full", false)
        else
            if inst.components.container ~= nil and inst.components.container:IsOpen() then
                inst.components.container:Close()
                -- onclose will trigger sfx already
            else
                inst.SoundEmitter:PlaySound("dontstarve/common/cookingpot_close")
            end
            inst.AnimState:PlayAnimation("hit_empty")
            inst.AnimState:PushAnimation("idle_empty", false)
        end
    end
end

local function startcookfn(inst)
    if not inst:HasTag("burnt") then
        inst.components.watersource.available = false
        inst.components.waterlevel.accepting = false
        inst.AnimState:PlayAnimation("cooking_loop", true)
        inst.SoundEmitter:KillSound("snd")
        inst.SoundEmitter:PlaySound("dontstarve/common/cookingpot_rattle", "snd")
        inst.Light:Enable(true)
    end
end

local function onopen(inst)
    if not inst:HasTag("burnt") then
        inst.AnimState:PlayAnimation("cooking_pre_loop")
        inst.SoundEmitter:KillSound("snd")
        inst.SoundEmitter:PlaySound("dontstarve/common/cookingpot_open")
        inst.SoundEmitter:PlaySound("dontstarve/common/cookingpot", "snd")
    end
end

local function onclose(inst)
    if not inst:HasTag("burnt") then
        if not inst.components.stewer:IsCooking() then
            inst.AnimState:PlayAnimation("idle_empty")
            inst.SoundEmitter:KillSound("snd")
        end
        inst.SoundEmitter:PlaySound("dontstarve/common/cookingpot_close")
    end
end

local function SetProductSymbol(inst, product, overridebuild)
    local build = overridebuild or "kettle_drink"
    local overridesymbol = product
    inst.AnimState:OverrideSymbol("swap_food", build, "cup_"..overridesymbol)
end

local function spoilfn(inst)
    if not inst:HasTag("burnt") then
        inst.components.stewer.product = inst.components.stewer.spoiledproduct
        SetProductSymbol(inst, inst.components.stewer.product)
    end
end

local function ShowProduct(inst)
    if not inst:HasTag("burnt") then
        local product = inst.components.stewer.product
        SetProductSymbol(inst, product, IsModCookingProduct(inst.prefab, product) and preparedrink[product] == nil and product or nil)
    end
end

local function donecookfn(inst)
    if not inst:HasTag("burnt") then
        inst.AnimState:PlayAnimation("cooking_pst")
        inst.AnimState:PushAnimation("idle_full", false)
        ShowProduct(inst)
        inst.SoundEmitter:KillSound("snd")
        inst.SoundEmitter:PlaySound("dontstarve/common/cookingpot_finish")
        inst.Light:Enable(false)
    end
end

local function continuedonefn(inst)
    if not inst:HasTag("burnt") then
        inst.AnimState:PlayAnimation("idle_full")
        ShowProduct(inst)
    end
end

local function continuecookfn(inst)
    if not inst:HasTag("burnt") then
        inst.AnimState:PlayAnimation("cooking_loop", true)
        inst.Light:Enable(true)
        inst.SoundEmitter:KillSound("snd")
        inst.SoundEmitter:PlaySound("dontstarve/common/cookingpot_rattle", "snd")
    end
end

local function harvestfn(inst)
    if not inst:HasTag("burnt") then
        inst.components.waterlevel:DoDelta(-TUNING.KETTLE_MAX_LEVEL)
        inst.components.waterlevel.accepting = true
        inst.components.stewer.product = nil
        inst.AnimState:PlayAnimation("idle_empty")
        inst.SoundEmitter:PlaySound("dontstarve/common/cookingpot_close")
    end
end

local function getstatus(inst)
    return (inst:HasTag("burnt") and "BURNT")
        or (inst.components.stewer:IsDone() and "DONE")
        or (not inst.components.stewer:IsCooking() and "EMPTY")
        or (inst.components.stewer:GetTimeToCook() > 15 and "BOILING_LONG")
        or "BOILING_SHORT"
end

local function onsave(inst, data)
    if inst:HasTag("burnt") or (inst.components.burnable ~= nil and inst.components.burnable:IsBurning()) then
        data.burnt = true
    end
end

local function onload(inst, data)
    if data ~= nil and data.burnt then
        inst.components.burnable.onburnt(inst)
    end
end

local function OnDepleted(inst)
    inst.components.watersource.available = false
    inst.components.propagator.acceptsheat = true
end

local function OnTakeWater(inst, watervalue)
    inst.SoundEmitter:PlaySound("turnoftides/common/together/water/emerge/small")
end

local function OnSectionChange(new, old, inst)
    if inst._waterlevel ~= new then
        inst._waterlevel = new
        inst.AnimState:OverrideSymbol("swap", "portablekettle_meter_water", tostring(new))
    end
end

local function OnDismantle(inst)--, doer)
    ChangeToItem(inst)
    inst:Remove()
end

local function OnBurnt(inst)
    DefaultBurntStructureFn(inst)
    RemovePhysicsColliders(inst)
    SpawnPrefab("ash").Transform:SetPosition(inst.Transform:GetWorldPosition())
    if inst.components.workable ~= nil then
        inst:RemoveComponent("workable")
    end
    if inst.components.portablestructure ~= nil then
        inst:RemoveComponent("portablestructure")
    end
    inst.persists = false
    inst:AddTag("FX")
    inst:AddTag("NOCLICK")
    inst:ListenForEvent("animover", ErodeAway)
    inst.AnimState:PlayAnimation("burnt_collapse")
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddLight()
    inst.entity:AddDynamicShadow()
    inst.entity:AddNetwork()

    inst:SetPhysicsRadiusOverride(.5)
    MakeObstaclePhysics(inst, inst.physicsradiusoverride)

	local minimap = inst.entity:AddMiniMapEntity()
	minimap:SetIcon("portablekettle.tex")

    inst.Light:Enable(false)
    inst.Light:SetRadius(.6)
    inst.Light:SetFalloff(1)
    inst.Light:SetIntensity(.5)
    inst.Light:SetColour(235/255,62/255,12/255)

    inst.DynamicShadow:SetSize(2, 1)

    inst:AddTag("structure")
	inst:AddTag("kettle")

    --stewer (from stewer component) added to pristine state for optimization
    --inst:AddTag("stewer")

    inst.AnimState:SetBank("portablekettle")
    inst.AnimState:SetBuild("portablekettle")
    inst.AnimState:PlayAnimation("idle_empty")
	inst.AnimState:OverrideSymbol("swap", "portablekettle_meter_water", "0")

    inst:SetPrefabNameOverride("portablekettle_item")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("portablestructure")
    inst.components.portablestructure:SetOnDismantleFn(OnDismantle)

    inst:AddComponent("waterlevel")
    inst.components.waterlevel.secondarywatertype = WATERTYPE.DIRTY
    inst.components.waterlevel:SetDepletedFn(OnDepleted)
    inst.components.waterlevel:SetTakeWaterFn(OnTakeWater)
    inst.components.waterlevel.maxwater = TUNING.KETTLE_MAX_LEVEL
    inst.components.waterlevel.accepting = true
    inst.components.waterlevel:SetSections(TUNING.KETTLE_MAX_LEVEL)
    inst.components.waterlevel:SetSectionCallback(OnSectionChange)
    inst.components.waterlevel:InitializeWaterLevel(0)

    inst:AddComponent("watersource")
    inst.components.watersource.available = false

    inst:AddComponent("stewer")
    inst.components.stewer.cooktimemult = TUNING.PORTABLE_COOK_POT_TIME_MULTIPLIER
    inst.components.stewer.onstartcooking = startcookfn
    inst.components.stewer.oncontinuecooking = continuecookfn
    inst.components.stewer.oncontinuedone = continuedonefn
    inst.components.stewer.ondonecooking = donecookfn
    inst.components.stewer.onharvest = harvestfn
    --inst.components.stewer.onspoil = spoilfn

    inst:AddComponent("container")
    inst.components.container:WidgetSetup("portablekettle")
    inst.components.container.canbeopened = false
    inst.components.container.onopenfn = onopen
    inst.components.container.onclosefn = onclose
    inst.components.container.skipclosesnd = true
    inst.components.container.skipopensnd = true

    inst:AddComponent("inspectable")
    inst.components.inspectable.getstatus = getstatus

    inst:AddComponent("lootdropper")
    inst:AddComponent("workable")
    inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
    inst.components.workable:SetWorkLeft(2)
    inst.components.workable:SetOnFinishCallback(onhammered)
    inst.components.workable:SetOnWorkCallback(onhit)

    inst:AddComponent("hauntable")
    inst.components.hauntable:SetHauntValue(TUNING.HAUNT_TINY)

    MakeMediumBurnable(inst, nil, nil, true)
    MakeSmallPropagator(inst)
    inst.components.burnable:SetFXLevel(2)
    inst.components.burnable:SetOnBurntFn(OnBurnt)

    inst.OnSave = onsave
    inst.OnLoad = onload

    return inst
end


---------------------------------------------------------------
---------------- Inventory Portable Kettle -------------------
---------------------------------------------------------------

local function ondeploy(inst, pt, deployer)
    local pot = SpawnPrefab("portablekettle")
    if pot ~= nil then
        pot.Physics:SetCollides(false)
        pot.Physics:Teleport(pt.x, 0, pt.z)
        pot.Physics:SetCollides(true)
        pot.AnimState:PlayAnimation("place")
        pot.AnimState:PushAnimation("idle_empty", false)
        pot.SoundEmitter:PlaySound("dontstarve/common/together/portable/cookpot/place")
        inst:Remove()
        PreventCharacterCollisionsWithPlacedObjects(pot)
    end
end

local function itemfn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("portablekettle")
    inst.AnimState:SetBuild("portablekettle")
    inst.AnimState:PlayAnimation("idle_ground")

    inst:AddTag("portableitem")

    MakeInventoryFloatable(inst, "med", 0.1, 0.8)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
	inst.replica.inventoryitem:SetImage("portablekettle_item")
	inst.components.inventoryitem.atlasname= "images/tea_inventoryitem.xml"
    inst.components.inventoryitem.imagename= "portablekettle_item"

    inst:AddComponent("deployable")
    inst.components.deployable.ondeploy = ondeploy
    --inst.components.deployable:SetDeployMode(DEPLOYMODE.ANYWHERE)
    --inst.components.deployable:SetDeploySpacing(DEPLOYSPACING.NONE)

    inst:AddComponent("hauntable")
    inst.components.hauntable:SetHauntValue(TUNING.HAUNT_TINY)

    MakeMediumBurnable(inst)
    MakeSmallPropagator(inst)

    return inst
end

return Prefab("portablekettle", fn, assets, prefabs),
    MakePlacer("portablekettle_item_placer", "portablekettle", "portablekettle", "idle_empty"),
    Prefab("portablekettle_item", itemfn, assets_item, prefabs_item)