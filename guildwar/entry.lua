--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�
    local EntryName = "�Ƹ�֮��"
    SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("�ڰ����������Ƴ�����["..posx..","..posy.."]�漣�ķ���1����,����ɶ��?��ȥ������?��") --֪ͨ������������������

end

function after_destroy_entry_caifu(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("��ѽ���Ǹ�СС�Ķ���Ȼ������,��̫������.") 

end

function after_player_login_guildwar(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "��ѽ,С��,��զ�����ҵĶ���") --֪ͨ������������������

end

--���ڼ���������
--����ֵ��0�����������������1���ɹ����롣
function check_can_enter_guildwar( role, copy_mgr )
	local i = IsChaStall(role)
	if i == LUA_TRUE then
		SystemNotice(role, "��̯״̬���ɴ���Ŷ")
		return 0    
	end
	if Lv(role) > 65 then
		SystemNotice(role, "Ҫ���Ƹ�֮��ˢǮ�ǲ�,�����㳬����65Ҳ,���Ӻ�����,���������.")
		return 0    
	end
end


function begin_enter_guildwar(role, copy_mgr)
SystemNotice(role,"��ʼ���롶�Ƹ�֮�ǡ�,�����������ĲƱ�,��֤���Ǯ���ֳ���ֻ��2СʱŶ���պá�") 
		MoveCity(role, "�Ƹ�֮��")
end