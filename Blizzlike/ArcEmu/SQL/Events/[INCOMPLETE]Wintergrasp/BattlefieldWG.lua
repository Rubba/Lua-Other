TIME_TO_BATTLE = 9000
BATTLE_TIMER = 2100
local timer_nextbattle = os.time() + TIME_TO_BATTLE
local timer_battle = 0
local controll = math.random(1,2)
battle = 0
states = nil
battlestates_set = nil
stateuiset = 0
add_tokens = 1

GAMEOBJECT_FACTION = 0x0006 + 0x0009

 -- Factions
FACTION_HORDE = 1735
FACTION_ALLIANCE = 1732
FACTION_NEUTRAL = 35

 -- vehicle workshops capture bar controllers
eastspark_progress = 50
westspark_progress = 50
sunkenring_progress = 50
brokentemple_progres = 50
 -- Max vehicle worldstate controllers (neutral, destroyed - 0, half destroyed (A/H) - 2, intact (A/H) - 4)
A_V_EASTSPARK = 0
H_V_EASTSPARK = 0
A_V_WESTSPARK = 0
H_V_WESTSPARK = 0
A_V_SUNKENRING = 0
H_V_SUNKENRING = 0
A_V_BROKENTEMPLE = 0
H_V_BROKENTEMPLE = 0
A_V_FORTRESS_EAST = 0
H_V_FORTRESS_EAST = 0
A_V_FORTRESS_WEST = 0
H_V_FORTRESS_WEST = 0
 -- UI STATES
WG_STATE_NEXT_BATTLE_TIME =	4354
WG_STATE_END_BATTLE_TIME = 3781
WG_HORDE_CONTROLLED = 3802
WG_ALLIANCE_CONTROLLED = 3803
WG_STATE_BATTLE_UI = 3710
WG_STATE_BATTLE_TIME = 3781
WG_STATE_NEXT_BATTLE_TIMER = 3801
WG_STATE_CURRENT_H_VEHICLES = 3490
WG_STATE_MAX_H_VEHICLES = 3491
WG_STATE_CURRENT_A_VEHICLES = 3680
WG_STATE_MAX_A_VEHICLES = 3681
 -- Map states:
WG_STATE_W_FORTRESS_WORKSHOP = 3698
WG_STATE_E_FORTRESS_WORKSHOP = 3699
WG_STATE_BT_WORKSHOP = 3700
WG_STATE_SR_WORKSHOP = 3701
WG_STATE_WS_WORKSHOP = 3702
WG_STATE_ES_WORKSHOP = 3703
WG_STATE_MAIN_GATE = 3763
WG_STATE_KEEP_GATE_ANDGY = 3773
WG_STATE_KEEP_WALL_1 = 3749
WG_STATE_KEEP_WALL_2 = 3750
WG_STATE_KEEP_WALL_3 = 3751
WG_STATE_KEEP_WALL_4 = 3752
WG_STATE_KEEP_WALL_5 = 3753
WG_STATE_KEEP_WALL_6 = 3754
WG_STATE_KEEP_WALL_7 = 3755
WG_STATE_KEEP_WALL_8 = 3756
WG_STATE_KEEP_WALL_9 = 3757
WG_STATE_KEEP_WALL_10 = 3758
WG_STATE_KEEP_WALL_11 = 3759
WG_STATE_KEEP_WALL_12 = 3760
WG_STATE_KEEP_WALL_13 = 3761
WG_STATE_KEEP_WALL_14 = 3762
WG_STATE_KEEP_WALL_15 = 3764
WG_STATE_KEEP_WALL_16 = 3765
WG_STATE_KEEP_WALL_17 = 3766
WG_STATE_KEEP_WALL_18 = 3767
WG_STATE_KEEP_WALL_19 = 3768
WG_STATE_KEEP_WALL_20 = 3769
WG_STATE_KEEP_WALL_21 = 3770
WG_STATE_KEEP_WALL_22 = 3771
WG_STATE_KEEP_WALL_23 = 3772
WG_STATE_KEEP_SE_TOWER = 3714
WG_STATE_KEEP_SW_TOWER = 3713
WG_STATE_KEEP_NW_TOWER = 3711
WG_STATE_KEEP_NE_TOWER = 3712
WG_STATE_FW_TOWER = 3706
WG_STATE_WE_TOWER = 3705
WG_STATE_SS_TOWER = 3704
 -- Dynamic capturebar states
WG_STATE_SOUTH_SHOW = 3501
WG_STATE_SOUTH_PROGRESS = 3502

NPC_DETECTION_UNIT = 27869
NPC_GOBLIN_ENGINEER = 30400
NPC_GNOME_ENGINEER = 30499

