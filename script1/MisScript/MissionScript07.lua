-------------------------------------------------------------------
--									--
--									--
--NPCScript07.lua Created by knight.gong 2005.7.12.				--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript07.lua" )

 ---------------------------------------------宠宠总动员(1)

	DefineMission( 900, "Pet Event", 900)

	MisBeginTalk( "<t>Want a beautiful pet? Then you will have to take my test.<n><t>Go outside of town to kill 10 Fox Taoists and bring back the Exorcism Bell.<n><t>I will give you a chance to obtain a beautiful pet.")
	MisBeginCondition(LvCheck, ">", 59 )
	MisBeginCondition(HasItem, 0844, 1)
	MisBeginCondition(NoMission, 900)
	MisBeginAction(AddMission, 900)
	MisBeginAction(AddTrigger, 9001, TE_KILL, 748, 10 )
	MisCancelAction(ClearMission, 900)

	MisNeed(MIS_NEED_DESP, "Kill 10 Fox Taoist for the fortune teller")	
	MisNeed(MIS_NEED_KILL, 748, 10, 10, 10)
	 
	MisHelpTalk("<t>Go now! For the sake of a new pet!")	
	MisResultTalk("<t>You are quite fast!<n><t>If you are lucky, the chest will contain the pet you wanted")
	MisResultCondition(HasMission, 900)
	MisResultCondition(HasFlag, 900, 19 )
	MisResultCondition(HasItem,0844,1)
	MisResultAction(TakeItem, 0844,1)
	MisResultAction(ClearMission,900)
	MisResultAction(GiveItem, 1852, 1, 4)
	MisResultBagNeed(1)
		
	InitTrigger() 
	TriggerCondition( 1, IsMonster, 748 )	
	TriggerAction( 1, AddNextFlag, 900, 10, 10 )
	RegCurTrigger(9001)



	-------------------------------------------------宠宠总动员(2)
	DefineMission(901,"Pet Event",901)

	MisBeginTalk("<t>Want a beautiful pet? Then you will have to take my test. Go outside of town to kill  10 Fox Taoists and bring back the Exorcism Bell. I will give you a chance to obtain a beautiful pet.")

	MisBeginCondition(LvCheck, "<", 60 )
	MisBeginCondition(HasItem, 0844, 1)
	MisBeginCondition(NoMission,901)
	MisBeginAction(AddMission, 901) 
	MisBeginAction(AddTrigger, 9011, TE_KILL, 103, 20)
	MisBeginAction(AddTrigger, 9012, TE_KILL, 70, 20)
	MisBeginAction(AddTrigger, 9013, TE_KILL, 253, 10)
	MisBeginAction(AddTrigger, 9014, TE_KILL, 85, 10)
	MisBeginAction(AddTrigger, 9015, TE_KILL, 76, 10)
	MisCancelAction(ClearMission, 901)

	MisNeed(MIS_NEED_DESP, "Help Old Man Blurry at (2272, 2700) to kill 20 Forest Spirit, 20 Little Squidy, 10 Mud Monster, 10 Stramonium and 10 Rookie Boxeroo.")
	MisNeed(MIS_NEED_KILL, 103, 20, 10, 20)
	MisNeed(MIS_NEED_KILL, 70, 20, 30, 20)
	MisNeed(MIS_NEED_KILL, 253, 10, 50, 10)
	MisNeed(MIS_NEED_KILL, 85, 10, 60, 10)
	MisNeed(MIS_NEED_KILL, 76, 10, 70, 10)

	MisHelpTalk("<t>Hurry up for your beautiful pet")
	MisResultTalk("<t>You are quite fast!<n><t>If you are lucky, the chest will contain the pet you wanted")
	MisResultCondition(HasMission, 901)
	MisResultCondition(HasFlag, 901, 29)
	MisResultCondition(HasFlag, 901, 49)
	MisResultCondition(HasFlag, 901, 59)
	MisResultCondition(HasFlag, 901, 69)
	MisResultCondition(HasFlag, 901, 79)
	MisResultCondition(HasItem, 0844, 1)
	MisResultAction(TakeItem, 0844, 1)
	MisResultAction(ClearMission, 901)
	MisResultAction(GiveItem, 1852, 1, 4)
	MisResultBagNeed(1) 

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 103 )	
	TriggerAction( 1, AddNextFlag, 901, 10, 20 )
	RegCurTrigger(9011)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 70 )	
	TriggerAction( 1, AddNextFlag, 901, 30, 20 )
	RegCurTrigger(9012)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 253 )	
	TriggerAction( 1, AddNextFlag, 901, 50, 10 )
	RegCurTrigger(9013)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 85 )	
	TriggerAction( 1, AddNextFlag, 901, 60, 10 )
	RegCurTrigger(9014)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 76 )	
	TriggerAction( 1, AddNextFlag, 901, 70, 10 )
	RegCurTrigger(9015)


	-------------------------------------------------端午佳节吃粽子 雄黄艾草辟百邪
	DefineMission( 902, "Use Chinese Dumpling, Sulphur and Ether Clover on Dragon Boat festival to ward evil", 902)

	MisBeginTalk("<t>Oh dear! The river monsters are moving again. I need some things to throw down to the river. Can you help me collect them?")

	MisBeginCondition(LvCheck, ">",15  )
	MisBeginCondition(NoMission,902)
	MisBeginCondition(NoRecord,902)
	MisBeginAction(AddMission,902)
	MisBeginAction(AddTrigger, 9021, TE_GETITEM, 3116, 10 )		--精灵果
	MisBeginAction(AddTrigger, 9022, TE_GETITEM, 3131, 10 )		--奇异果实
	MisBeginAction(AddTrigger, 9023, TE_GETITEM, 4419, 5 )		--坏掉的蜂蜜
	MisCancelAction(ClearMission, 902)

	MisNeed(MIS_NEED_DESP, "Help Qu Yuan find 10 Elven Fruit, 10 Strange Fruit and 5 Fermented Honey")
	MisNeed(MIS_NEED_ITEM, 3116, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 3131, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 4419, 5, 30, 5)

	MisHelpTalk("<t>Hurry! I'll be waiting for you! Its 10 Elven Fruits, 10 Strange Fruits and 5 Fermented Honey.")
	MisResultTalk("<t>Hope that these can feed them well and prevent them from creating anymore mischief.")
	MisResultCondition(HasMission, 902)
	MisResultCondition(NoRecord,902)
	MisResultCondition(HasItem, 3116, 10)
	MisResultCondition(HasItem, 3131, 10 )
	MisResultCondition(HasItem, 4419, 5 )
	MisResultAction(TakeItem, 3116, 10 )
	MisResultAction(TakeItem, 3131, 10 )
	MisResultAction(TakeItem, 4419, 5 )
	MisResultAction(ClearMission, 902)
	MisResultAction(SetRecord, 902 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 902, 10, 10 )
	RegCurTrigger( 9021 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3131)	
	TriggerAction( 1, AddNextFlag, 902, 20, 10 )
	RegCurTrigger( 9022 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4419)	
	TriggerAction( 1, AddNextFlag, 902, 30, 5 )
	RegCurTrigger( 9023 )

	-------------------------------------------------- 端午佳节吃粽子 雄黄艾草辟百邪
	DefineMission( 903, "Use Chinese Dumpling, Sulphur and Ether Clover on Dragon Boat festival to ward evil", 903)
	
	MisBeginTalk("<t>Oh dear! Those items are not enough! I need more. Can you help me again?")
	MisBeginCondition(NoMission,902)
	MisBeginCondition(NoMission,903)
	MisBeginCondition(HasRecord,902)
	MisBeginCondition(NoRecord,903)
	MisBeginAction(AddMission,903)
	MisBeginAction(AddTrigger, 9031, TE_GETITEM, 1779, 10 )		--药瓶 
	MisBeginAction(AddTrigger, 9032, TE_GETITEM, 1584, 20 )		--有毒的刺 
	MisBeginAction(AddTrigger, 9033, TE_GETITEM, 1650, 10 )		--有疗效的水
	MisCancelAction(ClearMission, 903)

	MisNeed(MIS_NEED_DESP, "Help Qu Yuan find 10 Bottle, 20 Poisoned Thorn and 10 Healing Water")
	MisNeed(MIS_NEED_ITEM, 1779, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 1584, 20, 20, 20)
	MisNeed(MIS_NEED_ITEM, 1650, 10, 40, 10)

	MisHelpTalk("<t>Sign…these river creatures…")
	MisResultTalk("<t>They shouldn't dare to try anything funny this time.")
	MisResultCondition(HasMission, 903)
	MisResultCondition(NoRecord,903)
	MisResultCondition(HasItem, 1779, 10)
	MisResultCondition(HasItem, 1584, 20 )
	MisResultCondition(HasItem, 1650, 10 )
	MisResultAction(TakeItem, 1779, 10 )
	MisResultAction(TakeItem, 1584, 20 )
	MisResultAction(TakeItem, 1650, 10 )
	MisResultAction(ClearMission, 903)
	MisResultAction(SetRecord, 903 )


	InitTrigger()
	TriggerCondition( 1, IsItem, 1779)	
	TriggerAction( 1, AddNextFlag, 903, 10, 10 )
	RegCurTrigger( 9031 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1584)	
	TriggerAction( 1, AddNextFlag, 903, 20, 20 )
	RegCurTrigger( 9032 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1650)	
	TriggerAction( 1, AddNextFlag, 903, 40, 10 )
	RegCurTrigger( 9033 )


-------------------------------------------------- 端午佳节吃粽子 雄黄艾草辟百邪
	DefineMission( 904, "Use Chinese Dumpling, Sulphur and Ether Clover on Dragon Boat festival to ward evil", 904)

	MisBeginTalk("<t>Sigh…To appease those river monsters, I spent so much effort, resulting in me getting seriously ill. Although I know what can cure my illness, I am unable to get them on my own. Can you get those items back for me to make a cure?")

	MisBeginCondition(NoMission,904)
	MisBeginCondition(NoRecord,904)
	MisBeginCondition(HasRecord,903)
	MisBeginAction(AddMission,904)
	MisBeginAction(AddTrigger, 9041, TE_GETITEM, 3129, 5 )		--药用草叶
	MisBeginAction(AddTrigger, 9042, TE_GETITEM, 1681, 5 )		--眼泪
	MisCancelAction(ClearMission, 904)

	MisNeed(MIS_NEED_DESP, "Help Qu Yuan collect 5 Medicated Grass and 5 Tears")
	MisNeed(MIS_NEED_ITEM, 3129, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1681, 5, 20, 5)

	MisHelpTalk("<t>Sigh…I have so much illness…")
	MisResultTalk("<t>Thank you for helping me. Please take these as rewards.")
	MisResultCondition(HasMission, 904)
	MisResultCondition(NoRecord,904)
	MisResultCondition(HasItem, 3129, 5)
	MisResultCondition(HasItem, 1681, 5 )
	MisResultAction(TakeItem, 3129, 5 )
	MisResultAction(TakeItem, 1681, 5 )
	MisResultAction(GiveItem, 263, 3, 4)
	MisResultAction(GiveItem, 264, 3, 4)
	MisResultAction(GiveItem, 265, 3 ,4)
	MisResultAction(ClearMission, 904)
	MisResultAction(SetRecord,  904 )
	MisResultBagNeed(3)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 904, 10, 5 )
	RegCurTrigger( 9041 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1681)	
	TriggerAction( 1, AddNextFlag, 904, 20, 5 )
	 RegCurTrigger( 9042 )
	 
  -------------------------------------------------- 海盗王的生日
	DefineMission( 905, "Pirate King Anniversary", 905)
	MisBeginTalk("<t>Do you know that not only Drunky loves to eat cakes baked by Granny Beldi, Pirate King Roland loves them too! Rumor has it that whoever eats the cake will get 3 bonus stat points! No wonder the Pirate King is invincible.<n><t>Don't you want to try too? Not everybody has a chance though. You need to take a \"Cake Sampling Voucher\" and go to \"Granny Beldi\" for exchange of a slice.")
	MisBeginCondition(NoMission,905)
	MisBeginCondition(HasItem, 1097, 1 )
	MisBeginCondition(NoRecord,905)
	MisBeginAction(AddMission,905)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Look for Granny Beldi")
	MisHelpTalk("<t>Hurry and look for the old granny else no more cakes will be left!")
	
	MisResultCondition(AlwaysFailure )


	 -------------------------------------------------- 海盗王的生日
	DefineMission ( 906, "Pirate King Anniversary", 905,COMPLETE_SHOW)
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Its Tintin who recommended you to come. Hmm...He loves to eat my bread. Haha. I take the \"Cake Voucher\". Here is your cake.")
	MisResultCondition(HasMission,905)
	MisResultCondition(HasItem, 1097, 1 )
	MisResultAction(ClearMission, 905 )
	MisResultAction(TakeItem, 1097, 1 )
	MisResultAction(GiveItem, 3338, 1, 4 )
	MisResultAction(SetRecord, 905 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)	

	-------------------------------寻找遗失的爱情之鱼儿寻找花瓣
	DefineMission( 907, "Search for Flower", 906)
	
	MisBeginTalk( "<t>I miss her a lot! I beg you, please help me find her. I can't do without her. I know she was last sighted at Deep Blue(1333,558). Can you go look around in that area?")
	MisBeginCondition(NoRecord, 913 )
	MisBeginCondition(NoMission, 906 )
	MisBeginAction(AddMission, 906 )
	MisCancelAction(ClearMission, 906)
		
	MisNeed(MIS_NEED_DESP, "Locate Flower at (1333, 558)")
	MisHelpTalk("<t>Her last known coordinates is at (1333, 558) in Deep Blue region.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------寻找遗失的爱情之鱼儿寻找花瓣

	DefineMission(908,"Search for Flower",906,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>You are a friend of Little Fish? I'm Flower's friend, the one he has been looking for!")
	MisResultCondition(HasMission, 906)
	MisBeginCondition(NoRecord, 913)
	MisResultAction(ClearMission, 906)
	MisResultAction(SetRecord, 913)

	----------------------------------寻找遗失的爱情之舞蝶喜欢吃月饼
	DefineMission ( 909, "Mooncake Affinity", 907)

	MisBeginTalk("<t>How can I so easily believe that you were sent by Little Fish? How about this, I really love to eat mooncake. Help me find 10 mooncakes.")
	MisBeginCondition(HasRecord,913)
	MisBeginCondition(NoMission,907)
	MisBeginCondition(NoRecord,907)
	MisBeginAction(AddMission,907)
	MisBeginAction(AddTrigger, 9071, TE_GETITEM, 3915, 10)
	MisCancelAction(ClearMission, 907)
	

	MisNeed(MIS_NEED_DESP, "Help Butterfly to collect 10 Mooncakes")
	MisNeed(MIS_NEED_ITEM, 3915, 10, 10, 10)

	MisHelpTalk("<t>Need 10 mooncakes!")
	MisResultTalk("<t>You seems to be a nice fellow. I love to eat mooncake, thank you!") 
	
	MisResultCondition(HasMission, 907)
	MisResultCondition(NoRecord,907)
	MisResultCondition(HasItem, 3915, 10)
	MisResultAction(TakeItem, 3915, 10 )
	MisResultAction(ClearMission, 907)
	MisResultAction(SetRecord, 907 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3915)	
	TriggerAction( 1, AddNextFlag, 907, 10, 10 )
	RegCurTrigger( 9071 )
	
-------------------------------------------------------	寻找遗失的爱情之花瓣的遗信
	DefineMission(910,"Flower's Letter",908)
	
	MisBeginTalk("<t>Not bad, I think I can trust you now so deliver a message to him for me, Flower was a friend of my mine who passed away 2 days ago due to failed treatment of his leukemia. Before Flower's passing, she wrote a letter. Please pass the letter to him so as to let him grief in peace.")

	MisBeginCondition(HasRecord, 907)
	MisBeginCondition(NoRecord, 908)
	MisBeginCondition(NoMission, 908)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 908)
	MisBeginAction(GiveItem, 1005,1,4)

	MisHelpTalk("<t>May the Goddess bless those sorrowful people. Little Fish is in Shaitan City at (917, 3572).")
	MisNeed(MIS_NEED_DESP, "Help Butterfly to pass Flower's letter to Little Fish")

	MisCancelAction(ClearMission, 908)

	MisResultCondition(AlwaysFailure)




-----------------------------------寻找遗失的爱情之花瓣的遗信
	DefineMission( 911, "Flower's Letter", 908, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>What? It is really a letter from her.<n><t>Contents of the letter as follows: My Little Fish, by the time you have read this letter, I am already watching you from above. I do not wish for you to see my pale face, nor do I wish that you feel anguish, hurt and pain because of me. It is then i decided to leave you so that you will forget me. The only thing that you can do now is to hold me dear in your heart forever.<n><t>Little Fish, I will give you my blessings . Time passes by but yet love remains eternal.")
	MisResultCondition(HasMission, 908)
	MisResultCondition(NoRecord,908)
	MisResultCondition(HasItem, 1005, 1)
	MisResultAction(TakeItem, 1005, 1)
	MisResultAction(GiveItem, 1006, 1, 4)
	MisResultAction(ClearMission, 908)
	MisResultAction(SetRecord, 908)

	
	-------------------------------------------------------------寻找遗失的爱情之鱼儿想忘情
	DefineMission ( 912, "Reverse Love Potion", 909)
	
	MisBeginTalk("<t>I heard that theres a thing called Reverse Love Potion, and only Ditto at (2250, 2770) in Argent City knows how to concoct it. How I wish for a taste of it to wipe all my woes away..")
	
	MisBeginCondition(HasRecord,908)
	MisBeginCondition(NoRecord,909)
	MisBeginCondition(NoMission,909)
	MisBeginAction(AddMission,909)
	MisCancelAction(ClearMission, 909)
	
	MisHelpTalk("<t>Sign...How to forgot the sorrow? Only by using the Love Reverse Potion")
	MisNeed(MIS_NEED_DESP, "Help Little Fish to look for Reverse Love Potion")


	MisResultCondition(AlwaysFailure)


------------------------------------------------------------------------寻找遗失的爱情之鱼儿想忘情



	DefineMission(913,"Reverse Love Potion", 909,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)
	MisResultTalk("<t>You are a friend of Little Fish?<n><t>I have heard their story...sad indeed. You are a helpful person.")
	MisResultCondition(HasMission, 909)
	MisResultCondition(NoRecord, 909)
	MisResultAction(ClearMission, 909)
	MisResultAction(SetRecord, 909)



	
	
	-------------------------------------------------------------寻找遗失的爱情之制造忘情水
	DefineMission ( 914, "Decoct Reverse Love Potion", 910)
	
	MisBeginTalk("<t>You are here to seek Reverse Love Potion? The recipe for Reverse Love Potion is complicated. Get me 1 vial of Pure Water, 1 Heart of Naiad, 2 strands of Medicated Grass, 3 vials of Healing Water and return here.")
	
	MisBeginCondition(NoMission,910)
	MisBeginCondition(HasRecord,909)
	MisBeginCondition(NoRecord,910)
	MisBeginAction(AddMission,910)
	MisBeginAction(AddTrigger, 9101, TE_GETITEM, 1649, 1)
	MisBeginAction(AddTrigger, 9102, TE_GETITEM, 4418, 1)
	MisBeginAction(AddTrigger, 9103, TE_GETITEM, 3129, 2)
	MisBeginAction(AddTrigger, 9104, TE_GETITEM, 1650, 3)	
	MisCancelAction(ClearMission, 910)

	MisNeed(MIS_NEED_DESP, "You need 1 Pure Water, 1 Heart of Naiad, 2 Medicated Grass and 3 Healing Water.")
	MisNeed(MIS_NEED_ITEM, 1649, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4418, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 3129, 2, 30, 2)
	MisNeed(MIS_NEED_ITEM, 1650, 3, 40, 3)

	MisHelpTalk("<t>Please find 1 Pure Water, 1 Heart of Naiad, 2 Medicated Grass and 3 Healing Water")
	MisResultTalk("<t>Very well, these are the materials needed to create the Reverse Love Potion.")
	MisResultCondition(HasMission, 910)
	MisResultCondition(NoRecord,910)
	MisResultCondition(HasItem, 1649, 1)
	MisResultCondition(HasItem, 4418, 1)
	MisResultCondition(HasItem, 3129, 2)
	MisResultCondition(HasItem, 1650, 3)
	MisResultAction(TakeItem, 1649, 1 )
	MisResultAction(TakeItem, 4418, 1)
	MisResultAction(TakeItem, 3129, 2 )
	MisResultAction(TakeItem,1650, 3 )
	MisResultAction(ClearMission, 910)
	MisResultAction(SetRecord, 910 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1649)	
	TriggerAction( 1, AddNextFlag, 910, 10, 1 )
	RegCurTrigger( 9101 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 910, 20, 1 )
	RegCurTrigger( 9102 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 910, 30, 2 )
	RegCurTrigger( 9103 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1650)	
	TriggerAction( 1, AddNextFlag, 910, 40, 3 )
	RegCurTrigger( 9104 )
	
	
	-----------------------------------------------------------------寻找遗失的爱情之购买玉金瓶
	DefineMission ( 915, "Purchase Golden Jade Bottle", 911)
	
	MisBeginTalk("<t>The Reverse Love Potion is a special kind of liquid. If it is placed in any kind of container, the potion will quickly evapourate. Only the Golden Jade Bottle Is able to prevent the potion from evaporating.")

	MisBeginCondition(NoMission,911)
	MisBeginCondition(HasRecord,910)
	MisBeginCondition(NoRecord,911)
	MisBeginAction(AddMission,911)
	MisBeginAction(AddTrigger, 9111, TE_GETITEM, 1007, 1)
	MisCancelAction(ClearMission, 911)
	MisNeed(MIS_NEED_DESP, "Requires a Golden Jade Bottle")
	MisNeed(MIS_NEED_ITEM, 1007, 1, 80, 1)

	MisHelpTalk("<t>Purchase the Golden Jade Bottle from Item Mall.")
	MisResultTalk("<t>I can help you make the Reverse Love Potion if I have the Golden Jade Bottle.")


	MisResultCondition(HasMission, 911)
	MisResultCondition(NoRecord,911)
	MisResultCondition(HasItem, 1007, 1)
	MisResultAction(TakeItem, 1007, 1 )
	MisResultAction(ClearMission, 911)
	MisResultAction(SetRecord,  911 )

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1007)	
	TriggerAction( 1, AddNextFlag, 911, 80, 1 )
	RegCurTrigger( 9111 )


-------------------------------------------------------------------寻找遗失的爱情之忘情水

DefineMission(916,"Love in the Past",912)
	
	MisBeginTalk("<t>Take it. The Love Reversal Potion is ready. Hopefull it will heal Little Fish at (917, 3572).")

	MisBeginCondition(HasRecord, 911)
	MisBeginCondition(NoRecord, 912)
	MisBeginCondition(NoMission, 912)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 912)
	MisBeginAction(GiveItem, 1008,1,4)

	MisHelpTalk("<t>Hurry and save the heart-broken person!")
	MisNeed(MIS_NEED_DESP, "Bring the Reverse Love Potion to Little Fish to heal his sorrow")

	MisCancelAction(ClearMission, 912)
	MisResultCondition(AlwaysFailure)




-------------------------------------------------------------------寻找遗失的爱情之忘情水
	DefineMission( 917, "Love in the Past", 912, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	
	MisResultTalk("<t>So this is the mythical Reverse Love Potion! Take this Heart of Innocence as a gift from me to you, it represents true love.<n><t>Sigh! Will I really forget her if I use this potion?")
	MisResultCondition(HasMission, 912)
	MisResultCondition(NoRecord,912)
	MisResultCondition(HasItem, 1008, 1)
	MisResultAction(TakeItem, 1008, 1 )
	MisResultAction(GiveItem, 1009, 1 ,4)
	MisResultAction(ClearMission, 912)
	MisResultAction(SetRecord, 912 )
	MisResultAction(ClearRecord, 909)
	MisResultAction(ClearRecord, 910)
	MisResultAction(ClearRecord, 911)
	MisResultAction(ClearRecord, 912)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1008)	
	TriggerAction( 1, AddNextFlag, 912, 10, 1 )
	RegCurTrigger( 9121 ) 


	--------------------------------------------------------------------爱情重生

	DefineMission( 918, "Love Revival", 914 )
	MisBeginTalk("<t>Child, if you heart is empty and lifeless, look for the Reverse Love Potion. I will restore your heart to its former glory!")
	MisBeginCondition(NoMission, 914)
	MisBeginCondition(HasItem,1010,1)------------有纯真之心使用后的枯竭之心
	MisBeginCondition(NoRecord,914)
	MisBeginAction(AddMission,914)
	MisBeginAction(AddTrigger, 9141, TE_GETITEM, 1008, 1)
	MisCancelAction(ClearMission, 914)

	MisNeed(MIS_NEED_DESP, "Requires a Reverse Love Potion to moist a Withered Heart")
	MisNeed(MIS_NEED_ITEM, 1008, 1, 10, 1)

	MisHelpTalk("<t>Found a Reverse Love Potion, bring it to Mysterious Granny along with Withered Heart.")
	MisResultTalk("<t>Very good child, this is the Love Reversal Potion. Drink it, and face rebirth bravely.")

	MisResultCondition(HasMission, 914)
	MisResultCondition(NoRecord,914)
	MisResultCondition(HasItem, 1008, 1)
	MisResultCondition(HasItem, 1010, 1)------------有枯竭之心
	MisResultAction(TakeItem, 1008, 1 )
	MisResultAction(TakeItem, 1010, 1 )
	MisResultAction(GiveItem, 1013,1,4)------------给重生之心
	MisResultAction(ClearMission, 914)
	MisResultAction(SetRecord, 914)
	MisResultAction(ClearRecord, 914)---------------可以反复接

	InitTrigger()
	TriggerCondition( 1, IsItem, 1008)	
	TriggerAction( 1, AddNextFlag, 914, 10, 1 )
	RegCurTrigger( 9141 )
	
	
	-----------------------------------------------------------------------血腥的高跟鞋
	DefineMission( 919, "Bloodied High Heels", 915)
	
	MisBeginTalk( "<t>Ouch…I got hit on the head by a high heel shoe thrown by my boss...Look at the wound…What?! You don't believe me? I still have the medical report I got from <bNurse - Gina> in Argent City at (2244, 2770). The dressing is done by her. Check it out. Ouch...Ouch...")
	MisBeginCondition(NoRecord, 915 )
	MisBeginCondition(NoMission, 915 )
	MisBeginAction(AddMission, 915 )
	MisBeginAction(GiveItem, 1026,1,4)------白银医院验伤单
	MisCancelAction(ClearMission, 915)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "Look for Nurse Gina in Argent City to verify")
	MisHelpTalk("<t>The nurse is located at (2244, 2770)")
	MisResultCondition(AlwaysFailure )

