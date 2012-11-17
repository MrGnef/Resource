-- This Script is edited by devilish http://devilish.servegame.org, edited by Sky

function config(map)
    MapCanSavePos(map, 0) --ÉèÖÃµØÍ¼ÊÇ·ñ±£´æ½ÇÉ«Î»ÖÃ£¨µØÍ¼£¬×ø±ê£¬·½Ïò£©£¬´ËÉèÖÃÓ°Ïì¸ÃµØÍ¼µÄËùÓĞ¸±±¾
    MapCanPK(map, 1) -- This Map Can be PK Set.
    MapCanTeam( map, 0 )
    MapType( map , 3 )
    MapCopyNum(map, 1) --ÉèÖÃµØÍ¼µÄ¸±±¾ÊıÄ¿£¬Èç¹û²»µ÷ÓÃ¸ÃÓï¾ä£¬ÔòÊ¹ÓÃÄ¬ÈÏÖµ1
    SingleMapCopyPlyNum(map, 300)   --ÉèÖÃÒ»¸ö¸±±¾µÄÍæ¼ÒÊı
    --MapCanTeam(map , 1) -- map can be party.
    --MapCanStall(map , 0) -- map can set stall.
end


function get_map_entry_pos_glacierpk()   -- Cordinates of portal

	local POS_X=1291
	local POS_Y=481
	return POS_X , POS_Y

end

function init_entry(map)

    SetMapEntryMapName(map, "darkblue") -- This Is where the portal map located
    SetMapEntryTime(map, "2006/10/18/1/0", "0/3/0", "0/0/30", "0/0/40") --ÉèÖÃÈë¿ÚµÄÊ±¼ä£¬µØÍ¼¶ÔÏó£¬Ê×´Î¿ªÆôÊ±¼ä£¨Äê/ÔÂ/ÈÕ/Ê±/·Ö£©£¬ÒÔºóÔÙ´Î¿ªÆôµÄ¼ä¸ô£¨ÈÕ/Ê±/·Ö£¬È«£°±íÊ¾Ö»ÓĞÊ×´Î¿ªÆô£©£¬Ã¿´Î¿ªÆôµ½Èë¿ÚÏûÊ§µÄ¼ä¸ô£¨ÈÕ/Ê±/·Ö£¬È«£°±íÊ¾ÓÀ²»ÏûÊ§£©£¬Ã¿´Î¿ªÆôµ½µØÍ¼¹Ø±ÕµÄ¼ä¸ô£¨ÈÕ/Ê±/·Ö£¬È«£°±íÊ¾ÓÀ²»¹Ø±Õ£©¡£¡£
	-- The first set of numbers is the starting point (Year/Month/Day/Hour/Minute), next is opening interval (Day/Hour/Minute),
	-- portal open duration (Day/Hour/Minute), and last is the map duration (Day/Hour/Minute).

end

function after_enter_glacierpk( role , map_copy )
end

function before_leave_glacierpk( role )
end

--function map_copy_first_run_glacierpk( map_copy )
--	lua_SetCopySpecialInter(map_copy , 10000)
--	Notice("10")
--
--end

--function map_copy_run_glacierpk( map_copy )
----Notice("3")
--local new1 = CreateChaEx(791, 120, 120, 145, 50)
--	SetChaLifeTime(new1, 900000)
--		
--end

--Ã¿5·ÖÖÓÃëÖ´ĞĞ1´Î
function map_copy_run_special_glacierpk( map_copy ) 
	local HowManyNoDead = GetMapActivePlayer(map_copy)
	Notice("Íà äàííûé ìîìåíò â Ëåäíèêîâîì Àğìàãåäîíå "..HowManyNoDead.." âûæèâøèõ. ")

end
--Ã¿5ÃëÖ´ĞĞÒ»´ÎµÄ
function map_run_glacierpk( map )
	
end

--µØÍ¼¹Ø±ÕÊ±Ö´ĞĞ
function map_copy_before_close_glacierpk( map_copy )
	How_Many_Active = GetMapActivePlayer(map_copy)
	if How_Many_Active > 0 then
		DealAllActivePlayerInMap(map_copy,"GiveSpecItem")
	end
	How_Many_Active = 0
	Money_all = 1000000
	Every_5_minute = 0
end

--µØÍ¼¹Ø±ÕÊ±Ö´ĞĞ
function map_copy_close_glacierpk( map_copy )
	ClearAllSubMapCha(map_copy)
end
--
-----------------------------------------------------------------------
-- Privatia.serverdev.net
-- Portal opening
-----------------------------------------------------------------------
function can_open_entry_glacierpk( map ) 
--	local time = GetTickCount ( ) 
	local Now_Time = GetNowTime()
	if Now_Time ==1 or Now_Time ==4 or Now_Time ==7 or Now_Time ==10 or Now_Time ==13 or Now_Time == 19 then  ------------bh 1 4 7 10 13 16 19 22
		return 1
	else
		return 1
	end

end 


function GiveSpecItem( role )
	if How_Many_Active == 0 then
		return
	end
	
	local Money_glacierpk = Money_all/How_Many_Active
--	SystemNotice(role,How_Many_Active)

	if How_Many_Active > 5 then
		AddMoney ( role , 0 , Money_glacierpk )
	--	local message = "½ñÌìµÄÂÒ¶·¹²´æ»îÁË"..How_Many_Active .. "Î»Íæ¼Ò,ËûÃÇÃ¿ÈË½«»ñµÃ"..Money_glacierpk .."µÄ½ğÇ®"
	--	SystemNotice(role,How_Many_Active)
		return
	end

	if How_Many_Active <  6 and How_Many_Active > 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 5866  , 1 , 4 )
		else
			GiveItem ( role , 0 , 5866  , 1 , 4 )
		end
			 
		AddMoney ( role , 0 , Money_glacierpk )
		--SystemNotice(role,How_Many_Active)
					
		--local message = "½ñÌìµÄÂÒ¶·ÖĞ¹²´æ»îÁË"..How_Many_Active .."Î»Íæ¼Ò,ËûÃÇÃ¿ÈË½«»ñµÃ"..Money_glacierpk .."µÄ½ğÇ®ºÍ1¸öÂÒ¶·Ö®ĞÇ»ÕÕÂ"
		--Notice ( message )
		return
	end
	
	if How_Many_Active == 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 5867  , 1 , 4 )
		else
			GiveItem ( role , 0 , 5867  , 1 , 4 )
		end
		AddMoney ( role , 0 , Money_glacierpk )
		local cha_name = GetChaDefaultName ( role )
		local message = "Íàøè ïîçäğàâëåíèÿ "..cha_name.." òû âûèãğàë ".. Money_glacierpk .." çîëîòà è 1 Êîğîëåâñêóş İìáëåìó Ğèíãà. "
	--	SystemNotice(role,How_Many_Active)
		SystemNotice(role,message)
		return
	end
end 