GO_WINTERGRASP_TITAN_RELIC = 192829 -- 5439.66, 2840.83, 420.427, 6.20393, 0, 0, 0.0396173, -0.999215 should be spawned by the sript.
GO_WINTERGRASP_SE_TOWER = 190377
GO_WINTERGRASP_NE_TOWER = 190378
GO_WINTERGRASP_SW_TOWER = 190373
GO_WINTERGRASP_NW_TOWER = 190221
GO_WINTERGRASP_SHADOWSIGHT_TOWER = 190356
GO_WINTERGRASP_WINTER_S_EDGE_TOWER = 190357
GO_WINTERGRASP_FLAMEWATCH_TOWER = 190358
GO_WINTERGRASP_FORTRESS_GATE = 190375
GO_WINTERGRASP_VAULT_GATE = 191810
GO_WINTERGRASP_KEEP_COLLISION_WALL = 194162
GO_WINTERGRASP_KEEP_WALL_1 = 190219
GO_WINTERGRASP_KEEP_WALL_2 = 190220
GO_WINTERGRASP_KEEP_WALL_3 = 191802
GO_WINTERGRASP_KEEP_WALL_4 = 191803
GO_WINTERGRASP_KEEP_WALL_5 = 190369
GO_WINTERGRASP_KEEP_WALL_6 = 190371
GO_WINTERGRASP_KEEP_WALL_7 = 190374
GO_WINTERGRASP_KEEP_WALL_8 = 190376
GO_WINTERGRASP_KEEP_WALL_9 = 190372
GO_WINTERGRASP_KEEP_WALL_10 = 190370
GO_WINTERGRASP_KEEP_WALL_11 = 191807
GO_WINTERGRASP_KEEP_WALL_12 = 191808
GO_WINTERGRASP_KEEP_WALL_13 = 191809
GO_WINTERGRASP_KEEP_WALL_14 = 191799
GO_WINTERGRASP_KEEP_WALL_15 = 191795
GO_WINTERGRASP_KEEP_WALL_16 = 191797
GO_WINTERGRASP_KEEP_WALL_17 = 191800
GO_WINTERGRASP_KEEP_WALL_18 = 191804
GO_WINTERGRASP_KEEP_WALL_19 = 191805
GO_WINTERGRASP_KEEP_WALL_20 = 191806
GO_WINTERGRASP_KEEP_WALL_21 = 191801
GO_WINTERGRASP_KEEP_WALL_22 = 191798
GO_WINTERGRASP_KEEP_WALL_23 = 191796
GO_WINTERGRASP_WORKSHOP_E = 192029
GO_WINTERGRASP_WORKSHOP_W = 192028
GO_WINTERGRASP_FW_TOWER = 190358
GO_WINTERGRASP_WE_TOWER = 190357
GO_WINTERGRASP_SS_TOWER = 190356
GO_WINTERGRASP_DEFENDER_P_H = 190763
GO_WINTERGRASP_DEFENDER_P_A = 191575
 -- Eastspark
GO_WINTERGRASP_WORKSHOP_ES = 192033
GO_WINTERGRASP_CAPTUREPOINT_ES = 194959
 -- Westspark
GO_WINTERGRASP_WORKSHOP_ES = 192032
GO_WINTERGRASP_CAPTUREPOINT_ES = 194962
 -- Map info
MAP_HOR = 668
MAP_NEXUS = 576
MAP_UP = 575
MAP_UK = 574
MAP_OCULUS = 578
MAP_POS = 658
MAP_TOC = 650
MAP_FOS = 632
MAP_AK = 619
MAP_VH = 608
MAP_GUND = 604
MAP_HOL = 602
MAP_AN = 601
MAP_HOS = 599
MAP_COS = 595
MAP_NORTHREND = 571
 -- Areass
ZONE_WG = 4197
AREA_FORTRESS = 4575
AREA_EASTSPARK = 4612
AREA_WESTSPARK = 4611
AREA_BROKENTEMPLE = 4539
AREA_SUNKENRING = 4538
AREA_FLAMEWATCH_T = 4581
AREA_WINTERSEDGE_T = 4582
AREA_SHADOWSIGHT_T = 4583
AREA_C_BRIDGE = 4576
AREA_E_BRIDGE = 4557
AREA_W_BRIDGE = 4577
 -- Spells
SPELL_RECRUIT = 37795
SPELL_CORPORAL = 33280
SPELL_LIEUTENANT = 55629
SPELL_TENACITY = 58549
SPELL_TENACITY_VEHICLE = 59911
SPELL_TOWER_CONTROL = 62064
SPELL_SPIRITUAL_IMMUNITY = 58729
SPELL_GREAT_HONOR = 58555
SPELL_GREATER_HONOR = 58556
SPELL_GREATEST_HONOR = 58557
SPELL_ALLIANCE_FLAG = 14268
SPELL_HORDE_FLAG = 14267
SPELL_GRAB_PASSENGER = 61178
 -- Reward spells
SPELL_VICTORY_REWARD = 56902
SPELL_DEFEAT_REWARD = 58494
SPELL_DAMAGED_TOWER = 59135
SPELL_DESTROYED_TOWER = 59136
SPELL_DAMAGED_BUILDING = 59201
SPELL_INTACT_BUILDING = 59203
SPELL_TELEPORT_BRIDGE = 59096
SPELL_TELEPORT_FORTRESS = 60035
SPELL_TELEPORT_DALARAN = 53360
SPELL_VICTORY_AURA = 60044
SPELL_WINTERGRASP_WATER = 36444
SPELL_ESSENCE_OF_WINTERGRASP = 58045
SPELL_WINTERGRASP_RESTRICTED_FLIGHT_AREA = 58730
 -- Phasing spells
SPELL_HORDE_CONTROLS_FACTORY_PHASE_SHIFT = 56618 -- phase 16
SPELL_ALLIANCE_CONTROLS_FACTORY_PHASE_SHIFT = 56617 -- phase 32
SPELL_HORDE_CONTROL_PHASE_SHIFT = 55773 -- phase 64
SPELL_ALLIANCE_CONTROL_PHASE_SHIFT = 55774  -- phase 128

 -- achievements
ACHIEVEMENT_VICTORY = 1717

 -- Quests
