--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�
    local EntryName = "Death Match"
    SetMapEntryEventName( entry, EntryName )
    
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("Announcement: According to reports, near Argent at ["..posx..","..posy.."] appears a portal to Death Match. Please check it out Pussies.") --֪ͨ������������������

end


function after_destroy_entry_deathmatch(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Announcement: According to reports, portal to [DeathMatch] has vanished. Check announcement for more details. Enjoy!") 

end

function after_player_login_deathmatch(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "Announcement: According to reports, near Argent at ["..posx..","..posy.."] appears a portal to DeathMatch. Please check it out.") --֪ͨ������������������

end

function check_can_enter_deathmatch( role, copy_mgr )

	--if Lv(role) < 99 then
	--SystemNotice(role, "You must be level 100 to enter DeathMatch")
	--	return 0    
	--end

end

function begin_enter_deathmatch(role, copy_mgr)
	local	Money_Have = GetChaAttr ( role , ATTR_GD )
	local lv= GetChaAttr(role, ATTR_LV)
	local Money_Need = lv*50
	local	Money_Now = Money_Have - Money_Need
	SetChaAttrI( role , ATTR_GD , Money_Now )
	DelCredit(role,0)
		SystemNotice(role,"Enters [deathmatch] Cost "..Money_Need..", let the pwning begin.") 
		MoveCity(role, "deathmatch")
Money_all = Money_all + Money_Need * 0.8
end
