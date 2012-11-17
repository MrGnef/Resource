--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)
    MapCanSavePos(map, 0) --设置地图是否保存角色位置（地图，坐标，方向），此设置影响该地图的所有副本
    MapCanPK(map, 1) --设置地图是否可以PK，此设置影响该地图的所有副本
    MapCopyNum(map, 1) --设置地图的副本数目，如果不调用该语句，则使用默认值1
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end


function get_map_entry_pos_sdBoss()   --设置入口的位置的坐标（坐标（米））

	local POS_X=50
	local POS_Y=445
	return POS_X , POS_Y

end

function init_entry(map)

  SetMapEntryMapName(map, "sdBoss") --设置入口的位置（地图名，坐标（米））
    SetMapEntryTime(map, "2007/1/19/21/0", "0/24/0", "0/24/0", "0/24/0") --设置入口的时间，地图对象，首次开启时间（年/月/日/时/分），以后再次开启的间隔（日/时/分，全０表示只有首次开启），每次开启到入口消失的间隔（日/时/分，全０表示永不消失），每次开启到地图关闭的间隔（日/时/分，全０表示永不关闭）。。
end

function after_enter_sdBoss( role , map_copy )
end

function before_leave_sdBoss( role )
end

function map_copy_first_run_sdBoss( map_copy )

end

function map_copy_run_sdBoss( map_copy )

        
        if CheckMonsterDead ( AZRAEL[1] ) == 1 then
                
                if CRY[1]==0 then
                        local Notice_all = "Some fail notice here about how you fail to get in"
                        MapCopyNotice ( map_copy , Notice_all )
                        CRY[1]=1
                        BOSSXYSJ[982] = 4        
                        BOSSSJSJ[982] = 4        
                        BOSSTJSJ[982] = 4        
                        BOSSXZSJ[982] = 4        
                        BOSSAYSJ[982] = 4
                end
        end

	if CheckMonsterDead ( AZRAEL[1] ) == 1 then
                
                if CRY[1]==0 then
                        local Notice_all = "Some fail notice here about how you fail to get in"
                        MapCopyNotice ( map_copy , Notice_all )
                        CRY[1]=1
                        BOSSXYSJ[983] = 4        
                        BOSSSJSJ[983] = 4        
                        BOSSTJSJ[983] = 4        
                        BOSSXZSJ[983] = 4        
                        BOSSAYSJ[983] = 4
                end
        end

	if CheckMonsterDead ( AZRAEL[1] ) == 1 then
                
                if CRY[1]==0 then
                        local Notice_all = "Some fail notice here about how you fail to get in"
                        MapCopyNotice ( map_copy , Notice_all )
                        CRY[1]=1
                        BOSSXYSJ[984] = 4        
                        BOSSSJSJ[984] = 4        
                        BOSSTJSJ[984] = 4        
                        BOSSXZSJ[984] = 4        
                        BOSSAYSJ[984] = 4
                end
        end

	if CheckMonsterDead ( AZRAEL[1] ) == 1 then
                
                if CRY[1]==0 then
                        local Notice_all = "Some fail notice here about how you fail to get in"
                        MapCopyNotice ( map_copy , Notice_all )
                        CRY[1]=1
                        BOSSXYSJ[985] = 4        
                        BOSSSJSJ[985] = 4        
                        BOSSTJSJ[985] = 4        
                        BOSSXZSJ[985] = 4        
                        BOSSAYSJ[985] = 4
                end
        end

	if CheckMonsterDead ( AZRAEL[1] ) == 1 then
                
                if CRY[1]==0 then
                        local Notice_all = "Some fail notice here about how you fail to get in"
                        MapCopyNotice ( map_copy , Notice_all )
                        CRY[1]=1
                        BOSSXYSJ[986] = 4        
                        BOSSSJSJ[986] = 4        
                        BOSSTJSJ[986] = 4        
                        BOSSXZSJ[986] = 4        
                        BOSSAYSJ[986] = 4
                end
        end

	if CheckMonsterDead ( AZRAEL[2] ) == 1 then
                
                if CRY[2]==0 then
                        local Notice_all = "Some fail notice here about how you fail to get in"
                        MapCopyNotice ( map_copy , Notice_all )
                        CRY[2]=1
                        BOSSXYSJ[1109] = 4        
                        BOSSSJSJ[1109] = 4        
                        BOSSTJSJ[1109] = 4        
                        BOSSXZSJ[1109] = 4        
                        BOSSAYSJ[1109] = 4
                end
        end	
        
	if CheckMonsterDead ( AZRAEL[3] ) == 1 then
                
                if CRY[3]==0 then
                        local Notice_all = "Some fail notice here about how you fail to get in"
                        MapCopyNotice ( map_copy , Notice_all )
                        CRY[3]=1
                        BOSSXYSJ[1117] = 4        
                        BOSSSJSJ[1117] = 4        
                        BOSSTJSJ[1117] = 4        
                        BOSSXZSJ[1117] = 4        
                        BOSSAYSJ[1117] = 4
                end
        end

	if CheckMonsterDead ( AZRAEL[4] ) == 1 then
                
                if CRY[4]==0 then
                        local Notice_all = "Some fail notice here about how you fail to get in"
                        MapCopyNotice ( map_copy , Notice_all )
                        CRY[4]=1
                        BOSSXYSJ[987] = 4        
                        BOSSSJSJ[987] = 4        
                        BOSSTJSJ[987] = 4        
                        BOSSXZSJ[987] = 4        
                        BOSSAYSJ[987] = 4
                end
        end

	if CheckMonsterDead ( AZRAEL[5] ) == 1 then
                
                if CRY[5]==0 then
                        local Notice_all = "Some fail notice here about how you fail to get in"
                        MapCopyNotice ( map_copy , Notice_all )
                        CRY[5]=1
                        BOSSXYSJ[1119] = 4        
                        BOSSSJSJ[1119] = 4        
                        BOSSTJSJ[1119] = 4        
                        BOSSXZSJ[1119] = 4        
                        BOSSAYSJ[1119] = 4
                end
        end


if CRY[5]==1  then
                
                if CLOSETIME==200 then
                                Notice("Some notice about hwo great you are and you are able to get in")
                        else
                                Notice("another one")
                        end                             
                        CLOSETIME = CLOSETIME - 180
                end

                local closetime = CLOSETIME
                for i = 1 , MAXNOTICE , 1 do
                        if closetime ==NOTICETIME[i] then
                                local Notice_all = "warning about the map crashin in "..closetime.." secs"
                                MapCopyNotice ( map_copy , Notice_all )
                        end
                end
                CLOSETIME = CLOSETIME-1

                if CLOSETIME == 0 then


                        CLOSETIME = 200
                        CRY[5]=0
                        CloseMapEntry ( "sdBoss" )
                        CloseMapCopy ( "sdBoss" )
                end

        end







--每5秒执行一次的
function map_copy_run_sdBoss( map_copy )
end

--地图关闭时执行
function map_copy_close_sdBoss( map_copy )

			HELLCLOSETIME = 200
			CRY[5]=0
			

end
		
--地图开关判断——————————————————————————————————————————

function can_open_entry_sdBoss( map ) 
end 