QUEST_WG_VICTORY_A = 13181
QUEST_WG_VICTORY_H = 13183
QUEST_WG_TOPPING_TOWERS = 13539
QUEST_WG_SOUTHEN_SABOTAGE = 13538

function Aura()
for k,l in pairs(GetPlayersInWorld())do
if(l:GetMapId() == MAP_HOR or l:GetMapId() == MAP_NEXUS or l:GetMapId() == MAP_UP or l:GetMapId() == MAP_UK or l:GetMapId() == MAP_OCULUS or l:GetMapId() == MAP_POS or l:GetMapId() == MAP_TOC or l:GetMapId() == MAP_FOS or l:GetMapId() == MAP_AK or l:GetMapId() == MAP_VH or l:GetMapId() == MAP_GUND or l:GetMapId() == MAP_HOL or l:GetMapId() == MAP_AN or l:GetMapId() == MAP_HOS or l:GetMapId() == MAP_COS or l:GetMapId() == MAP_NORTHREND)then
	if(battle == 0 and controll == 1 and l:GetTeam() == 0 and l:HasAura(SPELL_ESSENCE_OF_WINTERGRASP) ~= true)then
		l:CastSpell(SPELL_ESSENCE_OF_WINTERGRASP)
	elseif(controll == 1 and l:GetTeam() == 1 and l:HasAura(SPELL_ESSENCE_OF_WINTERGRASP))then
		l:RemoveAura(SPELL_ESSENCE_OF_WINTERGRASP)
	elseif(battle == 0 and controll == 2 and l:GetTeam() == 1 and l:HasAura(SPELL_ESSENCE_OF_WINTERGRASP) ~= true)then
		l:CastSpell(SPELL_ESSENCE_OF_WINTERGRASP)
	elseif(controll == 2 and l:GetTeam() == 0 and l:HasAura(SPELL_ESSENCE_OF_WINTERGRASP))then
		l:RemoveAura(SPELL_ESSENCE_OF_WINTERGRASP)
	elseif(battle == 1)then
		if(l:HasAura(SPELL_ESSENCE_OF_WINTERGRASP))then
			l:RemoveAura(SPELL_ESSENCE_OF_WINTERGRASP)
		end
	end
else
	if(l:HasAura(SPELL_ESSENCE_OF_WINTERGRASP))then
		l:RemoveAura(SPELL_ESSENCE_OF_WINTERGRASP)
	end
end
end
end

function WGUpdate()
if(timer_nextbattle <= os.time() and timer_battle == 0)then
	SendWorldMsg("[PH MESSAGE]Battlefield is starting!", 1)
	timer_battle = os.time() + BATTLE_TIMER
	timer_nextbattle = 0
	battle = 1
	battlestates_set = 0
	stateuiset = 0
	states = 0
	add_tokens = 0
elseif(timer_nextbattle == 0 and timer_battle <= os.time())then
	timer_battle = 0
	timer_nextbattle = os.time() + TIME_TO_BATTLE
	SendWorldMsg("[PH MESSAGE]The battlefield is over!", 1)
	battle = 0
	stateuiset = 0
end
for k,v in pairs(GetPlayersInZone(ZONE_WG))do
if(battle == 1)then
	if(v:HasAura(SPELL_RECRUIT) == false and v:HasAura(SPELL_CORPORAL) == false and v:HasAura(SPELL_LIEUTENANT) == false)then
		v:CastSpell(SPELL_RECRUIT)
	end
elseif(battle == 0)then
	if(v:HasAura(SPELL_RECRUIT))then
		v:RemoveAura(SPELL_RECRUIT)
	end
	if(v:HasAura(SPELL_CORPORAL))then
		v:RemoveAura(SPELL_CORPORAL)
	end
	if(v:HasAura(SPELL_LIEUTENANT))then
		v:RemoveAura(SPELL_LIEUTENANT)
	end
end
if(controll == 1 and battle == 0 and add_tokens == 0)then
		if(v:GetTeam() == 0)then
			v:CastSpell(SPELL_VICTORY_REWARD)
			--[[if(v:HasAchievement(ACHIEVEMENT_VICTORY) == false)then
				v:AddAchievement(ACHIEVEMENT_VICTORY)  -- For some reason this causes crashes.
			end]]--
		elseif(v:GetTeam() == 1)then
			v:CastSpell(SPELL_DEFEAT_REWARD)
		end
		add_tokens = 1
end
if(controll == 2 and battle == 0 and add_tokens == 0)then
		if(v:GetTeam() == 1)then
			v:CastSpell(SPELL_VICTORY_REWARD)
			--[[if(v:HasAchievement(ACHIEVEMENT_VICTORY) == false)then
				v:AddAchievement(ACHIEVEMENT_VICTORY)  -- For some reason this causes crashes.
			end]]--
		elseif(v:GetTeam() == 0)then
			v:CastSpell(SPELL_DEFEAT_REWARD)
		end
		add_tokens = 1
end
if(battle == 0)then
end
if(v:GetAreaId() == AREA_FORTRESS or v:GetAreaId() == AREA_FLAMEWATCH_T or v:GetAreaId() == AREA_WINTERSEDGE_T or v:GetAreaId() == AREA_SHADOWSIGHT_T or v:GetAreaId() == AREA_C_BRIDGE or v:GetAreaId() == AREA_W_BRIDGE or v:GetAreaId() == AREA_E_BRIDGE or v:GetAreaId() == ZONE_WG)then
	if(controll == 1)then
		if(v:HasAura(SPELL_HORDE_CONTROL_PHASE_SHIFT))then
			v:RemoveAura(SPELL_HORDE_CONTROL_PHASE_SHIFT)
		end
		v:CastSpell(SPELL_ALLIANCE_CONTROL_PHASE_SHIFT)
		elseif(controll == 2)then
		if(v:HasAura(SPELL_ALLIANCE_CONTROL_PHASE_SHIFT))then
			v:RemoveAura(SPELL_ALLIANCE_CONTROL_PHASE_SHIFT)
		end
		v:CastSpell(SPELL_HORDE_CONTROL_PHASE_SHIFT)
	end
