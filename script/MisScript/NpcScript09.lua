--------------------------------------------------------------------------
--						--
--						--
--		NPCScript09.lua 			--
--						--
--						--
--------------------------------------------------------------------------
print( "Loading NPCScript09.lua" )

function pure_9191 ()

local ReSelectTalk = "I need to reconsider"
local ReSelectPage = 1

--cancel talk
local CancelSelectTalk = "Forget it, I will stay here"
local CancelSelectPage = 2

--maps
local CurMapName1 = "starena13"
local CurMapName2 = "starena23"
local CurMapName3 = "starena33"
local CurMapName4 = "starena14"
local CurMapName5 = "starena24"
local CurMapName6 = "starena35"

--starena13Isle
local GoTo01X = 70
local GoTo01Y = 70
local GoTo01M = CurMapName1

--starena23Isle
local GoTo02X = 70
local GoTo02Y = 70
local GoTo02M = CurMapName2 

--starena33Isle
local GoTo03X = 70
local GoTo03Y = 70
local GoTo03M = CurMapName3

--starena14Isle
local GoTo04X = 70
local GoTo04Y = 70
local GoTo04M = CurMapName4

--starena24Isle
local GoTo05X = 70
local GoTo05Y = 70
local GoTo05M = CurMapName5

--starena35Isle
local GoTo06X = 70
local GoTo06Y = 70
local GoTo06M = CurMapName6


Talk( 1, "Hi, where do you want to go?")
Text( 1, "3vs3 arena with mob", JumpPage, 2)
Text( 1, "4vs4 arena with mob", JumpPage, 3)
Text( 1, "5vs5 arena with mob", JumpPage, 4)
Text( 1, "3vs3 pvp", JumpPage, 5)
Text( 1, "4vs4 pvp", JumpPage, 6)
Text( 1, "5vs5 pvp", JumpPage, 7)

InitTrigger()

TriggerCondition( 2, HasMoney, 1 )
TriggerAction( 2, TakeMoney, 1 )
TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
TriggerFailure( 2, JumpPage, 8 )
Talk( 2, "You want to go in 3vs3 arena with mob? You need to have atlest 1gold |Purejuice" )
Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 2 ) 
Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )

InitTrigger()
TriggerCondition( 2, HasMoney, 1 )
TriggerAction( 2, TakeMoney, 1 )
TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
TriggerFailure( 2, JumpPage, 8 )
Talk( 3, "You want to go in 4vs4 arena with mob? You need to have atlest 1gold |Purejuice" )
Text( 3, "Teleport",MultiTrigger, GetMultiTrigger(), 2 ) 
Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )

InitTrigger()
TriggerCondition( 2, HasMoney, 1 )
TriggerAction( 2, TakeMoney, 1 )
TriggerAction( 2, GoTo, GoTo03X, GoTo03Y, GoTo03M )
TriggerFailure( 2, JumpPage, 8 )
Talk( 4, "You want to go in 5vs5 arena with mob? You need to have atlest 1gold |Purejuice" )
Text( 4, "Teleport",MultiTrigger, GetMultiTrigger(), 2 ) 
Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

InitTrigger()
TriggerCondition( 2, HasMoney, 1 )
TriggerAction( 2, TakeMoney, 1 )
TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
TriggerFailure( 2, JumpPage, 8 )
Talk( 5, "You want to go in 3vs3 pvp? You need to have atlest 1gold |Purejuice" )
Text( 5, "Teleport",MultiTrigger, GetMultiTrigger(), 2 ) 
Text( 5, CancelSelectTalk, JumpPage , CancelSelectPage )

InitTrigger()
TriggerCondition( 2, HasMoney, 1 )
TriggerAction( 2, TakeMoney, 1 )
TriggerAction( 2, GoTo, GoTo05X, GoTo05Y, GoTo05M )
TriggerFailure( 2, JumpPage, 8 )
Talk( 6, "You want to go in 4vs4 pvp? You need to have atlest 1gold |Purejuice" )
Text( 6, "Teleport",MultiTrigger, GetMultiTrigger(), 2 ) 
Text( 6, CancelSelectTalk, JumpPage , CancelSelectPage )

InitTrigger()
TriggerCondition( 2, HasMoney, 1 )
TriggerAction( 2, TakeMoney, 1 )
TriggerAction( 2, GoTo, GoTo06X, GoTo06Y, GoTo06M )
TriggerFailure( 2, JumpPage, 8 )
Talk( 7, "You want to go in 5vs5 pvp? You need to have atlest 1gold |Purejuice" )
Text( 7, "Teleport",MultiTrigger, GetMultiTrigger(), 2 ) 
Text( 7, CancelSelectTalk, JumpPage , CancelSelectPage )