------------------------------------------------------------------------------血腥的高跟鞋
	DefineMission( 920, "Bloodied High Heels", 915, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Why is there always someone getting hurt recently!")
	MisResultCondition(HasMission, 915)
	MisResultCondition(NoRecord,915)
	MisResultCondition(HasItem, 1026, 1)
	MisResultAction(TakeItem, 1026, 1 )
	MisResultAction(ClearMission, 915)
	MisResultAction(SetRecord, 915 )
	 
-------------------------------------------------------------------------------向巡逻兵求证

	DefineMission( 921, "Verify with the Patroller", 916 )

	MisBeginTalk("<t>Yes, this Medical Report comes from me. The injury seems to be caused by a high heel shoe and the victim is a skinny man. However, I do not know the cause of the injury. It seems that <bGuard - Michael> in Shaitan City at (959, 3549) is also investigating this matter.")
	MisBeginCondition(NoMission, 916)
	MisBeginCondition(HasRecord,915)
	MisBeginCondition(NoRecord,916)
	MisBeginAction(AddMission, 916 )
	MisCancelAction(ClearMission, 916)
	MisResultCondition(AlwaysFailure )
	-------------------------------------------------------------------向巡逻兵求证
	DefineMission( 922, "Verify with the Patroller", 916, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Its not easy being a patrol guard, theres always trouble and little pay!")
	MisResultCondition(HasMission, 916)
	MisResultCondition(NoRecord,916)
	MisResultAction(ClearMission, 916)
	MisResultAction(SetRecord, 916 )

	 
	---------------------------------------------------------------高跟鞋案件调查
	DefineMission( 923, "Investigation to the Case of the High Heels", 917)
	
	MisBeginTalk( "<t>Hmm...I have been investigating for some time about the incident you brought up. This is a very troublesome issue. Both parties claim to be the victim, insisting that the opposite party started the fight. What a problematic case! Look, this is the medical report of the lady boss, although the details are abit vague, they still can be used as clues.")
	MisBeginCondition(NoRecord, 917 )
	MisBeginCondition(NoMission, 917)
	MisBeginCondition(HasRecord, 916 )
	MisBeginAction(AddMission, 917 )
	MisBeginAction(GiveItem, 1027,1,4)------女老板的验伤单
	MisBeginAction(AddTrigger, 9171, TE_GETITEM, 1030, 1)
	MisBeginBagNeed(1)

	MisCancelAction(ClearMission, 917)
	MisNeed(MIS_NEED_ITEM, 1030, 1, 10, 1)

	MisResultTalk("<t>Only those who are brave dare to uphold rightness!")
	MisHelpTalk("<t>Use the Medical Report to summon a monster and defeat it")
	MisResultCondition(HasMission,  917)
	MisResultCondition(NoRecord , 917)
	MisResultCondition(HasItem,1030,1 )
	MisResultAction(TakeItem, 1030, 1 )-------
	MisResultAction(ClearMission,   917)
	MisResultAction(SetRecord,  917 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1030)	
	TriggerAction( 1, AddNextFlag, 917, 10, 1 )
	RegCurTrigger( 9171 )
-------------------------------------------------------------------------高跟鞋案件凶器--------------
	DefineMission( 924, "Weapon of the Case of the High Heels", 918)------------

	MisBeginTalk( "<t>Surprisingly the weapon used is this High Heels. I will safekeep it with me to keep it from harming other people. Thank you!")---------------
	MisBeginCondition(NoRecord, 918 )
	--MisBeginCondition(NoMission, 918 )
	MisBeginCondition(HasRecord, 917 )
	--MisBeginAction(AddMission, 918 )
	MisBeginAction(GiveItem, 1029,1,4)----------
	MisBeginAction(AddExp,500,500)
	--MisBeginAction(ClearMission, 918 )
	MisBeginAction(SetRecord, 918 )
	MisCancelAction(ClearMission, 918)
	MisBeginBagNeed(1)---------------

	MisHelpTalk("<t>Theres justice in the world.")----------

	MisResultCondition(AlwaysFailure )---------


	--------------------------------------------------------------------艰难任务1

	DefineMission( 6000, "Phoenix Rebirth", 1300 )
	MisBeginTalk("<t>Mortal, have you heard of Phoenix Rebirth? A Phoenix will be reborn every 500 years. All aspiring pirates also wish to be reborn. However, since the last Sacred War, the Rebirth Stone is broken up into pieces and lost in the mortal world. These fragments are being guarded by some people. If you can collect these fragments, I will help you attain rebirth. There is a <rTower in Ascaron> which seems suspicious. You might want to start from there.")
	MisBeginCondition(NoMission, 1300)
	MisBeginCondition(NoRecord,1300)
	MisBeginCondition(HasCredit,9999)
	MisBeginAction(AddMission,1300)
	MisBeginAction(AddTrigger, 13001, TE_GETITEM, 2226, 1)
	MisBeginAction(AddTrigger, 13002, TE_GETITEM, 2227, 1)
	MisBeginAction(AddTrigger, 13003, TE_GETITEM, 2228, 1)
	MisBeginAction(AddTrigger, 13004, TE_GETITEM, 2229, 1)
	MisBeginAction(AddTrigger, 13005, TE_GETITEM, 2230, 1)
	MisBeginAction(AddTrigger, 13006, TE_GETITEM, 2231, 1)
	MisBeginAction(AddTrigger, 13007, TE_GETITEM, 2232, 1)
	MisBeginAction(AddTrigger, 13008, TE_GETITEM, 2233, 1)
	
	
	MisCancelAction(ClearMission, 1300)

	MisNeed(MIS_NEED_DESP, "Bring back 8 Fragments of the Rebirth Stone.")
	MisNeed(MIS_NEED_ITEM, 2226, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2227, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 2228, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 2229, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 2230, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2231, 1, 60, 1)
	MisNeed(MIS_NEED_ITEM, 2232, 1, 70, 1)
	MisNeed(MIS_NEED_ITEM, 2233, 1, 80, 1)
	
	

	MisHelpTalk("<t>The 8 pieces were scattered all over the world.You have to be mentally prepared to embark on a long journey.")
	MisResultTalk("<t>You are God's miracle, wait for the grand moment of rebirth.")

	MisResultCondition(HasMission, 1300)
	MisResultCondition(NoRecord,1300)
	MisResultCondition(HasItem, 2226, 1)
	MisResultCondition(HasItem, 2227, 1)
	MisResultCondition(HasItem, 2228, 1)
	MisResultCondition(HasItem, 2229, 1)
	MisResultCondition(HasItem, 2230, 1)
	MisResultCondition(HasItem, 2231, 1)
	MisResultCondition(HasItem, 2232, 1)
	MisResultCondition(HasItem, 2233, 1)
	
	
	MisResultAction(TakeItem, 2226, 1 )
	MisResultAction(TakeItem, 2227, 1 )
	MisResultAction(TakeItem, 2228, 1 )
	MisResultAction(TakeItem, 2229, 1 )
	MisResultAction(TakeItem, 2230, 1 )
	MisResultAction(TakeItem, 2231, 1 )
	MisResultAction(TakeItem, 2232, 1 )
	MisResultAction(TakeItem, 2233, 1 )
	
	
	MisResultAction(GiveItem, 2235,1,4)------------给再生之石
	MisResultAction(ClearMission, 1300)
	MisResultAction(SetRecord, 1300)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2226)	
	TriggerAction( 1, AddNextFlag, 1300, 10, 1 )
	RegCurTrigger( 13001 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2227)	
	TriggerAction( 1, AddNextFlag, 1300, 20, 1 )
	RegCurTrigger( 13002 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2228)	
	TriggerAction( 1, AddNextFlag, 1300, 30, 1 )
	RegCurTrigger( 13003 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2229)	
	TriggerAction( 1, AddNextFlag, 1300, 40, 1 )
	RegCurTrigger( 13004 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2230)	
	TriggerAction( 1, AddNextFlag, 1300, 50, 1 )
	RegCurTrigger( 13005 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2231)	
	TriggerAction( 1, AddNextFlag, 1300, 60, 1 )
	RegCurTrigger( 13006 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2232)	
	TriggerAction( 1, AddNextFlag, 1300, 70, 1 )
	RegCurTrigger( 13007 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2233)	
	TriggerAction( 1, AddNextFlag, 1300, 80, 1 )
	RegCurTrigger( 13008 )
	
-------------------------------------------------打雪仗	
	DefineMission (5500, "Snow War", 818)
	
	MisBeginTalk("<t>This Christmas is extremely beautiful. It would be cool to play Snow War on such a day! Do you wish to try? Kill 20 <bYellow Mystic Shrubs> and I will make a <rLittle Snow Ball> for you!")

	MisBeginCondition(NoMission,818)
	MisBeginCondition(NoRecord,818)
	MisBeginAction(AddMission,818)
	MisBeginAction(AddTrigger, 8181, TE_KILL, 218, 20 )
	MisCancelAction(ClearMission, 818)
	
	--MisNeed(MIS_NEED_DESP, "Kill 20 Mystic Shrub")
	MisNeed(MIS_NEED_KILL, 218, 20, 10, 20)

	MisHelpTalk("<t>A white Christmas will be starting soon")
	MisResultTalk("<t>Not bad, you finished your quest so fast.You must be very good at snow fighting. Here's your snowball, have an enjoyable Christmas!")


	MisResultCondition(HasMission, 818)
	MisResultCondition(NoRecord,818)
	MisResultCondition(HasFlag, 818, 29 )
	MisResultAction(ClearMission, 818)
	MisResultAction(SetRecord,  818 )
	MisResultAction(ClearRecord, 818)---------------可以反复接
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 218)	
	TriggerAction( 1, AddNextFlag, 818, 10, 20 )
	RegCurTrigger( 8181 )

	-------------------------------------------------打雪仗	
	DefineMission (5501, "Snow War", 819)
	
	MisBeginTalk("<t>This Christmas is extremely beautiful. It would be cool to play Snow War on such a day! Do you wish to try? Kill 20 <bMystic Shrubs> and I will make a <rLittle Snow Ball> for you!")

	MisBeginCondition(NoMission,819)
	MisBeginCondition(NoRecord,819)
	MisBeginAction(AddMission,819)
	MisBeginAction(AddTrigger, 8191, TE_KILL, 75, 20 )
	MisCancelAction(ClearMission, 819)
	
	--MisNeed(MIS_NEED_DESP, "Destroy 20 Dry Mystic Shrubs")
	MisNeed(MIS_NEED_KILL, 75, 20, 10, 20)

	MisHelpTalk("<t>A white Christmas will be starting soon")
	MisResultTalk("<t>Not bad, you finished your quest so fast.You must be very good at snow fighting. Here's your snowball, have an enjoyable Christmas!")


	MisResultCondition(HasMission, 819)
	MisResultCondition(NoRecord,819)
	MisResultCondition(HasFlag, 819, 29 )
	MisResultAction(ClearMission, 819)
	MisResultAction(SetRecord,  819 )
	MisResultAction(ClearRecord, 819)---------------可以反复接
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 75)	
	TriggerAction( 1, AddNextFlag, 819, 10, 20 )
	RegCurTrigger( 8191 )

-------------------------------------------------打雪仗	
	DefineMission (5502, "Snow War", 820)
	
	MisBeginTalk("<t>This Christmas is extremely beautiful. It would be cool to play Snow War on such a day! Do you wish to try? Kill 20 <bSnowy Mystic Shrub> and I will make a <rLittle Snow Ball> for you!>")

	MisBeginCondition(NoMission,820)
	MisBeginCondition(NoRecord,820)
	MisBeginAction(AddMission,820)
	MisBeginAction(AddTrigger, 8201, TE_KILL, 216, 20 )
	MisCancelAction(ClearMission, 820)
	
	--MisNeed(MIS_NEED_DESP, "Kill 20 Snowy Mystic Shrub")
	MisNeed(MIS_NEED_KILL, 216, 20, 10, 20)

	MisHelpTalk("<t>A white Christmas will be starting soon")
	MisResultTalk("<t>Not bad, you finished your quest so fast.You must be very good at snow fighting. Here's your snowball, have an enjoyable Christmas!")


	MisResultCondition(HasMission, 820)
	MisResultCondition(NoRecord,820)
	MisResultCondition(HasFlag, 820, 29 )
	MisResultAction(ClearMission, 820)
	MisResultAction(SetRecord,  820 )
	MisResultAction(ClearRecord, 820)---------------可以反复接
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 216)	
	TriggerAction( 1, AddNextFlag, 820, 10, 20 )
	RegCurTrigger( 8201 )

-----------------------------------------------勇士的证明
	DefineMission(6001,"Mark of a Warrior",1302)

      MisBeginTalk("<t>Use your wisdom and bravery to eradicate these demons from this world! 15 Nimble Forest Hunter, 15 Nimble Shadow Hunter, 15 Vicious Grassland Elder, 15 Evil Guardian Angel, 15 Ruthless Shadow Hunter and 15 Ruthless Forest Hunter.")

      MisBeginCondition(HasRecord,1301)
      MisBeginCondition(NoRecord,1302)
      MisBeginCondition(NoMission,1302)
      MisBeginCondition(HasCredit,9999 )
      MisBeginAction(TakeCredit, 9999 )
      MisBeginAction(AddMission,1302)
      MisBeginAction(AddTrigger, 13021, TE_KILL,525, 15)
      MisBeginAction(AddTrigger, 13022, TE_KILL,526, 15)
      MisBeginAction(AddTrigger, 13023, TE_KILL, 532, 15)
      MisBeginAction(AddTrigger, 13024, TE_KILL, 550, 15)
      MisBeginAction(AddTrigger, 13025, TE_KILL, 554, 15)
      MisBeginAction(AddTrigger, 13026, TE_KILL, 553, 15)
      MisCancelAction(ClearMission, 1302)

      MisNeed(MIS_NEED_DESP, "Kill 15 Nimble Forest Hunter, 15 Nimble Shadow Hunter, 15 Vicious Grassland Elder, 15 Evil Guardian Angel, 15 Ruthless Shadow Hunter, 15 Ruthless Forest Hunter!")
      MisNeed(MIS_NEED_KILL, 525, 15, 10, 15)
      MisNeed(MIS_NEED_KILL, 526, 15, 30, 15)
      MisNeed(MIS_NEED_KILL, 532, 15, 50, 15)
      MisNeed(MIS_NEED_KILL, 550, 15, 70, 15)
      MisNeed(MIS_NEED_KILL, 554, 15, 90, 15)
      MisNeed(MIS_NEED_KILL, 553, 15, 110, 15)

      MisHelpTalk("<t>Kill them.")  
      MisResultTalk("<t>You have good skills. Learn from me from now on. This Fragment represents Wisdom. Take it to fulfill your dream. Rumored that rebirth allows you to reselect class…")
      MisResultCondition(HasMission,1302 )
      MisResultCondition(NoRecord,1302)
      MisResultCondition(HasFlag, 1302, 24)
      MisResultCondition(HasFlag, 1302, 44)
      MisResultCondition(HasFlag, 1302, 64)
      MisResultCondition(HasFlag, 1302, 84)
      MisResultCondition(HasFlag, 1302, 104)
      MisResultCondition(HasFlag, 1302, 124)
      MisResultAction(GiveItem, 2228, 1, 4 )
      MisResultAction(ClearMission, 1302 )
      MisResultAction(SetRecord, 1302)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 525 )
      TriggerAction( 1, AddNextFlag, 1302, 10, 15 )
      RegCurTrigger( 13021 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 526 )
      TriggerAction( 1, AddNextFlag, 1302, 30, 15 )
      RegCurTrigger( 13022 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,532  )
      TriggerAction( 1, AddNextFlag, 1302, 50, 15 )
      RegCurTrigger( 13023 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 550 )
      TriggerAction( 1, AddNextFlag, 1302, 70, 15 )
      RegCurTrigger( 13024 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 554 )
      TriggerAction( 1, AddNextFlag, 1302, 90, 15 )
      RegCurTrigger( 13025 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,553)
      TriggerAction( 1, AddNextFlag, 1302, 110, 15 )
      RegCurTrigger( 13026 )




------------------------------------------------------小镇神秘人
	DefineMission( 6002, "Little Mystery Man", 1303 )

	MisBeginTalk( "<t>Judging from your reputation, I am sure that guy will not reject you...However, I did not say that he has part of the fragment." )------------
	MisBeginCondition(NoRecord,   1303)
	MisBeginCondition(HasRecord, 1302)
	MisBeginCondition(NoMission,  1303)
	MisBeginAction(AddMission,  1303)
	MisCancelAction(ClearMission, 1303)
	MisNeed(MIS_NEED_DESP, "Searching for Eastern town's mysterious guardian")
	MisHelpTalk("<t>I can only tell you this much.")
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------小镇神秘人
	DefineMission( 6003, "Little Mystery Man", 1303, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>I'm already this fat, and yet I'm still recognizable?!")
	MisResultCondition(NoRecord,  1303)
	MisResultCondition(HasMission,  1303)
	MisResultAction(SetRecord,  1303)
	MisResultAction(ClearMission,  1303)

------------------------------------------------------------简单任务
	DefineMission( 6004, "Simple Mission", 1304 )

	MisBeginTalk( "<t>I never like to trouble others, help me find 30 <bGigantic Stramonium Flower>, 30 <bQuality Caviar>, 30 <bCompressed Energy III> as a gift, hehe..." )
	MisBeginCondition(NoRecord, 1304)
	MisBeginCondition(HasRecord, 1303)
	MisBeginCondition(NoMission, 1304)
	MisBeginAction(AddMission, 1304)
	MisBeginAction(AddTrigger, 13041, TE_GETITEM, 4730, 30 )
	MisBeginAction(AddTrigger, 13042, TE_GETITEM, 1358, 30 )
	MisBeginAction(AddTrigger, 13043, TE_GETITEM, 2619, 30 )
	MisCancelAction(ClearMission, 1304)
	
	MisNeed(MIS_NEED_ITEM, 4730, 30, 10, 30)
	MisNeed(MIS_NEED_ITEM, 1358, 30, 50, 30)
	MisNeed(MIS_NEED_ITEM, 2619, 30, 90, 30)

	MisResultTalk("<t>These are the ingredients in making Mao Wine! I gave those away when I quit drinking to go on a diet.")
	MisHelpTalk("<t>I discovered that quit drinking doesn't help in getting thin so...")
	MisResultCondition(HasMission, 1304)
	MisResultCondition(HasItem, 4730, 30 )
	MisResultCondition(HasItem, 1358, 30 )
	MisResultCondition(HasItem, 2619, 30 )
	MisResultAction(TakeItem, 4730, 30 )
	MisResultAction(TakeItem, 1358, 30 )
	MisResultAction(TakeItem, 2619, 30 )
	MisResultAction(ClearMission, 1304)
	MisResultAction(SetRecord, 1304 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4730)	
	TriggerAction( 1, AddNextFlag, 1304, 10, 30 )
	RegCurTrigger( 13041 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1358)	
	TriggerAction( 1, AddNextFlag, 1304, 50, 30 )
	RegCurTrigger( 13042 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2619)	
	TriggerAction( 1, AddNextFlag, 1304, 90, 30 )
	RegCurTrigger( 13043 )




------------------------------------------------------------戒酒记
	DefineMission( 6005, "Day of Abstinence", 1305)

	MisBeginTalk( "<t>This is really a good wine...But it is too troublesome to brew on my own. Go get me a few bottles more." )
	MisBeginCondition(NoRecord, 1305)
	MisBeginCondition(HasRecord, 1304)
	MisBeginCondition(NoMission, 1305)
	MisBeginAction(AddMission, 1305)
	MisBeginAction(AddTrigger, 13051, TE_GETITEM, 1087, 30 )		
	MisCancelAction(ClearMission, 1305)
	
	MisNeed(MIS_NEED_ITEM, 1087, 30, 10, 30)

	MisResultTalk("<t>Good wine!Good wine!")
	MisHelpTalk("<t>Be quick,if my urge to drink passes, don't blame me for being nasty")
	MisResultCondition(HasMission, 1305)
	MisResultCondition(HasItem, 1087, 30 )
	MisResultAction(TakeItem, 1087, 30 )
	MisResultAction(ClearMission, 1305)
	MisResultAction(SetRecord, 1305 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1087)	
	TriggerAction( 1, AddNextFlag, 1305, 10, 30 )
	RegCurTrigger( 13051 )

------------------------------------------------------------戒酒记
	DefineMission( 6006, "Day of Abstinence", 1306)

	MisBeginTalk( "<t>Someone famous once told me, to see how the taste of Dukan Wine and Mao Wine differs, you need to taste it yourself. You don't mind getting me a few bottles of Dukan Wine, do you?" )
	MisBeginCondition(NoRecord, 1306)
	MisBeginCondition(HasRecord, 1305)
	MisBeginCondition(NoMission, 1306)
	MisBeginAction(AddMission, 1306)
	MisBeginAction(AddTrigger, 13061, TE_GETITEM, 1088, 20 )		--
	MisCancelAction(ClearMission, 1306)
	
	MisNeed(MIS_NEED_ITEM, 1088, 20, 10, 20)

	MisResultTalk("<t>Only Dukan can relieve woes!")
	MisHelpTalk("<t>I advise against giving me any fake items. I just drank some wine, and I may do something nasty")
	MisResultCondition(HasMission, 1306)
	MisResultCondition(HasItem, 1088, 20 )
	MisResultAction(TakeItem, 1088, 20 )
	MisResultAction(ClearMission, 1306)
	MisResultAction(SetRecord, 1306 )
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 1088)	
	TriggerAction( 1, AddNextFlag, 1306, 10, 20 )
	RegCurTrigger( 13061 )



------------------------------------------------------------戒酒记
	DefineMission( 6007, "Day of Abstinence", 1307)

	MisBeginTalk( "<t>After tasting them, I think Mao Wine would suit me more. I think I would need to stock up 20 bottles in the wine cellar. You think so too, don't you?" )
	MisBeginCondition(NoRecord, 1307)
	MisBeginCondition(HasRecord, 1306)
	MisBeginCondition(NoMission, 1307)
	MisBeginAction(AddMission, 1307)
	MisBeginAction(AddTrigger, 13071, TE_GETITEM, 1087, 20 )		--
	MisCancelAction(ClearMission, 1307)
	
	MisNeed(MIS_NEED_ITEM, 1087, 20, 10, 20)

	MisResultTalk("<t>Wine gets better as it gets older...Ah...")
	MisHelpTalk("<t>Famous quotes: Never argue with a drunk.")
	MisResultCondition(HasMission, 1307)
	MisResultCondition(HasItem, 1087, 20 )
	MisResultAction(TakeItem, 1087, 20 )
	MisResultAction(ClearMission, 1307)
	MisResultAction(SetRecord, 1307 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1087)	
	TriggerAction( 1, AddNextFlag, 1307, 10, 20 )
	RegCurTrigger( 13071 )