elseif(v:GetAreaId() ~= ZONE_WG and v:GetAreaId() ~= AREA_FORTRESS and v:GetAreaId() ~= AREA_FLAMEWATCH_T and v:GetAreaId() ~= AREA_WINTERSEDGE_T and v:GetAreaId() ~= AREA_SHADOWSIGHT_T and v:GetAreaId() ~= AREA_C_BRIDGE and v:GetAreaId() ~= AREA_W_BRIDGE and v:GetAreaId() ~= AREA_E_BRIDGE and v:GetAreaId() ~= ZONE_WG)then
	if(v:HasAura(SPELL_HORDE_CONTROL_PHASE_SHIFT))then
			v:RemoveAura(SPELL_HORDE_CONTROL_PHASE_SHIFT)
	end
	if(v:HasAura(SPELL_ALLIANCE_CONTROL_PHASE_SHIFT))then
			v:RemoveAura(SPELL_ALLIANCE_CONTROL_PHASE_SHIFT)
	end
end
if(stateuiset == 0)then
	if(battle == 1)then
		v:SetWorldStateForZone(WG_HORDE_CONTROLLED, 0)
		v:SetWorldStateForZone(WG_ALLIANCE_CONTROLLED, 0)
		v:SetWorldStateForZone(WG_STATE_BATTLE_UI, 1)
		v:SetWorldStateForZone(WG_STATE_BATTLE_TIME, timer_battle)
		v:SetWorldStateForZone(WG_STATE_NEXT_BATTLE_TIMER, 0)
		v:SetWorldStateForZone(WG_STATE_NEXT_BATTLE_TIME, 0)
		stateuiset = 1
	elseif(battle == 0 and controll == 1)then
		v:SetWorldStateForZone(WG_STATE_NEXT_BATTLE_TIMER, 1)
		v:SetWorldStateForZone(WG_ALLIANCE_CONTROLLED, 1)
		v:SetWorldStateForZone(WG_STATE_BATTLE_UI, 0)
		v:SetWorldStateForZone(WG_STATE_BATTLE_TIME, 0)
		v:SetWorldStateForZone(WG_STATE_NEXT_BATTLE_TIME, timer_nextbattle)
		stateuiset = 1
	elseif(battle == 0 and controll == 2)then
		v:SetWorldStateForZone(WG_STATE_NEXT_BATTLE_TIMER, 1)
		v:SetWorldStateForZone(WG_HORDE_CONTROLLED, 1)
		v:SetWorldStateForZone(WG_STATE_BATTLE_UI, 0)
		v:SetWorldStateForZone(WG_STATE_BATTLE_TIME, 0)
		v:SetWorldStateForZone(WG_STATE_NEXT_BATTLE_TIME, timer_nextbattle)
		stateuiset = 1
	end
end
if(controll == 1)then
	if(states == 0 or states == nil)then
		if(battle == 0)then
			v:SetWorldStateForZone(WG_ALLIANCE_CONTROLLED, 1)
			v:SetWorldStateForZone(WG_HORDE_CONTROLLED, 0)
			v:SetWorldStateForZone(WG_STATE_NEXT_BATTLE_TIME, timer_nextbattle)
		end
		v:SetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP, 7)
		v:SetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP, 7)
		v:SetWorldStateForZone(WG_STATE_SS_TOWER, 4)
		v:SetWorldStateForZone(WG_STATE_WE_TOWER, 4)
		v:SetWorldStateForZone(WG_STATE_FW_TOWER, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_NW_TOWER, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_NE_TOWER, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_SW_TOWER, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_SE_TOWER, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_1, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_2, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_3, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_4, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_5, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_6, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_7, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_8, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_9, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_10, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_11, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_12, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_13, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_14, 7)
		v:SetWorldStateForZone(WG_STATE_MAIN_GATE, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_15, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_16, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_17, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_18, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_19, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_20, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_21, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_22, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_23, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_GATE_ANDGY, 7)
		v:SetWorldStateForZone(WG_STATE_WS_WORKSHOP, 4)
		v:SetWorldStateForZone(WG_STATE_ES_WORKSHOP, 4)
		v:SetWorldStateForZone(WG_STATE_BT_WORKSHOP, 1)
		v:SetWorldStateForZone(WG_STATE_SR_WORKSHOP, 1)
		eastspark_progress = 100
		westspark_progress = 100
		states = 1
	end
