--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    MapCanPK(map, 1) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1---------
    SingleMapCopyPlyNum(map, 300)   --����һ�������������
    MapCanTeam(map , 1)
    MapType ( map , 3 )
end


function get_map_entry_pos_fs()   --������ڵ�λ�õ����꣨���꣨�ף���

end

function init_entry(map)
	  --SetMapEntryTime(map, "2006/10/18/14/0", "0/24/0", "0/24/0", "0/24/0") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����
end

function after_enter_yslchurchr( role , map_copy )
end

function before_leave_yslchurch( role )
end

function map_copy_first_run_yslchurch( map_copy )

end

function map_copy_run_yschurch( map_copy )


 local closetime = CHURCHCLOSETIME
     -- for i = 1 , CHURCHNOTICE , 1 do
		--if closetime == CHURCHCLOSESHOW[i] then
			-- local Notice_all = "������û����ʱ�仹��"..closetime.."�룡��ץ��ʱ������"
			--MapCopyNotice ( map_copy ,Notice_all )
		--end
	--end
	--CHURCHCLOSETIME = CHURCHCLOSETIME - 1
	KillMonsterInChurch(map_copy)
	KillMonsterInChurch(map_copy)
	DealAllActivePlayerInMap(map_copy,"Goto_ShaLan")
	--Notice("Goto_ShaLan  ")
end


function can_open_entry_yslchurch( map )  
	
end 
---------ÿ5s����һ��
function map_run_yschurch ( map )
end	
   

--��ͼ�ر�ʱִ��
function map_copy_close_yslchurch ( map_copy )
end
		
--��ͼ�����жϡ�����������������������������������������������������������������������������������

function can_open_entry_yslchurch( map ) 
end 



