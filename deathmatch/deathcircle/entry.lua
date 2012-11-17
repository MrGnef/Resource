--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�
    local EntryName = "Chaos Deatch Circle"
    SetMapEntryEventName( entry, EntryName )
    
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("Announcement: According to reports, near Argent at ["..posx..","..posy.."] appears a portal to Chaos Deatch Circle. Please check it out.") --֪ͨ������������������

end

function after_destroy_entry_deathcircle(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Announcement: According to reports, portal to [Chaos Deatch Circle] has vanished. Check announcement for more details. Enjoy!") 

end

function after_player_login_deathcircle(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "Announcement: According to reports, near Argent at ["..posx..","..posy.."] appears a portal to Chaos Deatch Circle. Please check it out.") --֪ͨ������������������

end

function check_can_enter_deathcircle( role, copy_mgr )
        local FightingBook_Num = 0
        FightingBook_Num = CheckBagItem( role,3849 )
        local Team_In = IsInTeam(role)  if Team_In == 1 then
            SystemNotice ( role , "You are now in a party. Unable to enter Chaos Deatch Circle" )
                return 0
        end
        if FightingBook_Num <= 0 then
                SystemNotice ( role , "You do not have a Medal of Valor to enter Chaos Deatch Circle. Please obtain it from Arena Administrator." )
            	return 0
        elseif FightingBook_Num > 1 then
                LG("RYZ_PK","Possess more than 1 Medal of Valor")
                return 0
        end        
	return 1
end


function begin_enter_deathcircle(role, copy_mgr) 
	local	Money_Have = GetChaAttr ( role , ATTR_GD )
	local lv= GetChaAttr(role, ATTR_LV)
	local Money_Need = lv*50
	local	Money_Now = Money_Have - Money_Need
	SetChaAttrI( role , ATTR_GD , Money_Now )
	DelCredit(role,30)
		SystemNotice(role,"Enters [Chaos Deatch Circle] Cost "..Money_Need..", will be deducted 30 reputation points.") 
		MoveCity(role, "deathcircle")
Money_all = Money_all + Money_Need * 0.8
end