elseif(controll == 2)then
	if(states == 0 or states == nil)then
		if(battle == 0)then
			v:SetWorldStateForZone(WG_HORDE_CONTROLLED, 1)
			v:SetWorldStateForZone(WG_ALLIANCE_CONTROLLED, 0)
			v:SetWorldStateForZone(WG_STATE_NEXT_BATTLE_TIME, timer_nextbattle)
		end
		v:SetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP, 4)
		v:SetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP, 4)
		v:SetWorldStateForZone(WG_STATE_SS_TOWER, 7)
		v:SetWorldStateForZone(WG_STATE_WE_TOWER, 7)
		v:SetWorldStateForZone(WG_STATE_FW_TOWER, 7)
		v:SetWorldStateForZone(WG_STATE_KEEP_NW_TOWER, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_NE_TOWER, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_SW_TOWER, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_SE_TOWER, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_1, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_2, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_3, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_4, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_5, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_6, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_7, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_8, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_9, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_10, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_11, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_12, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_13, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_14, 4)
		v:SetWorldStateForZone(WG_STATE_MAIN_GATE, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_15, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_16, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_17, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_18, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_19, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_20, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_21, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_22, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_WALL_23, 4)
		v:SetWorldStateForZone(WG_STATE_KEEP_GATE_ANDGY, 4)
		v:SetWorldStateForZone(WG_STATE_WS_WORKSHOP, 7)
		v:SetWorldStateForZone(WG_STATE_ES_WORKSHOP, 7)
		v:SetWorldStateForZone(WG_STATE_BT_WORKSHOP, 1)
		v:SetWorldStateForZone(WG_STATE_SR_WORKSHOP, 1)
		eastspark_progress = 0
		westspark_progress = 0
		states = 1
	end
end
end
end

function DetectionUnitOnSpawn(pUnit, event)
pUnit:RegisterAIUpdateEvent(1000)
end

function DetectionUnitAIUpdate(pUnit)
if(pUnit == nil)then
	pUnit:RemoveAIUpdateEvent()
end
if(pUnit:GetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP) == 4)then
	A_V_FORTRESS_WEST = 0
	H_V_FORTRESS_WEST = 4
elseif(pUnit:GetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP) == 5)then
	A_V_FORTRESS_WEST = 0
	H_V_FORTRESS_WEST = 2
elseif(pUnit:GetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP) == 0 or pUnit:GetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP) == 1 or pUnit:GetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP) == 2 or pUnit:GetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP) == 3 or pUnit:GetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP) == 6 or pUnit:GetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP) == 9)then
	A_V_FORTRESS_WEST = 0
	H_V_FORTRESS_WEST = 0
elseif(pUnit:GetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP) == 7)then
	A_V_FORTRESS_WEST = 4
	H_V_FORTRESS_WEST = 0
elseif(pUnit:GetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP) == 8)then
	A_V_FORTRESS_WEST = 2
	H_V_FORTRESS_WEST = 0
end
if(pUnit:GetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP) == 4)then
	A_V_FORTRESS_EAST = 0
	H_V_FORTRESS_EAST = 4
elseif(pUnit:GetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP) == 5)then
	A_V_FORTRESS_EAST = 0
	H_V_FORTRESS_EAST = 2
elseif(pUnit:GetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP) == 0 or pUnit:GetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP) == 1 or pUnit:GetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP) == 2 or pUnit:GetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP) == 3 or pUnit:GetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP) == 6 or pUnit:GetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP) == 9)then
	A_V_FORTRESS_EAST = 0
	H_V_FORTRESS_EAST = 0
elseif(pUnit:GetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP) == 7)then
	A_V_FORTRESS_EAST = 4
	H_V_FORTRESS_EAST = 0
elseif(pUnit:GetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP) == 8)then
	A_V_FORTRESS_EAST = 2
	H_V_FORTRESS_EAST = 0
end
if(pUnit:GetWorldStateForZone(WG_STATE_BT_WORKSHOP) == 4)then
	A_V_BROKENTEMPLE = 0
	H_V_BROKENTEMPLE = 4
elseif(pUnit:GetWorldStateForZone(WG_STATE_BT_WORKSHOP) == 5)then
	A_V_BROKENTEMPLE = 0
	H_V_BROKENTEMPLE = 2
elseif(pUnit:GetWorldStateForZone(WG_STATE_BT_WORKSHOP) == 0 or pUnit:GetWorldStateForZone(WG_STATE_BT_WORKSHOP) == 1 or pUnit:GetWorldStateForZone(WG_STATE_BT_WORKSHOP) == 2 or pUnit:GetWorldStateForZone(WG_STATE_BT_WORKSHOP) == 3 or pUnit:GetWorldStateForZone(WG_STATE_BT_WORKSHOP) == 6 or pUnit:GetWorldStateForZone(WG_STATE_BT_WORKSHOP) == 9)then
	A_V_BROKENTEMPLE = 0
	H_V_BROKENTEMPLE = 0
elseif(pUnit:GetWorldStateForZone(WG_STATE_BT_WORKSHOP) == 7)then
	A_V_BROKENTEMPLE = 4
	H_V_BROKENTEMPLE = 0
elseif(pUnit:GetWorldStateForZone(WG_STATE_BT_WORKSHOP) == 8)then
	A_V_BROKENTEMPLE = 2
	H_V_BROKENTEMPLE = 0
end
if(pUnit:GetWorldStateForZone(WG_STATE_SR_WORKSHOP) == 4)then
	A_V_SUNKENRING = 0
	H_V_SUNKENRING = 4
elseif(pUnit:GetWorldStateForZone(WG_STATE_SR_WORKSHOP) == 5)then
	A_V_SUNKENRING = 0
	H_V_SUNKENRING = 2
elseif(pUnit:GetWorldStateForZone(WG_STATE_SR_WORKSHOP) == 0 or pUnit:GetWorldStateForZone(WG_STATE_SR_WORKSHOP) == 1 or pUnit:GetWorldStateForZone(WG_STATE_SR_WORKSHOP) == 2 or pUnit:GetWorldStateForZone(WG_STATE_SR_WORKSHOP) == 3 or pUnit:GetWorldStateForZone(WG_STATE_SR_WORKSHOP) == 6 or pUnit:GetWorldStateForZone(WG_STATE_SR_WORKSHOP) == 9)then
	A_V_SUNKENRING = 0
	H_V_SUNKENRING = 0
