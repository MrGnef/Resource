--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)
    MapCanSavePos(map, 0) --设置地图是否保存角色位置（地图，坐标，方向），此设置影响该地图的所有副本
    MapCanPK(map, 1) --设置地图是否可以PK，此设置影响该地图的所有副本
    MapCopyNum(map, 1) --设置地图的副本数目，如果不调用该语句，则使用默认值1---------
    SingleMapCopyPlyNum(map, 300)   --设置一个副本的玩家数
    MapCanTeam(map , 1)
    MapType ( map , 3 )
end


function get_map_entry_pos_fs()   --设置入口的位置的坐标（坐标（米））

end

function init_entry(map)
	  --SetMapEntryTime(map, "2006/10/18/14/0", "0/24/0", "0/24/0", "0/24/0") --设置入口的时间，地图对象，首次开启时间（年/月/日/时/分），以后再次开启的间隔（日/时/分，全０表示只有首次开启），每次开启到入口消失的间隔（日/时/分，全０表示永不消失），每次开启到地图关闭的间隔（日/时/分，全０表示永不关闭）。。
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
			-- local Notice_all = "距离教堂活动结束时间还有"..closetime.."秒！请抓紧时间拉！"
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
---------每5s运行一次
function map_run_yschurch ( map )
end	
   

--地图关闭时执行
function map_copy_close_yslchurch ( map_copy )
end
		
--地图开关判断——————————————————————————————————————————

function can_open_entry_yslchurch( map ) 
end 



