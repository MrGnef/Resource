-------------------------------------------------------------------
--									--
--									--
--NPCScript08.lua Created by knight.gong 2005.7.12.				--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript08.lua" )

	--------------------------------------------------------------------Љиƒ—»ќќс1

	DefineMission( 9990, "3rd Rebirth Quest", 1400 )
	MisBeginTalk("<t>Hi to become 3rd Rebirth u need to get this items to me.")
	MisBeginCondition(NoRecord,1400)
	MisBeginCondition(NoMission, 1400)
	MisBeginAction(AddMission,1400)
	MisBeginAction(AddTrigger, 14001, TE_GETITEM, 2607, 20)
	MisBeginAction(AddTrigger, 14002, TE_GETITEM, 4828, 5)
	MisBeginAction(AddTrigger, 14003, TE_GETITEM, 1504, 30)
	MisBeginAction(AddTrigger, 14004, TE_GETITEM, 1505, 30)
	MisBeginAction(AddTrigger, 14005, TE_GETITEM, 4482, 15)
	MisBeginAction(AddTrigger, 14005, TE_GETITEM, 1626, 15)
	
	
	MisCancelAction(ClearMission, 1400)

	MisNeed(MIS_NEED_DESP, "Bring back <b5 of stuff> that i  <p told u> about it")
	MisNeed(MIS_NEED_ITEM, 2607, 20, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4828, 5, 20, 1)
	MisNeed(MIS_NEED_ITEM, 1504, 30, 30, 1)
	MisNeed(MIS_NEED_ITEM, 1505, 30, 40, 1)
	MisNeed(MIS_NEED_ITEM, 4482, 15, 50, 1)
	MisNeed(MIS_NEED_ITEM, 1626, 15, 50, 1)
	
	
	MisHelpTalk("<t>The 5 pieces were scattered all over the world.You have to find em to Become 3rd Rebirth.")
	MisResultTalk("<t>You are God's miracle, wait for the grand moment of rebirth.")

	MisResultCondition(HasMission, 1400)
	MisResultCondition(NoRecord,1400)
	MisResultCondition(HasItem, 2607, 20)
	MisResultCondition(HasItem, 4828, 5)
	MisResultCondition(HasItem, 1504, 30)
	MisResultCondition(HasItem, 1505, 30)
	MisResultCondition(HasItem, 4482, 15)
	MisResultCondition(HasItem, 1626, 15)
	
	
	MisResultAction(TakeItem, 2607, 20 )
	MisResultAction(TakeItem, 4828, 5 )
	MisResultAction(TakeItem, 1504, 30 )
	MisResultAction(TakeItem, 1505, 30 )
	MisResultAction(TakeItem, 4482, 15 )
	MisResultAction(TakeItem, 1626, 15 )
	
	
	MisResultAction(GiveItem, 0938,1,1)------------Єш‘ў…ъ÷Ѓ ѓ
	MisResultAction(ClearMission, 1400)
	MisResultAction(SetRecord, 1400)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2607)	
	TriggerAction( 1, AddNextFlag, 1400, 10, 1 )
	RegCurTrigger( 14001 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4828)	
	TriggerAction( 1, AddNextFlag, 1400, 20, 1 )
	RegCurTrigger( 14002 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1504)	
	TriggerAction( 1, AddNextFlag, 1400, 30, 1 )
	RegCurTrigger( 14003 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1505)	
	TriggerAction( 1, AddNextFlag, 1400, 40, 1 )
	RegCurTrigger( 14004 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4482)	
	TriggerAction( 1, AddNextFlag, 1400, 50, 1 )
	RegCurTrigger( 14005 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1626)	
	TriggerAction( 1, AddNextFlag, 1400, 50, 1 )
	RegCurTrigger( 14005 )