------------------------------------------------------------戒酒记
	DefineMission( 6008, "Day of Abstinence", 1008)

	MisBeginTalk( "<t>I need to quit drinking! I think I have been drinking too much lately. I have signs of internal bleeding. Nobody stop me! I heard that Ginseng Wine is a good remedy for internal bleeding. Hmm...You know what i mean?" )
	MisBeginCondition(NoRecord, 1008)
	MisBeginCondition(HasRecord, 1307)
	MisBeginCondition(NoMission, 1008)
	MisBeginAction(AddMission, 1008)
	MisBeginAction(AddTrigger, 10081, TE_GETITEM, 1089, 15 )		--
	MisCancelAction(ClearMission, 1008)
	
	MisNeed(MIS_NEED_ITEM, 1089, 15, 10, 15)

	MisResultTalk("<t>I have not tasted Tiger Bone Tonic in a long time…")
	MisHelpTalk("<t>Young man, its not good to drink too much,it might hinder you…")
	MisResultCondition(HasMission, 1008)
	MisResultCondition(HasItem, 1089, 15 )
	MisResultAction(TakeItem, 1089, 15 )
	MisResultAction(ClearMission, 1008)
	MisResultAction(SetRecord, 1008 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1089)	
	TriggerAction( 1, AddNextFlag, 1008, 10, 15 )
	RegCurTrigger( 10081 )


------------------------------------------------------寻访魔方导游
	DefineMission( 6009, "Seek out Demonic Guide", 1009 )

	MisBeginTalk( "<t>To express my thanks, I will give you this piece of fragment that symbolize virtue. In my drunken state, I remember seeing a guy in Demonic World having part of this fragment as well. You will have to look around to complete the piece. I heard that rebirth enable you to redistribute your stats..." )
	MisBeginCondition(NoRecord,   1009)
	MisBeginCondition(HasRecord, 1008)
	MisBeginCondition(NoMission,  1009)
	MisBeginAction(AddMission,  1009)
	MisBeginAction(GiveItem, 2227, 1, 4 )
	MisCancelAction(ClearMission, 1009)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Search for Demonic World's Mysterious Guardian")
	MisHelpTalk("<t>I really can't recall.")
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------寻访魔方导游
	DefineMission( 6010, "Seek out Demonic Guide", 1009, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>I may be the guide of demonic world but I do not conduct tours. I only give directions, as I often get lost...")
	MisResultCondition(NoRecord,  1009)
	MisResultCondition(HasMission,  1009)
	MisResultAction(SetRecord,  1009)
	MisResultAction(ClearMission,  1009)
----------------------------------------------------------加勒比观光游
	DefineMission( 6011, "Caribbean 1 day tour", 1010 )
	MisBeginTalk("<t>The incident happened a long time ago. This fragment has given me endless nightmares. I wish to return it before I retire, however, I have no means to get to heaven. Have you been to the Caribbean? If you can defeat Deathsoul Commander, I will consider to give this fragment to you.")
				
	MisBeginCondition(NoMission, 1010)
	MisBeginCondition(HasRecord, 1009)
	MisBeginCondition(NoRecord,1010)	
	MisBeginAction(AddMission,1010)
	MisBeginAction(AddTrigger, 10101, TE_KILL, 807, 1)--亡灵司令(807)  
	MisCancelAction(ClearMission, 1010)

	MisNeed(MIS_NEED_DESP, "Kill Deathsoul Commander")
	MisNeed(MIS_NEED_KILL, 807,1, 10, 1)
	
	
	MisResultTalk("<t>The scenery of Caribbean is beautiful, but the monsters are too fearsome!")
	MisHelpTalk("<t>This task should be simple")
	MisResultCondition(HasMission,  1010)
	MisResultCondition(HasFlag, 1010, 10)
	MisResultCondition(NoRecord , 1010)
	MisResultAction(ClearMission,  1010)
	MisResultAction(SetRecord,  1010 )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 807)	
	TriggerAction( 1, AddNextFlag, 1010, 10, 1 )
	RegCurTrigger( 10101 )

	


----------------------------------------------------------加勒比观光游
	DefineMission( 6012, "Carribean 2 days tour", 1011 )
	MisBeginTalk("<t>I wonder why do I hate those from the Caribbean. It would be better off if all are dead...especially that Barborosa")
				
	MisBeginCondition(NoMission, 1011)
	MisBeginCondition(NoRecord,1011)
	MisBeginCondition(HasRecord, 1010)
	MisBeginAction(AddMission,1011)
	MisBeginAction(AddTrigger, 10111, TE_KILL, 805, 1)--巴伯萨(805)
	MisCancelAction(ClearMission, 1011)

	MisNeed(MIS_NEED_DESP, "Kill Barborosa!")
	MisNeed(MIS_NEED_KILL, 805,1, 10, 1)
	

	MisResultTalk("<t>I knew you would want to start a killing spree in Carribean")
	MisHelpTalk("Leave none alive!")
	MisResultCondition(HasMission,  1011)
	MisResultCondition(HasFlag, 1011, 10)
	MisResultCondition(NoRecord , 1011)
	MisResultAction(ClearMission,  1011)
	MisResultAction(SetRecord,  1011 )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 805)	
	TriggerAction( 1, AddNextFlag, 1011, 10, 1 )
	RegCurTrigger( 10111 )
	
	----------------------------------------------------------加勒比观光游
	DefineMission( 6013, "Caribbean Tour 2", 1012 )
	MisBeginTalk("<t>I can see that you aren't satisfied with a 2 days tour of Carribean Island. No need to thank me, I've already applied for another tour for you. Hehe! Kill the irritating Kraken!")
				
	MisBeginCondition(NoMission, 1012)
	MisBeginCondition(NoRecord,1012)
	MisBeginCondition(HasRecord, 1011)
	MisBeginAction(AddMission,1012)
	MisBeginAction(AddTrigger, 10121, TE_KILL, 796, 1)---史前大章鱼
	
	MisCancelAction(ClearMission, 1012)

	MisNeed(MIS_NEED_DESP, "Kill Kraken!")
	MisNeed(MIS_NEED_KILL, 796,1, 10, 1)
	

	MisResultTalk("<t>The world was never this beautiful. Your ability has convinced me. Here take this Shard of Love and I hope that you will find your purest love.")
	MisHelpTalk("<t>Let that octopus disappear from this world!")
	MisResultCondition(HasMission,  1012)
	MisResultCondition(HasFlag, 1012, 10)
	MisResultCondition(NoRecord , 1012)
	MisResultAction(GiveItem, 2226, 1, 4 )
	MisResultAction(ClearMission,  1012)
	MisResultAction(SetRecord,  1012 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 796)	
	TriggerAction( 1, AddNextFlag, 1012, 10, 1 )
	RegCurTrigger( 10121 )
	
	------------------------------------------------------谁是守护者
	DefineMission( 6014, "Who is the Guardian", 1013 )

	MisBeginTalk( "<t>My friend, seek it out fast, rebirth will allow you to soar above the rest! I vaguely remembered that Icicle City do have a guardian…" )
	MisBeginCondition(NoRecord,   1013)
	MisBeginCondition(HasRecord, 1012)
	MisBeginCondition(NoMission,  1013)
	MisBeginAction(AddMission,  1013)
	MisCancelAction(ClearMission, 1013)
	

	MisNeed(MIS_NEED_DESP, "Search for the next guardian")
	MisHelpTalk("<t>Still not moving out? You want another 3 days tour?")
	
	MisResultCondition(AlwaysFailure)

	-------------------------------------------------情人节的礼物----------沙泉补给站找NPC菲菲对话：（男性角色）	
	DefineMission (5503, "Valentine's Day gift", 825)
	
	MisBeginTalk("<t>Want to leave some pleasant memories for your love one? Help me collect one rose and 10 Heart of Naiad. I'll give you a surprise that your love one will definitely like.")

	MisBeginCondition(NoMission,825)
	MisBeginCondition(NoRecord,825)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoChaType,3)
	MisBeginCondition(NoChaType,4)
	MisBeginAction(AddMission,825)
	MisBeginAction(AddTrigger, 8251, TE_GETITEM, 3343, 1)
	MisBeginAction(AddTrigger, 8252, TE_GETITEM, 4418, 10)
	MisCancelAction(ClearMission, 825)
	
	MisNeed(MIS_NEED_DESP, "Collect 1 Rose, 10 Heart of Naiad.")
	MisNeed(MIS_NEED_ITEM, 3343, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4418, 10, 20, 10 )

	MisHelpTalk("<t>Will it snow this Valentine's Day?")
	MisResultTalk("<t>Very good, this is Gift of the Beauty. Give it to the person you love. She will definitely be touched.")


	MisResultCondition(HasMission, 825)
	MisResultCondition(NoRecord,825)
	MisResultCondition(HasItem, 3343, 1)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 3343, 1 )
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 825)
	MisResultAction(SetRecord,  825 )
	MisResultAction(GiveItem, 2904, 1, 4)
	MisResultBagNeed(1)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3343)	
	TriggerAction( 1, AddNextFlag, 825, 10, 1 )
	RegCurTrigger( 8251 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 825, 20, 10 )
	RegCurTrigger( 8252 )

-------------------------------------------------情人节的礼物----------冰极补给站找NPC法迪尔对话：（女性角色）	
	DefineMission (5504, "Valentine's Day gift", 826)
	
	MisBeginTalk("<t>Want to leave some pleasant memories for your love one? Help me collect one rose and 10 Heart of Naiad. I'll give you a surprise that your love one will definitely like.")

	MisBeginCondition(NoMission,826)
	MisBeginCondition(NoRecord,826)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoChaType,1)
	MisBeginCondition(NoChaType,2)
	MisBeginAction(AddMission,826)
	MisBeginAction(AddTrigger, 8261, TE_GETITEM, 3343, 1)
	MisBeginAction(AddTrigger, 8262, TE_GETITEM, 4418, 10)
	MisCancelAction(ClearMission, 826)
	
	MisNeed(MIS_NEED_DESP, "Collect 1 Rose, 10 Heart of Naiad.")
	MisNeed(MIS_NEED_ITEM, 3343, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4418, 10, 20, 10 )

	MisHelpTalk("<t>Will it snow this Valentine's Day?")
	MisResultTalk("<t>Very good, heres Gift of the Hunk. Give this to your love one and he will be moved!")


	MisResultCondition(HasMission, 826)
	MisResultCondition(NoRecord,826)
	MisResultCondition(HasItem, 3343, 1)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 3343, 1 )
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 826)
	MisResultAction(SetRecord,  826 )
	MisResultAction(GiveItem, 2905, 1, 4)
	MisResultBagNeed(1)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3343)	
	TriggerAction( 1, AddNextFlag, 826, 10, 1 )
	RegCurTrigger( 8261 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 826, 20, 10 )
	RegCurTrigger( 8262 )


-----------------------------------------------七猪开泰---------玛拉依兰
	DefineMission(5505,"Fortune of 7 Pigs",827)

      MisBeginTalk("<t>Want to gain the favor of the Piggy God? Go forth and hunt 1 of each: Snowy Piglet, Piglet, Tusk Battle Boar, Air Porky, Mad Boar, Combat Piglet and Snowy Tusk Boar.")

      MisBeginCondition(NoRecord,827)
      MisBeginCondition(NoMission,827)
      MisBeginAction(AddMission,827)
      MisBeginAction(AddTrigger, 8271, TE_KILL,239, 1)
      MisBeginAction(AddTrigger, 8272, TE_KILL,237, 1)
      MisBeginAction(AddTrigger, 8273, TE_KILL, 264, 1)
      MisBeginAction(AddTrigger, 8274, TE_KILL, 295, 1)
      MisBeginAction(AddTrigger, 8275, TE_KILL, 64, 1)
      MisBeginAction(AddTrigger, 8276, TE_KILL, 296, 1)
      MisBeginAction(AddTrigger, 8277, TE_KILL, 144, 1)
      MisCancelAction(ClearMission, 827)

      MisNeed(MIS_NEED_DESP, "Snowy Piglet, Piglet, Tusk Battle Boar, Air Porky, Mad Boar, Combat Piglet and Snowy Tusk Boar, 1 of each")
      MisNeed(MIS_NEED_KILL, 239, 1, 10, 1)
      MisNeed(MIS_NEED_KILL, 237, 1, 20, 1)
      MisNeed(MIS_NEED_KILL, 264, 1, 30, 1)
      MisNeed(MIS_NEED_KILL, 295, 1, 40, 1)
      MisNeed(MIS_NEED_KILL, 64, 1, 50, 1)
      MisNeed(MIS_NEED_KILL, 296, 1, 60, 1)
      MisNeed(MIS_NEED_KILL, 144, 1, 70, 1)


      MisHelpTalk("<t>Happy New Year, Fortune of 7 Pigs. ")  
      MisResultTalk("<t>Well done!")
      MisResultCondition(HasMission,827 )
      MisResultCondition(NoRecord,827)
      MisResultCondition(HasFlag, 827, 10)
      MisResultCondition(HasFlag, 827, 20)
      MisResultCondition(HasFlag, 827, 30)
      MisResultCondition(HasFlag, 827, 40)
      MisResultCondition(HasFlag, 827, 50)
      MisResultCondition(HasFlag, 827, 60)
      MisResultCondition(HasFlag, 827, 70)
      MisResultAction(GiveItem, 855, 10, 4 )
      MisResultAction(ClearMission, 827 )
      MisResultAction(SetRecord, 827)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 239 )
      TriggerAction( 1, AddNextFlag, 827, 10, 1 )
      RegCurTrigger( 8271 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 237 )
      TriggerAction( 1, AddNextFlag, 827, 20, 1 )
      RegCurTrigger( 8272 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,264  )
      TriggerAction( 1, AddNextFlag, 827, 30, 1 )
      RegCurTrigger( 8273 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 295 )
      TriggerAction( 1, AddNextFlag, 827, 40, 1 )
      RegCurTrigger( 8274 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 64 )
      TriggerAction( 1, AddNextFlag, 827, 50, 1 )
      RegCurTrigger( 8275 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,296)
      TriggerAction( 1, AddNextFlag, 827, 60, 1 )
      RegCurTrigger( 8276 )

      InitTrigger()
      TriggerCondition( 1, IsMonster,144)
      TriggerAction( 1, AddNextFlag, 827, 70, 1 )
      RegCurTrigger( 8277 )

-------------------------------------------------幸运猪猪----------玛拉依兰	
	DefineMission (5506, "Lucky Piggy", 828)
	
	MisBeginTalk("<t>But without Lucky Piggy Clover, Piggy God will not bother with you! Go collect Lucky Piggy Clover! <bObtainable from Item Mall>. You will stand a chance to obtain Gem of Colossus, Gem of Rage, Gem of Striking, Gem of the Wind, Gem of Soul, Goddess's Pouch, First Prize etc! There will be a <r30000G handling fee>.")

	MisBeginCondition(NoMission,828)
	MisBeginCondition(HasRecord,827)
	MisBeginCondition(NoRecord,828)
	MisBeginAction(AddMission,828)
	MisBeginAction(AddTrigger, 8281, TE_GETITEM, 2908, 1)
	MisCancelAction(ClearMission, 828)
	
	MisNeed(MIS_NEED_ITEM, 2908, 1, 10, 1)
	

	MisHelpTalk("<t>Hurry on, surprise wait for no one")
	MisResultTalk("<t>Very well. The Piggy God has bestowed upon you this mystery treasure chest. Open it to take a look!")

	MisResultCondition(HasMission, 828)
	MisResultCondition(NoRecord,828)
	MisResultCondition(HasItem, 2908, 1)
	MisResultCondition(HasMoney, 30000)
	MisResultAction(TakeItem, 2908, 1 )
	MisResultAction(TakeMoney,30000 )
	MisResultAction(ClearMission, 828)
	MisResultAction(SetRecord,  828 )
	MisResultAction(GiveItem, 2909, 1, 4)
	MisResultAction(ClearRecord, 828)---------------可以反复接
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2908)	
	TriggerAction( 1, AddNextFlag, 828, 10, 1 )
	RegCurTrigger( 8281 )

	
-----------------------------------------------海盗王压岁大礼---------白银商城新手指导
	DefineMission(5507,"Auspicious Gift",829)

      MisBeginTalk("<t> It's the Year of The Pig. Go catch 20 Piglets and y can receive a PKO's Auspicious packet.")

      MisBeginCondition(NoRecord,829)
      MisBeginCondition(NoMission,829)
      MisBeginCondition(LvCheck, ">",45)
      MisBeginAction(AddMission,829)
      MisBeginAction(AddTrigger, 8291, TE_KILL,237, 20)
      MisCancelAction(ClearMission, 829)

      MisNeed(MIS_NEED_DESP, "Catch 20 Piglets.")
      MisNeed(MIS_NEED_KILL, 237, 20, 10, 20)
     
      MisHelpTalk("<t>Time waits for no one.")  
      MisResultTalk("<t>Not bad! This is Tales of Pirates's Piggy Year Auspicious Bag! If you open it on Lunar New Year's Eve at the 17th February from 23:00 to 01:00 of 18th February, you stand a chance to win a super gift.")
      MisResultCondition(HasMission,829 )
      MisResultCondition(NoRecord,829)
      MisResultCondition(HasFlag, 829, 29)
      MisResultAction(GiveItem, 2910, 1, 4 )
      MisResultAction(ClearMission, 829 )
      MisResultAction(SetRecord, 829)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 237 )
      TriggerAction( 1, AddNextFlag, 829, 10, 20 )
      RegCurTrigger( 8291 )
       
