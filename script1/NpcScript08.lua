-------------------------------------------------------------------
--									--
--									--
--NPCScript03.lua Created by Robin 2006.3.31.				--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript08.lua" )

function JoJo_1010 () -- JoJo Exchanger Note:Note: some equips are not same ID's you have to change to your own ItemInfo


	Talk( 1, "\239\240\232\226\229\242 \243 \236\229\237\255 \226\251 \236\238\230\232\242\229 \239\238\235\243\242\252 \244\229\232 3 \227\229\237\224 \228\226\243\236\255 \241\239\238\241\238\225\224\236\232" )
	Text( 1, "\242\240\243\228\237\251\233 \241\239\238\241\238\225", JumpPage, 2)
	Text( 1, "\231\224\237\243\228\237\251\233 \241\239\238\241\238\225", JumpPage, 3)
	

	Talk( 2, "\229\241\235\229 \235\254\225\232\248 \242\255\230\229\241\242\232 \242\238 \241\238\225\232\240\224\233 \239\224\242\232 \237\224 \225\228 \243\225\229\233 \229\227\238 \232 \239\240\232\237\229\241\232 \236\237\229 \234\235\254\247" )
	Text( 2, "\255 \239\240\232\237\191\241 \234\235\254\247", JumpPage, 8)

	Talk( 8, "\236\238\235\238\228\229\246 \239\238\235\243\247\232 \244\229\254" )
	Text( 8, "\244\229\255 \227\240\224\246\232\232", JumpPage, 20)
	Text( 8, "\244\229\255 \232\231\255\249\229\241\242\226\224", JumpPage, 21)
	Text( 8, "\244\229\255 \241\238\239\240\238\242\232\226\235\229\237\232\255", JumpPage, 22)

	Talk( 3, "\237\243 \229\241\235\229 \242\251 \235\254\225\232\248 \234\238\240\239\238\242\235\232\226\243\254 \240\224\225\238\242\243 \242\238 \225\229\227\232 \226 \228\226 \232 \241\238\225\232\240\224\233 \234\229\235\232 \228\243\236\224\254 10 \242\229\225\229 \245\226\224\242\232\242" )
	Text( 3, "\255 \239\240\232\237\191\241 \234\229\235\232", JumpPage, 9)

	Talk( 9, "\236\238\235\238\228\229\246 \239\238\235\243\247\232 \244\229\254" )
	Text( 9, "\244\229\255 \227\240\224\246\232\232", JumpPage, 23)
	Text( 9, "\244\229\255 \232\231\255\249\229\241\242\226\224", JumpPage, 24)
	Text( 9, "\244\229\255 \241\238\239\240\238\242\232\226\235\229\237\232\255", JumpPage, 25)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 182, 1 )	
	TriggerAction( 1, TakeItem, 182, 1 )
	TriggerAction( 1, GiveItem, 5882, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(20,"\239\238\235\243\247\232\242\252 \226\229\249\252" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 182, 1 )	
	TriggerAction( 1, TakeItem, 182, 1 )
	TriggerAction( 1, GiveItem, 5883, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(21,"\239\238\235\243\247\232\242\252 \226\229\249\252" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 182, 1 )	
	TriggerAction( 1, TakeItem, 182, 1 )
	TriggerAction( 1, GiveItem, 5884, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(22,"\239\238\235\243\247\232\242\252 \226\229\249\252" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 10 )	
	TriggerAction( 1, TakeItem, 3457, 10 )
	TriggerAction( 1, GiveItem, 5882, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(23,"\239\238\235\243\247\232\242\252 \226\229\249\252" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 10 )	
	TriggerAction( 1, TakeItem, 3457, 10 )
	TriggerAction( 1, GiveItem, 5883, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(24,"\239\238\235\243\247\232\242\252 \226\229\249\252" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 10 )	
	TriggerAction( 1, TakeItem, 3457, 10 )
	TriggerAction( 1, GiveItem, 5884, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(25,"\239\238\235\243\247\232\242\252 \226\229\249\252" ,MultiTrigger,GetMultiTrigger(),1)
end