-------------------------------------------------------
	--------------------------------------------------------------------Љиƒ—»ќќс1

	DefineMission( 9988, "2nd Rebirth Stone Quest", 1600 )
	MisBeginTalk("<t>Hi! Look in the hell for Heart of Pharaoh ,Broken and Ghastly are at Thundoria Mirage!.")
	MisBeginCondition(NoRecord,1600)
	MisBeginCondition(NoMission, 1600)
	MisBeginAction(AddMission,1600)
	MisBeginAction(AddTrigger, 16001, TE_GETITEM, 2490, 20)
	MisBeginAction(AddTrigger, 16001, TE_GETITEM, 4722, 20)
	MisBeginAction(AddTrigger, 16001, TE_GETITEM, 4759, 20)
	MisCancelAction(ClearMission, 1600)
	


	MisNeed(MIS_NEED_DESP, "Bring Me This Items!.")
	MisNeed(MIS_NEED_ITEM, 2490, 20, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4722, 20, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4759, 20, 10, 1)
	
	

	MisHelpTalk("<t>Any Help PM GM?!")
	MisResultTalk("<t>You are God's miracle, wait for the grand moment of rebirth.")

	MisResultCondition(HasMission, 1600)
	MisResultCondition(NoRecord,1600)
	MisResultCondition(HasItem, 2490, 20)
	MisResultCondition(HasItem, 4722, 20)
	MisResultCondition(HasItem, 4759, 20)
	
	
	MisResultAction(TakeItem, 2490, 20 )
	MisResultAction(TakeItem, 4722, 20 )
	MisResultAction(TakeItem, 4759, 20 )
	
	
	MisResultAction(GiveItem, 5853,1,1)------------Єш‘ў…ъ÷Ѓ ѓ
	MisResultAction(ClearMission, 1600)
	MisResultAction(SetRecord, 1600)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2490)	
	TriggerAction( 1, AddNextFlag, 1600, 10, 1 )
	RegCurTrigger( 16001 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4722)	
	TriggerAction( 1, AddNextFlag, 1600, 10, 1 )
	RegCurTrigger( 16001 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4759)	
	TriggerAction( 1, AddNextFlag, 1600, 10, 1 )
	RegCurTrigger( 16001 )

-------------------------------------------------------Newbie Quest-------------------------------------

	--------------------------------------------------------------------Љиƒ—»ќќс1

	DefineMission( 1122, "Newbie Quest", 1122 )
	MisBeginTalk("<t>Hi! you are newbie here? so do this quest to obtain <b50K>.")
	MisBeginAction(AddMission,1122)
	MisBeginAction(AddTrigger, 11221, TE_GETITEM, 1620, 5)
	MisBeginAction(AddTrigger, 11221, TE_GETITEM, 3116, 10)
	MisBeginAction(AddTrigger, 11221, TE_GETITEM, 3130, 15)
	MisCancelAction(ClearMission, 1122)
	


	MisNeed(MIS_NEED_DESP, "Get 5x of <bWings> 10x of <belven fruit> and 15x of <bfancy petal.>")
	MisNeed(MIS_NEED_ITEM, 1620, 5, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3116, 10, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3130, 15, 10, 1)	

	MisPrize(MIS_PRIZE_MONEY, 50000, 1)
	MisPrizeSelAll()	

	MisHelpTalk("<t>Come On U CAN DO IT!!")
	MisResultTalk("<t>Thx <bMan>.")


	MisResultCondition(HasItem, 1620, 5)
	MisResultCondition(HasItem, 3116, 10)
	MisResultCondition(HasItem, 3130, 15)
	
	
	MisResultAction(TakeItem, 1620, 5 )
	MisResultAction(TakeItem, 3116, 10 )
	MisResultAction(TakeItem, 3130, 15 )
	
	
	MisResultAction(GiveMoney, 250000 )------------Єш‘ў…ъ÷Ѓ ѓ
	MisResultAction(ClearMission, 1122)
	MisResultAction(SetRecord, 1122)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 1620)	
	TriggerAction( 1, AddNextFlag, 1122, 10, 1 )
	RegCurTrigger( 11221 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1122, 10, 1 )
	RegCurTrigger( 11222 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3130)	
	TriggerAction( 1, AddNextFlag, 1122, 10, 1 )
	RegCurTrigger( 11223 )
-------------------------------------------------------------------------------Lv 80-90------2588-----------------------------
	--------------------------------------------------------------------Љиƒ—»ќќс2

	DefineMission( 1123, "Lv80-90", 1125 )
	MisBeginTalk("<t>Hi! is your lvl 80-90? so do this quest to obtain <b5M>.")
	MisBeginAction(AddMission,1125)
	MisBeginAction(AddTrigger, 11251, TE_GETITEM, 2605, 5)
	MisBeginAction(AddTrigger, 11251, TE_GETITEM, 3085, 25)
	MisBeginAction(AddTrigger, 11251, TE_GETITEM, 4783, 20)
	MisCancelAction(ClearMission, 1125)
	
	

	MisNeed(MIS_NEED_DESP, "")
	MisNeed(MIS_NEED_ITEM, 2605, 5, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3085, 25, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4783, 20, 10, 1)	

	MisPrize(MIS_PRIZE_MONEY, 5000000, 2)
	MisPrizeSelAll()	

	MisHelpTalk("<t>Come On U CAN DO IT!!")
	MisResultTalk("<t>Obtain <5M>.")


	MisResultCondition(HasItem, 2605, 5)
	MisResultCondition(HasItem, 3085, 25)
	MisResultCondition(HasItem, 4783, 20)
	
	
	MisResultAction(TakeItem, 2605, 5 )
	MisResultAction(TakeItem, 3085, 25 )
	MisResultAction(TakeItem, 4783, 20 )
	
	
	MisResultAction(ClearMission, 1125)
	MisResultAction(SetRecord, 1125)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2605)	
	TriggerAction( 1, AddNextFlag, 1125, 10, 1 )
	RegCurTrigger( 11251 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3085)	
	TriggerAction( 1, AddNextFlag, 1125, 10, 1 )
	RegCurTrigger( 11252 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4783)	
	TriggerAction( 1, AddNextFlag, 1125, 10, 1 )
	RegCurTrigger( 11253 )
