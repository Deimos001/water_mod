local assets =
{
	Asset("ANIM", "anim/well.zip"),
}

local prefabs =
{
	"hole",
}

local function OnSpawnIn(inst)
	inst:Show()
    inst.AnimState:PlayAnimation("place", false)
    inst.AnimState:PushAnimation("idle")
end

local function OnConstructed(inst, doer)
    local concluded = true
    for i, v in ipairs(CONSTRUCTION_PLANS[inst.prefab] or {}) do
        if inst.components.constructionsite:GetMaterialCount(v.type) < v.amount then
            concluded = false
            break
        end
    end

    if concluded then
        local new_well = ReplacePrefab(inst, "well")
        new_well.SoundEmitter:PlaySound("dontstarve/common/together/town_portal/craft")
		new_well:DoTaskInTime(.6, function(new_well)
			new_well.SoundEmitter:PlaySound("saltydog/common/saltbox/place")
		end)
		new_well.AnimState:PlayAnimation("place")
		new_well.AnimState:PushAnimation("idle_empty")
    end
end

local function dig_up(inst)
	local x, y, z = inst.Transform:GetWorldPosition()
	SpawnPrefab("collapse_small").Transform:SetPosition(x, y, z)
    inst:Remove()
end

local function hole()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    inst.AnimState:SetBank("holes")
    inst.AnimState:SetBuild("well")
    inst.AnimState:PlayAnimation("idle")
	
	inst:AddTag("antlion_sinkhole_blocker")
    inst:AddTag("constructionsite")
    inst:AddTag("birdblocker")
	
	MakeObstaclePhysics(inst, .6)
	
	inst:AddComponent("inspectable")
	
	inst:AddComponent("constructionsite")
    inst.components.constructionsite:SetConstructionPrefab("construction_container")
    inst.components.constructionsite:SetOnConstructedFn(OnConstructed)
	
	inst:AddComponent("workable")
    inst.components.workable:SetWorkAction(ACTIONS.DIG)
    inst.components.workable:SetOnFinishCallback(dig_up)
	inst.components.workable:SetOnWorkCallback(nil)
    inst.components.workable:SetWorkLeft(3)
	
	inst:DoTaskInTime(0, OnSpawnIn)

	return inst
end

local function SetupLoot(lootdropper)
	lootdropper:SetLoot({"water_clean","water_clean","water_clean","water_clean","water_clean","water_clean","water_clean","water_clean","water_clean","water_clean","water_clean","water_clean","water_clean","water_clean","water_clean","water_clean","water_clean","water_clean","water_clean","water_clean"})
end


local function updatewellstate(inst)
    local num = inst.components.pickable.numtoharvest
	if num > 0 then
		inst.AnimState:PlayAnimation("idle_watering")
	else
		inst.AnimState:PlayAnimation("idle_empty")
	end
end

local function onhammered(inst)
	if inst.AnimState:IsCurrentAnimation("watering") or inst.AnimState:IsCurrentAnimation("hit_watering") or inst.AnimState:IsCurrentAnimation("idle_watering") then
		inst.components.lootdropper.lootsetupfn = SetupLoot
		if inst._bucket_fit > 0 then
			local x, y, z = inst.Transform:GetWorldPosition()
	   		local refund = nil

			refund = SpawnPrefab("bucket_empty")
			refund.components.finiteuses:SetUses(inst._bucket_fit)

			LaunchAt(refund,inst,inst,-1.8,0.5,nil,65)
		end
	end
	SpawnPrefab("collapse_big").Transform:SetPosition(inst.Transform:GetWorldPosition())
	SpawnPrefab("hole").Transform:SetPosition(inst.Transform:GetWorldPosition())
	inst.SoundEmitter:PlaySound("dontstarve/common/destroy_stone")
	inst.components.lootdropper:DropLoot()
	inst:Remove()
end

local function onhit(inst)
	if not inst.AnimState:IsCurrentAnimation("watering") then
		if inst.AnimState:IsCurrentAnimation("idle_watering") then
			inst.AnimState:PlayAnimation("hit_watering")
			inst.AnimState:PushAnimation("idle_watering")
		else
			inst.AnimState:PlayAnimation("hit_empty")
			inst.AnimState:PushAnimation("idle_empty")
		end
	end
end

local function OnRefuseItem(inst, giver, item)
	if inst.components.pickable.caninteractwith then
		giver.components.talker:Say(GetActionFailString(giver, "GIVE", "WELL_NOTEMPTY"))
	elseif inst.AnimState:IsCurrentAnimation("watering") or inst.AnimState:IsCurrentAnimation("idle_watering") or inst.AnimState:IsCurrentAnimation("shack_watering") then
		giver.components.talker:Say(GetActionFailString(giver, "GIVE", "WELL_BUSY"))
	else
		giver.components.talker:Say(GetActionFailString(giver, "GIVE", "GENERIC"))
	end
