local assets =
{
	Asset("ANIM", "anim/buckets.zip"),
}

local function SetCheckWeather(inst)
    inst.components.wateringtool:SetCanCollectRainWater(true)
end

local function GetWater(inst, watertype, doer)
    local container = doer ~= nil and (doer.components.inventory or doer.components.container) or nil
    local water = SpawnPrefab(watertype)
    local old_val = inst.components.finiteuses:GetUses()
    local current_fin = old_val
    local peruse = TUNING.BUCKET_LEVEL_PER_USE
    local sound = inst.components.wateringtool:IsFrozen() and "dontstarve/common/bush_fertilize" or "dontstarve/creatures/pengull/splash"


    if current_fin > peruse then
        current_fin = peruse
    end
    print(current_fin)

    if water.components.perishable then
        local perish = inst.components.wateringtool:GetPercent()
        water.components.perishable:SetPercent(perish)
    end
    water.Transform:SetPosition(inst.Transform:GetWorldPosition())
    water.components.stackable:SetStackSize(current_fin)
    
    if container ~= nil then
        container:GiveItem(water, nil, doer:GetPosition())
    else
        LaunchAt(water, doer, nil, 1, 1)
    end

    doer.SoundEmitter:PlaySound(sound)

    if old_val > peruse then
        inst.components.finiteuses:Use(peruse)
        inst.components.wateringtool:SetCanCollectRainWater(false)
    else
        inst:Remove()
    end
end

local function OnPickup(inst, doer)
    if doer then
        local watertype = inst.components.wateringtool:GetWater()
        local ice = inst.components.wateringtool:IsFrozen() and "_ice" or ""
        GetWater(inst, watertype..ice, doer)
    end
    inst.AnimState:PlayAnimation("empty")
end

local function CanGetWater(inst, doer)
    if inst.components.wateringtool:GetWater() then
        OnPickup(inst, doer)
    else
        if inst.components.wateringtool:IsCollectRainWater() then
            inst.SoundEmitter:PlaySound("dontstarve/creatures/pengull/splash")
        end
        inst.components.wateringtool:SetCanCollectRainWater(false)
    end
end

local function OnTakeWater(inst, source, doer)
    if source ~= nil and source.components.waterlevel ~= nil then
        local watervalue = math.min(TUNING.BUCKET_LEVEL_PER_USE, inst.components.finiteuses:GetUses())
        source.components.water:Taken(inst, watervalue)
    end
    inst.components.finiteuses:Use(inst.components.watertaker._laststack)
    inst.SoundEmitter:PlaySound("dontstarve/creatures/pengull/splash")
    if inst.components.finiteuses.current <= 0 then
        inst:Remove()
    end
end

local function SetState(inst, watertype, mustdry)

    if mustdry then
        inst.AnimState:PushAnimation("empty")
    else

        local frozed = inst.components.wateringtool:IsFrozen()
        local bucketstate = inst.components.wateringtool:GetState()
        --local animstate = watertype and ( watertype == WATERTYPE.CLEAN and "full" or "dirty" ) or "empty"

        if frozed then
            inst.SoundEmitter:PlaySound("dontstarve/common/bush_fertilize")
            inst.AnimState:PlayAnimation("turn_to_ice")
            inst.AnimState:PushAnimation("ice")
            --inst.AnimState:PushAnimation(animstate.."_ice")
        end

        if bucketstate == "dothaw" then
            inst.SoundEmitter:PlaySound("dontstarve/creatures/pengull/splash")
            inst.AnimState:PlayAnimation("turn_to_full")
            inst.AnimState:PushAnimation("full")
            --inst.AnimState:PushAnimation(animstate)
        end

        if bucketstate == "dospoil" then
            --inst.SoundEmitter:PlaySound("dontstarve/creatures/pengull/splash")
            --inst.AnimState:PlayAnimation("turn_to_full")
            inst.AnimState:PushAnimation("dirty")
        end

        if bucketstate == "dodry" then
            inst.SoundEmitter:PlaySound("dontstarve/common/dust_blowaway")
            --inst.AnimState:PlayAnimation("turn_to_full")
            inst.AnimState:PushAnimation("empty")
        end

        if bucketstate == "dofull" then
            inst.SoundEmitter:PlaySound("dontstarve/creatures/pengull/splash")
            --inst.AnimState:PlayAnimation("turn_to_full")
            inst.AnimState:PushAnimation("full")
        end

    end
end

local function DoneMilkingfn(doer)
    doer.SoundEmitter:PlaySound("dontstarve/creatures/pengull/splash")
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)	

    inst.AnimState:SetBuild("buckets")
    inst.AnimState:SetBank("buckets")
    inst.AnimState:PlayAnimation("empty")

    inst:AddTag("watertaker")
    inst:AddTag("bucket_empty")

    MakeInventoryFloatable(inst)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end
	
	-- 우물 상호 작용을 위한 태그

	inst:AddComponent("watertaker")
	inst.components.watertaker.capacity = TUNING.BUCKET_LEVEL_PER_USE
	inst.components.watertaker.onfillfn = OnTakeWater
	
	inst:AddComponent("waterproofer")
    inst.components.waterproofer:SetEffectiveness(TUNING.WATERPROOFNESS_SMALL*2)

    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(TUNING.BUCKET_MAX_LEVEL)

    inst:AddComponent("fuel")
    inst.components.fuel.fuelvalue = TUNING.LARGE_FUEL
    
    inst:AddComponent("wateringtool")
    --inst.components.wateringtool.setstatesfn = SetState

    inst:AddComponent("inspectable")

    inst:AddComponent("milkingtool")
    inst.components.milkingtool.donemilkingfn = DoneMilkingfn
	
    MakeSmallBurnable(inst, TUNING.MED_BURNTIME)
    MakeSmallPropagator(inst)
	
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem:SetOnPickupFn(CanGetWater)

    MakeHauntableLaunchAndSmash(inst)

    inst:ListenForEvent("ondropped",SetCheckWeather)

    return inst
end

return Prefab("bucket_empty", fn, assets)