---------------------------------------------------------------Lv90-150-------------------------------------------------
	--------------------------------------------------------------------Љиƒ—»ќќс3

	DefineMission( 1124, "Lv90-150", 1126 )
	MisBeginTalk("<t>Hi! is your lvl 90-150? so do this quest to obtain <b20M>.")
	MisBeginAction(AddMission,1126)
	MisBeginAction(AddTrigger, 11261, TE_GETITEM, 3453, 1)
	MisBeginAction(AddTrigger, 11261, TE_GETITEM, 3826, 1)
	MisCancelAction(ClearMission, 1126)
	
	

	MisNeed(MIS_NEED_DESP, "")
	MisNeed(MIS_NEED_ITEM, 3453, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3826, 1, 10, 1)
	

	MisPrize(MIS_PRIZE_MONEY, 20000000, 3)
	MisPrizeSelAll()	

	MisHelpTalk("<t>Come On U CAN DO IT!!")
	MisResultTalk("<t>Obtain <20M>.")


	MisResultCondition(HasItem, 3453, 1)
	MisResultCondition(HasItem, 3826, 1)
	
	
	MisResultAction(TakeItem, 3453, 1 )
	MisResultAction(TakeItem, 3826, 1 )
	

	MisResultAction(ClearMission, 1126)
	MisResultAction(SetRecord, 1126)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 3453)	
	TriggerAction( 1, AddNextFlag, 1126, 10, 1 )
	RegCurTrigger( 11261 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3826)	
	TriggerAction( 1, AddNextFlag, 1126, 10, 1 )
	RegCurTrigger( 11262 )
---------------------------------------------------------------Newbie Quest 2-----------------------------
	--------------------------------------------------------------------Љиƒ—»ќќс3

	DefineMission( 1130, "Newbie Quest 2", 1129 )
	MisBeginTalk("<t>Hi! Get Me 20x of <bFairy Coins> and Win <b500K>.")
	MisBeginAction(AddMission,1129)
	MisBeginAction(AddTrigger, 11291, TE_GETITEM, 855, 20)
	MisCancelAction(ClearMission, 1129)
	
	

	MisNeed(MIS_NEED_DESP, "")
	MisNeed(MIS_NEED_ITEM, 855, 20, 10, 1)
	

	MisPrize(MIS_PRIZE_MONEY, 500000, 1)
	MisPrizeSelAll()	

	MisHelpTalk("<t>")
	MisResultTalk("<t>Obtain <500K>.")


	MisResultCondition(HasItem, 855, 20)
	
	
	MisResultAction(TakeItem, 855, 20 )
	
	
	MisResultAction(ClearMission, 1129)
	MisResultAction(SetRecord, 1129)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 855)	
	TriggerAction( 1, AddNextFlag, 1129, 10, 1 )
	RegCurTrigger( 11291 )
---------------------------------------------------------------------------------------
	--------------------------------------------------------------------Љиƒ—»ќќс1
	DefineMission( 9977, "Draco Quest", 1999 )
	MisBeginTalk("<t>Hi! Havce Chance to obtain Draco Get me 15x of <bDark Stoothstone> find it at hell Also i give <b1M>.")
	MisBeginAction(AddMission,1999)
	MisBeginAction(AddTrigger, 19991, TE_GETITEM, 2476, 15)
	MisCancelAction(ClearMission, 1999)
	


	MisNeed(MIS_NEED_DESP, "Bring Me This Items!.")
	MisNeed(MIS_NEED_ITEM, 2476, 15, 10, 1)
	
	

	MisHelpTalk("<t>Any Help Don't PM GM")
	MisResultTalk("<t>Gratz here is your Rewards")

	MisResultCondition(HasMission, 1999)
	MisResultCondition(HasItem, 2476, 15)
	
	
	MisResultAction(TakeItem, 2476, 15 )
	
	
	MisResultAction(GiveItem, 113,1,1)------------Єш‘ў…ъ÷Ѓ ѓ
	MisResultAction(ClearMission, 1600)
	MisResultAction(SetRecord, 1600)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2476)	
	TriggerAction( 1, AddNextFlag, 1999, 10, 1 )
	RegCurTrigger( 19991 )
