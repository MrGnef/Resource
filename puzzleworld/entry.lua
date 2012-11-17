--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("Announcement: According to reports, near Ascaron at ["..posx..","..posy.."] appears a portal to Demonic World. Please check it out.") --֪ͨ������������������

end

function after_destroy_entry_puzzleworld(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Announcement: According to reports, portal to [Demonic World] has vanished. Check announcement for more details. Enjoy!") 

end

function after_player_login_puzzleworld(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "Announcement: According to reports, near Ascaron at ["..posx..","..posy.."] appears a portal to Demonic World. Please check it out.") --֪ͨ������������������

end









--���ڼ���������
--����ֵ��0�����������������1���ɹ����롣
function check_can_enter_puzzleworld( role, copy_mgr )
	if Lv(role) >=50 then
			
		return 1
				
	else
		SystemNotice(role, "Only players Lv 50 and above may enter Demonic World")
		return 0    
	end
end

function begin_enter_puzzleworld(role, copy_mgr) 
    
		SystemNotice(role,"Entering [Demonic World]") 
		MoveCity(role, "Demonic World")

end
