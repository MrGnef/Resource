-- ����� ������� ������ ������������� ��������� �����, ����� ��� after_destroy_entry_07xmas2
-- ���������� ����� �������� � ������ ���������� 255
-- �����: Larein [MD Piratia Team][WWW.MainDEV.RU]

function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1)
end 

function after_create_entry(entry) 
    	local copy_mgr = GetMapEntryCopyObj(entry, 0)
   	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("\206\225\250\255\226\235\229\237\232\229: \207\238 \234\238\238\240\228\232\237\224\242\224\236 ["..posx..","..posy.."] \226 \204\224\227\232\247\229\241\234\238\236 \238\234\229\224\237\229 \237\224\247\232\237\224\254\242\241\255 \209\237\229\230\237\251\229 \226\238\233\237\251!")
 		--Notice("����������: �� ����������� ["..posx..","..posy.."] � ���������� ������ ���������� ������� �����!")

	local Now_Time = tonumber(os.date("%H"))
	if Now_Time == 5 or Now_Time == 12 or Now_Time == 21 then
		local EntryName = "\209\237\229\230\237\251\229 \226\238\233\237\251 \241 30 \239\238 60 \243\240\238\226\237\232"
			--local EntryName = "������� ����� � 30 �� 60 ������"
		SetMapEntryEventName( entry, EntryName )
	else
		local EntryName = "\209\237\229\230\237\251\229 \226\238\233\237\251 \241 61 \243\240\238\226\237\255"
			--local EntryName = "������� ����� � 61 ������"
		SetMapEntryEventName( entry, EntryName )
	end
end

function after_destroy_entry_07xmas2(entry)
    	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("\206\225\250\255\226\235\229\237\232\229: \207\238\240\242\224\235 \226 \209\237\229\230\237\251\229 \226\238\233\237\251 \231\224\234\240\251\235\241\255!")
		--Notice("����������: ������ � ������� ����� ��������!")
end

function after_player_login_07xmas2(entry, player_name)
    	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "\206\225\250\255\226\235\229\237\232\229: \207\238 \234\238\238\240\228\232\237\224\242\224\236 ["..posx..","..posy.."] \226 \204\224\227\232\247\229\241\234\238\236 \238\234\229\224\237\229 \237\224\247\232\237\224\254\242\241\255 \209\237\229\230\237\251\229 \226\238\233\237\251!")
		--ChaNotice(player_name, "����������: �� ����������� ["..posx..","..posy.."] � ���������� ������ ���������� ������� �����!")
end

function check_can_enter_07xmas2( role, copy_mgr )
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )

	if FightingBook_Num <= 0 then
		SystemNotice ( role , "\211 \226\224\241 \228\238\235\230\237\224 \225\251\242\252 \204\229\228\224\235\252 \238\242\226\224\227\232, \247\242\238\225\251 \243\247\224\241\242\226\238\226\224\242\252 \226 \209\237\229\230\237\251\245 \226\238\233\237\224\245" )
			--SystemNotice ( role , "� ��� ������ ���� ������ ������, ����� ����������� � ������� ������" )
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","Possess more than 1 Medal of Valor")
		return 0
	end

	local Now_Time = tonumber(os.date("%H"))
	if Now_Time == 5 or Now_Time == 12 or Now_Time == 21 then
		if Lv(role) < 30 then
			SystemNotice(role, "\194\251 \228\238\235\230\237\251 \225\251\242\252 \237\229 \237\232\230\229 30 \243\240\238\226\237\255, \247\242\238\225\251 \243\247\224\241\242\226\238\226\224\242\252 \226 \209\237\229\230\237\251\245 \226\238\233\237\224\245")
				--SystemNotice(role, "�� ������ ���� �� ���� 30 ������, ����� ����������� � ������� ������")
			return 0    
		end

		if Lv(role) > 60 then
			SystemNotice(role, "\194\251 \228\238\235\230\237\251 \225\251\242\252 \237\229 \226\251\248\229 60 \243\240\238\226\237\255, \247\242\238\225\251 \243\247\224\241\242\226\238\226\224\242\252 \226 \209\237\229\230\237\251\245 \226\238\233\237\224\245")
				--SystemNotice(role, "�� ������ ���� �� ���� 60 ������, ����� ����������� � ������� ������")
			return 0    
		end
	else
		if Lv(role) <= 60 then
			SystemNotice(role, "\194\251 \228\238\235\230\237\251 \225\251\242\252 \237\229 \237\232\230\229 61 \243\240\238\226\237\255, \247\242\238\225\251 \243\247\224\241\242\226\238\226\224\242\252 \226 \209\237\229\230\237\251\245 \226\238\233\237\224\245")
				--SystemNotice(role, "�� ������ ���� �� ���� 61 ������, ����� ����������� � ������� ������")
			return 0    
		end
	end

		
end

function begin_enter_07xmas2(role, copy_mgr) 
	SystemNotice(role,"\194\251 \226\238\248\235\232 \226 [\209\237\229\230\237\251\229 \226\238\233\237\251]")
		--SystemNotice(role,"�� ����� � [������� �����]")
	MoveCity(role, "Snow War")

end