---------------------------------------------------------------------------------------
	--------------------------------------------------------------------Љиƒ—»ќќс1
	DefineMission( 9966, "Drakan Quest", 2000 )
	MisBeginTalk("<t>Hi! Have Chance to obtain Drakan Get me 15x of <bDark Stoothstone> find it at hell Also i give <b1M>.")
	MisBeginAction(AddMission,2000)
	MisBeginAction(AddTrigger, 20001, TE_GETITEM, 2476, 15)
	MisCancelAction(ClearMission, 2000)
	


	MisNeed(MIS_NEED_DESP, "Bring Me This Items!.")
	MisNeed(MIS_NEED_ITEM, 2476, 15, 10, 1)
	
	

	MisHelpTalk("<t>Any Help Don't PM GM?!")
	MisResultTalk("<t>Gratz here is your Rewards")

	MisResultCondition(HasMission, 2000)
	MisResultCondition(HasItem, 2476, 15)
	
	
	MisResultAction(TakeItem, 2476, 15 )
	
	
	MisResultAction(GiveItem, 114,1,1)------------Єш‘ў…ъ÷Ѓ ѓ
	MisResultAction(ClearMission, 2000)
	MisResultAction(SetRecord, 2000)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2476)	
	TriggerAction( 1, AddNextFlag, 2000, 10, 1 )
	RegCurTrigger( 20001 )
---------------------------------------------------------------------------------------
	--------------------------------------------------------------------Љиƒ—»ќќс1
	DefineMission( 9955, "Drag Quest", 2001 )
	MisBeginTalk("<t>Hi! Have Chance to obtain Drag Get me 15x of <bDark Stoothstone> find it at hell Also i give <b1M>.")
	MisBeginAction(AddMission,2001)
	MisBeginAction(AddTrigger, 20001, TE_GETITEM, 2476, 15)
	MisCancelAction(ClearMission, 2001)
	


	MisNeed(MIS_NEED_DESP, "Bring Me This Items!.")
	MisNeed(MIS_NEED_ITEM, 2476, 15, 10, 1)
	
	

	MisHelpTalk("<t>Any Help Don't PM GM?!")
	MisResultTalk("<t>Gratz here is your Rewards")

	MisResultCondition(HasMission, 2001)
	MisResultCondition(HasItem, 2476, 15)
	
	
	MisResultAction(TakeItem, 2476, 15 )
	
	
	MisResultAction(GiveItem, 115,1,1)------------Єш‘ў…ъ÷Ѓ ѓ
	MisResultAction(ClearMission, 2001)
	MisResultAction(SetRecord, 2001)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2476)	
	TriggerAction( 1, AddNextFlag, 2001, 10, 1 )
	RegCurTrigger( 20011 )
----------------------------------------------------------------------------------
	----------------------------------------------------------≥ЅЋѓµƒ∞„—т----------…ў≈ЃЁЈµў
	--------------------------------------------------------------------Љиƒ—»ќќс1
	DefineMission( 9944, "Twilight Quest", 2002 )
	MisBeginTalk("<t>Hi! Have Chance to obtain Twilight Get me 15x of <bDark Stoothstone> find it at hell Also i give <b1M>.")
	MisBeginAction(AddMission,2002)
	MisBeginAction(AddTrigger, 20002, TE_GETITEM, 2476, 15)
	MisCancelAction(ClearMission, 2002)
	


	MisNeed(MIS_NEED_DESP, "Bring Me This Items!.")
	MisNeed(MIS_NEED_ITEM, 2476, 15, 10, 1)
	
	

	MisHelpTalk("<t>Any Help Don't PM GM?!")
	MisResultTalk("<t>Gratz here is your Rewards")

	MisResultCondition(HasMission, 2002)
	MisResultCondition(HasItem, 2476, 15)
	
	
	MisResultAction(TakeItem, 2476, 15 )
	
	
	MisResultAction(GiveItem, 118,1,1)------------Єш‘ў…ъ÷Ѓ ѓ
	MisResultAction(ClearMission, 2002)
	MisResultAction(SetRecord, 2002)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2476)	
	TriggerAction( 1, AddNextFlag, 2002, 10, 1 )
	RegCurTrigger( 20021 )