elseif(pUnit:GetWorldStateForZone(WG_STATE_SR_WORKSHOP) == 7)then
	A_V_SUNKENRING = 4
	H_V_SUNKENRING = 0
elseif(pUnit:GetWorldStateForZone(WG_STATE_SR_WORKSHOP) == 8)then
	A_V_SUNKENRING = 2
	H_V_SUNKENRING = 0
end
if(pUnit:GetWorldStateForZone(WG_STATE_WS_WORKSHOP) == 4)then
	A_V_WESTSPARK = 0
	H_V_WESTSPARK = 4
elseif(pUnit:GetWorldStateForZone(WG_STATE_WS_WORKSHOP) == 5)then
	A_V_WESTSPARK = 0
	H_V_WESTSPARK = 2
elseif(pUnit:GetWorldStateForZone(WG_STATE_WS_WORKSHOP) == 0 or pUnit:GetWorldStateForZone(WG_STATE_WS_WORKSHOP) == 1 or pUnit:GetWorldStateForZone(WG_STATE_WS_WORKSHOP) == 2 or pUnit:GetWorldStateForZone(WG_STATE_WS_WORKSHOP) == 3 or pUnit:GetWorldStateForZone(WG_STATE_WS_WORKSHOP) == 6 or pUnit:GetWorldStateForZone(WG_STATE_WS_WORKSHOP) == 9)then
	A_V_WESTSPARK = 0
	H_V_WESTSPARK = 0
elseif(pUnit:GetWorldStateForZone(WG_STATE_WS_WORKSHOP) == 7)then
	A_V_WESTSPARK = 4
	H_V_WESTSPARK = 0
elseif(pUnit:GetWorldStateForZone(WG_STATE_WS_WORKSHOP) == 8)then
	A_V_WESTSPARK = 2
	H_V_WESTSPARK = 0
end
if(pUnit:GetWorldStateForZone(WG_STATE_ES_WORKSHOP) == 4)then
	A_V_EASTSPARK = 0
	H_V_EASTSPARK = 4
elseif(pUnit:GetWorldStateForZone(WG_STATE_ES_WORKSHOP) == 5)then
	A_V_EASTSPARK = 0
	H_V_EASTSPARK = 2
elseif(pUnit:GetWorldStateForZone(WG_STATE_ES_WORKSHOP) == 0 or pUnit:GetWorldStateForZone(WG_STATE_ES_WORKSHOP) == 1 or pUnit:GetWorldStateForZone(WG_STATE_ES_WORKSHOP) == 2 or pUnit:GetWorldStateForZone(WG_STATE_ES_WORKSHOP) == 3 or pUnit:GetWorldStateForZone(WG_STATE_ES_WORKSHOP) == 6 or pUnit:GetWorldStateForZone(WG_STATE_ES_WORKSHOP) == 9)then
	A_V_EASTSPARK = 0
	H_V_EASTSPARK = 0
elseif(pUnit:GetWorldStateForZone(WG_STATE_ES_WORKSHOP) == 7)then
	A_V_EASTSPARK = 4
	H_V_EASTSPARK = 0
elseif(pUnit:GetWorldStateForZone(WG_STATE_ES_WORKSHOP) == 8)then
	A_V_EASTSPARK = 2
	H_V_EASTSPARK = 0
