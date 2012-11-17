--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("Announcement: In Magical Ocean region, players has discovered ["..posx..","..posy.."] emerges a portal that leads to [Chaos Shaitan]. All players beware.")

end

function after_destroy_entry_shalan2ch(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Announcement: According to reports, portal to [Chaos Shaitan] has disappeared. Check announcement for more details. Enjoy!") 

end

function after_player_login_shalan2ch(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "Announcement: In Magical Ocean region, players has discovered ["..posx..","..posy.."] emerges a portal that leads to [Chaos Shaitan]. All players beware.")

end









--���ڼ���������
--����ֵ��0�����������������1���ɹ����롣
function check_can_enter_shalan2ch( role, copy_mgr )
	local i = IsChaStall(role)
	if i == LUA_TRUE then
		SystemNotice(role, "Cannot teleport while setting stall")
		return 0    
	end
	if Lv(role) < 65 then
		SystemNotice(role, "Characters need to be above Lv 65 to enter Chaos Shaitan")
		return 0    
	end
		
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )
	local Team_In = IsInTeam(role)
	if Team_In == 1 then
		SystemNotice ( role , "You cannot enter Chaos Shaitan while in a Party. You can reform the party once inside" )
		return 0
		
	end
	if FightingBook_Num <= 0 then
		SystemNotice ( role , "You must have a Medal of Valor to enter Chaos Shaitan" )
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","����һ������֤֮")
		return 0
	end
	local role_RY = GetChaItem2 ( role , 2 , 3849 )
	local HonorPoint = GetItemAttr ( role_RY , ITEMATTR_VAL_STR)

	if HonorPoint < 5 then
		SystemNotice ( role , "You do not have enough honour to enter Chaos Shaitan" )
		return 0
	end

	if HonorPoint >30000 then
		SystemNotice ( role , "You cannot enter Chaos Shaitan you have too much Honour" )
		return 0
	end
	
	local Credit_Shalan2ch = GetCredit(role)
	if Credit_Shalan2 < 5 then
		SystemNotice(role, "You do not have sufficient Reputation points. Unable to enter Chaos Shaitan")
		return 0
	else
		DelCredit(role,25)
		return 1
	end
	
	local Has_money = check_HasMoney(role)
	if Has_money == 1 then
		
		return 1
		
	else
		SystemNotice(role,"You do not have enough Gold to enter Chaos Shaitan")
		return 0
	end
				
end


function check_HasMoney(role)
	local lv= GetChaAttr(role, ATTR_LV)
	local Money_Need = lv*50
	local Money_Have = GetChaAttr ( role , ATTR_GD )
		if Money_Have >= Money_Need then
			return 1
		end

end

function begin_enter_shalan2ch(role, copy_mgr)

	local	Money_Have = GetChaAttr ( role , ATTR_GD )
	local lv= GetChaAttr(role, ATTR_LV)
	local Money_Need = lv*50
	local	Money_Now = Money_Have - Money_Need
	SetChaAttrI( role , ATTR_GD , Money_Now )
	DelCredit(role,30)
		SystemNotice(role,"Collects Fee: "..Money_Need.."Gold , 30 Rep") 
		MoveCity(role, "Chaos Shaitan")
Money_all = Money_all + Money_Need * 0.8
end