--------------------------------------------------------------------------------------------
	--------------------------------------------------------------------Љиƒ—»ќќс1
	DefineMission( 9933, "Rainbow Quest", 2003 )
	MisBeginTalk("<t>Hi! Have Chance to obtain Rainbow Get me 15x of <bDark Stoothstone> find it at hell Also i give <b1M>.")
	MisBeginAction(AddMission,2003)
	MisBeginAction(AddTrigger, 20003, TE_GETITEM, 2476, 15)
	MisCancelAction(ClearMission, 2003)
	


	MisNeed(MIS_NEED_DESP, "Bring Me This Items!.")
	MisNeed(MIS_NEED_ITEM, 2476, 15, 10, 1)
	
	

	MisHelpTalk("<t>Any Help Don't PM GM?!")
	MisResultTalk("<t>Gratz here is your Rewards")

	MisResultCondition(HasMission, 2003)
	MisResultCondition(HasItem, 2476, 15)
	
	
	MisResultAction(TakeItem, 2476, 15 )
	
	
	MisResultAction(GiveItem, 117,1,1)------------Єш‘ў…ъ÷Ѓ ѓ
	MisResultAction(ClearMission, 2003)
	MisResultAction(SetRecord, 2003)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2476)	
	TriggerAction( 1, AddNextFlag, 2003, 10, 1 )
	RegCurTrigger( 20031 )
--------------------------------------------------------------------------------------------
	--------------------------------------------------------------------Љиƒ—»ќќс1
	DefineMission( 9922, "Revered Staff Quest", 2004 )
	MisBeginTalk("<t>Hi! Have Chance to obtain Revered Staff Get me 15x of <bDark Stoothstone> find it at hell Also i give <b1M>.")
	MisBeginAction(AddMission,2004)
	MisBeginAction(AddTrigger, 20004, TE_GETITEM, 2476, 15)
	MisCancelAction(ClearMission, 2004)
	


	MisNeed(MIS_NEED_DESP, "Bring Me This Items!.")
	MisNeed(MIS_NEED_ITEM, 2476, 15, 10, 1)
	
	

	MisHelpTalk("<t>Be Much Stonger Cleric")
	MisResultTalk("<t>Gratz here is your Rewards")

	MisResultCondition(HasMission, 2004)
	MisResultCondition(HasItem, 2476, 15)
	
	
	MisResultAction(TakeItem, 2476, 15 )
	
	
	MisResultAction(GiveItem, 110,1,1)------------Єш‘ў…ъ÷Ѓ ѓ
	MisResultAction(ClearMission, 2004)
	MisResultAction(SetRecord, 2004)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2476)	
	TriggerAction( 1, AddNextFlag, 2004, 10, 1 )
	RegCurTrigger( 20041 )
--------------------------------------------------------------------------------------------
	--------------------------------------------------------------------Љиƒ—»ќќс1
	DefineMission( 9911, "Bane Rod Staff Quest", 2005 )
	MisBeginTalk("<t>Hi! Have Chance to obtain Revered Staff Get me 15x of <bDark Stoothstone> find it at hell Also i give <b1M>.")
	MisBeginAction(AddMission,2005)
	MisBeginAction(AddTrigger, 20005, TE_GETITEM, 2476, 15)
	MisCancelAction(ClearMission, 2005)
	


	MisNeed(MIS_NEED_DESP, "Bring Me This Items!.")
	MisNeed(MIS_NEED_ITEM, 2476, 15, 10, 1)
	
	

	MisHelpTalk("<t>Be Much Stonger Seal Master")
	MisResultTalk("<t>Gratz here is your Rewards")

	MisResultCondition(HasMission, 2005)
	MisResultCondition(HasItem, 2476, 15)
	
	
	MisResultAction(TakeItem, 2476, 15 )
	
	
	MisResultAction(GiveItem, 111,1,1)------------Єш‘ў…ъ÷Ѓ ѓ
	MisResultAction(ClearMission, 2005)
	MisResultAction(SetRecord, 2005)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2476)	
	TriggerAction( 1, AddNextFlag, 2005, 10, 1 )
	RegCurTrigger( 20051 )
