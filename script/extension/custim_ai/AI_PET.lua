-- --------------------------
-- AI DEDICATED TO "AI_PET"
-- --------------------------
-- AI_PET Mod is a sample of what can be done.
-- The base idea will be that the summoned pet is
-- not aggressive toward owner. Whenever it has nothing to
-- do, it will attempt to follow its master.
-- Othervise, it will try to attack the master s target.

print( "        * Loading AI_PET functions" )

-- This is what happen when a pet has a target
function AI_PET_has_target(monster, target)
-- If target is friendly, change target. Othervise, attack it !
if (isFriendly(monster, target) == true) then
  clear_target(monster)
else
  local skill_id = select_skill(monster)  
  ChaUseSkill(monster, target, skill_id) 
end
end

-- This is what happen when a pet has no target
function AI_PET_no_target(monster)

local master = GetChaHost(monster)

-- No target and no master, switch to aggressive mode
if (master == nil) then
  SetChaAIType(monster, AI_ATK)
  return
end

-- Search a target around
local target = find_target(master, 0)
if (target ~= nil and target ~= monster) then
  SetChaTarget(monster, target)
else 
  -- Nothing to do, follow the master
  local distance_to_master = get_distance(monster, master)
  if distance_to_master > 400 then
   Notice ("Far from master")
   local hx, hy = GetChaPos(master)
   local rx = 200 - Rand(400)
   local ry = 200 - Rand(400)
   ChaMove(monster, hx + rx, hy + ry)
  end
end
end

-- This is what happen everytime
function AI_PET_tick(monster)
local master = GetChaHost(monster)
-- For the fun of it, I am introducing here a chance for the pet to change side
local randomVal = Rand(10000);
if (randomVal <= 5) then
  SetChaAIType(monster, AI_ATK)
  BickerNotice(master, "Ouch, your pet is getting angry")
end
end