end
local alliancevehicles = A_V_EASTSPARK + A_V_WESTSPARK + A_V_SUNKENRING + A_V_BROKENTEMPLE + A_V_FORTRESS_EAST + A_V_FORTRESS_WEST
local hordevehicles = H_V_EASTSPARK + H_V_WESTSPARK + H_V_SUNKENRING + H_V_BROKENTEMPLE + H_V_FORTRESS_EAST + H_V_FORTRESS_WEST
pUnit:SetWorldStateForZone(WG_STATE_MAX_A_VEHICLES, alliancevehicles)
pUnit:SetWorldStateForZone(WG_STATE_MAX_H_VEHICLES, hordevehicles)
for k,v in pairs(pUnit:GetInRangeObjects())do
if(v:GetHP() ~= nil)then -- filter all non destructable objects.
	if(battle == 0 and v:GetHP() < v:GetMaxHP())then -- rebuild all if there is no battle and anything is damaged.
		v:Rebuild()
	end
	if(v:GetEntry() == GO_WINTERGRASP_FORTRESS_GATE)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_MAIN_GATE) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_MAIN_GATE, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_MAIN_GATE) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_MAIN_GATE, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_MAIN_GATE) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_MAIN_GATE, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_MAIN_GATE) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_MAIN_GATE, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_MAIN_GATE) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_MAIN_GATE, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_MAIN_GATE) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_MAIN_GATE, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_VAULT_GATE)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_GATE_ANDGY) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_GATE_ANDGY, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_GATE_ANDGY) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_GATE_ANDGY, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_GATE_ANDGY) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_GATE_ANDGY, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_GATE_ANDGY) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_GATE_ANDGY, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_GATE_ANDGY) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_GATE_ANDGY, 6)
			for k,m in pairs(v:GetInRangeObjects())do
				if(m:GetEntry() == GO_WINTERGRASP_KEEP_COLLISION_WALL)then
					m:Activate()
				end
			end
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_GATE_ANDGY) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_GATE_ANDGY, 9)
			for k,m in pairs(v:GetInRangeObjects())do
				if(m:GetEntry() == GO_WINTERGRASP_KEEP_COLLISION_WALL)then
					m:Activate()
				end
			end
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_SE_TOWER)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_SE_TOWER) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_SE_TOWER, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_SE_TOWER) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_SE_TOWER, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_SE_TOWER) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_SE_TOWER, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_SE_TOWER) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_SE_TOWER, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_SE_TOWER) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_SE_TOWER, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_SE_TOWER) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_SE_TOWER, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_SW_TOWER)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_SW_TOWER) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_SW_TOWER, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_SW_TOWER) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_SW_TOWER, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_SW_TOWER) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_SW_TOWER, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_SW_TOWER) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_SW_TOWER, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_SW_TOWER) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_SW_TOWER, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_SW_TOWER) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_SW_TOWER, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_NW_TOWER)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_NW_TOWER) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_NW_TOWER, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_NW_TOWER) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_NW_TOWER, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_NW_TOWER) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_NW_TOWER, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_NW_TOWER) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_NW_TOWER, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_NW_TOWER) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_NW_TOWER, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_NW_TOWER) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_NW_TOWER, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_NE_TOWER)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_NE_TOWER) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_NE_TOWER, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_NE_TOWER) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_NE_TOWER, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_NE_TOWER) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_NE_TOWER, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_NE_TOWER) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_NE_TOWER, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_NE_TOWER) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_NE_TOWER, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_NE_TOWER) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_NE_TOWER, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_1)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_1) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_1, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_1) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_1, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_1) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_1, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_1) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_1, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_1) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_1, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_1) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_1, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_2)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_2) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_2, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_2) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_2, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_2) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_2, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_2) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_2, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_2) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_2, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_2) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_2, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_3)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_3) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_3, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_3) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_3, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_3) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_3, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_3) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_3, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_3) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_3, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_3) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_3, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_4)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_4) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_4, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_4) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_4, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_4) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_4, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_4) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_4, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_4) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_4, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_4) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_4, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_5)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_5) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_5, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_5) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_5, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_5) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_5, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_5) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_5, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_5) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_5, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_5) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_5, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_6)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_6) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_6, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_6) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_6, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_6) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_6, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_6) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_6, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_6) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_6, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_6) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_6, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_7)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_7) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_7, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_7) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_7, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_7) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_7, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_7) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_7, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_7) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_7, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_7) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_7, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_8)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_8) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_8, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_8) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_8, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_8) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_8, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_8) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_8, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_8) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_8, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_8) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_8, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_9)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_9) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_9, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_9) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_9, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_9) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_9, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_9) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_9, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_9) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_9, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_9) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_9, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_10)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_10) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_10, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_10) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_10, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_10) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_10, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_10) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_10, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_10) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_10, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_10) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_10, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_11)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_11) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_11, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_11) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_11, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_11) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_11, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_11) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_11, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_11) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_11, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_11) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_11, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_12)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_12) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_12, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_12) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_12, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_12) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_12, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_12) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_12, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_12) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_12, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_12) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_12, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_13)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_13) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_13, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_13) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_13, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_13) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_13, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_13) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_13, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_13) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_13, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_13) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_13, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_14)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_14) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_14, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_14) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_14, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_14) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_14, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_14) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_14, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_14) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_14, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_14) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_14, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_15)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_15) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_15, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_15) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_15, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_15) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_15, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_15) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_15, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_15) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_15, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_15) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_15, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_16)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_16) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_16, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_16) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_16, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_16) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_16, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_16) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_16, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_16) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_16, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_16) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_16, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_17)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_17) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_17, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_17) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_17, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_17) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_17, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_17) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_17, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_17) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_17, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_17) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_17, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_18)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_18) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_18, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_18) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_18, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_18) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_18, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_18) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_18, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_18) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_18, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_18) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_18, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_19)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_19) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_19, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_19) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_19, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_19) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_19, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_19) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_19, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_19) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_19, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_19) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_19, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_20)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_20) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_20, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_20) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_20, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_20) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_20, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_20) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_20, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_20) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_20, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_20) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_20, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_21)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_21) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_21, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_21) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_21, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_21) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_21, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_21) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_21, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_21) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_21, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_21) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_21, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_22)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_22) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_22, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_22) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_22, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_22) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_22, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_22) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_22, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_22) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_22, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_22) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_22, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_KEEP_WALL_23)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_23) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_23, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_23) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_23, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_23) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_23, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_23) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_23, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_23) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_23, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_KEEP_WALL_23) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_KEEP_WALL_23, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_WORKSHOP_E)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_E_FORTRESS_WORKSHOP, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_WORKSHOP_W)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP, 7)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP, 6)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_W_FORTRESS_WORKSHOP, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_FW_TOWER)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_FW_TOWER) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_FW_TOWER, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_FW_TOWER) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_FW_TOWER, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_FW_TOWER) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_FW_TOWER, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_FW_TOWER) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_FW_TOWER, 7)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_FW_TOWER) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_FW_TOWER, 6)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_FW_TOWER) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_FW_TOWER, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_WE_TOWER)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_WE_TOWER) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_WE_TOWER, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_WE_TOWER) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_WE_TOWER, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_WE_TOWER) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_WE_TOWER, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_WE_TOWER) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_WE_TOWER, 7)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_WE_TOWER) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_WE_TOWER, 6)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_WE_TOWER) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_WE_TOWER, 9)
		end
	elseif(v:GetEntry() == GO_WINTERGRASP_SS_TOWER)then
		if(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_SS_TOWER) ~= 5)then
			v:SetWorldStateForZone(WG_STATE_SS_TOWER, 5)
		elseif(v:GetHP() <= v:GetMaxHP()/2 and v:GetHP() > 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_SS_TOWER) ~= 8)then
			v:SetWorldStateForZone(WG_STATE_SS_TOWER, 8)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 1 and v:GetWorldStateForZone(WG_STATE_SS_TOWER) ~= 4)then
			v:SetWorldStateForZone(WG_STATE_SS_TOWER, 4)
		elseif(v:GetHP() > v:GetMaxHP()/2 and controll == 2 and v:GetWorldStateForZone(WG_STATE_SS_TOWER) ~= 7)then
			v:SetWorldStateForZone(WG_STATE_SS_TOWER, 7)
		elseif(v:GetHP() == 0 and controll == 1 and v:GetWorldStateForZone(WG_STATE_SS_TOWER) ~= 6)then
			v:SetWorldStateForZone(WG_STATE_SS_TOWER, 6)
		elseif(v:GetHP() == 0 and controll == 2 and v:GetWorldStateForZone(WG_STATE_SS_TOWER) ~= 9)then
			v:SetWorldStateForZone(WG_STATE_SS_TOWER, 9)
		end
	end
	if(v:GetUInt32Value(GAMEOBJECT_FACTION) ~= FACTION_HORDE and battle == 1 and controll == 2 and v:GetAreaId() == AREA_FORTRESS)then -- this changes the faction of the objects but for some reason they can not be damaged as they should by the vehicles.
		v:SetByte(GAMEOBJECT_FACTION,0,FACTION_HORDE)
	elseif(battle == 1 and v:GetUInt32Value(GAMEOBJECT_FACTION) ~= FACTION_NEUTRAL)then
		v:SetByte(GAMEOBJECT_FACTION,0,FACTION_NEUTRAL)
	elseif(v:GetUInt32Value(GAMEOBJECT_FACTION) ~= FACTION_ALLIANCE and battle == 1 and controll == 1 and v:GetAreaId() == AREA_FORTRESS)then
		v:SetByte(GAMEOBJECT_FACTION,0,FACTION_ALLIANCE)
	end