Talk( 8, "You don't have enough gem! Go to Ethernal Abaddon to get some!")

end

function jcWKWarrior01 ()
	Talk(1,"Warrior WK: Hello you want to get the emblem to be an Official Warrior WK ???")
	Text(1,"Yes i want to be a Warrior", JumpPage , 2)
	Text(1,"Warrior Skill Shop", JumpPage , 8)
	
	Talk(2,"Warrior WK: Ok if you are now ready i'm going to give you the emblem, once you have it, you won't be able to be a wizard WK anymore ...")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 1 ) 
 	TriggerFailure( 1, JumpPage, 3)
	TriggerAction( 1, JumpPage, 7)
	Text(2,"I want to be a Warrior" ,MultiTrigger,GetMultiTrigger(),1)
	
	Talk(3,"Let me check your bag ...")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 1 ) 
	TriggerFailure( 1, JumpPage, 4)
	TriggerAction( 1, JumpPage, 7)
	Text(3,"Please go ahead" ,MultiTrigger,GetMultiTrigger(),1)
	
	Talk(4,"Ok now, let me check if you are a WK and a Carsise. If you pass the exam you will receive the Warrior Emblem.")
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 44 )
	TriggerCondition( 1, PfEqual, 10 )
	TriggerCondition( 1, IsCategory, 2 )
	TriggerAction( 1, AddMoney, 1 )
	TriggerAction( 1, AddMoney, 1 )
	TriggerFailure( 1, JumpPage, 6)
	TriggerAction( 1, JumpPage, 5)
	Text(4,"Get the Warrior Emblem" ,MultiTrigger,GetMultiTrigger(),1)
	
	Talk(5,"Congratulation you are now an official White Knight Warrior.")
	Talk(6,"Sorry you are not a White Knight, so you can't proceed.")
	Talk(7,"Sorry you already choosen your subclass path")
	
	
	Talk(8,"Welcome to the Warrior Shop... If you wish to buy choose Proceed")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 1 )
	TriggerFailure( 1, JumpPage, 9)
	TriggerAction( 1, JumpPage, 10)
	Text(8,"Proceed" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(9,"You are not a Warrior White Knight so you can proceed.")
	
	Talk(10,"You are one pass from opening the shop ...")
	Text(10,"Open Shop", BuyPage)

	InitTrade()
--	Defence(	5953	) -- Both WK class
--	Defence(	5958	) -- both wk class
--	Defence(	5959	) -- both wk class
--	Defence(	5868	) -- tornado slash
--	Defence(	5869	) -- dinamo punch
--	Defence(	5870	) -- phoeniz wave
--	Defence(	5871	) -- poison cloud
--	Defence(	5954	) -- passive skill

end

function jcWKWizard01 ()
	Talk(1,"Wizard WK: Hello you want to get the emblem to be an Official Wizard WK ???")
	Text(1,"Yes i want to be a Wizard", JumpPage , 2)
	Text(1,"Wizard Shop", JumpPage , 8)
	
	Talk(2,"Wizard WK: Ok if you are now ready i'm going to give you the emblem, once you have it, you won't be able to be a warrior WK anymore ...")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 1 ) 
 	TriggerFailure( 1, JumpPage, 3)
	TriggerAction( 1, JumpPage, 7)
	Text(2,"I want to be a Wizard" ,MultiTrigger,GetMultiTrigger(),1)

	
	Talk(3,"Let me check your bag ...")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 1 ) 
 	TriggerFailure( 1, JumpPage, 4)
	TriggerAction( 1, JumpPage, 7)
	Text(3,"Please go ahead" ,MultiTrigger,GetMultiTrigger(),1)
	
	Talk(4,"Ok now, let me check if you are a WK and a Carsise. If you pass the exam you will receive the Wizard Emblem.")
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 44 )
	TriggerCondition( 1, PfEqual, 10 )
	TriggerCondition( 1, IsCategory, 2 )
	TriggerAction( 1, AddMoney, 1 )
	TriggerAction( 1, AddMoney, 1 )
	TriggerAction( 1, AddMoney, 1 )
	TriggerFailure( 1, JumpPage, 6)
	TriggerAction( 1, JumpPage, 5)
	Text(4,"Get the Wizard Emblem" ,MultiTrigger,GetMultiTrigger(),1)
	
	Talk(5,"Congratulation you are now an official White Knight Wizard.")
	Talk(6,"Sorry you are not a White Knight, so you can't proceed.")
	Talk(7,"You have already choosen your subclass . so you can't continue")
	
	
	Talk(8,"Welcome to the Wizard Shop... If you wish to buy choose Proceed")
	InitTrigger()
	TriggerCondition( 1, AddMoney, 1 )
	TriggerFailure( 1, JumpPage, 9)
	TriggerAction( 1, JumpPage, 10)
	Text(8,"Proceed" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(9,"You are not a Wizard White Knight so you can proceed.")
	
	Talk(10,"You are one pass from opening the shop ...")
	Text(10,"Open Shop", BuyPage)

	InitTrade()
--	Other(	5953	) -- Both WK class
--	Other(	5958	) -- both wk class
--	Other(	5959	) -- both wk class
---	Other(	5955	) -- ice bolt
---	Other(	5956	) -- thunders
--	Other(	5957	) -- freeze wind
--	Other(	5960	) -- flame ball
--	Other(	5872	) -- passive skill

end

function d_talk021 ()
     Talk (1, "Priest: I greet you on behalf of the gods. Can I help than that?")
     Text (1, "I want to get Blessing beginner.", JumpPage, 2)
     Text (1, "I want to get spell improves.", JumpPage, 3)
     Text (1, "Goodbye", CloseTalk)
    
     Talk (2, "Priest: Favors gods achieve is not easy. Are you ready to donate 1000 gold coins in the name of their fame?")
     Text (2, "to strengthen my body (+20 defense)", NewbieBuff1, 1)
     Text (2, "Help defeat the enemies (10 attacks)", NewbieBuff2, 1)
     Text (2, "Give me the will to live (+50 life)", NewbieBuff3, 1)
     Text (2, "Back", JumpPage, 1)
    
     Talk (3, "Priest: Not enough power for the next feat? I can help you, but my services cost money. Be prepared to pay me 10 thousand gold coins.")
     Text (3, "Get Ghost fire", StandartBuff1, 1)
     Text (3, "Get quenched", StandartBuff2, 1)
     Text (3, "Get angelic shield", StandartBuff3, 1)
     Text (3, "to receive intensive magic", StandartBuff4, 1)
     Text (3, "to receive Tempest Boost", StandartBuff5, 1)
     Text (3, "Back", JumpPage, 1)
end

function pure_newitem ()
	
	
	Talk( 1, "Property of PureJuice: PureJuice copyrighted." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Weapon(	7534	)
	Weapon(	7535	)
	Weapon(	7536	)
	Weapon(	7537	)
	Weapon(	7544	)
	Weapon(	7545	)
	Weapon(	7546	)
	Weapon(	7547	)
	Weapon(	7548	)
	Weapon(	7549	)
	Weapon(	7550	)
	Weapon(	7551	)
	Weapon(	7552	)
	Weapon(	7553	)
	Weapon(	7554	)
	Weapon(	7555	)
	Weapon(	7556	)
	Weapon(	7557	)
	Weapon(	7558	)
	Weapon(	7559	)
	Weapon(	7560	)
	Weapon(	7561	)
	Weapon(	7562	)
	Weapon(	7565	)
	Weapon(	7567	)
	Weapon(	7568	)
	Weapon(	7569	)
	Weapon(	7570	)
	Weapon(	7571	)
	Weapon(	7572	)
	Weapon(	7573	)
	Weapon(	7574	)
	Weapon(	7575	)
	Weapon(	7576	)
	Weapon(	7578	)
	Weapon(	7579	)
	Weapon(	7580	)
	Weapon(	7581	)
	Weapon(	7582	)
	Weapon(	7583	)
	Weapon(	7584	)
	Weapon(	7585	)
	Weapon(	7586	)
	Weapon(	7587	)
	Weapon(	7588	)
	Weapon(	7589	)
	Weapon(	7590	)
	Weapon(	7591	)
	Weapon(	7592	)
	Weapon(	7593	)
	Weapon(	7594	)
	Weapon(	7595	)
	Weapon(	7599	)

end

function pure_spartan ()
	
	
	Talk( 1, "Property of PureJuice: PureJuice copyrighted." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Weapon(	7513	)
	Weapon(	7514	)
	Weapon(	7515	)
	Weapon(	7516	)
	Weapon(	7517	)
	Weapon(	7518	)
	Weapon(	7519	)
	Weapon(	7520	)
	Weapon(	7521	)
	Weapon(	7522	)
	Weapon(	7523	)
	Weapon(	7524	)
	Weapon(	7525	)
	Weapon(	7527	)
	Weapon(	7528	)
	Weapon(	7529	)
	Weapon(	7530	)
	Weapon(	7531	)

end

function arena_tele()
        Text( 1, "PvP", Tele_Cha_To_PvP, 1 )
        Text( 1, "No thanks", CloseTalk )

end
