--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀，如after_destroy_entry_testpk
--此文件每行最大字符个数为255，若有异议，请与程序探讨

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --设置地图入口实体的编号（该编号对应于characterinfo.txt的索引）

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --创建副本管理对象，此函数在有显式入口的地图中必须调用，对于隐式入口的地图（如队伍挑战）无要调用该接口
    local EntryName = "财富之城"
    SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    Notice("在白银的两条破长椅旁["..posx..","..posy.."]奇迹的发现1个洞,这是啥洞?进去看看不?。") --通知本组服务器的所有玩家

end

function after_destroy_entry_caifu(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("哎呀！那个小小的洞竟然不见了,这太神奇了.") 

end

function after_player_login_guildwar(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    ChaNotice(player_name, "哎呀,小样,你咋进了我的洞～") --通知本组服务器的所有玩家

end

--用于检测进入条件
--返回值：0，不满足进入条件。1，成功进入。
function check_can_enter_guildwar( role, copy_mgr )
	local i = IsChaStall(role)
	if i == LUA_TRUE then
		SystemNotice(role, "摆摊状态不可传送哦")
		return 0    
	end
	if Lv(role) > 65 then
		SystemNotice(role, "要进财富之城刷钱是不,但是你超过了65也,兔子很生气,后果很严重.")
		return 0    
	end
end


function begin_enter_guildwar(role, copy_mgr)
SystemNotice(role,"开始进入《财富之城》,这里有无数的财宝,保证你打钱打到手抽筋。你只有2小时哦把握好。") 
		MoveCity(role, "财富之城")
end