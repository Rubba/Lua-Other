--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function Hyakiss_Hyakiss_Web(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(29896, Unit:GetClosestPlayer())
end

function Hyakiss_Acidic_Wound(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(40481, Unit:GetClosestPlayer())
end

function Hyakiss(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Hyakiss_Hyakiss_Web", 15000, 0)
	Unit:RegisterEvent("Hyakiss_Acidic_Wound", 25000, 0)
end

function Hyakiss_OnLeaveCombat(pUnit, Event)
    pUnit:RemoveEvents()
end

function Hyakiss_OnDeath(pUnit, Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(16179, 1, "Hyakiss")
RegisterUnitEvent(16179, 2, "Hyakiss_OnLeaveCombat")
RegisterUnitEvent(16179, 4, "Hyakiss_OnDeath")