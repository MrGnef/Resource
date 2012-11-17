-------------------------------------------------------------------
--									--
--									--
--NPCScript07.lua Created by knight.gong 2005.7.12.				--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript07.lua" )

function r_HeSToP4()	
	Talk( 1, "Санта Клаус: Привет!У меня вы можете купить подарки..." )
	Text( 1, "Покажи что у тебя есть!", BuyPage )

	InitTrade()
	Defence( 5660	)
	Defence( 5661	)
	Defence( 5662	)
	Defence( 5663	)
	Defence( 5664	)
	Defence( 1780	)
end

function r_HeSToP6()	
	Talk( 1, "\207\240\232\226\229\242, \243 \236\229\237\255 \242\251 \236\238\229\230\248\252 \234\243\239\232\242\252 \241\243\239\229\240 \234\243\234!" )
	Text( 1, "\210\238\240\227", BuyPage )
	Text( 1, "\234\243\239\232\242\252 \237\229\247\242\238 \238\241\238\225\238\229", JumpPage, 2)
	Text( 1, "\239\238\234\224\230\232 \236\237\229 \241\243\239\229\240 \234\243\234", JumpPage, 4)
	Talk( 2, "\247\242\238\230 \243 \236\232\237\255 \232 \239\240\224\226\228\224 \229\241\242\252\238\241\238\225\251\229 \231\229\235\252\255 \237\238 \231\224 \242\224\234 \255 \232\245 \237\229 \228\224\236 \236\237\229 \237\240\224\226\255\242\241\255 \236\238\237\229\242\234\232 \244\229\233 \228\238\226\224\233 \242\251 \236\237\229 5 \236\244 \224 \255 \242\229\225\229 1 \231\229\235\252\229")
	Text( 2, "\234\224\234\232\229 \243 \242\229\225\255 \229\241\242\252 \231\229\235\252\255?", JumpPage, 3)
	Talk( 3, "\240\224\231\237\251\229 \241\224\236 \241\236\238\242\240\232" )
	Talk( 4, "\255 \240\224\231\240\224\225\238\242\235 \237\238\226\251\233 \241\243\239\229\240 \234\243\234 \238\237 \226 2 \240\224\231\224 \241\238\230\229\242 \243\226\229\235\252\247\232\242\252 \234\238\237 \232 \241\242\240 \237\224 5 \236\232\237 \253\242\238 \238\247\229\237\252 \236\238\249\237\251\233 \234\243\234 \231\224 \237\229\227\238 \255 \226\238\231\252\236\243 \241 \242\229\225\255 \239\238 5 \239\229\247\224\242\229\233 \231\224 \248\242" )

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 5 )	
	TriggerAction( 1, TakeItem, 2588, 5 )
	TriggerAction( 1, GiveItem, 584, 1, 4 )
	Text(4,"\241\243\239\229\240 \235\229\228\229\237\229\246 (\241\242\240)" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 5 )	
	TriggerAction( 1, TakeItem, 2588, 5 )
	TriggerAction( 1, GiveItem, 585, 1, 4 )
	Text(4,"\241\243\239\229\240 \248\238\234\238\235\224\228\234\224 (\234\238\237)" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 855, 5 )	
	TriggerAction( 1, TakeItem, 855, 5 )
	TriggerAction( 1, GiveItem, 1854, 1, 4 )
	Text(3,"\225\251\247\252\229 \231\229\235\252\229" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 855, 5 )	
	TriggerAction( 1, TakeItem, 855, 5 )
	TriggerAction( 1, GiveItem, 1855, 1, 4 )
	Text(3,"\225\238\229\226\238\229 \231\229\235\252\229" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 855, 5 )	
	TriggerAction( 1, TakeItem, 855, 5 )
	TriggerAction( 1, GiveItem, 1856, 1, 4 )
	Text(3,"\231\229\235\252\229 \225\229\240\241\229\240\234\224" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 855, 5 )	
	TriggerAction( 1, TakeItem, 855, 5 )
	TriggerAction( 1, GiveItem, 1857, 1, 4 )
	Text(3,"\253\237\229\240\227\238\231\229\235\229" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 855, 5 )	
	TriggerAction( 1, TakeItem, 855, 5 )
	TriggerAction( 1, GiveItem, 1858, 1, 4 )
	Text(3,"\243\234\240\229\239\235\255\254\249\229\229 \231\229\235\252\229" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 855, 5 )	
	TriggerAction( 1, TakeItem, 855, 5 )
	TriggerAction( 1, GiveItem, 1859, 1, 4 )
	Text(3,"\231\229\235\252\229 \242\238\247\237\238\241\242\232" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrade()
	Weapon(	4028	)
	Weapon(	1080	)
	Weapon(	851	)
	Weapon(	1079	)
	Weapon(	264	)
	Weapon(	1083	)
	Weapon(	1084	)
	Weapon(	1087	)
	Weapon(	1089	)
	Weapon(	1085	)
	Weapon(	4021	)
	Weapon(	4024	)
	Weapon(	4025	)
	Weapon(	4020	)
	Weapon(	1078	)
	Weapon(	1082	)
end

function r_HeSToP5()	
	Talk( 1, "Привет!У меня вы можете купить гемы..." )
	Text( 1, "Покажи что у тебя есть!", BuyPage )

	InitTrade()
	Weapon(	883	)
	Weapon(	880	)
	Weapon(	881	)
	Weapon(	878	)
	Weapon(	885	)
	Weapon(	887	)
	Weapon(	879	)
	Weapon(	886	)
	Weapon(	882	)
	Weapon(	884	)
	Weapon(	456	)
	Weapon(	455	)
end

function d_talk021()
	Talk(1, "Жрец: Приветствую тебя от имени богов. Могу ли я чем то помочь? ")
	Text(1, "Я хочу получить Благословление новичка. " , JumpPage,2)
	Text(1, "Я хочу получить улучшающее заклинание. " , JumpPage,3)
	Text(1, "Прощай " , CloseTalk)
	
	Talk(2, "Жрец: Благосклонности богов добиться не так то просто. Ты готов пожертвовать 1000 золотых монет во имя их славы? ")
	Text(2, "Укрепи мое тело (+20 защиты) ", NewbieBuff1, 1)
	Text(2, "Помоги одолеть врагов (+10 атаки) ", NewbieBuff2, 1)
	Text(2, "Дай мне волю к жизни (+50 жизни) ", NewbieBuff3, 1)
	Text(2, "Назад " , JumpPage,1)
	
	Talk(3, "Жрец: Не хватает силы на очередной подвиг? Я могу помочь тебе, однако мои услуги стоят денег. Будь готов заплатить мне 10 тысяч золотых монет. ")
	Text(3, "Получить Призрачный огонь ", StandartBuff1, 1)
	Text(3, "Получить Закалку ", StandartBuff2, 1)
	Text(3, "Получить Ангельский щит ", StandartBuff3, 1)
	Text(3, "Получить Интенсивную магию ", StandartBuff4, 1)
	Text(3, "Назад " , JumpPage,1)
end

function r_milkovay1()

	Talk( 1, "\207\240\232\226\229\242, \255 \236\238\227\243 \239\238\236\229\237\255\242\252 2 \234\229\235\232 \237\224 \235\254\225\238\233 \241\224\236\238\246\226\229\242 \192\231\240\224\253\235\255" )
	Text( 1, "\207\238\236\229\237\255\242\252 \224\231\240\224\253\235\232", JumpPage, 2)

	Talk( 2, "\194\238\242 \226\251\225\232\240\224\233" )
	Text( 2, " Azrael's Glare ", JumpPage, 5)
	Text( 2, " Undead Azrael ", JumpPage, 6)
	Text( 2, " Azrael's Light ", JumpPage, 7)
	Text( 2, " Azrael's Aggregation ", JumpPage, 8 )
	Text( 2, " Azrael's Dance ", JumpPage, 9)

	Talk(5,"\205\243?")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,2 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,2 )
	TriggerAction( 1, GiveItem, 5845,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(5,"\207\238\236\229\237\255\242\252",MultiTrigger,GetMultiTrigger(),1)

	Talk(6,"\205\243?")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,2 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,2 )
	TriggerAction( 1, GiveItem, 5846,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(6,"\207\238\236\229\237\255\242\252",MultiTrigger,GetMultiTrigger(),1)

	Talk(7,"\205\243?")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,2 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,2 )
	TriggerAction( 1, GiveItem, 5847,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(7,"\207\238\236\229\237\255\242\252",MultiTrigger,GetMultiTrigger(),1)

	Talk(8,"\205\243?")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,2 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,2 )
	TriggerAction( 1, GiveItem, 5848,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(8,"\207\238\236\229\237\255\242\252",MultiTrigger,GetMultiTrigger(),1)

	Talk(9,"\205\243?")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,2 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,2 )
	TriggerAction( 1, GiveItem, 5849,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(9,"\207\238\236\229\237\255\242\252",MultiTrigger,GetMultiTrigger(),1)

	Talk( 17, "\200\231\226\229\237\232 \237\238 \243 \242\229\225\255 \237\229 \245\226\224\242\224\229\242 \208\243\237 \202\229\235\252!" )

end

function r_milkovay2()

	Talk( 1, "\207\240\232\226\229\242,\245\238\247\229\248 \239\229\240\229\240\238\228\232\242\241\255?\210\229\225\229 \239\238\237\224\228\238\225\232\242\241\255 20 \208\243\237 \202\229\235\252!" )
	Text( 1, "\207\238\235\243\247\232\242\252 \234\224\240\242\243 \239\229\240\229\240\238\230\228\229\237\232\255", JumpPage, 2)

	Talk( 2, "\211 \242\229\225\255 \229\241\242\252 20 \208\243\237 \202\229\235\252?" )
	Text( 2, " \196\224 ", JumpPage, 5)

	Talk(5,"\196\229\240\230\232 \234\224\240\242\243 \239\229\240\229\240\238\230\228\229\237\232\255")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,20 )
	TriggerAction( 1, GiveItem, 2941,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(5,"\194\231\255\242\252 \234\224\240\242\243 \239\229\240\229\240\229\240\238\230\228\229\237\232\255",MultiTrigger,GetMultiTrigger(),1)

	Talk( 17, "\200\231\226\229\237\232 \237\238 \243 \242\229\225\255 \237\229 \245\226\224\242\224\229\242 \208\243\237 \202\229\235\252!" )

end

function r_mi1kovay3()

	Talk( 1, "\207\240\232\226\229\242, \255 \236\238\227\243 \238\225\236\229\237\255\242\252 \242\226\238\232 \240\243\237\251 \237\224 \237\243\230\237\251\233 \242\229\225\229 \235\243\242!" )
	Text( 1, "\207\238\234\224\230\232 \247\242\238 \243 \242\229\225\255 \229\241\242\252!", JumpPage, 2)

	Talk( 2, "\205\243 \226\238\242, \226\251\225\232\240\224\233 \247\242\238 \242\229\225\229 \237\224\228\238!" )
	Text( 2, "\202\224\240\242\224 \239\229\240\226\238\227\238 \239\229\240\229\240\238\230\228\229\237\232\255", JumpPage, 5)
	Text( 2, "\207\238\234\240\224\226\232\242\229\235\252\241\242\226\238 \193\238\227\232\237\232", JumpPage, 6)
	Text( 2, "\208\243\237\224 \226\242\238\240\238\227\238 \239\229\240\229\240\238\230\228\229\237\232\255", JumpPage, 7)

	Talk(5,"\213\238\247\229\248\252 \226\231\255\242\252 \234\224\240\242\243 \239\229\240\226\238\227\238 \239\229\240\229\240\238\230\228\229\237\232\255 \226\241\229\227\238 \231\224 20 \240\243\237 \234\229\235\252?")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,20 )
	TriggerAction( 1, GiveItem, 2941,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(5,"\196\224",MultiTrigger,GetMultiTrigger(),1)

	Talk(6,"\207\238\236\229\237\255\242\252 \239\238\234\240\238\226\232\242\229\235\252\241\242\226\238 \225\238\227\232\237\232 \226\241\229\227\238 \237\224 1 \234\229\235\252?")
	InitTrigger()
	TriggerCondition( 1, HasItem,3457,1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,1 )
	TriggerAction( 1, GiveItem, 938,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(6,"\196\224",MultiTrigger,GetMultiTrigger(),1)

	Talk(7,"\207\238\236\229\237\255\242\252 \202\235\254\247 \247\229\240\237\238\227\238 \228\240\224\234\238\237\224 \237\224 \208\243\237\243 \194\242\238\240\238\227\238 \239\229\240\229\240\238\230\228\229\237\232\255?")
	InitTrigger()
	TriggerCondition( 1, HasItem,182,1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 182,1 )
	TriggerAction( 1, GiveItem, 5853,1,4 )
	TriggerFailure( 1, JumpPage, 17)
	Text(7,"\196\224",MultiTrigger,GetMultiTrigger(),1)

	Talk( 17, "\200\231\226\229\237\232, \237\238 \243 \242\229\225\255 \247\229\227\238\242\238 \237\229 \245\226\224\242\224\229\242 ..." )

end

function wowah666()

Talk( 1, " Привет, я меняю 3 стата на 3 кели! " ) 
	InitTrigger() 
	TriggerCondition( 1, HasItem, 3457, 3, 4 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 ) 
	TriggerAction( 1, TakeItem, 3457, 3, 4 )
	TriggerAction( 1, GiveItem,3338, 1, 4 ) --Если все условия выполнены, даётся предмет. ID - ставь своё значение.
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, " Гони статы ***! ", MultiTrigger, GetMultiTrigger(), 1) 
	Talk( 2, " У тебя нету нужных предметов для обмена. " ) --Ошибка.
end

function zsts_talk()
	
	Talk( 1, "Rebirth Angel: Only the best and elite Navy or Pirates will have a chance to get rebirth!")
	Text( 1, "More about rebirth", JumpPage, 2)
	Text( 1, "I wish to rebirth", JumpPage, 6)
	
	
	Talk( 2, "Rebirth Angel: What do you need to know?")
	Text( 2, "Classes after rebirth", JumpPage, 3)
	Text( 2, "Regarding stats and skill points after rebirth", JumpPage, 4)
	Text( 2, "Regarding conditions of rebirth", JumpPage, 5)
	
	Talk( 3, "Players can reselect their class after rebirth: Lance can become Crusader, Voyager or Sharpshooter. Carsise can become Champion. Phyllis can become Cleric, Seal Master, Voyager or Sharpshooter. Ami can become Cleric, Seal Master or Voyager")
	Text( 3, "Thank you, I understand", CloseTalk)

	Talk( 4, "All attributes will be resetted upon rebirth and all additional stat points gained from Career Lot or Birthday Cake will remained for reallocation. Also, all skill will be resetted and skill points will be returned for reallocation.")
	Text( 4, "Thank you, I understand", CloseTalk)

	Talk( 5, "To be rebirth, you will need to complete quest Phoenix Rebirth which can be activated at the Goddess. Look for me after you obtained the Rebirth Stone or you can come directly to me if you have the Rebirth Card.")
	Text( 5, "Thank you, I understand", CloseTalk)

	Talk( 6, "Goddess: What would you like to be after rebirth" )
	Text( 6, "Become a crusader to uphold justice and peace", GetChaName1_born, 1)
	Text( 6, "Become a Champion to protect companion", GetChaName2_born, 1)
	Text( 6, "Become a voyager to sail the seas", GetChaName3_born, 1)
	Text( 6, "Become a Sharpshooter to vanquish your enemies", GetChaName4_born, 1)
	Text( 6, "Become a Cleric to heal the sick", GetChaName5_born, 1)
	Text( 6, "Become a Seal Master to do anything", GetChaName6_born, 1)
	Text( 6, "I dont want to rebirth right now", CloseTalk)

end
function heav_2 () -- heaven shop

	Talk( 1, "Hi! I  Sell stuff for rebirth" )
	Text( 1, "Buy", BuyPage)

	Other(	2226 	) -- Baby Rune
	Other(	2227	) -- Roico Rune
	Other(	2228	) -- Leo Rune
	Other(	2229	) -- CiMen Rune
	Other(	2230	) -- Dina Rune
	Other(	2231	) -- Bragi Rune
	Other(	2232	) -- Mel Rune
	Other(	2233	) -- Amon Rune
	Other(	2234	) -- Star Rune
	Other(	2235	) -- Rebirth Stone

end

function wowah1 ()

Talk( 1, " Привет!!! Я меняю гранд. тело на 30 келей!!! " ) --Слова НПС
	InitTrigger() --Тригер, обменика.
	TriggerCondition( 1, HasItem, 3457, 30, 4 ) 
	TriggerCondition( 1, HasLeaveBagGrid, 1 ) 
	TriggerAction( 1, TakeItem, 3457, 30, 4 ) 
	TriggerAction( 1, GiveItem, 1116, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, " Гони гранд. тело!  ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, " Я че на лоха похож? " ) 
end

function wowah2 ()

Talk( 1, " Привет я меняю 15 келей на гранд. руку!!! " ) --Слова НПС
	InitTrigger() --Тригер, обменика.
	TriggerCondition( 1, HasItem, 3457, 15, 4 ) 
	TriggerCondition( 1, HasLeaveBagGrid, 1 ) 
	TriggerAction( 1, TakeItem, 3457, 15, 4 )
	TriggerAction( 1, GiveItem, 1117, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 ) 
	Text( 1, " Хочу руку!!! ", MultiTrigger, GetMultiTrigger(), 1) 
	Talk( 2, " Гуляй детачка. " ) --Ошибка.
end

function wowah3 ()

Talk( 1, " Привет я меняю гранд. ногу на 15 келей! " ) --Слова НПС
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 15, 4 ) 
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 3457, 15, 4 ) 
	TriggerAction( 1, GiveItem, 1118, 1, 4 ) 
	TriggerFailure( 1, JumpPage, 2 ) 
	Text( 1, " Гони быстрее боты!!! ", MultiTrigger, GetMultiTrigger(), 1) --Ваш ответ и запуск тригера, обмена.

	Talk( 2, " я тебя щас зарежу!!! " ) --Ошибка.
