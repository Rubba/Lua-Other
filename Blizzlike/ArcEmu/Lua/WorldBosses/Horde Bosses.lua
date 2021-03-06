--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: Recon; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

--Thrall
function thrall_OnCombat(pUnit, Event)
	pUnit:PlaySoundToSet(5880)
	pUnit:RegisterEvent("chain", 12000, 0)
	pUnit:RegisterEvent("shock", 17000, 0)
	pUnit:RegisterEvent("summonka", 25000, 0)
end

function chain(pUnit, Event)
	local chainCheck = pUnit:GetClosestPlayer(0)
	if(chainCheck ~= nil) then
		pUnit:FullCastSpellOnTarget(16033, chainCheck)
	end
end

function shock(pUnit, Event)
	local shockCheck = pUnit:GetClosestPlayer(0)
	if(shockCheck ~= nil) then
		pUnit:FullCastSpellOnTarget(16034, shockCheck)
	end
end

function summonka(pUnit, Event)
	pUnit:SpawnCreature(3296, pUnit:GetX(), pUnit:GetY(), pUnit:GetZ(), pUnit:GetO(), 83, 60000)
	pUnit:SpawnCreature(3296, pUnit:GetX(), pUnit:GetY(), pUnit:GetZ(), pUnit:GetO(), 83, 60000)
end

function thrall_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()	
end


function thrall_OnDied(pUnit, event, player)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(4949, 1, "thrall_OnCombat")
RegisterUnitEvent(4949, 2, "thrall_OnLeaveCombat")
RegisterUnitEvent(4949, 4, "thrall_OnDied")


--Vol'jin
function vojin_OnCombat(pUnit, Event)
	pUnit:PlaySoundToSet(5881)
end

function vojin_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()	
end

function vojin_OnDied(pUnit, event, player)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(10540, 1, "vojin_OnCombat")
RegisterUnitEvent(10540, 2, "vojin_OnLeaveCombat")
RegisterUnitEvent(10540, 4, "vojin_OnDied")

--Lady Sylvanas Windrunner
function ladyswindr_OnCombat(pUnit, Event)
	pUnit:PlaySoundToSet(5886)
	pUnit:RegisterEvent("fade" ,35000, 3)
	pUnit:RegisterEvent("multishot", 9000, 0)
	pUnit:RegisterEvent("shoot", 13000, 0)
	pUnit:RegisterEvent("summonn", 19000, 0)
end

function shoot(pUnit, Event)
	local shootCheck = pUnit:GetClosestPlayer(0)
	if(shootCheck ~= nil) then
		pUnit:CastSpellOnTarget(20463, shootCheck)
	end
end

function fade(pUnit, Event)
	pUnit:FullCastSpell(20672)
end

function multishot(pUnit, Event)
	local multiCheck = pUnit:GetClosestPlayer(0)
	if(multiCheck ~= nil) then
		pUnit:CastSpellOnTarget(20735, multiCheck)
	end
end

function summonn(pUnit, Event)
	pUnit:CastSpell(20464)
end

function ladyswindr_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()	
end

function ladyswindr_OnDied(pUnit, event, player)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(10181, 1, "ladyswindr_OnCombat")
RegisterUnitEvent(10181, 2, "ladyswindr_OnLeaveCombat")
RegisterUnitEvent(10181, 4, "ladyswindr_OnDied")

--Varimathras
function Varimathras_OnCombat(pUnit, Event)
	pUnit:PlaySoundToSet(5887)
	pUnit:RegisterEvent("drainlife", 15000, 0)
	pUnit:RegisterEvent("shadoww", 9000, 0)
end

function drainlife(pUnit, Event)
	local drainCheck = pUnit:GetClosestPlayer(0)
	if(drainCheck ~= nil) then
		pUnit:CastSpellOnTarget(20743, drainCheck)
	end
end

function shadoww(pUnit, Event)
	pUnit:CastSpellOnTarget(20741, pUnit:GetClosestPlayer(0))
end

function Varimathras_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()	
end

function Varimathras_OnDied(pUnit, event, player)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(2425, 1, "Varimathras_OnCombat")
RegisterUnitEvent(2425, 2, "Varimathras_OnLeaveCombat")
RegisterUnitEvent(2425, 4, "Varimathras_OnDied")

--Cairne Bloodhoof
function cairblood_OnCombat(pUnit, Event)
	pUnit:PlaySoundToSet(5884)
	pUnit:RegisterEvent("charge", 1, 1)
	pUnit:RegisterEvent("cleave", 7000, 0)
	pUnit:RegisterEvent("mortalStrike", 12000, 0)
	pUnit:RegisterEvent("thunderclap", 21000, 0)
	pUnit:RegisterEvent("uppercut", 30000, 0)
	pUnit:RegisterEvent("warstomp", 35000, 0)
end

function charge(pUnit, Event)
--	pUnit:CastSpell(16636)
end

function cleave(pUnit, Event)
	local cleaveCheck = pUnit:GetClosestPlayer(0)
	if(cleaveCheck ~= nil) then
		pUnit:CastSpellOnTarget(16044, cleaveCheck)
	end
end

function mortalStrike(pUnit, Event)
	local mortalCheck = pUnit:GetClosestPlayer(0)
	if(mortalCheck ~= nil) then
		pUnit:CastSpellOnTarget(16856, mortalCheck)
	end
end

function thunderclap(pUnit, Event)
	pUnit:CastSpell(23931)
end

function uppercut(pUnit, Event)
	local upperCheck = pUnit:GetClosestPlayer(0)
	if(upperCheck ~= nil) then
		pUnit:CastSpellOnTarget(22916, upperCheck)
	end
end

function warstomp(pUnit, Event)
	pUnit:CastSpell(15593)
end

function cairblood_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()	
end


function cairblood_OnDied(pUnit, event, player)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(3057, 1, "cairblood_OnCombat")
RegisterUnitEvent(3057, 2, "cairblood_OnLeaveCombat")
RegisterUnitEvent(3057, 4, "cairblood_OnDied")

--Lor'themar Theron
function lorthemar_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("cleavee", 7000, 0)
	pUnit:RegisterEvent("mannaburn", 12000, 0)
	pUnit:RegisterEvent("shock", 17000, 0)
	pUnit:RegisterEvent("charm", 30000, 0)
end

function cleavee(pUnit, Event)
	local cleaveCheck = pUnit:GetClosestPlayer(0)
	if(cleaveCheck ~= nil) then
		pUnit:CastSpellOnTarget(16044, cleaveCheck)
	end
end

function mannaburn(pUnit, Event)
	local burnCheck = pUnit:GetClosestPlayer(0)
	if(burnCheck ~= nil) then
		pUnit:CastSpellOnTarget(33385, burnCheck)
	end
end

function shock(pUnit, Event)
	local shockCheck = pUnit:GetClosestPlayer(0)
	if(shockCheck ~= nil) then
		pUnit:FullCastSpellOnTarget(16034, shockCheck)
	end
end

function charm(pUnit, Event)
	local charmCheck = pUnit:GetRandomPlayer(1)
	if(charmCheck ~= nil) then
		pUnit:CastSpellOnTarget(33384,charmCheck)
	end
end

function lorthemar_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()	
end

function lorthemar_OnDied(pUnit, event, player)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(16802, 1, "lorthemar_OnCombat")
RegisterUnitEvent(16802, 2, "lorthemar_OnLeaveCombat")
RegisterUnitEvent(16802, 4, "lorthemar_OnDied")