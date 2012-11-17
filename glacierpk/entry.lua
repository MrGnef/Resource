--ґЛОДјюЦРЈ¬·ІКЗїЙДЬ±»¶аґОЦґРРµДєЇКэЈ¬єЇКэГы¶јТЄјУЙПµШНјГыЗ°ЧєЈ¬Изafter_destroy_entry_testpk
--ґЛОДјюГїРРЧоґуЧЦ·ыёцКэОЄ255Ј¬ИфУРТмТйЈ¬ЗлУліМРтМЅМЦ

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --ЙиЦГµШНјИлїЪКµМеµД±аєЕЈЁёГ±аєЕ¶ФУ¦УЪcharacterinfo.txtµДЛчТэЈ©

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --ґґЅЁё±±ѕ№ЬАн¶ФПуЈ¬ґЛєЇКэФЪУРПФКЅИлїЪµДµШНјЦР±ШРлµчУГЈ¬¶ФУЪТюКЅИлїЪµДµШНјЈЁИз¶УОйМфХЅЈ©ОЮТЄµчУГёГЅУїЪ
    local EntryName = " Ледниковый Армагедон "
    SetMapEntryEventName( entry, EntryName )

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ИЎµШНјИлїЪµДО»ЦГРЕПўЈЁµШНјГыЈ¬Чш±кЈ¬Дї±кµШНјГыЈ©
    Notice("Примечание: Сообщаем что по координатам ["..posx..","..posy.."] появился портал в Ледниковый Армагедон.")  --НЁЦЄ±ѕЧй·юОсЖчµДЛщУРНжјТ

end

function after_destroy_entry_glacierpk(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Примечание: Сообщаем что портал в [Ледниковый Армагедон] исчез. Следите за объявлениями. ") 

end

function after_player_login_glacierpk(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ИЎµШНјИлїЪµДО»ЦГРЕПўЈЁµШНјГыЈ¬Чш±кЈ¬Дї±кµШНјГыЈ©
    ChaNotice(player_name, "Примечание: Сообщаем что по координатам ["..posx..","..posy.."] появился портал в Ледниковый Армагедон.")

end






function check_can_enter_glacierpk( role, copy_mgr )
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )
	local Team_In = IsInTeam(role)
	if Team_In == 1 then
		SystemNotice ( role , "Ты не можешь зайти в Ледниковый Армагедон находясь в отряде." )
		return 0
		
	end
	if FightingBook_Num <= 0 then
		SystemNotice ( role , "У тебя должна быть Медаль Отваги. " )
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","і¬№эТ»ёцУВХЯЦ®Ц¤")
		return 0
	end

    local Cha = TurnToCha(role)
  
	if Lv(Cha) >=65 and Lv(Cha) <=90 then
		
		return 1

	else
		SystemNotice(role, "Только игроки с 65 по 90 могут войти в Ледниковый Армагедон. ")
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

		SystemNotice(role,"Вход в [Ледниковый Армагедон]") 
		MoveCity(role, "Glacier Armageddon")

end