end

function wowah4 ()

Talk( 1, " Привет, я меняю ключ от бд сундука на 10 кэлей! " ) --Слова НПС
	InitTrigger() --Тригер, обменика.
	TriggerCondition( 1, HasItem, 0182, 1, 4 ) 
	TriggerCondition( 1, HasLeaveBagGrid, 1 ) 
	TriggerAction( 1, TakeItem, 0182, 1, 4 )
	TriggerAction( 1, GiveItem, 3457, 10, 4 )
	TriggerFailure( 1, JumpPage, 2 ) 
	Text( 1, " Хочу кэээлии ", MultiTrigger, GetMultiTrigger(), 1) 
	Talk( 2, " Мне нужен ключ а не твой хлам! " )

end

function wowah5 ()

Talk( 1, " Привет я меняю бог 1но бог кольцо на 50 кэлей! Статы можеш посмотреть на сайте сервера www.fun-serv.do.am" ) 
InitTrigger() 
TriggerCondition( 1, HasItem, 3457, 50, 4 )
TriggerCondition( 1, HasLeaveBagGrid, 1 )
TriggerAction( 1, TakeItem, 3457, 50, 4 )
TriggerAction( 1, GiveItem, 5871, 1, 4 )
TriggerFailure( 1, JumpPage, 2 )
Text( 1, " C етими кольцами я буду богом, давай кольца! ", MultiTrigger, GetMultiTrigger(), 1)
Talk( 2, " Прости, но у тебя нету 50 кэлей! " )
end