-----------------------------------------------------------------------------------------------
	--------------------------------------------------------------------Љиƒ—»ќќс3

	DefineMission( 0505, "Kal Runestone Quest", 2100 )
	MisBeginTalk("<t>Get Me Two <bKal Runestone> And i give you 5M.")
	MisBeginAction(AddMission,2100)
	MisBeginAction(AddTrigger, 21001, TE_GETITEM, 3457, 2)
	MisCancelAction(ClearMission, 2100)
	
	

	MisNeed(MIS_NEED_DESP, "")
	MisNeed(MIS_NEED_ITEM, 3457, 2, 10, 1)
	

	MisPrize(MIS_PRIZE_MONEY, 5000000, 15)
	MisPrizeSelAll()	

	MisHelpTalk("<t>Two <bKal Runestone>")
	MisResultTalk("<t>Obtain <b5M>.")


	MisResultCondition(HasItem, 3457, 2)
	
	
	MisResultAction(TakeItem, 3457, 2 )
	

	MisResultAction(ClearMission, 2100)
	MisResultAction(SetRecord, 2100)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 3457)	
	TriggerAction( 1, AddNextFlag, 2100, 10, 1 )
	RegCurTrigger( 21001 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3457)	
	TriggerAction( 1, AddNextFlag, 2100, 10, 1 )
	RegCurTrigger( 21002 )
------------------------------------------------------------------------------
	DefineMission (2201, "Barborosa	Skeletal Warriorr", 2201)
	
	MisBeginTalk("<t>Hi! Finish Quest you need Kill  <bBarborosa Skeletal Warriorr> and I will give a <r30m> for you!")

	MisBeginAction(AddMission,2201)
	MisBeginAction(AddTrigger, 22011, TE_KILL, 805, 1 )
	MisCancelAction(ClearMission, 2201)
	
	--MisNeed(MIS_NEED_DESP, "Kill Barborosa Skeletal Warriorr")
	MisNeed(MIS_NEED_KILL, 805, 1, 10, 20)


	MisPrize(MIS_PRIZE_MONEY, 35000000, 15)
	MisPrizeSelAll()


	MisHelpTalk("<t>Note:try get more party more money")
	MisResultTalk("<t>Wow! you did you really finish killed Barborosa nice! here 35m as i primose you")


	MisResultCondition(HasMission, 2201)
	MisResultAction(ClearMission, 2201)
	MisResultAction(SetRecord,  2201 )
	MisResultAction(ClearRecord, 2201)---------------њ…“‘ЈіЄіљ”

	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 805)	
	TriggerAction( 1, AddNextFlag, 2201, 10, 20 )
	RegCurTrigger( 22011 )
	-------------------------------------------------іт—©’ћ

	DefineMission( 22010, "\193\235\224\227\238\241\238\241\242\238\255\237\232\229 7 \209\226\232\237\229\233", 3000 )--Ѕлагососто€ние 7 —виней

      MisBeginTalk( "<t>’отите получить подарок от самого Ѕога —виней? тогда убейте: —нежного —винокрыла, —винокрыла,  лыкастого боевого кабана, —вина-летуна, Ѕезумного кабана, Ѕоевого свинокрыла и —нежную свинью." )

      MisBeginCondition(NoRecord,3000)
      MisBeginCondition(NoMission,3000)
      MisBeginAction(AddMission,3000)
      MisBeginAction(AddTrigger, 30001, TE_KILL,239, 1)--—нежный —винокрыл
      MisBeginAction(AddTrigger, 30002, TE_KILL,237, 1)--—винокрыл
      MisBeginAction(AddTrigger, 30003, TE_KILL, 264, 1)-- лыкастый боевой кабан
      MisBeginAction(AddTrigger, 30004, TE_KILL, 295, 1)--—вин-летун
      MisBeginAction(AddTrigger, 30005, TE_KILL, 64, 1)--Ѕезумный кабан
      MisBeginAction(AddTrigger, 30006, TE_KILL, 296, 1)--Ѕоевой свинокрыл
      MisBeginAction(AddTrigger, 30007, TE_KILL, 144, 1)--—нежна€ свинь€
      MisCancelAction(ClearMission, 3000)

      MisNeed(MIS_NEED_DESP, " ”бейте: <r—нежного —винокрыла>, <r—винокрыла>, <r лыкастого боевого кабана>, <r—вина-летуна>, <rЅезумного кабана>, <rЅоевого свинокрыла> и <r—нежную свинью>.")
      MisNeed(MIS_NEED_KILL, 239, 1, 10, 1)
      MisNeed(MIS_NEED_KILL, 237, 1, 20, 1)
      MisNeed(MIS_NEED_KILL, 264, 1, 30, 1)
      MisNeed(MIS_NEED_KILL, 295, 1, 40, 1)
      MisNeed(MIS_NEED_KILL, 64, 1, 50, 1)
      MisNeed(MIS_NEED_KILL, 296, 1, 60, 1)
      MisNeed(MIS_NEED_KILL, 144, 1, 70, 1)


      MisHelpTalk( "<t>— новым √одом." )  
      MisResultTalk( "<t>ћолодец!" )
      MisResultCondition(HasMission,3000 )
      MisResultCondition(NoRecord,3000)
      MisResultCondition(HasFlag, 3000, 10)
      MisResultCondition(HasFlag, 3000, 20)
      MisResultCondition(HasFlag, 3000, 30)
      MisResultCondition(HasFlag, 3000, 40)
      MisResultCondition(HasFlag, 3000, 50)
      MisResultCondition(HasFlag, 3000, 60)
      MisResultCondition(HasFlag, 3000, 70)
      MisResultAction(GiveItem, 855, 99, 4 )--ћонета феи
      MisResultAction(ClearMission, 3000 )
      MisResultAction(SetRecord, 3000)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 239 )
      TriggerAction( 1, AddNextFlag, 3000, 10, 1 )
      RegCurTrigger( 30001 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 237 )
      TriggerAction( 1, AddNextFlag, 3000, 20, 1 )
      RegCurTrigger( 30002 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,264  )
      TriggerAction( 1, AddNextFlag, 3000, 30, 1 )
      RegCurTrigger( 30003 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 295 )
      TriggerAction( 1, AddNextFlag, 3000, 40, 1 )
      RegCurTrigger( 30004 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 64 )
      TriggerAction( 1, AddNextFlag, 3000, 50, 1 )
      RegCurTrigger( 30005 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,296)
      TriggerAction( 1, AddNextFlag, 3000, 60, 1 )
      RegCurTrigger( 30006 )

      InitTrigger()
      TriggerCondition( 1, IsMonster,144)
      TriggerAction( 1, AddNextFlag, 3000, 70, 1 )
      RegCurTrigger( 30007 )