-------------------------------------------------情为何物----------玛拉依兰	
	DefineMission (5508, "What is love", 830)
	
	MisBeginTalk("<t>Love transends all things! If you believe in fate, I can help you fulfil your long cherished wish! But before that, you must first pass my Test, to prove ur worth.")

	MisBeginCondition(NoMission,830)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoRecord,830)
	MisBeginAction(AddMission,830)
	MisBeginAction(AddTrigger, 8301, TE_GETITEM, 4418, 10 )
	MisCancelAction(ClearMission, 830)
	
	MisNeed(MIS_NEED_ITEM, 4418, 10, 10, 10 )
	

	MisHelpTalk("<t>Don't let your love ones wait too long!")
	MisResultTalk("<t>Very well! You have done well! This is a Chest of Fate. Open it and you will not be alone anymore!")

	MisResultCondition(HasMission, 830)
	MisResultCondition(NoRecord,830)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 830)
	MisResultAction(SetRecord,  830 )
	MisResultAction(GiveItem, 2916, 1, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 830, 10, 10 )
	RegCurTrigger( 8301 )


	-------------------------------------------------倾城之恋----------玛拉依兰	
	DefineMission (5509, "Beautiful Love", 831)
	
	MisBeginTalk("<t>Youngster! Seek out your true love today! Look for the other half with a similar <bLove Number> and also a  <rRed Rope> to tie your fate together. I will await for both of you to bring me <rLove Amulets>.")

	MisBeginCondition(NoMission,831)
	MisBeginCondition(NoMission,832)
	MisBeginCondition(HasRecord,830)
	MisBeginCondition(NoRecord,831)
	MisBeginCondition(NoRecord,832)
	MisBeginCondition(NoChaType,1)
	MisBeginCondition(NoChaType,2)
	MisBeginCondition(HasItem, 2902, 1)
	MisBeginAction(AddTrigger, 8311, TE_GETITEM, 2903, 1 )
	MisBeginAction(AddTrigger, 8312, TE_GETITEM, 2845, 1 )
	MisBeginAction(AddMission,831)
	MisCancelAction(ClearMission, 831)
	

	MisNeed(MIS_NEED_ITEM, 2903, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2845, 1, 20, 1 )


	MisHelpTalk("<t>Remember that you and your loved one need to bring <rAmulets with the same Love Number>")
	MisResultTalk("<t>Both of you are a matching couple! Congratulations! Allow me to award both of you with 2 Chest of Gown. A person can only open it once! May God bless you!")

	MisResultCondition(HasMission, 831)
	MisResultCondition(NoRecord,831)
	MisResultCondition(HasItem, 2902, 1)
	MisResultCondition(HasItem, 2903, 1)
	MisResultCondition(HasItem, 2845, 1)
	MisResultCondition(CheckItem,2902,2903)
	MisResultAction(TakeItem, 2902, 1 )
	MisResultAction(TakeItem, 2903, 1 )
	MisResultAction(TakeItem, 2845, 1 )
	MisResultAction(ClearMission, 831)
	MisResultAction(SetRecord,  831 )
	MisResultAction(GiveItem, 2915, 2, 4)
	MisResultAction(Starteffect,  370 )
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2903)	
	TriggerAction( 1, AddNextFlag, 831, 10, 1 )
	RegCurTrigger( 8311 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2845)	
	TriggerAction( 1, AddNextFlag, 831, 20, 1 )
	RegCurTrigger( 8312 )
		-------------------------------------------------倾城之恋----------玛拉依兰	
	DefineMission (5536, "Beautiful Love", 832)
	
	MisBeginTalk("<t>Youngster! Seek out your true love today! Look for the other half with a similar <bLove Number> and also a  <rRed Rope> to tie your fate together. I will await for both of you to bring me <rLove Amulets>.")

	MisBeginCondition(NoMission,832)
	MisBeginCondition(NoMission,831)
	MisBeginCondition(HasRecord,830)
	MisBeginCondition(NoRecord,831)
	MisBeginCondition(NoRecord,832)
	MisBeginCondition(NoChaType,3)
	MisBeginCondition(NoChaType,4)
	MisBeginCondition(HasItem, 2903, 1)
	MisBeginAction(AddTrigger, 8321, TE_GETITEM, 2902, 1 )
	MisBeginAction(AddTrigger, 8322, TE_GETITEM, 2845, 1 )
	MisBeginAction(AddMission,832)
	MisCancelAction(ClearMission, 832)
	

	MisNeed(MIS_NEED_ITEM, 2902, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2845, 1, 20, 1 )


	MisHelpTalk("<t>Remember that you and your loved one need to bring <rAmulets with the same Love Number>")
	MisResultTalk("<t>Both of you are a matching couple! Congratulations! Allow me to award both of you with 2 Chest of Gown. A person can only open it once! May God bless you!")

	MisResultCondition(HasMission, 832)
	MisResultCondition(NoRecord,832)
	MisResultCondition(HasItem, 2902, 1)
	MisResultCondition(HasItem, 2903, 1)
	MisResultCondition(HasItem, 2845, 1)
	MisResultCondition(CheckItem,2902,2903)
	MisResultAction(TakeItem, 2902, 1 )
	MisResultAction(TakeItem, 2903, 1 )
	MisResultAction(TakeItem, 2845, 1 )
	MisResultAction(ClearMission, 832)
	MisResultAction(SetRecord,  832 )
	MisResultAction(GiveItem, 2915, 2, 4)
	MisResultAction(Starteffect,  370 )
	MisResultBagNeed(2)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2902)	
	TriggerAction( 1, AddNextFlag, 832, 10, 1 )
	RegCurTrigger( 8321 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2845)	
	TriggerAction( 1, AddNextFlag, 832, 20, 1 )
	RegCurTrigger( 8322 )



	-------------------------------------------------挑战吉尼斯1	
	DefineMission (5510, "Challenge Genesis", 743)
	
	MisBeginTalk("<t>Want to be the number 1 pirate warrior? Feel like challenging your limit? Then come experience the Pirate King 07 Sea Course! You can start from Argent City and travel to Sara Haven. From there, the Harbor Operator will inform you of your next location. <rThis Challenge Letter can record your time. Now this letter have to be placed in the first slot of ur bag, and never must it be moved throughout the whole journey>, take it.")

	MisBeginCondition(NoMission,743)
	MisBeginCondition(NoRecord,743)
	MisBeginCondition(CheckBagEmp,0)
	MisBeginAction(AddMission,743)
	MisBeginAction(AddChaItem1, 2911)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "First stop is Sara Haven. Harbor Operator Whitneyis the one you should look for.")
	
	MisHelpTalk("<t>Everyone who wishes to obtain Black Dragon equipment are all fighting for it")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯1

	DefineMission(5511,"Challenge Genesis",743,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Thanks for your trouble!")
	MisResultCondition(HasMission, 743)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultCondition(NoRecord,743)
	MisResultAction(ClearMission, 743)
	MisResultAction(SetRecord,743 )
	


	-------------------------------------------------挑战吉尼斯2	
	DefineMission (5512, "Challenge Genesis 2", 744)
	
	MisBeginTalk("<t>You are not that fast, someone already pass by here. Heres your pass. Be on your way now, Hubble Haven's Harbor Operator Dannis is waiting for you!")

	MisBeginCondition(NoMission,744)
	MisBeginCondition(HasRecord, 743)
	MisBeginCondition(NoRecord,744)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,744)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "Next stop is Hubble Haven. You will need to locate Harbor Operator - Dannis at (136, 3432)")
	
	MisHelpTalk("<t>Everyone who wishes to obtain Black Dragon equipment are all fighting for it")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯2

	DefineMission(5513,"Challenge Genesis 2",744,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Your sense of timing is really not strong")
	MisResultCondition(HasMission, 744)
	MisResultCondition(NoRecord,744)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 744)
	MisResultAction(SetRecord,  744 )

	

	-------------------------------------------------挑战吉尼斯3	
	DefineMission (5514, "Challenge Genesis", 745)
	
	MisBeginTalk("<t>This is your official letter! Go! Didance at Gelada Haven awaits you!")

	MisBeginCondition(NoMission,745)
	MisBeginCondition(HasRecord, 744)
	MisBeginCondition(NoRecord,745)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,745)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "Next stop is Gelada Haven, you need to locate Harbor Operator Didane at (1544, 3712)")
	
	MisHelpTalk("<t>Everyone who wishes to obtain Black Dragon equipment are all fighting for it")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯3

	DefineMission(5515,"Challenge Genesis",745,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Was your voyage smooth?")
	MisResultCondition(HasMission, 745)
	MisResultCondition(NoRecord,745)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 745)
	MisResultAction(SetRecord,  745 )



	-------------------------------------------------挑战吉尼斯4	
	DefineMission (5516, "Challenge Genesis 4", 746)
	
	MisBeginTalk("<t>I have been to busy to meet up with Harbor Operator - Soc of Ethio Haven lately.")

	MisBeginCondition(NoMission,746)
	MisBeginCondition(HasRecord, 745)
	MisBeginCondition(NoRecord,746)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,746)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "Next stop is Ethio Haven. You will need to locate Harbor Operator Soc at (3194, 3507)")
	
	MisHelpTalk("<t>Everyone who wishes to obtain Black Dragon equipment are all fighting for it")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯4

	DefineMission(5517,"Challenge Genesis 4",746,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>You should have salvaged some treasures throughout your journey. I heard that the Titanic sunk around here.")
	MisResultCondition(HasMission, 746)
	MisResultCondition(NoRecord,746)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 746)
	MisResultAction(SetRecord,  746 )
	


	-------------------------------------------------挑战吉尼斯5	
	DefineMission (5518, "Challenge Genesis 5", 747)
	
	MisBeginTalk("<t>Although the scenary on the sea is great, but time is precious! Theres only 1 set of Black Dragon equipment! And Karalas Haven is still far.")

	MisBeginCondition(NoMission,747)
	MisBeginCondition(HasRecord,746)
	MisBeginCondition(NoRecord,747)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,747)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "Next stop is Karmas Haven. You will need to locate Harbor Operator Odie at (738, 3803)")
	
	MisHelpTalk("<t>Everyone who wishes to obtain Black Dragon equipment are all fighting for it")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯5

	DefineMission(5519,"Challenge Genesis 5",747,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>You are as slow as a Sandy Tortoise!")
	MisResultCondition(HasMission, 747)
	MisResultCondition(NoRecord,747)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 747)
	MisResultAction(SetRecord,  747 )
	


	-------------------------------------------------挑战吉尼斯6	
	DefineMission (5520, "Challenge Genesis6", 748)
	
	MisBeginTalk("<t>The nearby islands may have Sirens. My advice is to sail straight to Salva Haven. If you hear any beautiful music, be sure to cover your ears.")

	MisBeginCondition(NoMission,748)
	MisBeginCondition(HasRecord,747)
	MisBeginCondition(NoRecord,748)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,748)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "Next stop is Salva Haven, you need to locate Harbor Operator Gregory at (194, 1715)")
	
	MisHelpTalk("<t>Everyone who wishes to obtain Black Dragon equipment are all fighting for it")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯6

	DefineMission(5521,"Challenge Genesis6",748,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Sail and courage is a must for a sea voyage")
	MisResultCondition(HasMission, 748)
	MisResultCondition(NoRecord,748)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 748)
	MisResultAction(SetRecord,  748 )
	


	-------------------------------------------------挑战吉尼斯7	
	DefineMission (5522, "Challenge Genesis 7", 749)
	
	MisBeginTalk("<t>Work harder! Do what an adventurer have to do! Next stop: Lahu Haven")

	MisBeginCondition(NoMission,749)
	MisBeginCondition(HasRecord,748)
	MisBeginCondition(NoRecord,749)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,749)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "Next stop is at Lahu Haven. Look for Harbor Operator - Domoru (3498, 923)")
	
	MisHelpTalk("<t>Everyone who wishes to obtain Black Dragon equipment are all fighting for it")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯7

	DefineMission(5523,"Challenge Genesis 7",749,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Heard there is a lot of challengers? But...")
	MisResultCondition(HasMission, 749)
	MisResultCondition(NoRecord,749)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 749)
	MisResultAction(SetRecord,  749 )
	


	-------------------------------------------------挑战吉尼斯8	
	DefineMission (5524, "Challenge Genesis 8", 750)
	
	MisBeginTalk("<t>There is not much adventurer left on Lahu Haven. Did any misfortune befallen them? Aerase Haven's Harbor Operator - Buni should be all alone!")

	MisBeginCondition(NoMission,750)
	MisBeginCondition(HasRecord,749)
	MisBeginCondition(NoRecord,750)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,750)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "Next stop is at Aerase Haven. Look for Harbor Operator - Buni at (2042, 635)")
	
	MisHelpTalk("<t>Everyone who wishes to obtain Black Dragon equipment are all fighting for it")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯8

	DefineMission(5525,"Challenge Genesis 8",750,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Looks like you are pretty lucky.You didn't met with a whirlpool nor get eaten by a sea monster")
	MisResultCondition(HasMission, 750)
	MisResultCondition(NoRecord,750)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 750)
	MisResultAction(SetRecord,  750 )
	
	

	-------------------------------------------------挑战吉尼斯9	
	DefineMission (5526, "Challenge Genesis 9", 751)
	
	MisBeginTalk("<t>Thinking of the days that I sailed in the sea...Oh sorry, forgot that you are in a hurry. Harbor Operator - Luigi is waiting for you at Norite Harbor Haven.")

	MisBeginCondition(NoMission,751)
	MisBeginCondition(HasRecord,750)
	MisBeginCondition(NoRecord,751)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,751)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "Next stop is Norite Harbor Haven. Look for Harbor Operator Luigi at (464, 468)")
	
	MisHelpTalk("<t>Everyone who wishes to obtain Black Dragon equipment are all fighting for it")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯9

	DefineMission(5527,"Challenge Genesis 9",751,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Buni always like to waste time! I hate this type of person. Don't be wishy washy like him! Ok...I shall say no more…")
	MisResultCondition(HasMission, 751)
	MisResultCondition(NoRecord,751)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 751)
	MisResultAction(SetRecord,  751 )
	



	-------------------------------------------------挑战吉尼斯10	
	DefineMission (5528, "Challenge Genesis10", 752)
	
	MisBeginTalk("<t>Next stop: Reagen Haven.")

	MisBeginCondition(NoMission,752)
	MisBeginCondition(HasRecord,751)
	MisBeginCondition(NoRecord,752)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,752)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "Next stop is Reagen Haven. You will have to locate Harbor Operator Fardell at (3153, 674)")
	
	MisHelpTalk("<t>Everyone who wishes to obtain Black Dragon equipment are all fighting for it")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯10

	DefineMission(5529,"Challenge Genesis10",752,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>I can't help but mention that you need to move faster!")
	MisResultCondition(HasMission, 752)
	MisResultCondition(NoRecord,752)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 752)
	MisResultAction(SetRecord,  752 )
	


	-------------------------------------------------挑战吉尼斯11	
	DefineMission (5530, "Challenge Genesis 11", 753)
	
	MisBeginTalk("<t>Somebody might have reached Hafta Haven! Please hurry!")

	MisBeginCondition(NoMission,753)
	MisBeginCondition(HasRecord,752)
	MisBeginCondition(NoRecord,753)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,753)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "Next stop is Hafta Haven. You need to find Harbor Operator - Whitcombe at (2041, 1355).")
	
	MisHelpTalk("<t>Everyone who wishes to obtain Black Dragon equipment are all fighting for it")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯11

	DefineMission(5531,"Challenge Genesis 11",753,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Welcome to Hafta Haven!")
	MisResultCondition(HasMission, 753)
	MisResultCondition(NoRecord,753)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 753)
	MisResultAction(SetRecord,  753 )
	
	


	-------------------------------------------------挑战吉尼斯12	
	DefineMission (5532, "Challenge Genesis 12", 754)
	
	MisBeginTalk("<t>For honor and glory, you will have to work fast. Now go to Albania Haven!")

	MisBeginCondition(NoMission,754)
	MisBeginCondition(HasRecord,753)
	MisBeginCondition(NoRecord,754)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,754)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "Next stop is Albania Haven. You will need to locate Harbor Operator - Daruka at (1497, 1707)")
	
	MisHelpTalk("<t>Everyone who wishes to obtain Black Dragon equipment are all fighting for it")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯12

	DefineMission(5533,"Challenge Genesis 12",754,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Are you sure that you have tried your best?")
	MisResultCondition(HasMission, 754)
	MisResultCondition(NoRecord,754)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 754)
	MisResultAction(SetRecord,  754 )
	
	


	
	-------------------------------------------------挑战吉尼斯13	
	DefineMission (5534, "Challenge Genesis 13", 755)
	
	MisBeginTalk("<t>The goddess of victory is smiling at you! Rush towards the ending point now!")

	MisBeginCondition(NoMission,755)
	MisBeginCondition(HasRecord,754)
	MisBeginCondition(NoRecord,755)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,755)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "Next stop is at Thundoria Harbor. Look for Sailor Dio at (1083, 1285)")
	
	MisHelpTalk("<t>Everyone who wishes to obtain Black Dragon equipment are all fighting for it")
	MisResultCondition(AlwaysFailure )

	---------------------------------------挑战吉尼斯13

	DefineMission(5535,"Challenge Genesis 13",755,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>You are very brave. You are definitely  cut out to be a pirate. It will be a waste if you don't be one. This <rBawcock Letter> records the timing of your entire journey. Don't forget to collect your prize.")
	MisResultCondition(HasMission, 755)
	MisResultCondition(NoRecord,755)
	MisResultCondition(HasItem,2911,1)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(AddChaItem2, 2912)
	MisResultAction(ClearMission, 755)
	MisResultAction(SetRecord,  755 )
	MisResultBagNeed(2)
	MisResultAction(ClearRecord, 743)---------------可以反复接
	MisResultAction(ClearRecord, 744)---------------可以反复接
	MisResultAction(ClearRecord, 745)---------------可以反复接
	MisResultAction(ClearRecord, 746)---------------可以反复接
	MisResultAction(ClearRecord, 747)---------------可以反复接
	MisResultAction(ClearRecord, 748)---------------可以反复接
	MisResultAction(ClearRecord, 749)---------------可以反复接
	MisResultAction(ClearRecord, 750)---------------可以反复接
	MisResultAction(ClearRecord, 751)---------------可以反复接
	MisResultAction(ClearRecord, 752)---------------可以反复接
	MisResultAction(ClearRecord, 753)---------------可以反复接
	MisResultAction(ClearRecord, 754)---------------可以反复接
	MisResultAction(ClearRecord, 755)---------------可以反复接

	-------------------------------------------------乱斗英雄----------少女莘蒂	
	DefineMission (5536, "Vampiric Aries Battle Hero", 1060)
	
	MisBeginTalk("<t>A challenging Hero must be a Chaos expert. 10 Chaos points should not daunt you. ")

	MisBeginCondition(NoMission,1060)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1060)
	MisBeginAction(AddMission,1060)
	MisCancelAction(ClearMission, 1060)
	
	MisHelpTalk("<t>Its only 10 Chaos points. Work harder!")
	MisResultTalk("<t>I knew 10 Chaos points shouldn't be a problem for you")

	MisResultCondition(HasMission, 1060)
	MisResultCondition(NoRecord,1060)
	MisResultCondition(HasFightingPoint,10 )
	MisResultAction(TakeFightingPoint, 10 )
	MisResultAction(ClearMission, 1060)
	MisResultAction(SetRecord,  1060 )
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------名声英雄----------少女莘蒂	
	DefineMission (5537, "Vampiric Aries Renown Hero", 1061)
	
	MisBeginTalk("<t>How to do a challenge without 500 reputation points! I believe you will have a way to gain reputation points, such as getting a disciple… ")

	MisBeginCondition(NoMission,1061)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1061)
	MisBeginAction(AddMission,1061)
	MisCancelAction(ClearMission, 1061)
	
	MisHelpTalk("<t>Go now! I still have other important stuff to do!")
	MisResultTalk("<t>You sure have a way with this")

	MisResultCondition(HasMission, 1061)
	MisResultCondition(NoRecord,1061)
	MisResultCondition(HasCredit,500 )
	MisResultAction(TakeCredit, 500 )
	MisResultAction(ClearMission, 1061)
	MisResultAction(SetRecord,  1061 )
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------等级英雄----------少女莘蒂	
	DefineMission (5538, "Vampiric Aries Hero", 1062)
	
	MisBeginTalk("<t>You need to be at least Lv 40. Don't tell me you cannot do it ")

	MisBeginCondition(NoMission,1062)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1062)
	MisBeginAction(AddMission,1062)
	MisCancelAction(ClearMission, 1062)
	
	MisHelpTalk("<t>You better not return if you are lower than Lv 40")
	MisResultTalk("<t>You are so slow, I need to go out for a date soon")

	MisResultCondition(HasMission, 1062)
	MisResultCondition(NoRecord,1062)
	MisResultCondition(LvCheck, ">", 39 )
	MisResultAction(ClearMission, 1062)
	MisResultAction(SetRecord,  1062 )
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------荣誉英雄----------少女莘蒂	
	DefineMission (5539, "Vampiric Aries Honorable Hero", 1063)
	
	MisBeginTalk("<t>Honor is the combination of both courage and wisdom. I believe you will not let me down. Earn yourself 100 Honor points ")

	MisBeginCondition(NoMission,1063)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1063)
	MisBeginAction(AddMission,1063)
	MisCancelAction(ClearMission, 1063)
	
	MisHelpTalk("<t>I have a love letter to read. Remember to come back with Honor")
	MisResultTalk("<t>How should I reward you…How about a kiss?")

	MisResultCondition(HasMission, 1063)
	MisResultCondition(NoRecord,1063)
	MisResultCondition(HasHonorPoint,100 )
	MisResultAction(TakeHonorPoint, 100 )
	MisResultAction(ClearMission, 1063)
	MisResultAction(SetRecord,  1063 )
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------采集大使----------少女莘蒂	
	DefineMission (5540, "Vampiric Aries Gatherer Ambassador", 1064)
	
	MisBeginTalk("<t>Do you know that my friend has a Gatherer Emblem? If you wish to get it, prepare for yourself for some test. ")

	MisBeginCondition(NoMission,1064)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1064)
	MisBeginAction(AddMission,1064)
	MisBeginAction(AddTrigger, 10641, TE_GETITEM, 3116, 15 )---------------精灵果15
	MisBeginAction(AddTrigger, 10642, TE_GETITEM, 1678, 15 )---------------羊绒15
	MisBeginAction(AddTrigger, 10643, TE_GETITEM, 4809, 15 )-------------南瓜头15
	MisBeginAction(AddTrigger, 10644, TE_GETITEM, 0855, 20 )---------------精灵硬币20
	MisBeginAction(AddTrigger, 10645, TE_GETITEM, 4503, 1 )---------------皇冠1个
	MisBeginAction(AddTrigger, 10646, TE_GETITEM, 1848, 50 )-------------面包50
	MisCancelAction(ClearMission, 1064)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 50, 67, 50 )

	MisHelpTalk("<t>These items are not tough to find. Go now!")
	MisResultTalk("<t>I suspect you could actually gather alien matter")

	MisResultCondition(HasMission, 1064)
	MisResultCondition(NoRecord,1064)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 50 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 50 )
	MisResultAction(ClearMission, 1064)
	MisResultAction(SetRecord,  1064 )
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1064, 1, 15 )
	RegCurTrigger( 10641 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1064, 16, 15 )
	RegCurTrigger( 10642 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1064, 31, 15 )
	RegCurTrigger( 10643 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1064, 46, 20 )
	RegCurTrigger( 10644 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1064, 66, 1 )
	RegCurTrigger( 10645 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1064, 67, 50 )
	RegCurTrigger( 10646 )

	----------------------------------------------------------沉睡的白羊----------少女莘蒂
	DefineMission( 5541, "Vampiric Aries - Sleeping Aries", 1065 )
	MisBeginTalk("<t>There is a bad guy in shiny Aries armor nearby. Please help the villagers of Cupid Isle to get rid of him.")
				
	MisBeginCondition(NoMission, 1065)
	MisBeginCondition(HasRecord,836)
	MisBeginCondition(NoRecord,1065)
	MisBeginAction(AddMission,1065)
	MisBeginAction(AddTrigger, 10651, TE_KILL, 1009, 1)---白羊守护者
	
	MisCancelAction(ClearMission, 1065)

	MisNeed(MIS_NEED_DESP, "Kill the Aries Guardian on Cupid Isle at (2566, 2454)!")
	MisNeed(MIS_NEED_KILL, 1009,1, 10, 1)
	

	MisResultTalk("<t>Saving a damsel in distress does not happen daily. Moreover, he seldom appears.")
	MisHelpTalk("<t>Are you blessed by the gods? You seem invincible.")
	MisResultCondition(HasMission,  1065)
	MisResultCondition(HasFlag, 1065, 10)
	MisResultCondition(NoRecord , 1065)
	MisResultAction(GiveItem, 2950, 1, 4 )
	MisResultAction(ClearMission,  1065)
	MisResultAction(SetRecord,  1065 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1009)	
	TriggerAction( 1, AddNextFlag, 1065, 10, 1 )
	RegCurTrigger( 10651 )






-------------------------------------------------乱斗英雄----------少女莘蒂	
	DefineMission (5542, "Vampiric Aries Battle Hero", 1066)
	
	MisBeginTalk("<t>Challenging Hero needs to be an expert in Chaos combat. 20 Chaos points should not deter you")

	MisBeginCondition(NoMission,1066)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1066)
	MisBeginAction(AddMission,1066)
	MisCancelAction(ClearMission, 1066)
	
	MisHelpTalk("<t>Its only 20 Chaos points! Work harder!")
	MisResultTalk("<t>I knew that 20 Chaos points should not pose any difficulty for you")

	MisResultCondition(HasMission, 1066)
	MisResultCondition(NoRecord,1066)
	MisResultCondition(HasFightingPoint,20 )
	MisResultAction(TakeFightingPoint, 20 )
	MisResultAction(ClearMission, 1066)
	MisResultAction(SetRecord,  1066 )
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------名声英雄----------少女莘蒂	
	DefineMission (5543, "Vampiric Aries Renown Hero", 1067)
	
	MisBeginTalk("<t>How can you do a challenge when you have less than 1000 reputation points? Try getting a disciple to increase your reputation points ")

	MisBeginCondition(NoMission,1067)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1067)
	MisBeginAction(AddMission,1067)
	MisCancelAction(ClearMission, 1067)
	
	MisHelpTalk("<t>Go now! I still have other important stuff to do!")
	MisResultTalk("<t>You sure have a way with this")

	MisResultCondition(HasMission, 1067)
	MisResultCondition(NoRecord,1067)
	MisResultCondition(HasCredit,1000 )
	MisResultAction(TakeCredit, 1000 )
	MisResultAction(ClearMission, 1067)
	MisResultAction(SetRecord,  1067 )
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------等级英雄----------少女莘蒂	
	DefineMission (5544, "Vampiric Aries Hero", 1068)
	
	MisBeginTalk("<t>You need to be at least Lv 45. Don't tell me you cannot do it ")

	MisBeginCondition(NoMission,1068)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1068)
	MisBeginAction(AddMission,1068)
	MisCancelAction(ClearMission, 1068)
	
	MisHelpTalk("<t>Do not return if you are lower than Lv 45")
	MisResultTalk("<t>You are so slow, I need to go out for a date soon")

	MisResultCondition(HasMission, 1068)
	MisResultCondition(NoRecord,1068)
	MisResultCondition(LvCheck, ">", 44 )
	MisResultAction(ClearMission, 1068)
	MisResultAction(SetRecord,  1068 )
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------荣誉英雄----------少女莘蒂	
	DefineMission (5545, "Vampiric Aries Honorable Hero", 1069)
	
	MisBeginTalk("<t> Honor is the combination of both courage and wisdom. I believe you will not let me down. Earn yourself 200 Honor points ")

	MisBeginCondition(NoMission,1069)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1069)
	MisBeginAction(AddMission,1069)
	MisCancelAction(ClearMission, 1069)
	
	MisHelpTalk("<t>I have a love letter to read. Remember to come back with Honor")
	MisResultTalk("<t>How should I reward you…How about a kiss?")

	MisResultCondition(HasMission, 1069)
	MisResultCondition(NoRecord,1069)
	MisResultCondition(HasHonorPoint,200 )
	MisResultAction(TakeHonorPoint, 200 )
	MisResultAction(ClearMission, 1069)
	MisResultAction(SetRecord,  1069 )
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------采集大使----------少女莘蒂	
	DefineMission (5546, "Vampiric Aries Gatherer Ambassador", 1070)
	
	MisBeginTalk("<t>Do you know that my friend has a Gatherer Emblem? If you wish to get it, prepare for yourself for some test. ")

	MisBeginCondition(NoMission,1070)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1070)
	MisBeginAction(AddMission,1070)
	MisBeginAction(AddTrigger, 10701, TE_GETITEM, 3116, 15 )---------------精灵果15
	MisBeginAction(AddTrigger, 10702, TE_GETITEM, 1678, 15 )---------------羊绒15
	MisBeginAction(AddTrigger, 10703, TE_GETITEM, 4809, 15 )-------------南瓜头15
	MisBeginAction(AddTrigger, 10704, TE_GETITEM, 0855, 20 )---------------精灵硬币20
	MisBeginAction(AddTrigger, 10705, TE_GETITEM, 4503, 1 )---------------皇冠1个
	MisBeginAction(AddTrigger, 10706, TE_GETITEM, 1848, 40 )-------------蛋糕40
	MisBeginAction(AddTrigger, 10707, TE_GETITEM, 2673, 10 )-------------幻影发生器LV1  10
	MisCancelAction(ClearMission, 1070)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 40, 67, 40 )
	MisNeed(MIS_NEED_ITEM, 2673, 10, 107, 10 )

	MisHelpTalk("<t>These items are not tough to find. Go now!")
	MisResultTalk("<t>I suspect you could actually gather alien matter")

	MisResultCondition(HasMission, 1070)
	MisResultCondition(NoRecord,1070)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 40 )
	MisResultCondition(HasItem, 2673, 10 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 40 )
	MisResultAction(TakeItem, 2673, 10 )
	MisResultAction(ClearMission, 1070)
	MisResultAction(SetRecord,  1070 )
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1070, 1, 15 )
	RegCurTrigger( 10701 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1070, 16, 15 )
	RegCurTrigger( 10702 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1070, 31, 15 )
	RegCurTrigger( 10703 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1070, 46, 20 )
	RegCurTrigger( 10704 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1070, 66, 1 )
	RegCurTrigger( 10705 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1070, 67, 40 )
	RegCurTrigger( 10706 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2673)	
	TriggerAction( 1, AddNextFlag, 1070, 107, 10 )
	RegCurTrigger( 10707 )

	