end
end
end

function TitanRelickOnUse(pGO, event, pPlayer)
if(battle == 1)then
	if(controll == 1 and pPlayer:GetTeam() == 1)then
		timer_battle = 0
		timer_nextbattle = os.time() + TIME_TO_BATTLE
		SendWorldMsg("[PH MESSAGE]The battlefield is over!", 1)
		battle = 0
		controll = 2
		states = 0
		pGO:Despawn(1,0)
		stateuiset = 0
		for k,v in pairs (GetPlayersInZone(ZONE_WG))do
			if(v:GetTeam() == 1)then
				v:CastSpell(SPELL_VICTORY_REWARD)
				if(v:HasAchievement(ACHIEVEMENT_VICTORY) == false)then
					v:AddAchievement(ACHIEVEMENT_VICTORY)
				end
			elseif(v:GetTeam() == 0)then
				v:CastSpell(SPELL_DEFEAT_REWARD)
			end
		end
		end
	if(controll == 2 and pPlayer:GetTeam() == 0)then
		timer_battle = 0
		timer_nextbattle = os.time() + TIME_TO_BATTLE
		SendWorldMsg("[PH MESSAGE]The battlefield is over!", 1)
		battle = 0
		controll = 1
		pGO:Despawn(1,0)
		stateuiset = 0
		for k,v in pairs (GetPlayersInZone(ZONE_WG))do
			if(v:GetTeam() == 0)then
				v:CastSpell(SPELL_VICTORY_REWARD)
				if(v:HasAchievement(ACHIEVEMENT_VICTORY) == false)then
					v:AddAchievement(ACHIEVEMENT_VICTORY)
				end
			elseif(v:GetTeam() == 1)then
				v:CastSpell(SPELL_DEFEAT_REWARD)
			end
		end
	end
end
end

function TitanrelickOnLoad(pGO)
pGO:RegisterAIUpdateEvent(1000)
end

function TitanrelickAIUpdate(pGO)
if(pGO == nil)then
	pGO:RemoveAIUpdateEvent()
end
local relick = pGO:GetGameObjectNearestCoords(5439.66,2840.83,420.427,GO_WINTERGRASP_TITAN_RELIC)
if(relick == nil and battle == 1)then
	PerformIngameSpawn(2,GO_WINTERGRASP_TITAN_RELIC,MAP_NORTHREND,5439.66,2840.83,420.427,6.20393,100.1,2300)
elseif(relick ~= nil and battle ~= 1)then
	relick:Despawn(1,0)
end
end

RegisterGameObjectEvent(GO_WINTERGRASP_KEEP_COLLISION_WALL,5,TitanrelickAIUpdate)
RegisterGameObjectEvent(GO_WINTERGRASP_KEEP_COLLISION_WALL,2,TitanrelickOnLoad)
RegisterGameObjectEvent(GO_WINTERGRASP_TITAN_RELIC,4,TitanRelickOnUse)
RegisterUnitEvent(NPC_DETECTION_UNIT,18,DetectionUnitOnSpawn)
RegisterUnitEvent(NPC_DETECTION_UNIT,21,DetectionUnitAIUpdate)
RegisterTimedEvent("WGUpdate", 1000, 0)
RegisterTimedEvent("Aura", 1000, 0)