-----------------------------------------------------------------------------------------------

	DefineMission (22011, "\241\236\229\240\242\252 \225\238\241\238\226 \224\225\225\251", 3001)
	
	MisBeginTalk("<t>Hi! Finish Quest you need Kill  <bBarborosa Skeletal Warriorr> and I will give a <r30m> for you!")

	MisBeginAction(AddMission,2201)
	MisBeginAction(AddTrigger, 22011, TE_KILL, 805, 1 )
	MisCancelAction(ClearMission, 2201)
	
	--MisNeed(MIS_NEED_DESP, "Kill Barborosa Skeletal Warriorr")
	MisNeed(MIS_NEED_KILL, 805, 1, 10, 20)


	MisPrize(MIS_PRIZE_MONEY, 35000000, 15)
	MisPrizeSelAll()


	MisHelpTalk("<t>Note:try get more party more money")
	MisResultTalk("<t>Wow! you did you really finish killed Barborosa nice! here 35m as i primose you")


	MisResultCondition(HasMission, 2201)
	MisResultAction(ClearMission, 2201)
	MisResultAction(SetRecord,  2201 )
	MisResultAction(ClearRecord, 2201)---------------њ…“‘ЈіЄіљ”

	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 805)	
-----------------------------------------------------------------------------------------------

	DefineMission (22012, "\241\236\229\240\242\252 \225\238\241\238\226 \224\225\225\251", 3002)
	
	MisBeginTalk("<t>Hi! Finish Quest you need Kill  <bBarborosa Skeletal Warriorr> and I will give a <r30m> for you!")

	MisBeginAction(AddMission,2201)
	MisBeginAction(AddTrigger, 22011, TE_KILL, 805, 1 )
	MisCancelAction(ClearMission, 2201)
	
	--MisNeed(MIS_NEED_DESP, "Kill Barborosa Skeletal Warriorr")
	MisNeed(MIS_NEED_KILL, 805, 1, 10, 20)


	MisPrize(MIS_PRIZE_MONEY, 35000000, 15)
	MisPrizeSelAll()


	MisHelpTalk("<t>Note:try get more party more money")
	MisResultTalk("<t>Wow! you did you really finish killed Barborosa nice! here 35m as i primose you")


	MisResultCondition(HasMission, 2201)
	MisResultAction(ClearMission, 2201)
	MisResultAction(SetRecord,  2201 )
	MisResultAction(ClearRecord, 2201)---------------њ…“‘ЈіЄіљ”

	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 805)	
	TriggerAction( 1, AddNextFlag, 2201, 10, 20 )
	RegCurTrigger( 22011 )
	-------------------------------------------------іт—©’ћ
	TriggerAction( 1, AddNextFlag, 2201, 10, 20 )
	RegCurTrigger( 22011 )
	-------------------------------------------------іт—©’ћ