-------------------------------------------------乱斗英雄----------少女莘蒂	
	DefineMission (5547, "Vampiric Aries Battle Hero", 1071)
	
	MisBeginTalk("<t>Challenging Hero must be a Chaos expert. 50 Chaos points should not be an issue. ")

	MisBeginCondition(NoMission,1071)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1071)
	MisBeginAction(AddMission,1071)
	MisCancelAction(ClearMission, 1071)
	
	MisHelpTalk("<t>Its only 50 Chaos points. Work harder!")
	MisResultTalk("<t>I knew that 50 Chaos points shouldn't be a problem for you")

	MisResultCondition(HasMission, 1071)
	MisResultCondition(NoRecord,1071)
	MisResultCondition(HasFightingPoint,50 )
	MisResultAction(TakeFightingPoint, 50 )
	MisResultAction(ClearMission, 1071)
	MisResultAction(SetRecord,  1071 )
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------名声英雄----------少女莘蒂	
	DefineMission (5548, "Vampiric Aries Renown Hero", 1072)
	
	MisBeginTalk("<t>How can a hero challenge with less than 3000 reputation points? I believe that you will have a way to gain those reputation, such as getting a disciple… ")

	MisBeginCondition(NoMission,1072)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1072)
	MisBeginAction(AddMission,1072)
	MisCancelAction(ClearMission, 1072)
	
	MisHelpTalk("<t>Go now! I still have other important stuff to do!")
	MisResultTalk("<t>You sure have a way with this")

	MisResultCondition(HasMission, 1072)
	MisResultCondition(NoRecord,1072)
	MisResultCondition(HasCredit,3000 )
	MisResultAction(TakeCredit, 3000 )
	MisResultAction(ClearMission, 1072)
	MisResultAction(SetRecord,  1072 )
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------等级英雄----------少女莘蒂	
	DefineMission (5549, "Vampiric Aries Hero", 1073)
	
	MisBeginTalk("<t>The minimum is Lv 50. Do not tell me you cannot do it ")

	MisBeginCondition(NoMission,1073)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1073)
	MisBeginAction(AddMission,1073)
	MisCancelAction(ClearMission, 1073)
	
	MisHelpTalk("<t>You dare to return without reaching Lv 50?")
	MisResultTalk("<t>You are so slow, I need to go out for a date soon")

	MisResultCondition(HasMission, 1073)
	MisResultCondition(NoRecord,1073)
	MisResultCondition(LvCheck, ">", 49 )
	MisResultAction(ClearMission, 1073)
	MisResultAction(SetRecord,  1073 )
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------荣誉英雄----------少女莘蒂	
	DefineMission (5550, "Vampiric Aries Honorable Hero", 1074)
	
	MisBeginTalk("<t>Honor is the combination of both courage and wisdom. I believe you will not let me down. Earn yourself 500 Honor points")

	MisBeginCondition(NoMission,1074)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1074)
	MisBeginAction(AddMission,1074)
	MisCancelAction(ClearMission, 1074)
	
	MisHelpTalk("<t>I have a love letter to read. Remember to come back with Honor")
	MisResultTalk("<t>How should I reward you…How about a kiss?")

	MisResultCondition(HasMission, 1074)
	MisResultCondition(NoRecord,1074)
	MisResultCondition(HasHonorPoint,500 )
	MisResultAction(TakeHonorPoint, 500 )
	MisResultAction(ClearMission, 1074)
	MisResultAction(SetRecord,  1074 )
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------采集大使----------少女莘蒂	
	DefineMission (5551, "Vampiric Aries Gatherer Ambassador", 1075)
	
	MisBeginTalk("<t>Do you know that my friend has a Gatherer Emblem? If you wish to get it, prepare for yourself for some test. ")

	MisBeginCondition(NoMission,1075)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1075)
	MisBeginAction(AddMission,1075)
	MisBeginAction(AddTrigger, 10751, TE_GETITEM, 3116, 15 )---------------精灵果15
	MisBeginAction(AddTrigger, 10752, TE_GETITEM, 1678, 15 )---------------羊绒15
	MisBeginAction(AddTrigger, 10753, TE_GETITEM, 4809, 15 )-------------南瓜头15
	MisBeginAction(AddTrigger, 10754, TE_GETITEM, 0855, 20 )---------------精灵硬币20
	MisBeginAction(AddTrigger, 10755, TE_GETITEM, 4503, 1 )---------------皇冠1个
	MisBeginAction(AddTrigger, 10756, TE_GETITEM, 1848, 40 )-------------蛋糕40
	MisBeginAction(AddTrigger, 10757, TE_GETITEM, 2673, 10 )-------------幻影发生器LV1  10
	MisBeginAction(AddTrigger, 10758, TE_GETITEM, 0227, 4 )-------------守护精灵饲料  4
	MisCancelAction(ClearMission, 1075)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 40, 67, 40 )
	MisNeed(MIS_NEED_ITEM, 2673, 10, 107, 10 )
	MisNeed(MIS_NEED_ITEM, 0227, 4, 117, 4 )

	MisHelpTalk("<t>These items are not tough to find. Go now!")
	MisResultTalk("<t>I suspect you could actually gather alien matter")

	MisResultCondition(HasMission, 1075)
	MisResultCondition(NoRecord,1075)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 40 )
	MisResultCondition(HasItem, 2673, 10 )
	MisResultCondition(HasItem, 0227, 4 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 40 )
	MisResultAction(TakeItem, 2673, 10 )
	MisResultAction(TakeItem, 0227, 4 )
	MisResultAction(ClearMission, 1075)
	MisResultAction(SetRecord,  1075 )
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1075, 1, 15 )
	RegCurTrigger( 10751 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1075, 16, 15 )
	RegCurTrigger( 10752 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1075, 31, 15 )
	RegCurTrigger( 10753 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1075, 46, 20 )
	RegCurTrigger( 10754 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1075, 66, 1 )
	RegCurTrigger( 10755 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1075, 67, 40 )
	RegCurTrigger( 10756 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2673)	
	TriggerAction( 1, AddNextFlag, 1075, 107, 10 )
	RegCurTrigger( 10757 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1075, 117, 4 )
	RegCurTrigger( 10758 )


	

	----------------------------------------------------------社交大使----------少女莘蒂
	DefineMission( 5552, "Vampiric Aries PKO Ambassador", 1076 )
	MisBeginTalk("<t>It takes intellect to become a pirate, to go around eating for free and having fun along the way, so you have to differentiate between important person and those who are not")
				
	MisBeginCondition(NoMission, 1076)
	MisBeginCondition(NoRecord,1076)
	MisBeginCondition(HasRecord, 836)
	MisBeginAction(AddMission,1076)
	MisCancelAction(ClearMission, 1076)

	MisNeed(MIS_NEED_DESP, "Look for Merman Prince Hassan in Shaitan at (1254, 3491)")
	
	MisHelpTalk("<t>You have to go even if you are familiar with that place. This is a quest")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使-----------------人鱼王子·哈沙特
	DefineMission(5553, "PKO Ambassador", 1076, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Do you know that I am the most handsome fellow here, and also the fastest swimmer!")
	MisResultCondition(NoRecord, 1076)
	MisResultCondition(HasMission,1076)
	MisResultAction(ClearMission,1076)
	MisResultAction(SetRecord, 1076)

	----------------------------------------------------------社交大使1----------人鱼王子·哈沙特
	DefineMission( 5554, "PKO Ambassador 2", 1077 )
	MisBeginTalk("<t>I prayed to the gods to turn me into a tree that she will pass by and rest upon daily. Indeed she do pass by that tree daily, but I have been turned into a fish…")
				
	MisBeginCondition(NoMission, 1077)
	MisBeginCondition(NoRecord,1077)
	MisBeginCondition(HasRecord, 1076)
	MisBeginAction(AddMission,1077)
	MisCancelAction(ClearMission, 1077)

	MisNeed(MIS_NEED_DESP, "Look for Strawberry in Icicle at (1010, 350)")
	
	MisHelpTalk("<t>I am only a little fish…air in the water…")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使1-------------草莓优优
	DefineMission(5555, "PKO Ambassador 2", 1077, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Hi! My ambassador!")
	MisResultCondition(NoRecord, 1077)
	MisResultCondition(HasMission,1077)
	MisResultAction(ClearMission,1077)
	MisResultAction(SetRecord, 1077)

	----------------------------------------------------------社交大使2----------草莓优优
	DefineMission( 5556, "PKO Ambassador 3", 1078 )
	MisBeginTalk("<t>I look like a normal being on the outside. However, if you believe it to be so, may the lord bless you")
				
	MisBeginCondition(NoMission, 1078)
	MisBeginCondition(NoRecord,1078)
	MisBeginCondition(HasRecord, 1077)
	MisBeginAction(AddMission,1078)
	MisCancelAction(ClearMission, 1078)

	MisNeed(MIS_NEED_DESP, "Look for Oldman Blurry in Ascaron at (2272, 2700)")
	
	MisHelpTalk("<t>That adorable old man has an amazing talent")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使2--------老者·糊涂山人
	DefineMission(5557, "PKO Ambassador 3", 1078, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>A simple person can always find happiness…")
	MisResultCondition(NoRecord, 1078)
	MisResultCondition(HasMission,1078)
	MisResultAction(ClearMission,1078)
	MisResultAction(SetRecord, 1078)



	----------------------------------------------------------社交大使3----------老者·糊涂山人
	DefineMission( 5558, "PKO Ambassador 4", 1079 )
	MisBeginTalk("<t>Jealous of me? The wise are often inspired by music. Visit Musician - Shamel. He is wiser than me.")
				
	MisBeginCondition(NoMission, 1079)
	MisBeginCondition(NoRecord,1079)
	MisBeginCondition(HasRecord, 1078)
	MisBeginAction(AddMission,1079)
	MisCancelAction(ClearMission, 1079)

	MisNeed(MIS_NEED_DESP, "Look for Musician Shamel in Shaitan at (664, 3093)")
	
	MisHelpTalk("<t>Music can create miracle, remember this!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使3--------乐器专家·沙梅洱
	DefineMission(5559, "PKO Ambassador 4", 1079, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Blurry is the Enlightened One!")
	MisResultCondition(NoRecord, 1079)
	MisResultCondition(HasMission,1079)
	MisResultAction(ClearMission,1079)
	MisResultAction(SetRecord, 1079)


	----------------------------------------------------------社交大使4----------乐器专家·沙梅洱
	DefineMission( 5560, "PKO Ambassador 5", 1080 )
	MisBeginTalk("<t>My dream is to create a paradise on earth with music. Do you have a dream as well? Is it the same as Lulu's?")
				
	MisBeginCondition(NoMission, 1080)
	MisBeginCondition(NoRecord,1080)
	MisBeginCondition(HasRecord, 1079)
	MisBeginAction(AddMission,1080)
	MisCancelAction(ClearMission, 1080)

	MisNeed(MIS_NEED_DESP, "Look for Lulu in Icicle at (2668, 634)")
	
	MisHelpTalk("<t>Dream is a shadow of reality…")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使4--------鲁鲁
	DefineMission(5561, "PKO Ambassador 5", 1080, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>I wish to have lollipops daily…")
	MisResultCondition(NoRecord, 1080)
	MisResultCondition(HasMission,1080)
	MisResultAction(ClearMission,1080)
	MisResultAction(SetRecord, 1080)


	----------------------------------------------------------社交大使5----------鲁鲁
	DefineMission( 5562, "PKO Ambassador 6", 1081 )
	MisBeginTalk("<t>If only I have lollipops to eat daily and the beautiful sister next door to accompany me to Ascaron to visit a friend whom I have never meet…")
				
	MisBeginCondition(NoMission, 1081)
	MisBeginCondition(NoRecord,1081)
	MisBeginCondition(HasRecord, 1080)
	MisBeginAction(AddMission,1081)
	MisCancelAction(ClearMission, 1081)

	MisNeed(MIS_NEED_DESP, "Look for Gregg in Ascaron at (526, 2432)")
	
	MisHelpTalk("<t>Please send my blessing for Gregg.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使5--------古力果
	DefineMission(5563, "PKO Ambassador 6", 1081, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>You are a friend of Lulu? Is Lulu well?")
	MisResultCondition(NoRecord, 1081)
	MisResultCondition(HasMission,1081)
	MisResultAction(ClearMission,1081)
	MisResultAction(SetRecord, 1081)



	----------------------------------------------------------社交大使6----------古力果
	DefineMission( 5564, "PKO Ambassador 7", 1082 )
	MisBeginTalk("<t>I love to get to know strangers from afar. But there is this guy Welly who keep telling me that he is a lamb. Could you check it out for me?")
				
	MisBeginCondition(NoMission, 1082)
	MisBeginCondition(NoRecord,1082)
	MisBeginCondition(HasRecord, 1081)
	MisBeginAction(AddMission,1082)
	MisCancelAction(ClearMission, 1082)

	MisNeed(MIS_NEED_DESP, "Look for Lamb Welly in Shaitan at (898, 3683)")
	
	MisHelpTalk("<t>How I wish Welly is a great knight…")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使6--------小羊·威利
	DefineMission(5565, "PKO Ambassador 7", 1082, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>You never tell her? I used to be a normal lamb. It is only recently that I learnt how to speak human")
	MisResultCondition(NoRecord, 1082)
	MisResultCondition(HasMission,1082)
	MisResultAction(ClearMission,1082)
	MisResultAction(SetRecord, 1082)


	----------------------------------------------------------社交大使7----------小羊·威利
	DefineMission( 5566, "PKO Ambassador 8", 1083 )
	MisBeginTalk("<t>Do you want to be a PKO Hero? Let me introduce you to somebody. He is a challenging person!")
				
	MisBeginCondition(NoMission, 1083)
	MisBeginCondition(NoRecord,1083)
	MisBeginCondition(HasRecord, 1082)
	MisBeginAction(AddMission,1083)
	MisCancelAction(ClearMission, 1083)

	MisNeed(MIS_NEED_DESP, "Look for Doctor Minoseva in Ascaron at (1004, 2973)")
	
	MisHelpTalk("<t>Good luck, human!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使8--------旅行医生·米奈希尔
	DefineMission(5567, "PKO Ambassador 8", 1083, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>It is ok that human misunderstood me, as they always quick to judge by the appearances. However, even sheeps are the same now. What is happening in the world now")
	MisResultCondition(NoRecord, 1083)
	MisResultCondition(HasMission,1083)
	MisResultAction(ClearMission,1083)
	MisResultAction(SetRecord, 1083)


	----------------------------------------------------------社交大使8----------旅行医生·米奈希尔
	DefineMission( 5568, "PKO Ambassador 9", 1084 )
	MisBeginTalk("<t>My kindness often goes unnoticed. I do not have a pair of charming eyes like Fey Fey. Please send my regards to her.")
				
	MisBeginCondition(NoMission, 1084)
	MisBeginCondition(NoRecord,1084)
	MisBeginCondition(HasRecord, 1083)
	MisBeginAction(AddMission,1084)
	MisCancelAction(ClearMission, 1084)

	MisNeed(MIS_NEED_DESP, "Look for Fey Fey in Shaitan at (797, 3129)")
	
	MisHelpTalk("<t>I want you to change your opinion of me.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使8--------菲菲
	DefineMission(5569, "PKO Ambassador 9", 1084, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Doctor - Minoseva is a quiet but nice person")
	MisResultCondition(NoRecord, 1084)
	MisResultCondition(HasMission,1084)
	MisResultAction(ClearMission,1084)
	MisResultAction(SetRecord, 1084)

	----------------------------------------------------------社交大使10----------菲菲
	DefineMission( 5572, "PKO Ambassador 10", 1086 )
	MisBeginTalk("<t>Don't talk about her anymore. I wish to meet this person named Elizabeth. I have picked up a floating bottle a couple of days ago and in it contains an invitation to a dance.")
				
	MisBeginCondition(NoMission, 1086)
	MisBeginCondition(NoRecord,1086)
	MisBeginCondition(HasRecord, 1084)
	MisBeginAction(AddMission,1086)
	MisCancelAction(ClearMission, 1086)

	MisNeed(MIS_NEED_DESP, "Look for Elizabeth in the Treasure Gulf at (616, 965)")
	
	MisHelpTalk("<t>Romantic dance…")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使10--------伊丽莎白
	DefineMission(5573, "PKO Ambassador 10", 1086, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Somebody got my invitation? This is great! Thank you for bring me this good news.")
	MisResultCondition(NoRecord, 1086)
	MisResultCondition(HasMission,1086)
	MisResultAction(ClearMission,1086)
	MisResultAction(SetRecord, 1086)

	----------------------------------------------------------社交大使11----------伊丽莎白
	DefineMission( 5574, "PKO Ambassador 11", 1087 )
	MisBeginTalk("<t>My dance is going to start soon! Yet I have to fetch Wang Rong. Can you help me invite <bNavy HQ - General Ken>?")
				
	MisBeginCondition(NoMission, 1087)
	MisBeginCondition(NoRecord,1087)
	MisBeginCondition(HasRecord, 1086)
	MisBeginAction(AddMission,1087)
	MisCancelAction(ClearMission, 1087)

	MisNeed(MIS_NEED_DESP, "Look for Thundoria Castle's Navy HQ - General Ken at (808, 1521)")
	
	MisHelpTalk("<t>I want to get to know those girls…")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使11--------海军总部指挥官·基.埃斯西准将
	DefineMission(5575, "PKO Ambassador 11", 1087, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>I never reject invitation from a beautiful lady, hehe…")
	MisResultCondition(NoRecord, 1087)
	MisResultCondition(HasMission,1087)
	MisResultAction(ClearMission,1087)
	MisResultAction(SetRecord, 1087)

	----------------------------------------------------------社交大使12----------海军总部指挥官·基.埃斯西准将
	DefineMission( 5576, "PKO Ambassador 12", 1088 )
	MisBeginTalk("<t>I promised to write a poem for Momo in Shaitan. However, I am sick at the moment so could you tell her that I will send her a draft after I am well enough to start composing.")
				
	MisBeginCondition(NoMission, 1088)
	MisBeginCondition(NoRecord,1088)
	MisBeginCondition(HasRecord, 1087)
	MisBeginAction(AddMission,1088)
	MisCancelAction(ClearMission, 1088)

	MisNeed(MIS_NEED_DESP, "Look for Momo in Shaitan City at (1209, 3196)")
	
	MisHelpTalk("<t>A romantic dance will give me a perfect chance to woo her. Oh…my lovely Elizabeth…")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使12--------蘑蘑
	DefineMission(5577, "PKO Ambassador 12", 1088, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>He is so tough yet he has fallen sick. Poor general")
	MisResultCondition(NoRecord, 1088)
	MisResultCondition(HasMission,1088)
	MisResultAction(ClearMission,1088)
	MisResultAction(SetRecord, 1088)


	----------------------------------------------------------社交大使13----------蘑蘑
	DefineMission( 5578, "PKO Ambassador 13", 1089 )
	MisBeginTalk("<t>Actually my friend idolize the general and wishes to get a copy of his manuscript. If you are free could you inform him for me? Thank you.")
				
	MisBeginCondition(NoMission, 1089)
	MisBeginCondition(NoRecord,1089)
	MisBeginCondition(HasRecord, 1088)
	MisBeginAction(AddMission,1089)
	MisCancelAction(ClearMission, 1089)

	MisNeed(MIS_NEED_DESP, "Look for Berry in Ascaron at (1893, 2812)")
	
	MisHelpTalk("<t>Berry will become a great poet one day")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使13--------淘淘
	DefineMission(5579, "PKO Ambassador 13", 1089, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>So the General also do falls ill?")
	MisResultCondition(NoRecord, 1089)
	MisResultCondition(HasMission,1089)
	MisResultAction(ClearMission,1089)
	MisResultAction(SetRecord, 1089)

	----------------------------------------------------------社交大使14----------淘淘
	DefineMission( 5580, "PKO Ambassador 14", 1090 )
	MisBeginTalk("<t>How I wish that the general will recover faster. Thank you. Let me introduce you to Wynne")
				
	MisBeginCondition(NoMission, 1090)
	MisBeginCondition(NoRecord,1090)
	MisBeginCondition(HasRecord, 1089)
	MisBeginAction(AddMission,1090)
	MisCancelAction(ClearMission, 1090)

	MisNeed(MIS_NEED_DESP, "Talk to Wynne of Icicle City at (1380, 523)")
	
	MisHelpTalk("<t>Wynne is in Icicle")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使14--------温莉·冰泉        
	DefineMission(5581, "PKO Ambassador 14", 1090, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>I used to be beautiful before I fallen out of love.")
	MisResultCondition(NoRecord, 1090)
	MisResultCondition(HasMission,1090)
	MisResultAction(ClearMission,1090)
	MisResultAction(SetRecord, 1090)

	----------------------------------------------------------社交大使15----------温莉·冰泉
	DefineMission( 5582, "PKO Ambassador 15", 1091 )
	MisBeginTalk("<t>I am very  weak now. Please help me deliever a message to Don Pitt. I will put in a good word for you at Cindy if you will do me the favor")
				
	MisBeginCondition(NoMission, 1091)
	MisBeginCondition(NoRecord,1091)
	MisBeginCondition(HasRecord, 1090)
	MisBeginAction(AddMission,1091)
	MisCancelAction(ClearMission, 1091)

	MisNeed(MIS_NEED_DESP, "Look for Don Pitt in Ascaron at (1113, 2779)")
	
	MisHelpTalk("<t>I beg of you, I love him dearly")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使15-------- 瑞得·皮戈
	DefineMission(5583, "PKO Ambassador 15", 1091, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>My dear Wynne is looking pale! What should I do?")
	MisResultCondition(NoRecord, 1091)
	MisResultCondition(HasMission,1091)
	MisResultAction(ClearMission,1091)
	MisResultAction(SetRecord, 1091)


	----------------------------------------------------------社交大使16----------瑞得·皮戈
	DefineMission( 5584, "PKO Ambassador 16", 1092 )
	MisBeginTalk("<t>Actually I haven already forgiven her. However, I have been so busy that I forgot to write to her. Please help me inform Oracle - Moonlight that I will look for her soon")
				
	MisBeginCondition(NoMission, 1092)
	MisBeginCondition(NoRecord,1092)
	MisBeginCondition(HasRecord, 1091)
	MisBeginAction(AddMission,1092)
	MisCancelAction(ClearMission, 1092)

	MisNeed(MIS_NEED_DESP, "Look for Oracle Moonlight in Icicle at (2134, 555)")
	
	MisHelpTalk("<t>I believe Oracle will understand")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使16-------- 通灵者·月光眼
	DefineMission(5585, "PKO Ambassador 16", 1092, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>He has done right. If I could give in in the past, I would not have lost my loved one.")
	MisResultCondition(NoRecord, 1092)
	MisResultCondition(HasMission,1092)
	MisResultAction(ClearMission,1092)
	MisResultAction(SetRecord, 1092)


	----------------------------------------------------------社交大使17----------通灵者·月光眼
	DefineMission( 5586, "PKO Ambassador 17", 1093 )
	MisBeginTalk("<t>All is in the past. What worries me most is Durian's greedy appetite")
				
	MisBeginCondition(NoMission, 1093)
	MisBeginCondition(NoRecord,1093)
	MisBeginCondition(HasRecord, 1092)
	MisBeginAction(AddMission,1093)
	MisCancelAction(ClearMission, 1093)

	MisNeed(MIS_NEED_DESP, "Look for Durian in Ascaron at (1535, 3071)")
	
	MisHelpTalk("<t>Durian seems like a kid. He is always daydreaming")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使17-------- 榴莲
	DefineMission(5587, "PKO Ambassador 17", 1093, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>I am satisfied with my illness. It is keeping me slim.")
	MisResultCondition(NoRecord, 1093)
	MisResultCondition(HasMission,1093)
	MisResultAction(ClearMission,1093)
	MisResultAction(SetRecord, 1093)

	----------------------------------------------------------社交大使18----------榴莲
	DefineMission( 5588, "PKO Ambassador 18", 1094 )
	MisBeginTalk("<t>Having some many to be concern over my illness can be irritating at times. Please help me send a message to <bNana> in Icicle Haven and tell her that I am well")
				
	MisBeginCondition(NoMission, 1094)
	MisBeginCondition(NoRecord,1094)
	MisBeginCondition(HasRecord, 1093)
	MisBeginAction(AddMission,1094)
	MisCancelAction(ClearMission, 1094)

	MisNeed(MIS_NEED_DESP, "Look for Nana in Icicle at (798, 369)")
	
	MisHelpTalk("<t>How I wish to be full")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使18-------- 奈奈
	DefineMission(5589, "PKO Ambassador 18", 1094, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Actually I am quite jealous of her")
	MisResultCondition(NoRecord, 1094)
	MisResultCondition(HasMission,1094)
	MisResultAction(ClearMission,1094)
	MisResultAction(SetRecord, 1094)

	----------------------------------------------------------社交大使19----------奈奈
	DefineMission( 5590, "PKO Ambassador 19", 1095 )
	MisBeginTalk("<t>I have been busy composing poems nowadays. Please help me send a message to <bAzur Breeze >.")
				
	MisBeginCondition(NoMission, 1095)
	MisBeginCondition(NoRecord,1095)
	MisBeginCondition(HasRecord, 1094)
	MisBeginAction(AddMission,1095)
	MisCancelAction(ClearMission, 1095)

	MisNeed(MIS_NEED_DESP, "Look for Love Yuri in Deep Blue at (622, 2106)")
	
	MisHelpTalk("<t>Homeric is the greatest poet of the world")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使19-------- 海蓝·微风
	DefineMission(5591, "PKO Ambassador 19", 1095, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Ah…Wrinkles! Ah…")
	MisResultCondition(NoRecord, 1095)
	MisResultCondition(HasMission,1095)
	MisResultAction(ClearMission,1095)
	MisResultAction(SetRecord, 1095)


		----------------------------------------------------------社交大使20----------海蓝·微风
	DefineMission( 5592, "PKO Ambassador 20", 1096 )
	MisBeginTalk("<t>If I am so wise, I would have knew how did that sea monster find our ship during that time. And I would not have request the help of that person…Please help me tell him that I have not forgotten about him")
				
	MisBeginCondition(NoMission, 1096)
	MisBeginCondition(NoRecord,1096)
	MisBeginCondition(HasRecord, 1095)
	MisBeginAction(AddMission,1096)
	MisCancelAction(ClearMission, 1096)

	MisNeed(MIS_NEED_DESP, "Look for Abaddon Teleporter at (690, 1043)")
	
	MisHelpTalk("<t>Thank you, go now.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使20-------- 地狱传送使
	DefineMission(5593, "PKO Ambassador 20", 1096, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>That happens many years ago, I am surprised that he still remembers")
	MisResultCondition(NoRecord, 1096)
	MisResultCondition(HasMission,1096)
	MisResultAction(ClearMission,1096)
	MisResultAction(SetRecord, 1096)

		----------------------------------------------------------社交大使21----------地狱传送使
	DefineMission( 5594, "PKO Ambassador 21", 1097 )
	MisBeginTalk("<t>Want to do me a favor? Hmm…I miss the Heaven Teleporter…And also the money he stole from me. Please remind him so")
				
	MisBeginCondition(NoMission, 1097)
	MisBeginCondition(NoRecord,1097)
	MisBeginCondition(HasRecord, 1096)
	MisBeginAction(AddMission,1097)
	MisCancelAction(ClearMission, 1097)

	MisNeed(MIS_NEED_DESP, "Look for Heaven Teleporter at (474, 1054)")
	
	MisHelpTalk("<t>I am the one in debt at this time of the year")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交大使21-------- 天堂传送使
	DefineMission(5595, "PKO Ambassador 21", 1097, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>So petty, its only a small sum.")
	MisResultCondition(NoRecord, 1097)
	MisResultCondition(HasMission,1097)
	MisResultAction(ClearMission,1097)
	MisResultAction(SetRecord, 1097)

	----------------------------------------------------------社交英雄22----------天堂传送使
	DefineMission( 5596, "PKO Hero 22", 1098 )
	MisBeginTalk("<t>Congratulations, you have completed the arduous PKO quest. I heard <bCindy> is looking for you")
				
	MisBeginCondition(NoMission, 1098)
	MisBeginCondition(NoRecord,1098)
	MisBeginCondition(HasRecord, 1097)
	MisBeginAction(AddMission,1098)
	MisCancelAction(ClearMission, 1098)

	MisNeed(MIS_NEED_DESP, "Look for Cindy at (740, 1451)")
	
	MisHelpTalk("<t>I am the one in debt at this time of the year")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------社交英雄22------- 辛蒂
	DefineMission(5597, "PKO Hero 22", 1098, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>You have passed PKO test, I will award you with an emblem")
	MisResultCondition(NoRecord, 1098)
	MisResultCondition(HasMission,1098)
	MisResultAction(ClearMission,1098)
	MisResultAction(SetRecord, 1098)
	MisResultAction(GiveItem, 2949, 1, 4)
	MisResultBagNeed(1)




	

	-------------------------------------------------特别任务	
	DefineMission (5600, "Special Operation - Vampiric Aries", 1101)
	
	MisBeginTalk("<t>This quest is specially for Aries Palace. You can choose not to participate but there will be no prizes for you. <bTo kill 99 Mystic Shrubs in 15 minutes is not an easy task.>")

	MisBeginCondition(NoMission,1101)
	MisBeginCondition(NoRecord,1101)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(HasRecord,1071)
	MisBeginCondition(HasRecord,1072)
	MisBeginCondition(HasRecord,1073)
	MisBeginCondition(HasRecord,1074)
	MisBeginCondition(HasRecord,1075)
	MisBeginCondition(HasRecord,1065)
	MisBeginCondition(HasRecord,1098)
	MisBeginAction(AddMission,1101)
	MisBeginAction(AddChaItem3, 2952)---------特别行动卡
	MisBeginAction(AddTrigger, 11011, TE_KILL, 75, 99 )
	MisCancelAction(ClearMission, 1101)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_KILL, 75, 99, 1, 99)

	MisHelpTalk("<t>Go now! You only have 15 minutes")
	MisResultTalk("<t>Not too bad, you will not regret it.")


	MisResultCondition(HasMission, 1101)
	MisResultCondition(NoRecord,1101)
	MisResultCondition(HasFlag, 1101, 99 )
	MisResultAction(AddChaItem4, 2952)----特别行动卡
	MisResultAction(ClearMission, 1101)
	MisResultAction(SetRecord,  1101 )
	MisResultAction(GiveItem, 2955, 1, 4)------------白羊船长酷装宝箱
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 75)	
	TriggerAction( 1, AddNextFlag, 1101, 1, 99 )
	RegCurTrigger( 11011 )





	----------------------------------------------------------愚人节的果实
	DefineMission( 5601, "Fruit of April's Fool", 1102)

	MisBeginTalk( "<t>Today is April's Fool day! I love to make a fool out of others. Do you dare to take up my challenge? I got some surprising rewards to be claimed. Ok, the first task: Collect 100 Elven Fruits!" )
	MisBeginCondition(NoRecord, 1102)
	MisBeginCondition(NoMission, 1102)
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginAction(AddMission, 1102)
	MisBeginAction(AddTrigger, 11021, TE_GETITEM, 3116, 100 )		
	MisCancelAction(ClearMission, 1102)
	
	MisNeed(MIS_NEED_ITEM, 3116, 100, 10, 100)

	MisResultTalk("<t>You are quite honest. I shall give you an April's Fool Gift")
	MisHelpTalk("<t>What use does 100 Cute Fruit of April's Fool have? I am also unsure…")
	MisResultCondition(HasMission, 1102)
	MisResultCondition(HasItem, 3116, 100 )
	MisResultAction(TakeItem, 3116, 100 )
	MisResultAction(ClearMission, 1102)
	MisResultAction(SetRecord, 1102 )
	MisResultAction(GiveItem, 2953, 1, 4)------------愚人节的礼物
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1102, 10, 100 )
	RegCurTrigger( 11021 )



	------------------------------------------------------愚人节的慷慨
	DefineMission( 5602, "April's Fool Bounty", 1103)

	MisBeginTalk( "<t>I would like to borrow some gold from you, please do not reject me! My bunny baby is going to school soon and I need 1000000 gold! Lend me please!" )
	MisBeginCondition(NoRecord, 1103)
	MisBeginCondition(HasRecord, 1102)
	MisBeginCondition(NoMission, 1103)
	MisBeginAction(AddMission, 1103)	
	MisCancelAction(ClearMission, 1103)
	
	MisResultTalk("<t>You do not expect me to return you the gold?!")
	MisHelpTalk("<t>Do not be so petty, I might have a surprise for you")
	MisResultCondition(HasMission, 1103)
	MisResultCondition(HasMoney, 1000000 )
	MisResultAction(TakeMoney, 1000000 )
	MisResultAction(ClearMission, 1103)
	MisResultAction(SetRecord, 1103 )



	------------------------------------------------------愚人节的死神
	DefineMission( 5603, "Death of April's Fool", 1104)

	MisBeginTalk( "<t>How can you be so naive to believe this? Haha! Want me to return the money? No possible, unless you die 41 times again and I will reconsider" )
	MisBeginCondition(NoRecord, 1104)
	MisBeginCondition(HasRecord, 1103)
	MisBeginCondition(NoMission, 1104)
	MisBeginCondition(HaveNoItem, 2954)
	MisBeginAction(AddMission, 1104)	
	MisBeginAction(GiveItem, 2954, 1, 4)------------死亡证明
	MisCancelAction(ClearMission, 1104)
	MisBeginBagNeed(1)
	
	MisResultTalk("<t>You are indeed the most blur and adorable person in Tales of Pirates. Never mind…I will tell give you some consolation.")
	MisHelpTalk("<t>What is Death? Is there no fear?")
	MisResultCondition(HasMission, 1104)
	MisResultCondition(CheckPoint, 2954 )
	MisResultAction(TakeItem, 2954,1,4)
	MisResultAction(GiveItem, 0853,1,4)
	MisResultAction(ClearMission, 1104)
	MisResultAction(SetRecord, 1104 )
	MisResultBagNeed(1)


----------------------------------------------------谁是守护者--------路人·丁
	DefineMission( 6015, "Who is the Guardian", 1013, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Tutu is always creating trouble for me")
	MisResultCondition(NoRecord, 1013)
	MisResultCondition(HasMission, 1013)
	MisResultAction(SetRecord, 1013)
	MisResultAction(ClearMission, 1013)

----------------------------------------------------难？还是烦？-------路人·丁
	DefineMission( 6016, "Tough? Or troublesome?", 1014)
	MisBeginTalk("<t>Path to rebirth is never simple. Go and inquire from Clan Chief Albuda.")
	MisBeginCondition(NoRecord, 1014)
	MisBeginCondition(NoMission, 1014)
	MisBeginCondition(HasRecord, 1013)
	MisBeginAction(AddMission, 1014)
	MisCancelAction(ClearMission, 1014)

	MisNeed(MIS_NEED_DESP, "<t>Look for Clan Chief Albuda to understand about the problem of rebirth")
	MisHelpTalk("<t>Look for Clan Chief Albuda in Shaitan City.")

	MisResultCondition(AlwaysFailure)



-----------------------------------------------------难？还是烦？----------氏族长·阿布多罗.李
	DefineMission( 6017, "Tough? Or irritating?", 1014, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t>Have you made your decision? If you wish to change your decision in the future, look for me again but there will be a price to pay")
	MisResultCondition(NoRecord, 1014)
	MisResultCondition(HasMission, 1014)
	MisResultCondition(HasRecord, 1059)
	MisResultAction(ClearMission, 1014)
	MisResultAction(SetRecord, 1014)

-----------------------------------------------------继续转生之路-----------氏族长·阿布多罗.李
	DefineMission( 6018, "Continue the path of rebirth", 1017)
	MisBeginTalk("<t>You have chosen your own path. Now look for Tink. He will guide you.")
	MisBeginCondition(NoRecord, 1017)
	MisBeginCondition(NoMission, 1017)
	MisBeginCondition(HasRecord, 1014)
	MisBeginAction(AddMission, 1017)
	MisCancelAction(ClearMission, 1017)

	MisNeed(MIS_NEED_DESP, "<t>Look for Passerby - Tink")
	MisHelpTalk("<t>Look for Tink now.")

	MisResultCondition(AlwaysFailure)

----------------------------------------------------继续转生之路---------------路人·丁
	DefineMission( 6019, "Continue the path of rebirth", 1017, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure)
	MisResultTalk("<t>Have you selected your path? Let us continue!")
	MisResultCondition(NoRecord, 1017)
	MisResultCondition(HasMission, 1017)
	MisResultAction(ClearMission, 1017)
	MisResultAction(SetRecord, 1017)

-----------------------------------------------------艰巨的任务---------路人·丁
	DefineMission( 6020, "Arduous Quest", 1018)
	MisBeginTalk("<t>Since you have selected the tough difficulty, I will give you a pointer or two. However, help me teach some guys a lesson first.")
	MisBeginCondition(NoRecord,1000)
	MisBeginCondition(HasRecord,1017)
	MisBeginCondition(HasRecord,1015)
	MisBeginCondition(NoRecord,1018)
	MisBeginCondition(NoMission,1018)
	MisBeginAction(AddMission,1018)
	MisBeginAction(AddTrigger, 10181, TE_KILL,678, 1)
	MisBeginAction(AddTrigger, 10182, TE_KILL,679, 1)
	MisBeginAction(AddTrigger, 10183, TE_KILL,789, 1)
	MisCancelAction(ClearMission,1018)

	MisNeed(MIS_NEED_DESP, "Defeat Snowman Warlord, Wandering Soul and Black Dragon")
	MisNeed(MIS_NEED_KILL, 678, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 679, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 789, 1, 30, 1)

	MisHelpTalk("<t>One person is not enough. Look for some friends!")
	MisResultTalk("<t>Thank you my friend, this is what you needed.")
	MisResultCondition(HasMission,1018)
	MisResultCondition(NoRecord,1018)
	MisResultCondition(HasFlag, 1018, 10)
	MisResultCondition(HasFlag, 1018, 20)
	MisResultCondition(HasFlag, 1018, 30)
	MisResultAction(SetRecord,1018)
	MisResultAction(SetRecord,1056)
	MisResultAction(ClearMission,1018)
	MisResultAction(GiveItem, 2229, 1, 4)
	MisResultAction(GiveItem, 2230, 1, 4)
	MisResultAction(GiveItem, 2231, 1, 4)
	MisResultAction(GiveItem, 2232, 1, 4)
	MisResultAction(GiveItem, 2233, 1, 4)
	MisResultBagNeed(5)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 678 )
	TriggerAction( 1, AddNextFlag, 1018, 10, 1 )
	RegCurTrigger( 10181 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 679 )
	TriggerAction( 1, AddNextFlag, 1018, 20, 1 )
	RegCurTrigger( 10182 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 789 )
	TriggerAction( 1, AddNextFlag, 1018, 30, 1 )
	RegCurTrigger( 10183 )

------------------------------------------------限时的挑战---------路人·丁
	DefineMission( 6021, "Time0based Challenge", 1019)
	MisBeginTalk("<t>You selected the troublesome path? Ok, have you heard about the Genesis Challenge? You will have to complete it in 30 minutes")
	MisBeginCondition( NoRecord, 1000)
	MisBeginCondition( NoRecord, 1019)
	MisBeginCondition( NoMission, 1019)
	MisBeginCondition( HasRecord, 1017)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1019)
	MisCancelAction(ClearMission,1019)

	MisNeed(MIS_NEED_DESP, "Complete Genesis challenge in 30 minutes")

	MisHelpTalk("<t>If the timing recorded on the Bawcock Letter is less than 1800 secs, I will consider you to be through. Please note to bring only 1 Bawcock Letter!")
	MisResultTalk("<t>It's so fun")
	MisResultCondition( HasItem, 2912, 1)
	MisResultCondition( LessTime, 1800)
	MisResultCondition( NoRecord, 1019)
	MisResultCondition( HasMission, 1019)
	MisResultAction( SetRecord, 1019)
	MisResultAction( ClearMission, 1019)


----------------------------------------------限时的挑战-------------路人·丁
	DefineMission( 6022, "Time0based Challenge", 1020)
	MisBeginTalk("<t>Go for another round. However, please take your time to do it. Try to finish it between 7 hours to 8 hours.")
	MisBeginCondition( NoRecord, 1020)
	MisBeginCondition( NoMission, 1020)
	MisBeginCondition( HasRecord, 1019)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1020)
	MisCancelAction( ClearMission, 1020)

	MisNeed(MIS_NEED_DESP, "You need to complete Genesis Challenge between 7 hours to 8 hours")

	MisHelpTalk("<t>The recorded timing on the Bawcock Letter must be higher than 25200 secs and lower than 28800 secs. I only accept if you have 1 Bawcock Letter!")
	MisResultTalk("<t>Isn't the scenery nice?")
	MisResultCondition( MoreTime, 25200)
	MisResultCondition( LessTime, 28800)
	MisResultCondition( NoRecord, 1020)
	MisResultCondition( HasMission, 1020)
	MisResultAction( SetRecord, 1020)
	MisResultAction( ClearMission, 1020)



-------------------------------------------------限时的挑战------------路人·丁
	DefineMission( 6023, "Time0based Challenge", 1021)
	MisBeginTalk("<t>Do the run once more. You will need to complete the journey between 5 hours to 5.5 hours.")
	MisBeginCondition( NoRecord, 1021)
	MisBeginCondition( NoMission, 1021)
	MisBeginCondition( HasRecord, 1020)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1021)
	MisCancelAction( ClearMission, 1021)

	MisNeed(MIS_NEED_DESP, "Complete Genesis Challenge must be between 5 hours to 5 hours 30 minutes")

	MisHelpTalk("<t>The recorded timing on the Bawcock Letter must be between 18000 secs to 19800 secs. Please note to bring only 1 Bawcock Letter!")
	MisResultTalk("<t>I recognize your effort on this!")
	MisResultCondition( LessTime, 19800)
	MisResultCondition( MoreTime, 18000)
	MisResultCondition( NoRecord, 1021)
	MisResultCondition( HasMission, 1021)

	MisResultAction( SetRecord, 1021)
	MisResultAction( ClearMission, 1021)

-----------------------------------------------寻访雷霆守护者------路人·丁
	DefineMission( 6024, "Visit the guardian of Thundoria", 1022)
	MisBeginTalk("<t>Next guardian is at Thundoria Castle. Look for him there.")
	MisBeginCondition( NoRecord, 1022)
	MisBeginCondition( NoMission, 1022)
	MisBeginCondition( HasRecord, 1021)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1022)
	MisCancelAction( ClearMission, 1022)

	MisNeed(MIS_NEED_DESP, "Look for the guardian of Thundoria Castle")
	MisHelpTalk("<t>Look for him in Thundoria Castle")

	MisResultCondition(AlwaysFailure)

-------------------------------------------------寻访雷霆守护者--------白银城驻雷霆堡大使·伊塔多
	DefineMission( 6025, "Visit the guardian of Thundoria", 1022,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>You are finally here!")
	MisResultCondition( NoRecord, 1022)
	MisResultCondition( HasMission, 1022)
	MisResultAction( SetRecord, 1022)
	MisResultAction( ClearMission, 1022)
--
---------------------------------------------------白羊宫的战斗---------------白银城驻雷霆堡大使·伊塔多
	DefineMission( 6026, "Battle of Aries Palace", 1023)
	MisBeginTalk("<t>The wheel of fate has started to turn! Enter the gate of the Horoscope Palace now and seek the Seal of Aries in Aries Palace")
	MisBeginCondition( NoRecord, 1023)
	MisBeginCondition( NoMission, 1023)
	MisBeginCondition( HasRecord, 1022)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1023)
	MisBeginAction(AddTrigger, 10231, TE_GETITEM, 2942, 1 )
	MisCancelAction( ClearMission, 1023)

	MisNeed(MIS_NEED_DESP, "Wear a full set of Aries apparel and bring the Seal of Aries to Argent Ambassador - Yata in Thundoria")
	MisNeed(MIS_NEED_ITEM, 2942, 1, 10 ,1)

	MisHelpTalk("<t>Wear the apparel set of Aries Palace to welcome me")
	MisResultTalk("<t>You are indeed the chosen one")
	MisResultCondition( HasItem, 2942, 1)
	MisResultCondition( BaiyangOn )
	MisResultAction( SetRecord, 1023)
	MisResultAction( ClearMission, 1023)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2942)	
	TriggerAction( 1, AddNextFlag, 1023, 10, 1 )
	RegCurTrigger( 10231 )

----------------------------------------------------寻访沙岚守护者--------------------白银城驻雷霆堡大使·伊塔多
	DefineMission( 6027, "Visit guardian of Shaitan", 1024)
	MisBeginTalk("<t>Look for the next guardian at a sandy town")
	MisBeginCondition( NoRecord, 1024)
	MisBeginCondition( NoMission, 1024)
	MisBeginCondition( HasRecord, 1023)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1024)
	MisCancelAction( ClearMission, 1024)

	MisNeed(MIS_NEED_DESP, "Visit the guardian of Shaitan City")
	MisHelpTalk("<t>Go to a sandy city")
	
	MisResultCondition(AlwaysFailure)

-------------------------------------------------------寻访沙岚守护者--------------------路人·珊瑚虫
	DefineMission( 6028, "Visit guardian of Shaitan", 1024, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Do not ignore me because I look weak!")
	MisResultCondition( NoRecord, 1024)
	MisResultCondition( HasMission, 1024)
	MisResultAction( SetRecord, 1024)
	MisResultAction( ClearMission, 1024)

---------------------------------------------------------环球旅行--------------------路人·珊瑚虫
	DefineMission( 6029, "World Tour", 1025)
	MisBeginTalk("<t>Are you familiar with the world of Tales of Pirates? Let me bring you on a world tour. There are many interesting people to meet along the way and they will take a portion of your reputation points for their help. First stop is Abandoned Mine Haven. Look for Kentaro.")
	MisBeginCondition( NoMission, 1025)
	MisBeginCondition( NoRecord, 1025)
	MisBeginCondition( HasRecord, 1024)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1025)
	MisCancelAction( ClearMission, 1025)

	MisNeed(MIS_NEED_DESP, "Look for Kentaro when you have at least 500 reputation points")
	MisHelpTalk("<t>Kentaro is at Abandon Mine Haven")

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------环球旅行-----------------严罗塔
	DefineMission( 6030, "World Tour", 1025, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Tourist? Remember to rest well!")
	MisResultCondition( NoRecord, 1025)
	MisResultCondition( HasMission, 1025)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1025)
	MisResultAction( ClearMission, 1025)

----------------------------------------------------------环球旅行------------------严罗塔
	DefineMission( 6031, "World Tour", 1026)
	MisBeginTalk("<t>Next stop is Babul Haven. Look for Minelli")
	MisBeginCondition( NoMission, 1026)
	MisBeginCondition( NoRecord, 1026)
	MisBeginCondition( HasRecord, 1025)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1026)
	MisCancelAction( ClearMission, 1026)

	MisNeed(MIS_NEED_DESP, "Look for Minelli when you have at least 500 reputation points")
	MisHelpTalk("<t>Minelli is at Babul Haven")

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------环球旅行----------------米尔米莉
	DefineMission( 6032, "World Tour", 1026, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Tourist? Remember to rest well!")
	MisResultCondition( NoRecord, 1026)
	MisResultCondition( HasMission, 1026)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1026)
	MisResultAction( ClearMission, 1026)

------------------------------------------------------------环球旅行-----------------米尔米莉
	DefineMission( 6033, "World Tour", 1027)
	MisBeginTalk("<t>Next stop is Atlantis Haven. Look for Willi")
	MisBeginCondition( NoMission, 1027)
	MisBeginCondition( NoRecord, 1027)
	MisBeginCondition( HasRecord, 1026)
	MisBeginCondition( HasRecord, 1016)
 	MisBeginAction( AddMission,1027)
	MisCancelAction( ClearMission, 1027)

	MisNeed(MIS_NEED_DESP, "Look for Willi when you have at least 500 reputation points")
	MisHelpTalk("<t>You cannot take it anymore? Look for Clan Chief Albuda to reselect your path of rebirth.")

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------环球旅行-------------------薇莉尔
	DefineMission( 6034, "World Tour", 1027, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1027)
	MisResultCondition( HasMission, 1027)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1027)
	MisResultAction( ClearMission, 1027)

-------------------------------------------------------------环球旅行------------------薇莉尔
	DefineMission( 6035, "World Tour", 1028)
	MisBeginTalk("<t>Next stop is Valhalla Haven. Look for Professor Fenny")
	MisBeginCondition( NoMission, 1028)
	MisBeginCondition( NoRecord, 1028)
	MisBeginCondition( HasRecord, 1027)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1028)
	MisCancelAction( ClearMission, 1028)

	MisNeed(MIS_NEED_DESP, "Look for Professor Fenny when you have 500 reputation points")
	MisHelpTalk("<t>Professor Fenny is at Valhalla Haven")

	MisResultCondition(AlwaysFailure)

------------------------------------------------------------环球旅行---------------博尔芬尼
	DefineMission( 6036, "World Tour", 1028, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1028)
	MisResultCondition( HasMission, 1028)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1028)
	MisResultAction( ClearMission, 1028)

-----------------------------------------------------------------环球旅行------------博尔芬尼
	DefineMission( 6037, "World Tour", 1029)
	MisBeginTalk("<t>Next stop is Oasis Haven. Look for Ditaro")
	MisBeginCondition( NoMission, 1029)
	MisBeginCondition( NoRecord, 1029)
	MisBeginCondition( HasRecord, 1028)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1029)
	MisCancelAction( ClearMission, 1029)

	MisNeed(MIS_NEED_DESP, "Look for Ditaro when you have 500 reputation points")
	MisHelpTalk("<t>Ditaro is at Oasis Haven")

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------环球旅行-----------迪迪马修
	DefineMission( 6038, "World Tour", 1029, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1029)
	MisResultCondition( HasMission, 1029)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1029)
	MisResultAction( ClearMission, 1029)

--------------------------------------------------------------环球旅行-----------迪迪马修
	DefineMission( 6039, "World Tour", 1030)
	MisBeginTalk("<t>Next stop is Icespire Haven. Look for Lulu")
	MisBeginCondition( NoMission, 1030)
	MisBeginCondition( NoRecord, 1030)
	MisBeginCondition( HasRecord, 1029)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1030)
	MisCancelAction( ClearMission, 1030)

	MisNeed(MIS_NEED_DESP, "Look for Lulu when you have 500 reputation points")
	MisHelpTalk("<t>Lulu is at Icespire Haven")

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------环球旅行-----------鲁鲁
	DefineMission( 6040, "World Tour", 1030, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1030)
	MisResultCondition( HasMission, 1030)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1030)
	MisResultAction( ClearMission, 1030)

----------------------------------------------------------------环球旅行-----------鲁鲁
	DefineMission( 6041, "World Tour", 1031)
	MisBeginTalk("<t>Next stop is Rockery Haven. Look for Durian")
	MisBeginCondition( NoMission, 1031)
	MisBeginCondition( NoRecord, 1031)
	MisBeginCondition( HasRecord, 1030)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1031)
	MisCancelAction( ClearMission, 1031)

	MisNeed(MIS_NEED_DESP, "Look for Durian when you have 500 reputation points")
	MisHelpTalk("<t>Durian is at Rockery Haven")

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------环球旅行-------------榴莲
	DefineMission( 6042, "World Tour", 1031, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1031)
	MisResultCondition( HasMission, 1031)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1031)
	MisResultAction( ClearMission, 1031)

----------------------------------------------------------------环球旅行-------------榴莲
	DefineMission( 6043, "World Tour", 1032)
	MisBeginTalk("<t>Next stop is Solace Haven. Look for Linda")
	MisBeginCondition( NoMission, 1032)
	MisBeginCondition( NoRecord, 1032)
	MisBeginCondition( HasRecord, 1031)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1032)
	MisCancelAction( ClearMission, 1032)

	MisNeed(MIS_NEED_DESP, " Look for Linda when you have at least 500 reputation points")
	MisHelpTalk("<t>Linda is at Solace Haven")

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------------环球旅行--------------琳达
	DefineMission( 6044, "World Tour", 1032, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1032)
	MisResultCondition( HasMission, 1032)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( GiveItem, 3128, 10, 4)
	MisResultAction( SetRecord, 1032)
	MisResultAction( ClearMission, 1032)
	MisResultBagNeed(1)


-----------------------------------------------------------------环球旅行--------------琳达
	DefineMission( 6045, "World Tour", 1033)
	MisBeginTalk("<t>Next stop is at Skeletar Haven. Look for Xeus")
	MisBeginCondition( NoMission, 1033)
	MisBeginCondition( NoRecord, 1033)
	MisBeginCondition( HasRecord, 1032)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1033)
	MisCancelAction( ClearMission, 1033)

	MisNeed(MIS_NEED_DESP, "Look for Xeus when you have at least 500 reputation points")
	MisHelpTalk("<t>Xeus is at Skeletar Haven")

	MisResultCondition(AlwaysFailure)

------------------------------------------------------------------环球旅行--------------修司
	DefineMission( 6046, "World Tour", 1033, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1033)
	MisResultCondition( HasMission, 1033)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1033)
	MisResultAction( ClearMission, 1033)

------------------------------------------------------------------环球旅行--------------修司
	DefineMission( 6047, "World Tour", 1034)
	MisBeginTalk("<t>Next stop is at Chaldea Haven. Look for Love Yuri")
	MisBeginCondition( NoMission, 1034)
	MisBeginCondition( NoRecord, 1034)
	MisBeginCondition( HasRecord, 1033)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1034)
	MisCancelAction( ClearMission, 1034)

	MisNeed(MIS_NEED_DESP, "Look for Love Yuri when you have at least 500 reputation points")
	MisHelpTalk("<t>Love Yuri is at Chaldea Haven")

	MisResultCondition(AlwaysFailure)

-------------------------------------------------------------------环球旅行-------------海蓝·微风
	DefineMission( 6048, "World Tour", 1034, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1034)
	MisResultCondition( HasMission, 1034)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1034)
	MisResultAction( ClearMission, 1034)

-------------------------------------------------------------------环球旅行-------------海蓝·微风
	DefineMission( 6049, "World Tour", 1035)
	MisBeginTalk("<t>Next stop is Nana at Icicle Haven")
	MisBeginCondition( NoMission, 1035)
	MisBeginCondition( NoRecord, 1035)
	MisBeginCondition( HasRecord, 1034)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1035)
	MisCancelAction( ClearMission, 1035)

	MisNeed(MIS_NEED_DESP, "Look for Nana when you have 500 reputation points")
	MisHelpTalk("<t>Nana is at Icicle Haven")

	MisResultCondition(AlwaysFailure)

------------------------------------------------------------------环球旅行---------------奈奈
	DefineMission( 6050, "World Tour", 1035, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1035)
	MisResultCondition( HasMission, 1035)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1035)
	MisResultAction( ClearMission, 1035)

----------------------------------------------------------------环球旅行---------------奈奈
	DefineMission( 6051, "World Tour", 1036)
	MisBeginTalk("<t>Next stop is at Andes Forest Haven. Look for Doctor Minoseva")
	MisBeginCondition( NoMission, 1036)
	MisBeginCondition( NoRecord, 1036)
	MisBeginCondition( HasRecord, 1035)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1036)
	MisCancelAction( ClearMission, 1036)

	MisNeed(MIS_NEED_DESP, "Look for Minoseva when you have 500 reputation points")
	MisHelpTalk("<t>Minoseva is at Andes Forest Haven")

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------环球旅行---------------米奈希尔
	DefineMission( 6052, "World Tour", 1036, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>旅行者吗？注意休息哦！")
	MisResultCondition( NoRecord, 1036)
	MisResultCondition( HasMission, 1036)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( GiveItem, 3139, 10, 4)
	MisResultAction( SetRecord, 1036)
	MisResultAction( ClearMission, 1036)
	MisResultBagNeed(1)


----------------------------------------------------------------环球旅行-------------------米奈希尔
	DefineMission( 6053, "World Tour", 1037)
	MisBeginTalk("<t>The tour has ended. Go back and look for Passerby Wowo")
	MisBeginCondition( NoMission, 1037)
	MisBeginCondition( NoRecord, 1037)
	MisBeginCondition( HasRecord, 1036)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1037)
	MisCancelAction( ClearMission, 1037)

	MisNeed(MIS_NEED_DESP, "Look for Wowo")
	MisHelpTalk("<t>Look for Wowo")

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------------环球旅行--------------------路人·珊瑚虫
	DefineMission( 6054, "World Tour", 1037, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>How is it? Is the tour interesting? Do you want to do it once again? Haha, I am only joking. Do not worry!")
	MisResultCondition( NoRecord, 1037)
	MisResultCondition( HasMission, 1037)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1037)
	MisResultAction( ClearMission, 1037)

--------------------------------------------------------------寻访天堂守护者--------------路人·珊瑚虫
	DefineMission( 6055, "Visit the Guardian of Heaven", 1038)
	MisBeginTalk("<t>Look for the next guardian at the entrance of Heaven.")
	MisBeginCondition( NoMission, 1038)
	MisBeginCondition( NoRecord, 1038)
	MisBeginCondition( HasRecord, 1037)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1038)
	MisCancelAction( ClearMission, 1038)

	MisNeed(MIS_NEED_DESP, "Look for the next guardian")
	MisHelpTalk("<t>Next guardian is at the entrance to Heaven.")

	MisResultCondition(AlwaysFailure)

