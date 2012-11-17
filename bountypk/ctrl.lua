-- This Script is edited by devilish http://devilish.servegame.org, edited by Sky

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    MapCanPK(map, 1) -- This Map Can be PK Set.
    MapCanTeam( map, 0 )
    MapType( map , 3 )
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    SingleMapCopyPlyNum(map, 300)   --����һ�������������
    --MapCanTeam(map , 1) -- map can be party.
    --MapCanStall(map , 0) -- map can set stall.
end


function get_map_entry_pos_bountypk()   -- Cordinates of portal

	local POS_X=1338
	local POS_Y=583
	return POS_X , POS_Y

end

function init_entry(map)

    SetMapEntryMapName(map, "darkblue") -- This Is where the portal map located
    SetMapEntryTime(map, "2006/10/18/14/0", "0/1/0", "0/0/59", "0/0/60") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����
	-- The first set of numbers is the starting point (Year/Month/Day/Hour/Minute), next is opening interval (Day/Hour/Minute),
	-- portal open duration (Day/Hour/Minute), and last is the map duration (Day/Hour/Minute).

end

function after_enter_bountypk( role , map_copy )
end

function before_leave_bountypk( role )
end

--function map_copy_first_run_bountypk( map_copy )
--	lua_SetCopySpecialInter(map_copy , 10000)
--	Notice("10")
--
--end

--function map_copy_run_bountypk( map_copy )
----Notice("3")
--local new1 = CreateChaEx(791, 120, 120, 145, 50)
--	SetChaLifeTime(new1, 900000)
--		
--end

--ÿ5������ִ��1��
function map_copy_run_special_bountypk( map_copy ) 
	local HowManyNoDead = GetMapActivePlayer(map_copy)
	Notice("There are current "..HowManyNoDead.." survivor in Bounty Hunter PK")

end
--ÿ5��ִ��һ�ε�
function map_run_bountypk( map )
	
end

--��ͼ�ر�ʱִ��
function map_copy_before_close_bountypk( map_copy )
	How_Many_Active = GetMapActivePlayer(map_copy)
	if How_Many_Active > 0 then
		DealAllActivePlayerInMap(map_copy,"GiveSpecItem")
	end
	How_Many_Active = 0
	Money_all = 1000000
	Every_5_minute = 0
end

--��ͼ�ر�ʱִ��
function map_copy_close_bountypk( map_copy )
	ClearAllSubMapCha(map_copy)
end
--
-----------------------------------------------------------------------
-- Privatia.serverdev.net
-- Portal opening
-----------------------------------------------------------------------
function can_open_entry_bountypk( map ) 
--	local time = GetTickCount ( ) 
	local Now_Time = GetNowTime()
	if Now_Time ==13 or Now_Time == 19 then
		return 1
	else
		return 1
	end

end 


function GiveSpecItem( role )
	if How_Many_Active == 0 then
		return
	end
	
	local Money_bountypk = Money_all/How_Many_Active
--	SystemNotice(role,How_Many_Active)

	if How_Many_Active > 5 then
		AddMoney ( role , 0 , Money_bountypk )
	--	local message = "������Ҷ��������"..How_Many_Active .. "λ���,����ÿ�˽����"..Money_bountypk .."�Ľ�Ǯ"
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
			 
		AddMoney ( role , 0 , Money_bountypk )
		--SystemNotice(role,How_Many_Active)
					
		--local message = "������Ҷ��й������"..How_Many_Active .."λ���,����ÿ�˽����"..Money_bountypk .."�Ľ�Ǯ��1���Ҷ�֮�ǻ���"
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
		AddMoney ( role , 0 , Money_bountypk )
		local cha_name = GetChaDefaultName ( role )
		local message = "Congratulations "..cha_name.." you have earned ".. Money_bountypk .." gold and 1 Bounty King Emblem"
	--	SystemNotice(role,How_Many_Active)
		SystemNotice(role,message)
		return
	end
end 
