--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    MapCanPK(map, 1) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCanTeam( map, 0 )
    MapType( map , 3 )
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    SingleMapCopyPlyNum(map, 300)   --����һ�������������
    --MapCanTeam(map , 1)
    MapCanStall(map , 0)
end


function get_map_entry_pos_pkmap()   --������ڵ�λ�õ����꣨���꣨�ף���

	local POS_X=2720
	local POS_Y=2200
	return POS_X , POS_Y

end

function init_entry(map)

    SetMapEntryMapName(map, "garner") --������ڵ�λ�ã���ͼ����
    SetMapEntryTime(map, "2006/10/18/14/0", "0/3/0", "0/0/30", "0/0/45") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����

end

function after_enter_pkmap( role , map_copy )
end

function before_leave_pkmap( role )
end

--function map_copy_first_run_pkmap( map_copy )
--	lua_SetCopySpecialInter(map_copy , 10000)
--	Notice("10")
--
--end

--function map_copy_run_pkmap( map_copy )
----Notice("3")
--local new1 = CreateChaEx(791, 120, 120, 145, 50)
--	SetChaLifeTime(new1, 900000)
--		
--end

--ÿ5������ִ��1��
function map_copy_run_special_pkmap( map_copy ) 
	local HowManyNoDead = GetMapActivePlayer(map_copy)
	Notice("There are current "..HowManyNoDead.." people in Chaos Argent")
	Every_5_minute = Every_5_minute+1
	if Every_5_minute == 2 then -- ��������
		local Monster2 = CreateChaEx(859, 6352, 3558, 145, 60,map_copy)
		local Monster3 = CreateChaEx(859, 6761, 13062, 145, 60,map_copy)
		local Monster4 = CreateChaEx(859, 10820, 24989, 145, 60,map_copy)
		local Monster5 = CreateChaEx(859, 14673, 20803, 145, 60,map_copy)
		local Monster6 = CreateChaEx(859, 12311, 16188, 145, 60,map_copy)
		local Monster7 = CreateChaEx(859, 12015, 13994, 145, 60,map_copy)
		local Monster8 = CreateChaEx(859, 12380, 12324, 145, 60,map_copy)
		local Monster9 = CreateChaEx(859, 14339, 12947, 145, 60,map_copy)
		local Monster10 = CreateChaEx(859, 18442, 12863, 145, 60,map_copy)
		local Monster11 = CreateChaEx(859, 18791, 7534, 145, 60,map_copy)
		local Monster12 = CreateChaEx(859, 14373, 7541, 145, 60,map_copy)
		local Monster13 = CreateChaEx(859, 10186, 6273, 145, 60,map_copy)
		local Monster14 = CreateChaEx(859, 10043, 9649, 145, 60,map_copy)
		local Monster15 = CreateChaEx(859, 17186, 3343, 145, 60,map_copy)
		SetChaLifeTime(Monster2,299050)
		SetChaLifeTime(Monster3,299100)
		SetChaLifeTime(Monster4,299150)
		SetChaLifeTime(Monster5,299200)
		SetChaLifeTime(Monster6,299250)
		SetChaLifeTime(Monster7,299300)
		SetChaLifeTime(Monster8,299350)
		SetChaLifeTime(Monster9,299400)
		SetChaLifeTime(Monster10,299450)
		SetChaLifeTime(Monster11,299500)
		SetChaLifeTime(Monster12,299550)
		SetChaLifeTime(Monster13,299600)
		SetChaLifeTime(Monster14,299650)
		SetChaLifeTime(Monster15,299700)

	end
end
--ÿ5��ִ��һ�ε�
function map_run_pkmap( map )
	
end

--��ͼ�ر�ʱִ��
function map_copy_close_pkmap( map_copy )
	ClearAllSubMapCha(map_copy)
end
--
--��ͼ�����жϡ�����������������������������������������������������������������������������������

function can_open_entry_pkmap( map ) 
--	local time = GetTickCount ( ) 
	local Now_Time = GetNowTime()
	if Now_Time ==14 or Now_Time == 20 then
		return 1
	else
		return 0
	end

end 