--------------------------------------------------------------寻访天堂守护者--------------天堂传送使
	DefineMission( 6056, "Visit the Guardian of Heaven", 1038, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Have you meet the Goddess?")
	MisResultCondition( NoRecord, 1038)
	MisResultCondition( HasMission, 1038)
	MisResultAction( SetRecord, 1038)
	MisResultAction( ClearMission, 1038)
	
------------------------------------------------------------虔诚的证明-------------------天堂传送使
	DefineMission( 6057, "Testament of the Piety", 1039)
	MisBeginTalk("<t>Want to gain my recognition? No problem, but you have to show me your faithfulness to the Goddess. There are 9 Sacred Candles. Light them up!")
	MisBeginCondition( NoRecord, 1039)
	MisBeginCondition( NoMission, 1039)
	MisBeginCondition( HasRecord, 1038)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10391, TE_GETITEM, 3007, 9 )
	MisBeginAction( AddMission, 1039)
	MisBeginAction( GiveItem, 3006, 9, 4)
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1039)

	MisNeed(MIS_NEED_ITEM, 3007, 9, 10, 9)

	MisResultTalk("<t>Well done")
	MisHelpTalk("<t>Use these Sacred Candles to light them.")
	MisResultCondition( NoRecord, 1039)
	MisResultCondition( HasMission, 1039)
	MisResultCondition( HasItem, 3007, 9)
	MisResultAction( TakeItem, 3007, 9)
	MisResultAction( SetRecord, 1039)
	MisResultAction( ClearMission, 1039)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3007)	
	TriggerAction( 1, AddNextFlag, 1039, 10, 9 )
	RegCurTrigger( 10391 )