end

local function ShouldAcceptItem(inst, item, giver)
	if item:HasTag("bucket_empty") and inst:HasTag("ready") then
		return true
	end
	return false
end

local function SetPickable(inst, pickable, num)
    inst.components.pickable.canbepicked = pickable
    inst.components.pickable.caninteractwith = pickable
    inst.components.pickable.numtoharvest = num
end

local function givewater(inst, picker)
	local x, y, z = picker.Transform:GetWorldPosition()
    local refund = nil

	inst:AddTag("ready")
	inst.AnimState:PlayAnimation("shack_watering")
	inst.AnimState:PushAnimation("idle_empty")
	picker.SoundEmitter:PlaySound("dontstarve/creatures/pengull/splash")

	if inst._bucket_fit > 0 then
		refund = SpawnPrefab("bucket_empty")
		refund.components.finiteuses:SetUses(inst._bucket_fit)

    	if picker ~= nil and picker.components.inventory ~= nil then
        	picker.components.inventory:GiveItem(refund, nil, Vector3(x, y, z))
    	else
        	refund.Transform:SetPosition(x,y,z)
    	end
	end

	inst.components.pickable.numtoharvest = inst.components.pickable.numtoharvest - 20
	SetPickable(inst, false, inst.components.pickable.numtoharvest)
end

local function upwater(inst, item, giver)
	inst.AnimState:PushAnimation("idle_watering")
	SetPickable(inst, true, inst.components.pickable.numtoharvest)
end

local function getwater(inst, item, giver)
	inst.SoundEmitter:PlaySound("turnoftides/common/together/boat/anchor/ocean_hit")
	inst:DoTaskInTime(1.1,upwater, item, giver)
end

local function OnGetItemFromPlayer(inst, giver, item)
	inst:RemoveTag("ready")
	item.components.finiteuses:Use(TUNING.BUCKET_LEVEL_PER_USE)
	inst.components.pickable.numtoharvest = inst.components.pickable.numtoharvest + 20
	inst._bucket_fit = item.components.finiteuses.current
	inst.SoundEmitter:PlaySound("turnoftides/common/together/boat/anchor/tether_land")
	inst.AnimState:PlayAnimation("watering")
	inst:DoTaskInTime(1.1,getwater, item, giver)
end

local function onsave(inst, data)
    if inst.components.pickable.numtoharvest > 0 then
        -- This isn't saved on the pickable component
        data.numtoharvest = inst.components.pickable.numtoharvest
        data.bucket_fit = inst._bucket_fit
    end
end

local function onload(inst, data)
	if data ~= nil then
		if data.numtoharvest ~= nil and data.numtoharvest > 0 then
			inst.components.pickable.numtoharvest = data.numtoharvest
			inst._bucket_fit = data.bucket_fit
			updatewellstate(inst)
		end
	end
end

local function well()
	local inst = CreateEntity()
	
	inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddNetwork()

	local minimap = inst.entity:AddMiniMapEntity()
	minimap:SetIcon("well.tex")

    inst:AddTag("well")
    inst:AddTag("structure")
    inst:AddTag("ready")
	
	MakeObstaclePhysics(inst, .5)

	inst.entity:SetPristine()
	inst._bucket_fit = 0
	
    inst.AnimState:SetBank("well")
    inst.AnimState:SetBuild("well")
    inst.AnimState:PlayAnimation("idle_empty")
	
	inst:AddComponent("trader")
	inst.components.trader:SetAcceptTest(ShouldAcceptItem)
	inst.components.trader.onaccept = OnGetItemFromPlayer
	inst.components.trader.onrefuse = OnRefuseItem
	
	inst:AddComponent("inspectable")
	inst.IsGetWater = false

	inst:AddComponent("lootdropper")
	
    inst:AddComponent("pickable")
    inst.components.pickable.caninteractwith = false
    inst.components.pickable.onpickedfn = givewater
    inst.components.pickable.product = "water_clean"
    inst.components.pickable.numtoharvest = 0
	
	inst:AddComponent("workable")
    inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
    inst.components.workable:SetWorkLeft(4)
	inst.components.workable:SetOnFinishCallback(onhammered)
	inst.components.workable:SetOnWorkCallback(onhit)
	
	inst.OnSave = onsave
    inst.OnLoad = onload
	
	return inst
end

return Prefab("hole", hole, assets),
	Prefab("well", well, assets, prefabs)
