-- ***********************************
-- Sample AI handling system 
-- By Matt @serverdev.net
-- ***********************************

-- --------------------------
-- Set of functions which might be useful to all AI
-- But does not exists in standard
-- --------------------------

print( "        * Loading Lib functions" )


-- Return true is the unit is friendly, false othervise
-- A unit is considered friendly if:
--   * the target is the host of the source monster
--   * the target belongs to the same party as the sources host
--   * the target belongs to the same guild as the sources host
function isFriendly(source, target)
local source_host = GetChaHost(source)

-- Host == target
if (GetChaID(source_host) == GetChaID(target)) then 
  return true
end

-- Target is in hosts team
local sourceTeamID = GetChaTeamID(source_host)
if (sourceTeamID ~= 0 and sourceTeamID == GetChaTeamID(target)) then 
  return true
end

-- Target is in hosts guild
local sourceGuildID = GetChaGuildID(source_host)
if (sourceGuildID ~= 0 and sourceGuldID == GetChaGuildID(target)) then 
  return true
end

-- Target is in hosts side
local sourceSideID = GetChaSideID(source_host)
if (sourceSideID ~= 0 and sourceSideID == GetChaSideID(target)) then 
  return true
end

return false
end