------------------------------------------------------------虔诚的证明-------------------天堂传送使
	DefineMission( 6058, "Testament of the Piety", 1040)
	MisBeginTalk("<t>Since you are so determined, light these 99 candles for me.")
	MisBeginCondition( NoRecord, 1040)
	MisBeginCondition( NoMission, 1040)
	MisBeginCondition( HasRecord, 1039)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10401, TE_GETITEM, 3007, 99 )
	MisBeginAction( AddMission, 1040)
	MisBeginAction( GiveItem, 3006, 99, 4)
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1040)

	MisNeed(MIS_NEED_ITEM, 3007, 99, 10, 99)

	MisResultTalk("<t>Well done!")
	MisHelpTalk("<t>Use these Sacred Candles to light them.")
	MisResultCondition( NoRecord, 1040)
	MisResultCondition( HasMission, 1040)
	MisResultCondition( HasItem, 3007, 99)
	MisResultAction( TakeItem, 3007, 99)
	MisResultAction( SetRecord, 1040)
	MisResultAction( ClearMission, 1040)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3007)	
	TriggerAction( 1, AddNextFlag, 1040, 10, 99 )
	RegCurTrigger( 10401 )

------------------------------------------------------------虔诚的证明-------------------天堂传送使
	DefineMission( 6059, "Testament of the Piety", 1041)
	MisBeginTalk("<t>This is the last test. Here is a Goddess Statue. You will infuse 1 point of energy everytime you use it. Come back to me when you maximise the energy. Note that I only accept 1 Goddess Statue!")
	MisBeginCondition( NoRecord, 1041)
	MisBeginCondition( NoMission, 1041)
	MisBeginCondition( HasRecord, 1040)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10411, TE_GETITEM, 3010, 1 )
	MisBeginAction( AddMission, 1041)
	MisBeginAction( GiveNSDX, 3010 )
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1041)
	
	MisNeed(MIS_NEED_ITEM, 3010, 1, 10, 1)

	MisResultTalk("<t>The Goddess will always be at your side.")
	MisHelpTalk("<t>You cannot take it anymore? Look for Clan Chief Albuda to reselect your path of rebirth.")
	MisResultCondition( NoRecord, 1041)
	MisResultCondition( HasMission, 1041)
	MisResultCondition( CheckEnergy )
	MisResultAction( TakeItem, 3010, 1)
	MisResultAction( SetRecord, 1041)
	MisResultAction( ClearMission, 1041)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3010)	
	TriggerAction( 1, AddNextFlag, 1041, 10, 1 )
	RegCurTrigger( 10411 )

----------------------------------------------------------寻访白银守护者--------------天堂传送使
	DefineMission( 6060, "Visit the guardian of Argent", 1042)
	MisBeginTalk("<t> Look for the next guardian in Argent City. He is not someone to mess with.")
	MisBeginCondition( NoRecord, 1042)
	MisBeginCondition( NoMission, 1042)
	MisBeginCondition( HasRecord, 1041)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1042)
	MisCancelAction( ClearMission, 1042)

	MisNeed(MIS_NEED_DESP, "Look for the next guardian in Argent City")
	MisHelpTalk("<t>Visit the next guardian in Argent City.")

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------寻访白银守护者--------------水手·海云
	DefineMission( 6061, "Visit the guardian of Argent", 1042, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Want to play a game?")
	MisResultCondition( NoRecord, 1042)
	MisResultCondition( HasMission, 1042)
	MisResultAction( SetRecord, 1042)
	MisResultAction( ClearMission, 1042)

------------------------------------------------------------疯狂的游戏-----------------水手·海云
	DefineMission( 6062, "Game of Madness", 1043)
	MisBeginTalk("<t>Let's play a little game. Kill 110 Mystic Shrubs and return to answer my question.")
	MisBeginCondition( NoRecord, 1043)
	MisBeginCondition( NoMission, 1043)
	MisBeginCondition( HasRecord, 1042)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1043)
	MisBeginAction( AddTrigger, 10431, TE_KILL, 75, 110)
	MisCancelAction( ClearMission, 1043)

	MisNeed(MIS_NEED_DESP, "Kill 110 Mystic Shrubs")
	MisNeed(MIS_NEED_KILL, 75, 110, 10, 110)

	MisResultTalk("<t>You kill fast")
	MisHelpTalk("<t>There are many Mystic Shrubs surrounding Argent City. You will need to answer a question after killing them!")
	MisResultCondition( NoRecord, 1043)
	MisResultCondition( HasMission, 1043)
	MisResultCondition( HasFlag, 1043, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1043)
	MisResultAction( ClearMission, 1043)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 75 )
	TriggerAction( 1, AddNextFlag, 1043, 10, 110 )
	RegCurTrigger( 10431 )

-------------------------------------------------------------疯狂的游戏-----------------水手·海云
	DefineMission( 6063, "Game of Madness", 1046)
	MisBeginTalk("<t>Kill 110 Dry Mystic Shrubs!")
	MisBeginCondition( NoRecord, 1046)
	MisBeginCondition( NoMission, 1046)
	MisBeginCondition( HasRecord, 1043)
	MisBeginCondition( HasRecord, 1044)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1046)
	MisBeginAction( AddTrigger, 10461, TE_KILL, 218, 110)
	MisCancelAction( ClearMission, 1046)

	MisNeed(MIS_NEED_DESP, "Kill 110 Dry Mystic Shrubs")
	MisNeed(MIS_NEED_KILL, 218, 110, 10, 110)

	MisResultTalk("<t>You kill fast")
	MisHelpTalk("<t>Dry Mystic Shrub can be found in the surrounding of Shaitan City.")
	MisResultCondition( NoRecord, 1046)
	MisResultCondition( HasMission, 1046)
	MisResultCondition( HasFlag, 1046, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1046)
	MisResultAction( SetRecord, 1057)
	MisResultAction( ClearMission, 1046)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 218 )
	TriggerAction( 1, AddNextFlag, 1046, 10, 110 )
	RegCurTrigger( 10461 )

-----------------------------------------------------------------疯狂的游戏------------------水手·海云
	DefineMission( 6064, "Game of Madness", 1047)
	MisBeginTalk("<t>Kill 110 Snowy Mystic Shrubs!")
	MisBeginCondition( NoRecord, 1047)
	MisBeginCondition( NoMission, 1047)
	MisBeginCondition( HasRecord, 1045)
	MisBeginCondition( HasRecord, 1043)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1047)
	MisBeginAction( AddTrigger, 10471, TE_KILL, 216, 110)
	MisCancelAction( ClearMission, 1047)

	MisNeed(MIS_NEED_DESP, "Kill 110 Snowy Mystic Shrubs")
	MisNeed(MIS_NEED_KILL, 216, 110, 10, 110)

	MisResultTalk("<t>You kill fast")
	MisHelpTalk("<t>Dry Mystic Shrub can be found in the surrounding of Shaitan City.")
	MisResultCondition( NoRecord, 1047)
	MisResultCondition( HasMission, 1047)
	MisResultCondition( HasFlag, 1047, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1047)
	MisResultAction( SetRecord, 1057)
	MisResultAction( ClearMission, 1047)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 216 )
	TriggerAction( 1, AddNextFlag, 1047, 10, 110 )
	RegCurTrigger( 10471 )

---------------------------------------------------------------疯狂的游戏------------------水手·海云
	DefineMission( 6065, "Game of Madness", 1048)
	MisBeginTalk("<t>Next target is Sailor Squidy. Kill 110 of them too.")
	MisBeginCondition( NoRecord, 1048)
	MisBeginCondition( NoMission, 1048)
	MisBeginCondition( HasRecord, 1057)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1048)
	MisBeginAction( AddTrigger, 10481, TE_KILL, 233, 110)
	MisCancelAction( ClearMission, 1048)

	MisNeed(MIS_NEED_DESP, "Kill 110 Sailor Squidy")
	MisNeed(MIS_NEED_KILL, 233, 110, 10, 110)

	MisResultTalk("<t>Isn't this game fun?")
	MisHelpTalk("<t>Sailor Squidy is near Argent City.")
	MisResultCondition( NoRecord, 1048)
	MisResultCondition( HasMission, 1048)
	MisResultCondition( HasFlag, 1048, 10)
	MisResultAction( SetRecord, 1048)
	MisResultAction( ClearMission, 1048)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 233)
	TriggerAction( 1, AddNextFlag, 1048, 10, 110 )
	RegCurTrigger( 10481 )

---------------------------------------------------------------疯狂的游戏------------------水手·海云
	DefineMission( 6066, "Game of Madness", 1049)
	MisBeginTalk("<t>Next target is Snow Squidy, kill 110 of them.")
	MisBeginCondition( NoRecord, 1049)
	MisBeginCondition( NoMission, 1049)
	MisBeginCondition( HasRecord, 1048)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1049)
	MisBeginAction( AddTrigger, 10491, TE_KILL, 235, 110)
	MisCancelAction( ClearMission, 1049)

	MisNeed(MIS_NEED_DESP, "Kill 110 Snow Squidy")
	MisNeed(MIS_NEED_KILL, 235, 110, 10, 110)

	MisResultTalk("<t>Isn't this game fun?")
	MisHelpTalk("<t>Snow Squidy can be found near Icicle City.")
	MisResultCondition( NoRecord, 1049)
	MisResultCondition( HasMission, 1049)
	MisResultCondition( HasFlag, 1049, 10)
	MisResultAction( SetRecord, 1049)
	MisResultAction( ClearMission, 1049)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 235)
	TriggerAction( 1, AddNextFlag, 1049, 10, 110 )
	RegCurTrigger( 10491 )

---------------------------------------------------------------疯狂的游戏------------------水手·海云
	DefineMission( 6067, "Game of Madness", 1050)
	MisBeginTalk("<t>Next target is Sailor Squirt. Kill 110 of them.")
	MisBeginCondition( NoRecord, 1050)
	MisBeginCondition( NoMission, 1050)
	MisBeginCondition( HasRecord, 1049)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1050)
	MisBeginAction( AddTrigger, 10501, TE_KILL, 232, 110)
	MisCancelAction( ClearMission, 1050)

	MisNeed(MIS_NEED_DESP, "Kill 110 Sailor Squirt")
	MisNeed(MIS_NEED_KILL, 232, 110, 10, 110)

	MisResultTalk("<t>Isn't this game fun?")
	MisHelpTalk("<t>Don't you find this game fun?")
	MisResultCondition( NoRecord, 1050)
	MisResultCondition( HasMission, 1050)
	MisResultCondition( HasFlag, 1050, 10)
	MisResultAction( SetRecord, 1050)
	MisResultAction( ClearMission, 1050)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 232)
	TriggerAction( 1, AddNextFlag, 1050, 10, 110 )
	RegCurTrigger( 10501 )

---------------------------------------------------------------疯狂的游戏------------------水手·海云
	DefineMission( 6068, "Game of Madness", 1051)
	MisBeginTalk("<t>The last target is Snow Squirt. Kill 110 of them.")
	MisBeginCondition( NoRecord, 1051)
	MisBeginCondition( NoMission, 1051)
	MisBeginCondition( HasRecord, 1050)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1051)
	MisBeginAction( AddTrigger, 10511, TE_KILL, 234, 110)
	MisCancelAction( ClearMission, 1051)

	MisNeed(MIS_NEED_DESP, "Kill 110个Snow Squirt")
	MisNeed(MIS_NEED_KILL, 234, 110, 10, 110)

	MisResultTalk("<t>Is the game over? What a pity. Your determination has moved me. This is the reward you deserved.")
	MisHelpTalk("<t>Go for it!")
	MisResultCondition( NoRecord, 1051)
	MisResultCondition( HasMission, 1051)
	MisResultCondition( HasFlag, 1051, 10)
	MisResultAction( SetRecord, 1051)
	MisResultAction( SetRecord, 1056)
	MisResultAction( ClearMission, 1051)
	MisResultAction(GiveItem, 2229, 1, 4)
	MisResultAction(GiveItem, 2230, 1, 4)
	MisResultAction(GiveItem, 2231, 1, 4)
	MisResultAction(GiveItem, 2232, 1, 4)
	MisResultAction(GiveItem, 2233, 1, 4)
	MisResultBagNeed(5)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 234)
	TriggerAction( 1, AddNextFlag, 1051, 10, 110 )
	RegCurTrigger( 10511 )
------------------------------------------------做寿司的原料----------提司面包	
	DefineMission (5604, "Ingredient to make sushi", 1107)

	MisBeginTalk("<t>Dear friend, do you wish to have some sushi? You will never taste anything as good as these! Get me some ingredients if you wish to have it! ")

	MisBeginCondition(NoMission,1107)
	MisBeginCondition(NoRecord,1107)
	MisBeginAction(AddMission,1107)
	MisBeginAction(AddTrigger, 11071, TE_GETITEM, 1649, 1 )---------------1个纯净的水
	MisBeginAction(AddTrigger, 11072, TE_GETITEM, 1690, 1 )---------------1个蜗牛触角
	MisBeginAction(AddTrigger, 11073, TE_GETITEM, 3116, 1 )-------------1个精灵果
	MisCancelAction( ClearMission, 1107)
	
	MisNeed(MIS_NEED_ITEM, 1649, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1690, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3116, 1, 30, 1 )

	MisHelpTalk("<t>These items are not tough to find. Go now!")
	MisResultTalk("<t>This is great, I will let you see the greatest work of the Kitchen God")

	MisResultCondition(HasMission, 1107)
	MisResultCondition(NoRecord,1107)
	MisResultCondition(HasItem, 1649, 1 )
	MisResultCondition(HasItem, 1690, 1 )
	MisResultCondition(HasItem, 3116, 1 )
	
	MisResultAction(TakeItem, 1649, 1 )
	MisResultAction(TakeItem, 1690, 1 )
	MisResultAction(TakeItem, 3116, 1 )
	
	MisResultAction(ClearMission, 1107)
	MisResultAction(SetRecord,  1107 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1649)	
	TriggerAction( 1, AddNextFlag, 1107, 10, 1 )
	RegCurTrigger( 11071 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1690)	
	TriggerAction( 1, AddNextFlag, 1107, 20, 1 )
	RegCurTrigger( 11072 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1107, 30, 1 )
	RegCurTrigger( 11073 )


	-------------------------------------------------超级寿司----------提司面包	
	DefineMission (5605, "Super Sushi", 1108)
	
	MisBeginTalk("<t>Bring 2 Cake Sampling Voucher if you wish to taste it! ")

	MisBeginCondition(NoMission,1108)
	MisBeginCondition(HasRecord,1107)
	MisBeginCondition(NoRecord,1108)
	MisBeginAction(AddMission,1108)
	MisBeginAction(AddTrigger, 11081, TE_GETITEM, 1097, 2 )---------------2个蛋糕品尝券
	MisCancelAction( ClearMission, 1108)
	
	MisNeed(MIS_NEED_ITEM, 1097, 2, 10, 2 )

	MisHelpTalk("<t>Faster, if not it will get cold")
	MisResultTalk("<t>Do not praise me! I am sick of such words…")

	MisResultCondition(HasMission, 1108)
	MisResultCondition(NoRecord,1108)
	MisResultCondition(HasItem, 1097, 2 )
	MisResultAction(TakeItem, 1097, 2 )
	MisResultAction(GiveItem, 2989,1,4)-------超级寿司
	MisResultAction(ClearMission, 1108)
	MisResultAction(SetRecord,  1108 )
	MisResultAction(ClearRecord, 1107)---------------可以反复接
	MisResultAction(ClearRecord, 1108)---------------可以反复接
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1097)	
	TriggerAction( 1, AddNextFlag, 1108, 10, 2 )
	RegCurTrigger( 11081 )

	-------------------------------------------------蛋糕勇士----------提司面包	
	DefineMission (5606, "Cake Warrior", 1109)
	
	MisBeginTalk("<t>Dear friend, my deserts are the most delicious in the market! Others will envy you should you ever taste my cakes. In order to sample it, you will have to obtain a Medal of Honor from the Arena Administrator! ")

	MisBeginCondition(NoMission,1109)
	MisBeginCondition(NoRecord,1109)
	MisBeginAction(AddMission,1109)
	MisBeginAction(AddTrigger, 11091, TE_GETITEM, 3849, 1 )---------------1个勇者之证
	MisCancelAction( ClearMission, 1109)
	
	MisNeed(MIS_NEED_ITEM, 3849, 1, 10, 1 )

	MisHelpTalk("<t>Faster, if not it will get cold")
	MisResultTalk("<t>Do not praise me! I am sick of such words…")

	MisResultCondition(HasMission, 1109)
	MisResultCondition(NoRecord,1109)
	MisResultCondition(HasItem, 3849, 1 )
	MisResultAction(ClearMission, 1109)
	MisResultAction(SetRecord,  1109 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3849)	
	TriggerAction( 1, AddNextFlag, 1109, 10, 1 )
	RegCurTrigger( 11091 )


	-------------------------------------------------品牌蛋糕----------提司面包	
	DefineMission (5607, "Famous Cake", 1110)
	
	MisBeginTalk("<t>You need to have a Cake Sampling Voucher as well! ")

	MisBeginCondition(NoMission,1110)
	MisBeginCondition(HasRecord,1109)
	MisBeginCondition(NoRecord,1110)
	MisBeginAction(AddMission,1110)
	MisBeginAction(AddTrigger, 11101, TE_GETITEM, 1097, 1 )---------------1个蛋糕品尝券
	MisCancelAction( ClearMission, 1110)
	
	MisNeed(MIS_NEED_ITEM, 1097, 1, 10, 1 )
	MisHelpTalk("<t>You need to have a Cake Sampling Voucher to taste my cake")
	MisResultTalk("<t>I have high hopes for you")
	

	MisResultCondition(HasMission, 1110)
	MisResultCondition(NoRecord,1110)
	MisResultCondition(HasItem, 1097, 1 )
	MisResultAction(TakeItem, 1097, 1 )
	MisResultAction(GiveItem, 2988,1,4)------品牌蛋糕
	MisResultAction(ClearMission, 1110)
	MisResultAction(SetRecord,  1110 )
	MisResultAction(ClearRecord, 1109)---------------可以反复接
	MisResultAction(ClearRecord, 1110)---------------可以反复接
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1097)	
	TriggerAction( 1, AddNextFlag, 1110, 10, 1 )
	RegCurTrigger( 11101 )

