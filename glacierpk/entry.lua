--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�
    local EntryName = " ���������� ��������� "
    SetMapEntryEventName( entry, EntryName )

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("����������: �������� ��� �� ����������� ["..posx..","..posy.."] �������� ������ � ���������� ���������.")  --֪ͨ������������������

end

function after_destroy_entry_glacierpk(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("����������: �������� ��� ������ � [���������� ���������] �����. ������� �� ������������. ") 

end

function after_player_login_glacierpk(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "����������: �������� ��� �� ����������� ["..posx..","..posy.."] �������� ������ � ���������� ���������.")

end






function check_can_enter_glacierpk( role, copy_mgr )
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )
	local Team_In = IsInTeam(role)
	if Team_In == 1 then
		SystemNotice ( role , "�� �� ������ ����� � ���������� ��������� �������� � ������." )
		return 0
		
	end
	if FightingBook_Num <= 0 then
		SystemNotice ( role , "� ���� ������ ���� ������ ������. " )
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","����һ������֤֮")
		return 0
	end

    local Cha = TurnToCha(role)
  
	if Lv(Cha) >=65 and Lv(Cha) <=90 then
		
		return 1

	else
		SystemNotice(role, "������ ������ � 65 �� 90 ����� ����� � ���������� ���������. ")
		return 0
	end
	--if HonorPoint >30000 then
		--SystemNotice ( role , "You cannot enter Chaos Icicle you have to much Honor" )
		--return 0
	--end

	--local Credit_bountypk= GetCredit(role)
	 --if Credit_bountypk < 30 then 
		--SystemNotice ( role , "You do not have enough Reputation Points" )
		--return 0
	--else
		--DelCredit(role,30)
	--end

	--if Lv(role) < 20 then
		--SystemNotice ( role , "You do not have enough Reputation Points" )
		--return 0    
	--end
	--local Has_money = check_HasMoney(role)
	--if Has_money == 1 then
		
		--return 1
		
	--else
		--SystemNotice(role,"You do not have enough Gold to enter Chaos Icicle")
		--return 0
	--end
				
end

function begin_enter_glacierpk(role, copy_mgr) 

		SystemNotice(role,"���� � [���������� ���������]") 
		MoveCity(role, "Glacier Armageddon")

end