function wowah6 ()

Talk( 1, " Ёхохо, я убер папка и меняю бог бижу на 70 кэлей!!! Статы бог бижи можеш посмотреть на сайте www.fun-serv.do.am ! " ) --Слова НПС
	InitTrigger() 
	TriggerCondition( 1, HasItem, 3457, 70, 4 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 3457, 70, 4 )
	TriggerAction( 1, GiveItem, 5872, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, " Да, да, гони бижу! ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, " Научись считать! " )
end

function wowah7 ()

Talk( 1, " Привет! Я меняю Novice Chaos Voucher 5шт на один реф 4 лвл " ) --Слова НПС
	InitTrigger() --Тригер, обменика.
	TriggerCondition( 1, HasItem, 2608, 5, 4 ) --Проверка на наличие Кэлей. 5 - количество
	TriggerCondition( 1, HasLeaveBagGrid, 1 ) --Проверка на один слот в инвентаре
	TriggerAction( 1, TakeItem, 2608, 5, 4 ) --Забирание Кэлей. 5 - количество
	TriggerAction( 1, GiveItem, 885, 1, 104 ) --Если все условия выполнены, даётся предмет. ID - ставь своё значение.
	TriggerFailure( 1, JumpPage, 2 ) --Если проверка не выполнена, кидает на страницу с ошибкой
	Text( 1, " Я согласен! ", MultiTrigger, GetMultiTrigger(), 1) --Ваш ответ и запуск тригера, обмена.

	Talk( 2, " Мне нужны расписки из хаоса! " ) --Ошибка.
end

function wowah8 ()

Talk( 1, " Привет! Я меняю Expert Chaos Voucher 5шт на один реф 5 лвл " ) --Слова НПС
	InitTrigger() --Тригер, обменика.
	TriggerCondition( 1, HasItem, 2610, 5, 4 ) --Проверка на наличие Кэлей. 5 - количество
	TriggerCondition( 1, HasLeaveBagGrid, 1 ) --Проверка на один слот в инвентаре
	TriggerAction( 1, TakeItem, 2610, 5, 4 ) --Забирание Кэлей. 5 - количество
	TriggerAction( 1, GiveItem, 885, 1, 105 ) --Если все условия выполнены, даётся предмет. ID - ставь своё значение.
	TriggerFailure( 1, JumpPage, 2 ) --Если проверка не выполнена, кидает на страницу с ошибкой
	Text( 1, " Я согласен! ", MultiTrigger, GetMultiTrigger(), 1) --Ваш ответ и запуск тригера, обмена.

	Talk( 2, " Мне нужны Expert расписки хаоса! " ) --Ошибка.
end

function wowah9 ()

Talk( 1, " Привет!!! Я КОРОЛЬ аргента, я уже очень стар и поэтому мне нужны наследники.Я отдам свою корону, тому кто докажет что он силён, мужествен, и смел! Чтобы получить мою корону, вам придется отправиться в мир демонов, и убить толпы монстров, с монстров подбирать Ja Runestone, когда соберёш 50 штук, возвращайся ко мне, я отдам свою корону " ) --Слова НПС
	InitTrigger() --Тригер, обменика.
	TriggerCondition( 1, HasItem, 3427, 50, 4 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 3427, 50, 4 )
	TriggerAction( 1, GiveItem, 5922, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, " Да, сер,я принес руны джа, из убитых снежных демонов ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, " Ты меня решил обманут?! Казнить его!!! " ) --Ошибка.
end

function wowah10 ()
	
	Talk( 1, " Привет, я продаю всякий хлам! " )
	Text( 1, " Купить ", BuyPage )

	InitTrade()
	Defence( 3345	)
	Defence( 3346	)
	Defence( 3347	)
	Defence( 3348	)
	Defence( 3349	)
	Defence( 3350	)
	Defence( 3351	)
	Defence( 3352	)
	Defence( 3353   )
	Defence( 3354	)
	Defence( 3356	)
	Defence( 3357	)
	Defence( 3358	)
	Defence( 3359	)
	Defence( 3344	)
	Defence( 3343	)
	Defence( 4271	)
	Defence( 4272	)
	Defence( 4273	)
	Defence( 4270	)
	Defence( 4269	)
	Defence( 4268	)
	Defence( 4267	)
	Defence( 4266	)
	Defence( 4265	)
	Defence( 4264	)
end


function n_talk13()
	Talk (1, "\209\243\236\224\241\248\229\228\248\232\233 \207\240\224\239\238\240\249\232\234: \213\224-\245\224-\245\224 ~ \194\238\233\237\224... \226\238\233\237\224... ~ \223 \235\254\225\235\254 \226\238\233\237\243!")
	--Talk (1, "Сумасшедший Прапорщик: Ха-ха-ха ~ Война... война... ~ Я люблю войну!")
	
	--Мирная угроза
	AddNpcMission(7001)
	--Секретная директива
	AddNpcMission(7002)
	--Любовь? Война!
	AddNpcMission(7003)
	--Торжество справедливости
	AddNpcMission(7004)
end