----------------------------铁人六项之一------------bragi（for 北美)----	MisBeginCondition( NoMission, 1000)------------	MisBeginCondition( NoRecord, 1000)
	MisBeginCondition( NoRecord, 1000)
	DefineMission( 6114, "The First Task", 1000)

	MisBeginTalk( "<t>Could you do me one more favor? Please send this letter to Shaitan Chairman Guile at (873, 3545).Hurry up. A higher experience is waiting for you!")
	MisBeginCondition( CheckTime )
	MisBeginAction( GiveItem, 3292, 1, 4)
	MisBeginAction( AddMission, 1000)
	MisCancelAction( ClearMission, 1000)
	MisBeginBagNeed(1)
	
	MisNeed( MIS_NEED_DESP, "Please send this letter to Chairman Guile in the Shaitan City")
	
	MisHelpTalk( "<t>Guile is at (873,3545) in the Shaitan City. Good Luck.")
	MisResultCondition( AlwaysFailure )

----------------------------铁人六项之一
	DefineMission( 6115, "The First Task", 1000, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>A letter for me? Thanks.")
	MisResultCondition( HasMission, 1000)
	MisResultCondition( HasItem, 3292, 1)
	MisResultAction( TakeItem, 3292, 1)
	MisResultAction( SetRecord, 1000)
	MisResultAction( ClearMission, 1000)
	MisResultAction( AddExp_1)


-----------------------------铁人六项之二
	DefineMission( 6116, "The Second Task", 1001)

	MisBeginTalk( "<t>The Nurse Gina of Argent City wants a tail grass. Buy Gina a tail grass from Physician Ditto.")
	MisBeginCondition( HasRecord, 1000)
	MisBeginAction( AddMission, 1001)
	MisBeginAction(AddTrigger, 10011, TE_GETITEM, 3143, 1)
	MisCancelAction( ClearMission, 1001)

	MisNeed( MIS_NEED_DESP, "Go and buy a tail grass from Physician Ditto for Nurse Gina")
	MisNeed( MIS_NEED_ITEM, 3143, 1, 10, 1)

	MisHelpTalk( "<t>Physician Ditto sells the tail grass.")
	MisResultCondition( AlwaysFailure )



----------------------------铁人六项之二
	DefineMission( 6117, "The Second Task", 1001, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Your tail grass comes at the right time. I need it right now!")
	MisResultCondition( HasMission, 1001)
	MisResultCondition( HasItem, 3143, 1)
	MisResultAction( TakeItem, 3143, 1)
	MisResultAction( SetRecord, 1001)
	MisResultAction( ClearMission, 1001)
	MisResultAction( AddExp_1 )


	InitTrigger()
	TriggerCondition( 1, IsItem, 3143)	
	TriggerAction( 1, AddNextFlag, 1001, 10, 1 )
	RegCurTrigger( 10011 )

---------------------------铁人六项之三A
	DefineMission( 6118, "The Third Task", 1002)
	
	MisBeginTalk( "<t> Recently, the grassland elks brought us a lot of trouble. Could you give them a lesson for us?")
	MisBeginCondition( HasRecord, 1001)
	MisBeginCondition( LvCheck, "<", 40)
	MisBeginAction( AddMission, 1002)
	MisBeginAction( AddTrigger, 10021, TE_KILL, 299, 20 )
	MisCancelAction( ClearMission, 1002)
	
	MisNeed( MIS_NEED_DESP, "Kill 20 grassland elks at Garner(1360,2683)，and come back .")
	MisNeed( MIS_NEED_KILL, 299, 20, 10, 20)

	MisResultTalk( "<t>Well done. You completed it so quickly. I will reward you something.")
	MisHelpTalk( "<t>You can find grassland elks around the Garner at (1360, 2683).")
	MisResultCondition( HasMission, 1002)
	MisResultCondition( NoRecord, 1002)
	MisResultCondition( HasFlag, 1002, 29)
	MisResultAction( SetRecord, 1002)
	MisResultAction( SetRecord, 1003)
	MisResultAction( ClearMission, 1002)
	MisResultAction( AddExp, 13000, 13000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 299)	
	TriggerAction( 1, AddNextFlag, 1002, 10, 20 )
	RegCurTrigger( 10021 )

----------------------------铁人三项之三B
	DefineMission( 6119, "The Third Task", 1004)
	
	MisBeginTalk( "<t>Recently, the pumpkin knights brought us a lot of trouble. Could you give them a lesson for us?")
	MisBeginCondition( HasRecord, 1001)
	MisBeginCondition( LvCheck, ">", 39)
	MisBeginAction( AddMission, 1004)
	MisBeginAction( AddTrigger, 10041, TE_KILL, 37, 20 )
	MisCancelAction( ClearMission, 1004)
	
	MisNeed( MIS_NEED_DESP, "Kill 20 pumpkin knights at Silver Mine2 or Silver Mine3(622，3364)")
	MisNeed( MIS_NEED_KILL, 37, 20, 10, 20)

	MisResultTalk( "<t>Wow~ Well done. You completed it so quickly. I will reward you something.")
	MisHelpTalk( "<t>The pumpkin knights are around the Garner at (622，3364).")
	MisResultCondition( HasMission, 1004)
	MisResultCondition( NoRecord, 1004)
	MisResultCondition( HasFlag, 1004, 29)
	MisResultAction( SetRecord, 1004)
	MisResultAction( SetRecord, 1003)
	MisResultAction( ClearMission, 1004)
	MisResultAction( AddExp_3)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 37)	
	TriggerAction( 1, AddNextFlag, 1004, 10, 20 )
	RegCurTrigger( 10041 )

----------------------------------铁人六项之四
	DefineMission( 6120, "The Fourth Task", 1005)
	MisBeginTalk( "<t> Now you are qualified to the fourth task. Collect 3 Wood and 3 Iron Ore and give them to Greg at (1882, 2805) in Abandon Mine Haven.")
	MisBeginCondition( HasRecord, 1003)
	MisBeginAction( AddMission, 1005)
	MisBeginAction(AddTrigger, 10051, TE_GETITEM, 4543, 3 )
	MisBeginAction(AddTrigger, 10052, TE_GETITEM, 4545, 3 )
	MisCancelAction( ClearMission, 1005)

	MisNeed( MIS_NEED_DESP, "Send 3 Wood and 3 Iron Ore to Greg at (1882, 2805) in Abandon Mine Haven.")
	MisNeed( MIS_NEED_ITEM, 4543, 3, 10, 3)
	MisNeed( MIS_NEED_ITEM, 4545, 3, 20, 3)

	MisHelpTalk( "<t>You can get the Wood by cutting down trees and get the Iron Ore by mining..")

	MisResultCondition( AlwaysFailure )

---------------------------------铁人六项之四
	DefineMission( 6121, "The Fourth Task", 1005, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Your Wood and  Iron Ore come just at the right time. I need them right now.")
	MisResultCondition( HasMission, 1005)
	MisResultCondition( HasItem, 4543, 3)
	MisResultCondition( HasItem, 4545, 3)
	MisResultAction( TakeItem, 4543, 3)
	MisResultAction( TakeItem, 4545, 3)
	MisResultAction( SetRecord, 1005)
	MisResultAction( ClearMission, 1005)
	MisResultAction( AddExp_4)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4543)	
	TriggerAction( 1, AddNextFlag, 1005, 10, 3 )
	RegCurTrigger( 10051 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4545)	
	TriggerAction( 1, AddNextFlag, 1005, 20, 3 )
	RegCurTrigger( 10052 )


-----------------------------------铁人六项之五
	DefineMission( 6122, "The Fifth Task", 1006)
	MisBeginTalk( "<t> The next task is collecting two pink pearls and give them to Forbei at(2226,2726) in the Argent City.")
	MisBeginCondition( HasRecord, 1005)
	MisBeginAction( AddMission, 1006)
	MisBeginAction(AddTrigger, 10061, TE_GETITEM, 3363, 2 )
	MisCancelAction( ClearMission, 1006)

	MisNeed( MIS_NEED_DESP, "Collect two pink pearls and give them to Forbei at (2226,2726) in the Argent City")
	MisNeed( MIS_NEED_ITEM, 3363, 2, 10, 2)

	MisHelpTalk( "<t>It seems that you can only get the pink pearls from the Oyster.")
	MisResultCondition( AlwaysFailure )

-----------------------------------铁人六项之五
	DefineMission( 6123, "The Fifth Task", 1006, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t> You are so strong.The pearls are so beautiful. Now you have the chance to do the final task. I believe you can do it.")
	MisResultCondition( HasMission, 1006)
	MisResultCondition( HasItem, 3363, 2)
	MisResultAction( TakeItem, 3363, 2)
	MisResultAction( SetRecord, 1006)
	MisResultAction( ClearMission, 1006)
	MisResultAction( AddExp_5)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3363)	
	TriggerAction( 1, AddNextFlag, 1006, 10, 2 )
	RegCurTrigger( 10061 )

-----------------------------------铁人六项之六
	DefineMission( 6124, "The Sixth Task", 1007)
	MisBeginTalk( "<t>The final task is very simple. All you need to do is just finding another two people as you companions. And on you team, you must have one person whose level is from 20 to 30, another person whose level is from 31 to 40 and the other whose level is higher than 40.When you make it, you can go to find Swordsman Ray in the Lower Icicle Castle to get your award!")
	MisBeginCondition( HasRecord, 1006)
	MisBeginAction( AddMission, 1007)
	MisCancelAction( ClearMission, 1007)

	MisHelpTalk( "<t>Go to find your companion")

	MisResultCondition( AlwaysFailure )

----------------------------------铁人六项之六
	DefineMission( 6125, "The Sixth Task", 1007, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )


	MisResultTalk( "<t>You are so great! congratulations! I will look forward to your performance next time.")
	MisResultCondition( HasMission, 1007)
	MisResultCondition( CheckTeam )
	MisResultAction( SetRecord, 1007)
	MisResultAction( ClearMission, 1007)
	MisResultAction( AddExp_6)

-----------------------------------铁人六项结束
	--------------------------------------------------------------------艰难任务1

	DefineMission( 9999, "3rd Rebirth Quest 2", 1500 )
	MisBeginTalk("<t>Hi! did u get Goddess's Favor I wont Give  3rd Rebirth Stone Yea!.")
	MisBeginCondition(NoRecord,1500)
	MisBeginCondition(NoMission, 1500)
	MisBeginAction(AddMission,1500)
	MisBeginAction(AddTrigger, 15001, TE_GETITEM, 0938, 1)
	MisCancelAction(ClearMission, 1500)
	
	

	MisNeed(MIS_NEED_DESP, "Bring Me The Goddess's Favor.")
	MisNeed(MIS_NEED_ITEM, 0938, 1, 10, 1)
	
	

	MisHelpTalk("<t>Did u go to First 3rd Rebirth Quest?!")
	MisResultTalk("<t>You are God's miracle, wait for the grand moment of rebirth.")

	MisResultCondition(HasMission, 1500)
	MisResultCondition(NoRecord,1500)
	MisResultCondition(HasItem, 0938, 1)
	
	
	MisResultAction(TakeItem, 0938, 1 )
	
	
	MisResultAction(GiveItem, 5854,1,1)------------给再生之石
	MisResultAction(ClearMission, 1500)
	MisResultAction(SetRecord, 1500)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 0938)	
	TriggerAction( 1, AddNextFlag, 1500, 10, 1 )
	RegCurTrigger( 13001 )
------------------------------------------------------------------------------------
	--------------------------------------------------------------------艰难任务3

	DefineMission( 1135, "Newbie Quest 3", 1138 )
	MisBeginTalk("<t>Hi! Get Me <bone> of <bElven Signet> and Win <b1M>.")
	MisBeginAction(AddMission,1138)
	MisBeginAction(AddTrigger, 11381, TE_GETITEM, 2588, 1)
	MisCancelAction(ClearMission, 1138)
	
	

	MisNeed(MIS_NEED_DESP, "")
	MisNeed(MIS_NEED_ITEM, 2588, 1, 10, 1)
	

	MisPrize(MIS_PRIZE_MONEY, 1000000, 1)
	MisPrizeSelAll()	

	MisHelpTalk("<t>")
	MisResultTalk("<t>Obtain <1M>.")


	MisResultCondition(HasItem, 2588, 1)
	
	
	MisResultAction(TakeItem, 2588, 1 )
	
	
	MisResultAction(ClearMission, 1138)
	MisResultAction(SetRecord, 1138)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1138, 10, 1 )
	RegCurTrigger( 11381 )
-------------------------------------------------------------------------------------------------------
function SnowWarQuests()
	DefineMission( 7001, "\204\232\240\237\224\255 \243\227\240\238\231\224", 1880 )
	MisBeginTalk( "<t>\194\238\233\237\224? \213\224\238\241? \215\242\238 \236\238\230\229\242 \225\251\242\252 \236\232\235\229\229 \241\229\240\228\246\243 \241\238\235\228\224\242\224!<t>\210\238\235\252\234\238 \226\238\233\237\224 \232 \245\224\238\241 \226 \238\228\237\238\236 \244\235\224\234\238\237\229! \205\238 \236\237\229 \236\229\248\224\254\242 \192\236\232! \202\238\227\228\224 \255 \226\232\230\243 \232\245 \237\224 \239\238\235\229 \225\238\255, \243 \236\229\237\255 \241\238\226\229\240\248\229\237\237\238 \239\240\238\239\224\228\224\229\242 \230\229\235\224\237\232\229 \226\238\229\226\224\242\252. \207\238\236\238\227\232 \236\237\229, \243\225\229\233 100 <r\239\240\232\231\240\224\234\238\226 \224\236\232-\237\238\226\232\247\234\224!>" )
	MisBeginCondition(NoMission, 1880)
	MisBeginCondition(LvCheck, ">", 30 )
	
	MisBeginAction(AddMission, 1880)
	MisBeginAction(SetFlag, 1880, 1)
	MisBeginAction(AddTrigger, 18801, TE_KILL, 879, 100 )
	
	MisCancelAction(ClearMission, 1880)
	
	MisNeed(MIS_NEED_DESP, "\207\238\236\238\227\232 \209\243\236\224\241\248\229\228\248\229\236\243 \207\240\224\239\238\240\249\232\234\243 - \243\225\229\233 100 <r\207\240\232\231\240\224\234\238\226 \192\236\232-\237\238\226\232\247\234\224>.")
	MisNeed(MIS_NEED_KILL, 879, 100, 10, 100)
	
	MisHelpTalk("<t>\207\238\239\240\238\225\243\233 \237\224\233\242\232 \253\242\232\245 \236\238\237\241\242\240\238\226 \237\224 \234\224\240\242\224\245 \'\213\224\238\241 \192\240\227\229\237\242\224\' \232 \'\209\237\229\230\237\224\255 \226\238\233\237\224\'")
	MisResultCondition(HasMission, 1880)
	MisResultCondition(HasFlag, 1880, 19 )
	MisResultCondition(HasFlag, 1880, 29 )
	MisResultCondition(HasFlag, 1880, 39 )
	
	MisResultTalk("<t>\193\235\224\227\238\228\224\240\254! <n><t>\210\229\239\229\240\252 \255 \236\238\227\243 \239\238\235\237\238\241\242\252\254 \240\224\241\241\235\224\225\232\242\252\241\255 \237\224 \239\238\235\229 \225\238\255...")
	MisResultAction(SetRecord, 1880)
	MisResultAction(ClearMission, 1880)
	MisResultAction(AddExp, 44000, 44000)

	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 879 )	
	TriggerAction( 1, AddNextFlag, 1880, 10, 100 )
	RegCurTrigger( 18801 )
	
	
	DefineMission( 7002, "\209\229\234\240\229\242\237\224\255 \228\232\240\229\234\242\232\226\224", 1881 )
	MisBeginTalk( "<t>\194\238\233\237\224? \213\224\238\241? \215\242\238 \236\238\230\229\242 \225\251\242\252 \236\232\235\229\229 \241\229\240\228\246\243 \241\238\235\228\224\242\224!<t>\210\238\235\252\234\238 \226\238\233\237\224 \232 \245\224\238\241 \226 \238\228\237\238\236 \244\235\224\234\238\237\229! \205\238 \236\237\229 \236\229\248\224\254\242 \202\224\240\246\232\231\251! \223 \232\245 \225\238... \225\238... \226 \238\225\249\229\236 \253\242\238 \241\229\234\240\229\242\237\238\229 \240\224\241\239\238\240\255\230\229\237\232\229 \234\238\236\224\237\228\238\226\224\237\232\255. \205\229 \238\225\241\243\230\228\224\229\242\241\255. \199\224\228\224\247\224 - \243\225\232\242\252 100 <r\212\224\237\242\238\236\238\226-\204\229\247\237\232\234\238\226 \202\224\240\246\232\231\238\226>. \194\251\239\238\235\237\255\242\252!" )
	MisBeginCondition(NoMission, 1881)
	MisBeginCondition(LvCheck, ">", 30 )
	
	MisBeginAction(AddMission, 1881)
	MisBeginAction(SetFlag, 1881, 1)
	MisBeginAction(AddTrigger, 18811, TE_KILL, 873, 100 )
	
	MisCancelAction(ClearMission, 1881)
	
	MisNeed(MIS_NEED_DESP, "\207\238\236\238\227\232 \209\243\236\224\241\248\229\228\248\229\236\243 \207\240\224\239\238\240\249\232\234\243 - \243\225\229\233 100 <r\212\224\237\242\238\236\238\226-\204\229\247\237\232\234\238\226 \202\224\240\246\232\231\238\226>.")
	MisNeed(MIS_NEED_KILL, 873, 100, 10, 100)
	
	MisHelpTalk("<t>\207\238\239\240\238\225\243\233 \237\224\233\242\232 \253\242\232\245 \236\238\237\241\242\240\238\226 \237\224 \234\224\240\242\224\245 \'\213\224\238\241 \192\240\227\229\237\242\224\' \232 \'\209\237\229\230\237\224\255 \226\238\233\237\224\'")
	MisResultCondition(HasMission, 1881)
	MisResultCondition(HasFlag, 1881, 19 )
	MisResultCondition(HasFlag, 1881, 29 )
	MisResultCondition(HasFlag, 1881, 39 )
	
	MisResultTalk("<t>\202\238\236\224\237\228\238\226\224\237\232\229 \242\229\225\255 \237\224\227\240\224\228\232\242!")
	MisResultAction(SetRecord, 1881)
	MisResultAction(ClearMission, 1881)
	MisResultAction(AddExp, 1776000, 1776000)

	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 873 )	
	TriggerAction( 1, AddNextFlag, 1881, 10, 100 )
	RegCurTrigger( 18811 )

	
	DefineMission( 7003, "\209\229\234\240\229\242\237\224\255 \228\232\240\229\234\242\232\226\224", 1882 )
	MisBeginTalk( "<t>\194\238\233\237\224? \213\224\238\241? \215\242\238 \236\238\230\229\242 \225\251\242\252 \236\232\235\229\229 \241\229\240\228\246\243 \241\238\235\228\224\242\224!<t>\210\238\235\252\234\238 \226\238\233\237\224 \232 \245\224\238\241 \226 \238\228\237\238\236 \244\235\224\234\238\237\229! \202\241\242\224\242\232, \243 \236\229\237\255 \242\243\242 \228\235\255 \242\229\225\255 \231\224\228\224\237\232\229. \202\238\227\228\224 \255 \225\251\235 \254\237 \232 \227\235\243\239, \236\237\229 \234\224\231\224\235\238\241\252, \247\242\238 \235\254\225\238\226\252 \253\242\238 \241\224\236\238\229 \235\243\247\248\229\229 \237\224 \241\226\229\242\229. \205\238 \253\242\238 \229\240\243\237\228\224! \209 \242\229\245 \239\238\240 \234\224\234 \255 \253\242\238 \239\238\237\255\235 \243 \236\229\237\255 \239\240\238\241\237\243\235\224\241\252 \237\229\237\224\226\232\241\242\252 \234 \230\229\237\249\232\237\224\236. \211\225\229\233 100 <r\212\224\237\242\238\236\238\226 \212\232\235\235\232\241 \214\229\235\232\242\229\235\252\237\232\246\251>. \194\251\239\238\235\237\255\242\252!" )
	MisBeginCondition(NoMission, 1882)
	MisBeginCondition(LvCheck, ">", 30 )
	
	MisBeginAction(AddMission, 1882)
	MisBeginAction(SetFlag, 1882, 1)
	MisBeginAction(AddTrigger, 18821, TE_KILL, 878, 100 )
	
	MisCancelAction(ClearMission, 1882)
	
	MisNeed(MIS_NEED_DESP, "\207\238\236\238\227\232 \209\243\236\224\241\248\229\228\248\229\236\243 \207\240\224\239\238\240\249\232\234\243 - \243\225\229\233 100 <r\212\224\237\242\238\236\238\226 \212\232\235\235\232\241 \214\229\235\232\242\229\235\252\237\232\246\251>.")
	MisNeed(MIS_NEED_KILL, 878, 100, 10, 100)
	
	MisHelpTalk("<t>\207\238\239\240\238\225\243\233 \237\224\233\242\232 \253\242\232\245 \236\238\237\241\242\240\238\226 \237\224 \234\224\240\242\224\245 \'\213\224\238\241 \192\240\227\229\237\242\224\' \232 \'\209\237\229\230\237\224\255 \226\238\233\237\224\'")
	MisResultCondition(HasMission, 1882)
	MisResultCondition(HasFlag, 1882, 19 )
	MisResultCondition(HasFlag, 1882, 29 )
	MisResultCondition(HasFlag, 1882, 39 )
	
	MisResultTalk("<t>\209\239\224\241\232\225\238! \210\251 \239\238\236\238\227 \236\237\229 \240\224\231\228\229\235\224\242\252\241\255 \241 \237\232\236\232... \213\229-\245\229-\245\229!")
	MisResultAction(SetRecord, 1882)
	MisResultAction(ClearMission, 1882)
	MisResultAction(AddExp, 8000000, 8000000)

	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 878 )	
	TriggerAction( 1, AddNextFlag, 1882, 10, 100 )
	RegCurTrigger( 18821 )


	DefineMission( 7004, "\210\238\240\230\229\241\242\226\238 \241\239\240\224\226\229\228\235\232\226\238\241\242\232", 1883 )
	MisBeginTalk( "<t>\194\238\233\237\224? \213\224\238\241? \215\242\238 \236\238\230\229\242 \225\251\242\252 \236\232\235\229\229 \241\229\240\228\246\243 \241\238\235\228\224\242\224!<t>\210\238\235\252\234\238 \226\238\233\237\224 \232 \245\224\238\241 \226 \238\228\237\238\236 \244\235\224\234\238\237\229! \202\241\242\224\242\232, \247\242\238 \242\251 \228\243\236\224\229\248\252 \238 \194\238\232\242\229\235\255\245? \195\238\226\238\240\232\248\252, \238\237\232 \235\254\225\232\236\247\232\234\232? \194\238\242 \232 \255 \242\224\234 \228\243\236\224\254! \205\229\241\239\240\224\226\229\228\235\232\226\238! \206\237\232 \241\232\235\252\237\229\229 \226\241\229\245! \207\240\229\228\235\224\227\224\254 \226\238\241\241\242\224\237\238\226\232\242\252 \241\239\240\224\226\229\228\235\232\226\238\241\242\252 - \243\225\229\233 100 <r\215\229\240\237\251\245 \196\240\224\234\238\237\238\226 \203\224\237\241\238\226>. \194\251\239\238\235\237\255\242\252!" )
	MisBeginCondition(NoMission, 1883)
	MisBeginCondition(LvCheck, ">", 30 )
	
	MisBeginAction(AddMission, 1883)
	MisBeginAction(SetFlag, 1883, 1)
	MisBeginAction(AddTrigger, 18831, TE_KILL, 883, 100 )
	
	MisCancelAction(ClearMission, 1883)
	
	MisNeed(MIS_NEED_DESP, "\207\238\236\238\227\232 \209\243\236\224\241\248\229\228\248\229\236\243 \207\240\224\239\238\240\249\232\234\243 - \243\225\229\233 100 <r\215\229\240\237\251\245 \196\240\224\234\238\237\238\226 \203\224\237\241\238\226>.")
	MisNeed(MIS_NEED_KILL, 883, 100, 10, 100)
	
	MisHelpTalk("<t>\207\238\239\240\238\225\243\233 \237\224\233\242\232 \253\242\232\245 \236\238\237\241\242\240\238\226 \237\224 \234\224\240\242\224\245 \'\213\224\238\241 \192\240\227\229\237\242\224\' \232 \'\209\237\229\230\237\224\255 \226\238\233\237\224\'")
	MisResultCondition(HasMission, 1883)
	MisResultCondition(HasFlag, 1883, 19 )
	MisResultCondition(HasFlag, 1883, 29 )
	MisResultCondition(HasFlag, 1883, 39 )
	
	MisResultTalk("<t>\210\229\239\229\240\252 \226\241\229 \231\237\224\254\242, \247\242\238 \194\238\232\242\229\235\232 \237\232\247\243\242\252 \237\229 \241\232\235\252\237\229\229 \238\241\242\224\235\252\237\251\245!")
	MisResultAction(SetRecord, 1883)
	MisResultAction(ClearMission, 1883)
	MisResultAction(AddExp, 12400000, 12400000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 883 )	
	TriggerAction( 1, AddNextFlag, 1883, 10, 100 )
	RegCurTrigger( 18831 )
end
SnowWarQuests()