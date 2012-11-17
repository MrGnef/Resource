-------------------------------------------------------------------
--									--
--									--
--NPCScript06.lua Created by knight.gong 2005.7.12.				--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript06.lua" )

function JoJo_100 () -- JoJo Exchanger Note:Note: some equips are not same ID's you have to change to your own ItemInfo


	Talk( 1, "\238\225\236\229\237\237\232\234 95 \224\237\241\238\226: \243 \236\229\237\255 \226\251 \236\238\230\232\242\229 \234\243\239\232\242\252 95 \224\237\241\251(\225\238\242\251)" )
	Text( 1, "\234\243\239\232\242\252 \225\238\242\251", JumpPage, 4)

	Talk( 4, "обменнник 95 ансов: обменять кели на боты стоит 5 рун кель" )
	Text( 4, "милосердие Эпической Доблести(шарп)", JumpPage, 20)
	Text( 4, "милосердие Чести(круз)", JumpPage, 21)
	Text( 4, "милосердие Жертвы(чамп)", JumpPage, 22)
	Text( 4, "милосердие Правосудия(вой)", JumpPage, 23)
	Text( 4, "милосердие Сочувствия(клер)", JumpPage, 24)
	Text( 4, "милосердие Вдохновения(см)", JumpPage, 25)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 5927, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(20,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 5931, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(21,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 5935, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(22,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 5939, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(23,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 5943, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(24,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 5947, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(25,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	Talk( 26, "You dont have enough required items!" )
	Talk( 27, "Woila, check your new weapon!" )

end

function npc_talk01()

	Talk( 1, "Cleaner: Hello! What a happy day to start a new life with the person you love!" )

end

--Monk - Lisa
function npc_talk02()

	Talk( 1, "Monk - Lisa: My name it's such artistic. Dont you think so?")

end

--Little Boy
function npc_talk03()

	Talk( 1, "Little Boy: Nobody wants to play with me. In moments like this I rather be emo.")

end

--Kidsnapper
function npc_talk04()

	Talk( 1, "Kidsnapper: To many children around, and there are not parents to care of them. This is going to be easy.")
	
end

--Luca Tony
function npc_talk05 ()

	Talk( 1, "Luca Tony: What the hell!! Means these pictures? Just wondering, What was Moliyo developer smoking when he designed this.")

end

--Richardson
function npc_talk06 ()

	Talk( 1, "Richardson: A happy couple! So cute... Now buy one of my products to celebrate!")
	Text( 1, "Trade", BuyPage)
	
	InitTrade()
	Other(	3343	)--Rose
	Other(	3344	)--Lovers Chocolate
	Other(	3345	)--Firecracker A
	Other(	3346	)--Firecracker B
	Other(	3347	)--Firecracker C
	Other(	3348	)--Firework A
	Other(	3349	)--Firework B
	Other(	3350	)--Firework C
	Other(	3351	)--Royal Salute A
	Other(	3352	)--Royal Salute B
	Other(	3353	)--Royal Salute C
	Other(	3354	)--Heart Shape I
	Other(	3355	)--Heart Shape LOVE
	Other(	3356	)--Heart Shape U

end

--Granny Mila
function npc_talk07()

	Talk( 1, "Granny Mila: Hello! I always pray here, and if you sit in the seat behind me, you will have bad luck for 3 days!")

end

--High Priest
function npc_talk08()

	Talk( 1, "High Priest: I am very happy to see you around, you had finally decided to devote the word of God?")
	Text( 1, "I am looking forward to Marry.", JumpPage, 2)
	Text( 1, "Nah I have nothing to do here.", CloseTalk)

	Talk( 2, "High Priest: Nice to hear that these days! To marry first you need to get the Certificate, and that is not a easy task. You need to show us that you are ready to start a new life and a family with the person you love!")
	Text( 2, "I am ready!", CloseTalk)

end

--Monk - Eli
function npc_talk09()

	Talk( 1, "Monk - Eli: I am not able to give you the bless of God yet, but who cares?")

	InitTrigger()
	TriggerAction( 1, ReAll )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Bless me anyway!", MultiTrigger,GetMultiTrigger(),1)

end

function r_hestor()

	Talk( 1, "\225\224\240\225\224\240\238\241\241\224:\239\240\232\226\229\242\241\242\226\243\254 \242\229\225\255 \239\232\240\224\242 \255 \234\224\239\232\242\224\237 \225\224\240\225\238\240\238\241\241\224 \227\235\224\226\224 \239\232\240\224\242\238\226,\226\241\242\243\239\224\233 \226 \236\238\254 \234\238\236\224\237\228\243 \226\251\239\238\235\237\255\233 \231\224\228\224\237\232\255 \232 \239\238\235\243\247\232\248 \249\229\228\240\238\229 \226\231\237\224\227\240\238\230\228\229\237\232\229 \237\252\254 \227\229\236\251 +10 \234 \241\242\224\242\243 \226\242\238\240\238\227\238 \232 3 \235\226 (\253\242\238 \242\229\241\242 \237\239\241 \237\229 \225\229\240\232\242\229 \234\226\229\241\242\251)")

	AddNpcMission(22010)
	AddNpcMission(22011)
	AddNpcMission(22012)
	AddNpcMission(22013)
	AddNpcMission(22014)
	AddNpcMission(22015)
end