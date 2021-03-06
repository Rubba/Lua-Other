--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: Mathix; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

--Manaburn
function OnCastManaBurn(Event, plr, spellid)
	if(spellid == 14033) then
		local target = plr:GetRandomPlayer(4)
		local distance = plr:GetDistance(target)
		if(distance <= 30) then
			local manaburnvalue = math.random(71,78)
			local playermana = target:GetMaxMana
			local manataken = playermana-manaburnvalue
			player:SetMana(manataken)
		end
	end
end

RegisterServerHook(10, "OnCastManaBurn")

--Psychic Scream
function OnCastPsychicScream(Event, plr, spellid)
	if(spellid == 13704) then
		local targets = plr:GetInRangePlayers
		local distance = plr:GetDistance(targets)
		if(distance <= 8) then
			targets:AddAura(13704, 4000)
		end
	end
end

RegisterServerHook(10, "OnCastPsychicScream")

--Shadow Shield
function OnCastShadowShield(Event, plr, spellid)
	plr:AddAura(12040, 30000)
	local damageabsorb = 200
end

function AbsorbShadowShield(Unit, Event, attacker, amount)
	if(Unit:HasAura(12040)) then
		local damageabsorb = damageabsorb-amount
		if(damageabsorb <= 0) then
			Unit:RemoveAura(12040)
		elseif(damageabsorb >=1) then
			local maxhp = Unit:GetMaxHealth
			Unit:SetHealth(maxhp+amount)
		end
	end
end

RegisterServerHook(10, "OnCastShadowShield")
RegisterUnitEvent(9018, 23, "AbsorbShadowShield")