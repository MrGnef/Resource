--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    -----MapCanPK(map, 0) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    SingleMapCopyPlyNum(map, 400)   --����һ�������������
    MapCanTeam(map , 1)
    MapType ( map , 1 )
end


function get_map_entry_pos_caifu()   --������ڵ�λ�õ����꣨���꣨�ף���

	local POS_X=1326
	local POS_Y=542
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "darkblue") --������ڵ�λ�ã���ͼ����
    SetMapEntryTime(map, "2008/4/16/2/00", "0/8/0", "0/0/0", "0/2/0") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����

end


function can_open_entry_caifu( map ) 
	local Now_Time = GetNowTime()
	if Now_Time ==2 or Now_Time == 10 or Now_Time ==18 then
		return 1
	else
		return 0
	end
end 
