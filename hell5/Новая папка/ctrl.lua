function config(map)
    MapCanSavePos(map, 0) 
    MapCanPK(map, 1)
    MapCopyNum(map, 1) 
    MapCopyStartType(map, 1) 
    SingleMapCopyPlyNum(map, 300)   
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end


function get_map_entry_pos_hell5()   

	local POS_X=2167
	local POS_Y=2776
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "hell4") 
    SetMapEntryTime(map, "2006/10/18/14/0", "0/0/1", "0/24/0", "0/24/0") 

end

function after_enter_hell5( role , map_copy )

local cha_name=GetChaDefaultName(role)

	SystemNotice ( role, "<"..cha_name..">��������������߰ɣ����྿���ܹ��ɳ���ʲô�ز��أ����ڴ��أ�" ) 

end

function before_leave_hell5 ( role )

end

function map_copy_first_run_hell5( map_copy )



end

function map_copy_run_hell5( map_copy )


	local hp = GetChaAttr( AZRAEL[19] , ATTR_HP ) 
	local mxhp = GetChaAttr( AZRAEL[19] , ATTR_MXHP )
	local percent = hp/mxhp
	if percent < 0.9 and SPECIALSKILL[19]==0  and CRY[19]==0 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	979, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ���Ӱ�Ļ��ߣ��ӳ�˯�����Ѱɣ�")
	end

	if percent < 0.8 and SPECIALSKILL[19]==1  and CRY[19]==0 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	980, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ�ڤ���Ļ��棬����ȼ�հɣ�")
	end
	if percent < 0.7 and SPECIALSKILL[19]==2  and CRY[19]==0 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	981, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ���Ѫ��а�ޣ�չ¶�������ɣ�")
	end
	if percent < 0.6 and SPECIALSKILL[19]==3  and CRY[19]==0 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	982, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ�ڤ�ܰԿ�Ϊ�������������ϣ�")
	end
	if percent < 0.5 and SPECIALSKILL[19]==4  and CRY[19]==0 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	983, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ���ħ��ˣ����»����������ɣ�")
	end
	if percent < 0.4 and SPECIALSKILL[19]==5  and CRY[19]==0 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	984, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ���Ԩ�еľ������ٴ���¶��������ɣ�")
	end
	if percent < 0.3 and SPECIALSKILL[19]==6  and CRY[19]==0 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	985, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ����꣬���������ĵ����������ҵ��ٻ���")
	end
	if percent < 0.2 and SPECIALSKILL[19]==7  and CRY[19]==0 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	986, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ���֮��ɲ����������еĲ�����")
	end
	if percent < 0.1 and SPECIALSKILL[19]==8  and CRY[19]==0 then
		local x, y = GetChaPos( AZRAEL[19] )
		CreateCha(	987, x, y, 295, 3600)
		SPECIALSKILL[19] = SPECIALSKILL[19] + 1
		MapCopyNotice ( map_copy ,"ڤ�ʣ�������ʵ�����ˣ�ڤ����ǿ��սʿ���ٴ�չ¶���ɫ����ɡ�")
	end



	if CheckMonsterDead ( AZRAEL[19] ) == 1 then
		
		if CRY[19]==0 then
			local Notice_all = "ڤ�ʣ��޴������డ����ʹɱ��������������ֻҪ����̰����������ʹ����������ڣ��һ�������ģ�������������������"
			Notice ( Notice_all )
			CRY[19]=1
			BOSSXYSJ[988] = 4	
			BOSSSJSJ[988] = 4	
			BOSSTJSJ[988] = 4	
			BOSSXZSJ[988] = 4	
			BOSSAYSJ[988] = 4
		end
	end

	if CRY[19]==1  then
		
		if HELLCLOSETIME==300 then
	
			MapCopyNotice ( map ,"Ů��û�뵽������Ŀ���������һ�������뿪����ʱ���µ�Թ��㼯���ҵķ��������������̫���ʹ�࣬����������Ϊ����ֻ�ܽ�����ӡ�ڵ�������ڴ���һ�������һȺ��������ʿ���ҽ�ţ�")
			MapCopyNotice ( map ,"Ů�񣺽��죬�����ڿ��������Ľ����ˣ��ڴ������ǽ��ĳɳ���ϣ�������ҹ�����ʱ�������ܸ��Ҹ���ľ�ϲ��")
			MapCopyNotice ( map ,"Ů�񣺶��ˣ������ҷ��������������ܿ�ͻ��������ʿ���Ͽ��뿪����ɣ�")
			HELLCLOSETIME = HELLCLOSETIME - 240
		end

		local closetime = HELLCLOSETIME
		for i = 1 , MAXNOTICE , 1 do
			if closetime == NOTICETIME[i] then
				local Notice_all = "Warning! Collapse of Eternal Abaddon in "..closetime.." sec(s)! All adventurers prepare to hide."
				MapCopyNotice ( map_copy , Notice_all )
			end
		end
		HELLCLOSETIME = HELLCLOSETIME-1

		if HELLCLOSETIME == 0 then

			HELLCLOSETIME = 300
			CRY[19]=0
			SPECIALSKILL[19] = 0
			CloseMapEntry ( "hell5" )
			CloseMapCopy ( "hell5" )
		end

	end


end


function map_run_hell5( map )


end


function map_copy_close_hell5 ( map_copy )

			HELLCLOSETIME = 300
			CRY[19]=0
			SPECIALSKILL[19] = 0

end
		


function can_open_entry_hell5( map ) 

--	local time = GetTickCount ( ) 
	local Now_Week = GetNowWeek()
	if Now_Time == 1 or Now_Time == 2 or Now_Time == 3 or Now_Time == 4 or Now_Time == 5 or Now_Time == 6 or Now_Time == 7 or Now_Time == 8 or Now_Time == 9 or Now_Time == 10 or Now_Time == 11 or Now_Time == 12 or Now_Time == 13 or Now_Time == 14 or Now_Time == 15 or Now_Time == 16 or Now_Time == 17 or Now_Time == 18 or Now_Time == 19 or Now_Time == 20 or Now_Time == 21 or Now_Time == 22 or Now_Time == 23 or Now_Time == 24 then
then
		return 1
else
return 1
end

end