-----------------------------------------------------------------------------------------------

	DefineMission (22013, "\241\236\229\240\242\252 \225\238\241\238\226 \224\225\225\251", 3003)
	
	MisBeginTalk("<t>Hi! Finish Quest you need Kill  <bBarborosa Skeletal Warriorr> and I will give a <r30m> for you!")

	MisBeginAction(AddMission,2201)
	MisBeginAction(AddTrigger, 22011, TE_KILL, 805, 1 )
	MisCancelAction(ClearMission, 2201)
	
	--MisNeed(MIS_NEED_DESP, "Kill Barborosa Skeletal Warriorr")
	MisNeed(MIS_NEED_KILL, 805, 1, 10, 20)


	MisPrize(MIS_PRIZE_MONEY, 35000000, 15)
	MisPrizeSelAll()


	MisHelpTalk("<t>Note:try get more party more money")
	MisResultTalk("<t>Wow! you did you really finish killed Barborosa nice! here 35m as i primose you")


	MisResultCondition(HasMission, 2201)
	MisResultAction(ClearMission, 2201)
	MisResultAction(SetRecord,  2201 )
	MisResultAction(ClearRecord, 2201)---------------њ…“‘ЈіЄіљ”

	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 805)	
	TriggerAction( 1, AddNextFlag, 2201, 10, 20 )
	RegCurTrigger( 22011 )
	-------------------------------------------------іт—©’ћ
-----------------------------------------------------------------------------------------------

	DefineMission (22014, "\241\236\229\240\242\252 \225\238\241\238\226 \224\225\225\251", 3004)
	
	MisBeginTalk("<t>Hi! Finish Quest you need Kill  <bBarborosa Skeletal Warriorr> and I will give a <r30m> for you!")

	MisBeginAction(AddMission,2201)
	MisBeginAction(AddTrigger, 22011, TE_KILL, 805, 1 )
	MisCancelAction(ClearMission, 2201)
	
	--MisNeed(MIS_NEED_DESP, "Kill Barborosa Skeletal Warriorr")
	MisNeed(MIS_NEED_KILL, 805, 1, 10, 20)


	MisPrize(MIS_PRIZE_MONEY, 35000000, 15)
	MisPrizeSelAll()


	MisHelpTalk("<t>Note:try get more party more money")
	MisResultTalk("<t>Wow! you did you really finish killed Barborosa nice! here 35m as i primose you")


	MisResultCondition(HasMission, 2201)
	MisResultAction(ClearMission, 2201)
	MisResultAction(SetRecord,  2201 )
	MisResultAction(ClearRecord, 2201)---------------њ…“‘ЈіЄіљ”

	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 805)	
	TriggerAction( 1, AddNextFlag, 2201, 10, 20 )
	RegCurTrigger( 22011 )
	-------------------------------------------------іт—©’ћ
-----------------------------------------------------------------------------------------------

	DefineMission (22015, "\241\236\229\240\242\252 \225\238\241\238\226 \224\225\225\251", 3005)
	
	MisBeginTalk("<t>Hi! Finish Quest you need Kill  <bBarborosa Skeletal Warriorr> and I will give a <r30m> for you!")

	MisBeginAction(AddMission,2201)
	MisBeginAction(AddTrigger, 22011, TE_KILL, 805, 1 )
	MisCancelAction(ClearMission, 2201)
	
	--MisNeed(MIS_NEED_DESP, "Kill Barborosa Skeletal Warriorr")
	MisNeed(MIS_NEED_KILL, 805, 1, 10, 20)


	MisPrize(MIS_PRIZE_MONEY, 35000000, 15)
	MisPrizeSelAll()


	MisHelpTalk("<t>Note:try get more party more money")
	MisResultTalk("<t>Wow! you did you really finish killed Barborosa nice! here 35m as i primose you")


	MisResultCondition(HasMission, 2201)
	MisResultAction(ClearMission, 2201)
	MisResultAction(SetRecord,  2201 )
	MisResultAction(ClearRecord, 2201)---------------њ…“‘ЈіЄіљ”

	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 805)	
	TriggerAction( 1, AddNextFlag, 2201, 10, 20 )
	RegCurTrigger( 22011 )
	-------------------------------------------------іт—©’ћ