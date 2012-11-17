--------------------------------------------------------------------------
--									--
--									--
--NPCScript04.lua Created by Robin 2006.1.21.	--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript04.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


------------------------------------------------------------
-- 春风镇 铁匠·武鑫
------------------------------------------------------------

function b_talk1()


	Talk( 1, "Wu Xin: \"Emerald Blade on my left, Galiant Sword on my right, Dragon Crown on my head…Nothing can stop me!\"" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Repair", OpenRepair)
	Text( 1, "Regarding Forging", JumpPage, 2)
	Text( 1, "Regarding Combining", JumpPage, 3)

	Talk( 2, "Wu Xin: Forging? Only the blacksmith of Shaitan City knows the secret." )

	Talk( 3, "Wu Xin: You wish to combine something? From what I understand, you need a combination scroll and it will list the required items. Collect the items needed and talk to Grocer - Amos in Shaitan City. He is the only person who knows how to combine." )
	
	Talk( 4, "Blacksmith - Wu Xin: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )


	InitTrade()
	Weapon(	0023	)
	Weapon(	1399	)
	Weapon(	0021	)
	Weapon(	1378	)
	Weapon(	1387	)
	Weapon(	0084	)
	Weapon(	1426	)
	Weapon(	1461	)
	Weapon(	0108	)
	Weapon(	4302	)
	Weapon(	1438	)
	Weapon(	1441	)
	Weapon(	1473	)
	Weapon(	1476	)
	Weapon(	0045	)
	Weapon(	1414	)


	AddNpcMission ( 393 )
        AddNpcMission ( 567 )
end


------------------------------------------------------------
-- 春风镇 客栈老板·龙女（卖回复品)
------------------------------------------------------------

function b_talk2()


	Talk( 1, "Long Er: \"Welcome! We have all type of crusine for you to choose from. Anything to your liking?\"")
	--Text( 1, "Trade", BuyPage )
	
	Talk( 2, "Long Er: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )


   	InitTrade()
	Other(	1078	)
	Other(	1079	)
	Other(	1080	)
	Other(	1082	)  
	Other(	1083	)

	AddNpcMission ( 394 )
	AddNpcMission ( 536 )
	AddNpcMission ( 537 )
	AddNpcMission ( 538 )
        AddNpcMission ( 569 )

end

------------------------------------------------------------
-- 春风镇 杂货商人·鲁娜儿(卖飞机票)
------------------------------------------------------------

function b_talk3()


	Talk( 1, "Luna: \"Hmm…Someone seems be have the same name as me….I might sue that person for copyrights infringement!\"" )
	Text( 1, "Trade", BuyPage )
	Talk( 2, "Luna: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )



	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission ( 395 )
	AddNpcMission ( 517 )
	AddNpcMission ( 519 )
	AddNpcMission ( 525 )
	AddNpcMission ( 526 )
	--AddNpcMission ( 535 )
        AddNpcMission ( 564 )
end

------------------------------------------------------------
-- 春风镇 贸易商人·油李（航海贸易品
------------------------------------------------------------

function b_talk4()


	Talk( 1, "Yuri: \"Have you heard of Fountain of Life before?Devil Beast? What! You know nothing? How about Mahjong? Oh man…What sort of adventurer are you?\"" )
	--Text( 1, "Trade", BuyPage )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 13 )
	TriggerAction( 1, TradeBerthList, 13 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "Cargo Trade", MultiTrigger, GetMultiTrigger(), 1 )
	--Text( 1, "Regarding High Lv Commerce Permit",JumpPage, 3)
	
	Talk( 2, "Yuri: Sorry! Your ship is not docked in Spring Harbor. Unable to trade." )
	
	Talk( 3, "Hi! If you want to get rich, then you will need a \"Commerce Permit!\" With it you can have more products for commerce trade and also reduce your capital to maximize your profits! Currently, players can only obtain Commerce Permit from Shaitan Trading Post.")
	Text( 3, "Regarding Tax Rate",JumpPage, 7)
	Text( 3, "Low Lv Commerce Permit",JumpPage, 4)
	Text( 3, "Mid Lv Commerce Permit",JumpPage, 5)
	Text( 3, "High Lv Commerce Permit",JumpPage, 6)
	

	Talk( 4, "Low Lv Commerce Permit is easy to obtain. When you reaches Lv 20, go to the trading post in Shaitan and complete a simple task to have one.")
	Talk( 5, "When you reaches Lv 40 and reduces your tax rate to 20%, you can go to Shaitan Trading Post and obtain a Mid Lv Commerce Permit.")
	Talk( 6, "When you have reached level 60 and possess a Commerce Permit with 10% tax, you can activate the quest for High Lv Commerce.")
	Talk( 7, "Check your Commerce Permit to see the current Tax Rate imposed on your product when you sell it to any trader. Complete some quest at Shaitan Trading Post to reduce the Tax Rate.")
	Talk( 8, "Yuri: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )


	InitGoods()
	SaleGoodsData(	0	,	4573	,	900	,	279	,	62	)
	SaleGoodsData(	0	,	4574	,	800	,	342	,	76	)
	SaleGoodsData(	1	,	4575	,	700	,	391	,	87	)
	SaleGoodsData(	1	,	4576	,	480	,	432	,	96	)
	SaleGoodsData(	2	,	4577	,	300	,	495	,	110	)
	SaleGoodsData(	2	,	4578	,	240	,	522	,	116	)
	SaleGoodsData(	3	,	4579	,	60	,	589	,	131	)
	SaleGoodsData(	3	,	4580	,	40	,	648	,	144	)

	BuyGoodsData(0,	4581	,	-1	,	542	,	121	)
	BuyGoodsData(0,	4583	,	-1	,	724	,	161	)
	BuyGoodsData(0,	4585	,	-1	,	846	,	188	)
	BuyGoodsData(0,	4587	,	-1	,	846	,	564	)
	BuyGoodsData(0,	4593	,	-1	,	1000	,	223	)
	BuyGoodsData(0,	4595	,	-1	,	938	,	625	)
	BuyGoodsData(0,	4597	,	-1	,	881	,	195	)
	BuyGoodsData(0,	4598	,	-1	,	878	,	195	)
	BuyGoodsData(0,	4600	,	-1	,	866	,	577	)
	BuyGoodsData(0,	4552	,	-1	,	642	,	143	)
	BuyGoodsData(0,	4553	,	-1	,	789	,	175	)
	BuyGoodsData(0,	4554	,	-1	,	934	,	207	)
	BuyGoodsData(0,	4556	,	-1	,	870	,	193	)
	BuyGoodsData(0,	4557	,	-1	,	970	,	215	)
	BuyGoodsData(0,	4560	,	-1	,	1056	,	235	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4566	,	-1	,	785	,	175	)
	BuyGoodsData(0,	4569	,	-1	,	1014	,	225	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)
	BuyGoodsData(0,	4547	,	-1	,	100	,	0	)
	BuyGoodsData(0,	4549	,	-1	,	500	,	0	)
	BuyGoodsData(0,	4548	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission ( 396 )
	AddNpcMission ( 530 )
	AddNpcMission ( 545 )
	AddNpcMission ( 546 )
	AddNpcMission ( 547 )
        AddNpcMission ( 572 )

end

------------------------------------------------------------
-- 春风镇 传送使·春莉
------------------------------------------------------------

function b_talk5()
	--取消传送返回选择传送地点的对话内容和页面编号
	local ReSelectTalk = "I need to reconsider…"
	local ReSelectPage = 1

	--取消传送和退出传送的对话和页面编号
	local CancelSelectTalk = "Forget it…I will stay here"
	local CancelSelectPage = 7

	--地图名称信息
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	--白银之城坐标
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	--沙岚之城坐标
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	--冰狼堡坐标
	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	Talk( 1, "Chun Li: \"I am proud that I did not leave anyone in the sky \"" )
	Text( 1, "Go to Argent City!", JumpPage, 2 )
	Text( 1, "Go to Shaitan City!", JumpPage, 3 )
	Text( 1, "Go to Icicle City!", JumpPage, 4 )
	Text( 1, "Record Spawn point", JumpPage, 5 )
	
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 2, "Teleports to Argent City? No problem! Please pay 500G. Free for players Lv 10 and below!" )
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 3, "I just love Shaitan City! Please pay 500G! Players Lv 10 and below free of charge!" )
	Text( 3, "Teleport",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 4, "Teleport to Icicle City? No problem! Please pay 500G! Players Lv 10 and below free!" )
	Text( 4, "Teleport",MultiTrigger, GetMultiTrigger(), 2)
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 5, "Chun Li: Want to record in Spring Town? Is that correct?" )
	Text( 5, "Yes. Please record.", SetSpawnPos, "Spring Town" )
	Text( 5, "No, thank you",CloseTalk )

	Talk( 6, "Sorry! You do not have enough gold to teleport." )

	Talk( 7, "Remember to look for me if you need teleportation services", CloseTalk )
	Talk( 8, "Chun Li: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 397 )
	 AddNpcMission ( 559 )
	MisListPage(8)

	

end

------------------------------------------------------------
-- 春风镇 算命先生·算破天
------------------------------------------------------------

function b_talk6()


	Talk( 1, "Hocus Pocus: \"Hello there! I can see that you are blessed by the deities and fortune is smiling upon you. Since this is your lucky day, I will sell you a Pirate Manual for 500G. How is it?\"" )
	Text( 1, "I want 1 Career Lot", JumpPage, 2 )
	Text( 1, "I want 1 Fortune Lot", JumpPage, 3 )
	Text( 1, "Bargain of Death", JumpPage, 6 )

	Talk( 6, "Hocus Pocus: Darkness is the mask of Death… What do you want to redeem?")
	Text( 6, "Silhouette of Death",JumpPage,7)
	Text( 6, "Curse series", JumpPage,8)
	Text( 6, "Soul Series", JumpPage,9)


	--InitTrigger() --兑换死神的遗容
	--TriggerCondition( 1, HasItem, 2846, 1 )
	--TriggerCondition( 1, HasItem, 2847, 1 )
	--TriggerCondition( 1, HasItem, 2848, 1 )
	--TriggerCondition( 1, HasItem, 2849, 1 )
	--TriggerCondition( 1, HasItem, 2850, 1 )
	--TriggerCondition( 1, HasItem, 2851, 1 )
	--TriggerCondition( 1, HasItem, 2852, 1 )
	--TriggerCondition( 1, HasItem, 2853, 1 )

       -- TriggerAction( 1, TakeItem,  2846, 1 )
	--TriggerAction( 1, TakeItem,  2847, 1 )
	--TriggerAction( 1, TakeItem,  2848, 1 )
	--TriggerAction( 1, TakeItem,  2849, 1 )
	--TriggerAction( 1, TakeItem,  2850, 1 )
	--TriggerAction( 1, TakeItem,  2851, 1 )
	--TriggerAction( 1, TakeItem,  2852, 1 )
	--TriggerAction( 1, TakeItem,  2853, 1 )
	--TriggerAction( 1, GiveItem,2934, 1,4 )
	--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(7, "Hocus Pocus: 1 Melancholy of Phantom Baron, 1 Melancholy of Demon Flame, 1 Melancholy of Evil Beast, 1 Melancholy of Tyran, 1 Melancholy of Phoenix, 1 Melancholy of Despair, 1 Melancholy of Drakan and 1 Melancholy of Tidal= 1 Silhouette of Death.")
	Text( 7, "Confirm to redeem",GetChaName_7, 1) 

	Talk( 8, "Hocus Pocus: A kind child will not go around cursing others…")
	Text( 8, "Curse of Hardin",JumpPage,11)
	Text( 8, "Curse of Darkness", JumpPage,12)
	Text( 8, "Curse of Abaddon", JumpPage,13)
	Text( 8, "Curse of Abyss", JumpPage,14)
	Text( 8, "Curse of Styx", JumpPage,15)
	Text( 8, "Curse of Asura", JumpPage,16)



	--InitTrigger() --兑换哈迪斯的诅咒
	
	--TriggerCondition( 1, HasItem, 2854, 1 )
	--TriggerCondition( 1, HasItem, 2855, 1 )
	--TriggerCondition( 1, HasItem, 2856, 1 )
	--TriggerCondition( 1, HasItem, 2857, 1 )
	--TriggerCondition( 1, HasItem, 2927, 1 )
      
	--TriggerAction( 1, TakeItem,  2854, 1 )
	--TriggerAction( 1, TakeItem,  2855, 1 )
	--TriggerAction( 1, TakeItem,  2856, 1 )
	--TriggerAction( 1, TakeItem,  2857, 1 )
	--TriggerAction( 1, TakeItem,  2927, 1 )
	--TriggerAction( 1, GiveItem,2935, 1,4 )
	--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(11, "Hocus Pocus: 1 Fur of Death, 1 Tooth of Death, 1 Eye of Death, 1 Heart of Death and 1 Sealed Soul of Hardin= 1 Curse of Hardin")
	Text( 11, "Confirm to redeem",GetChaName_8, 1) 


--InitTrigger() --兑换黑暗的诅咒	
--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2928, 1 )
--
--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2928, 1 )
--TriggerAction( 1, GiveItem,2936, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(12, "Hocus Pocus: 1 Fur of Death, 1 Tooth of Death, 1 Eye of Death, 1 Heart of Death and 1 Sealed Soul of Darkness= 1 Curse of Darkness")
	Text( 12, "Confirm to redeem",GetChaName_9, 1) 


--InitTrigger() --兑换地狱的诅咒

--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2929, 1 )

--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2929, 1 )
--TriggerAction( 1, GiveItem,2937, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(13, "Hocus Pocus: 1 Fur of Death, 1 Tooth of Death, 1 Eye of Death, 1 Heart of Death and 1 Sealed Soul of Abaddon = 1 Curse of Abaddon")
	Text( 13, "Confirm to redeem",GetChaName_10, 1) 



--InitTrigger() --兑换幽冥的诅咒
--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2931, 1 )

--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2931, 1 )
--TriggerAction( 1, GiveItem,2939, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(14, "Hocus Pocus: 1 Fur of Death, 1 Tooth of Death, 1 Eye of Death, 1 Heart of Death and 1 Sealed Soul of Abyss= 1 Curse of Abyss")
	Text( 14, "Confirm to redeem",GetChaName_11, 1) 

--	InitTrigger() --兑换冥河的诅咒
--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2932, 1 )
--
--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2932, 1 )
--TriggerAction( 1, GiveItem,2940, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(15, "Hocus Pocus: 1 Fur of Death, 1 Tooth of Death, 1 Eye of Death, 1 Heart of Death and 1 Sealed Soul of Styx= 1 Curse of Styx")
	Text( 15, "Confirm to redeem",GetChaName_12, 1) 



--InitTrigger() --兑换修罗的诅咒
--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2930, 1 )
--
--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2930, 1 )
--TriggerAction( 1, GiveItem,2938, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(16, "Hocus Pocus: 1 Fur of Death, 1 Tooth of Death, 1 Eye of Death, 1 Heart of Death and 1 Sealed Soul of Asura= 1 Curse of Asura")
	Text( 16, "Confirm to redeem",GetChaName_13, 1) 


	Talk( 9, "Hocus Pocus: I heard human souls weigh 0.1g. I wonder how heavy does the soul of Death weighs.")
	Text( 9, "Soul of Hardin",JumpPage,17)
	Text( 9, "Soul of Darkness", JumpPage,18)
	Text( 9, "Soul of Abaddon", JumpPage,19)
	Text( 9, "Soul of Abyss", JumpPage,20)
	Text( 9, "Soul of Styx", JumpPage,21)
	Text( 9, "Soul of Asura", JumpPage,22)
	Text( 9, "Soul of Black Dragon", JumpPage,23)


--InitTrigger() --兑换哈迪斯的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2935, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2935, 1 )
--TriggerAction( 1, GiveItem,2562, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(17, "Hocus Pocus: 1 Silhouette of Death + 1 Curse of Hardin= 1 Soul of Hardin")
	Text( 17, "Confirm to redeem",GetChaName_14, 1) 
--
--
--InitTrigger() --兑换黑暗的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2936, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2936, 1 )
--TriggerAction( 1, GiveItem,2563, 1,4 )
	--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(18, "Hocus Pocus: 1 Silhouette of Death + 1 Curse of Darkness= 1 Soul of Darkness")
	Text( 18, "Confirm to redeem",GetChaName_15, 1) 



--InitTrigger() --兑换地狱的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2937, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2937, 1 )
--TriggerAction( 1, GiveItem,2564, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(19, "Hocus Pocus: 1 Silhouette of Death + 1 Curse of Abaddon= 1 Soul of Abaddon")
	Text( 19, "Confirm to redeem",GetChaName_16, 1) 
--
--
--
--InitTrigger() --兑换幽冥的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2939, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--	TriggerAction( 1, TakeItem,  2939, 1 )
--TriggerAction( 1, GiveItem,2566, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(20, "Hocus Pocus: 1 Silhouette of Death + 1 Curse of Abyss= 1 Soul of Abyss")
	Text( 20, "Confirm to redeem",GetChaName_17, 1) 
--
--
--InitTrigger() --兑换冥河的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2940, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2940, 1 )
--TriggerAction( 1, GiveItem,2567, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(21, "Hocus Pocus: 1 Silhouette of Death + 1 Curse of Styx = 1 Soul of Styx")
	Text( 21, "Confirm to redeem",GetChaName_18, 1) 
--
--

--InitTrigger() --兑换修罗的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2938, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2938, 1 )
--TriggerAction( 1, GiveItem,2565, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(22, "Hocus Pocus: 1 Silhouette of Death + 1 Curse of Asura= 1 Soul of Asura")
	Text( 22, "Confirm to redeem",GetChaName_19, 1) 
--
--InitTrigger() --兑换黑龙的魂魄
--TriggerCondition( 1, HasItem, 2562, 1 )
--TriggerCondition( 1, HasItem, 2563, 1 )
--TriggerCondition( 1, HasItem, 2564, 1 )
--TriggerCondition( 1, HasItem, 2565, 1 )
--TriggerCondition( 1, HasItem, 2566, 1 )
--TriggerCondition( 1, HasItem, 2567, 1 )
--TriggerCondition( 1, HasItem, 2933, 1 )
--TriggerCondition( 1, HasItem, 2934, 1 )
--
--TriggerAction( 1, TakeItem,  2562, 1 )
--TriggerAction( 1, TakeItem,  2563, 1 )
--TriggerAction( 1, TakeItem,  2564, 1 )
--TriggerAction( 1, TakeItem,  2565, 1 )
--TriggerAction( 1, TakeItem,  2566, 1 )
--TriggerAction( 1, TakeItem,  2567, 1 )
--TriggerAction( 1, TakeItem,  2933, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, GiveItem,2404, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(23, "Hocus Pocus: 1 Soul of Darkness, 1 Soul of Asura, 1 Soul of Hardin, 1 Soul of Abaddon, 1 Soul of Abyss, 1 Soul of Styx, 1 Silhouette of Death and 1 Titter of Black Dragon= 1 Soul of Black Dragon")
	Text( 23, "Confirm to redeem",GetChaName_20, 1) 

	Talk( 10, "You do not have the items required for exchanging, or your inventory might be binded or you do not have sufficient inventory slots." )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3086,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 2, "Career Lot? 5000G please!" )
	Text( 2, "Ok, I give you 5000G",MultiTrigger, GetMultiTrigger(), 1 ) 

	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3087,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "Buying a Fortune Lot? 5000G!" )
	Text( 3, "Ok, I give you 5000G",MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 4, "Hocus Pocus: \"………………^$&#&^%………………\"" )

	Talk( 5, "You do not have enough gold, inventory space or your inventory has been binded" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 4 )
	
	AddNpcMission ( 520 )
        AddNpcMission ( 900 )
---------------------新历史任务
	AddNpcMission(	5065)
	AddNpcMission(	595	)
	AddNpcMission(	599	)
	AddNpcMission(	5000	)
	AddNpcMission(	5001	)
	AddNpcMission(	5002	)
	AddNpcMission(	5003 )
	AddNpcMission(	5066)

end
------------------------------------------------------------
-- 春风镇 酒店老板·裴蒂
------------------------------------------------------------

function b_talk7()


	Talk( 1, "Sang Di: \"Hey guys! Come to receive the guest!\"" )
   	--Text( 1, "Trade", BuyPage )
	
	Talk( 2, "Sang Di: \"………………^$&#&^%………………\"" )

	InitTrade()
	Other(	1084	)
	Other(	1085	)
	Other(	1087	)
	Other(	1088	)
	Other(	1089	)
	Other(	1090	) 


	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )


	AddNpcMission ( 392 )
	AddNpcMission ( 514 )
	AddNpcMission ( 516 )
	AddNpcMission ( 527 )
	AddNpcMission ( 528 )
	AddNpcMission ( 529 )
	AddNpcMission ( 548 )
	AddNpcMission ( 550 )
	AddNpcMission ( 551 )
       AddNpcMission ( 558 )
       AddNpcMission ( 571 )
------------新增历史任务
	AddNpcMission(	592	)
	AddNpcMission(	5004	)
	AddNpcMission(	5005	)
	AddNpcMission(	5006	)
	AddNpcMission(	5007	)
	AddNpcMission(	5008	)
	AddNpcMission(	5043	)
	AddNpcMission(	5054	)
	AddNpcMission(	5055	)
end

------------------------------------------------------------
-- 春风镇 港口指挥·霜奇
------------------------------------------------------------

function b_talk8()


	Talk( 1, "Shuang: \"Sailing? Salvage? Repair? Refuel?\"" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 13 )
	TriggerAction( 1, LuanchBerthList, 13, 3426, 2575, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, RepairBerthList, 13 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, SupplyBerthList, 13 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 13 )
	TriggerAction( 1, SalvageBerthList, 13 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
	Talk( 7, "Shuang: \"………………^$&#&^%………………\"" )


	AddNpcMission ( 398 )
	AddNpcMission ( 565 )


end

------------------------------------------------------------
-- 春风镇 银行总管·王墨
------------------------------------------------------------

function b_talk9()


	Talk( 1, "Wang Mo: \"You…look familiar? Do you have anything that requires storage?\"" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Vault (200G Fee)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Sorry! You do not have enough gold to pay the fee to access the bank." )
	Talk( 3, "Wang Mo: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 2 )



	AddNpcMission ( 399 )
	AddNpcMission ( 510 )
	AddNpcMission ( 511 )
	AddNpcMission ( 512 )
	AddNpcMission ( 513 )
	AddNpcMission ( 543 )
	AddNpcMission ( 544 )
        AddNpcMission ( 570 )
 
end

------------------------------------------------------------
-- 春风镇 卫兵·赵钱孙
------------------------------------------------------------

function b_talk10()


	Talk( 1, "Zhao: \"So hungry…What time is my dinner arriving…?\"" )
	Talk( 2, "Zhao: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

end

------------------------------------------------------------
-- 春风镇 卫兵·周吴郑
------------------------------------------------------------

function b_talk11()


	Talk( 1, "Zhou: \"1 plus 1equals 2? Not 2? 2? Actually I am only talking to myself. You don't have to be so worked up. Equals 2? Not equals 2…? \"" )
	Talk( 2, "Zhou: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 531 )
	AddNpcMission ( 532 )
	AddNpcMission ( 533 )
	AddNpcMission ( 534 )

end

------------------------------------------------------------
-- 春风镇 青年男子·流云
------------------------------------------------------------

function b_talk12()


	Talk( 1, "Cloud: \"Have you seen Misty? She is my girlfriend.\"" )
	Talk( 2, "Cloud: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
         
	 AddNpcMission ( 533 )
	 AddNpcMission ( 563 )
end

------------------------------------------------------------
-- 春风镇 青年女子·水雾
------------------------------------------------------------

function b_talk13()


	Talk( 1, "Misty: \"Have you seen Cloud? He is my boyfriend\"" )
	Talk( 2, "Misty: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

end

------------------------------------------------------------
-- 春风镇 中年男子·比盖
------------------------------------------------------------

function b_talk14()


	Talk( 1, "Bill: \"Trouble? No trouble? I am earning millions each second! Do not disturb me!\"" )
	Talk( 2, "Bill: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

        AddNpcMission ( 568 )
end

------------------------------------------------------------
-- 春风镇 中年女子·王蓉
------------------------------------------------------------

function b_talk15()


	Talk( 1, "Wang Rong: \"I does not know any martial art. Don't bully me…\"" )
	Talk( 2, "Wang Rong: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

end

------------------------------------------------------------
-- 春风镇 东方海盗·铃佐田山
------------------------------------------------------------

function b_talk16()


	Talk( 1, "Yakamoto: \"Seriously…can't you see that we are robbers? \"" )
	Talk( 2, "Yakamoto: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

end


------------------------------------------------------------
-- 春风镇 潮流理发师
------------------------------------------------------------

function b_talk17()


	Talk( 1, "Hairstylist: \"Braid……\"" )
        Text( 1, "I want to change my hairstyle", JumpPage, 2)
	InitTrigger()
	TriggerCondition( 1, HasItem, 1807, 1 )
	TriggerAction( 1, OpenHair )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "Hairstylist: Want a change of hairstyle? Let me have a look at your Hairstyling Coupon.")
	Text( 2, "Yes I'm sure", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "Forget it, let me think it over.", CloseTalk )

	Talk( 3, "Hairstylist: You don't seem to possess Hairstyling Voucher. I cannot style your hair.")
	Talk( 4, "Hairstylist: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(6003)
	AddNpcMission	(6004)
	AddNpcMission	(6005)
	AddNpcMission	(6006)
	AddNpcMission	(6007)
	AddNpcMission	(6008)
	AddNpcMission	(6009)
end

------------------------------------------------------------
-- 春风镇 僵尸·裴永军
------------------------------------------------------------

function b_talk18()


	Talk( 1, "Hami: \"……\"" )
	Talk( 2, "Hami: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
	
	AddNpcMission ( 515 )
	AddNpcMission ( 518 )
	AddNpcMission ( 524 )
end

------------------------------------------------------------
--黑龙巢穴 一层to二层
------------------------------------------------------------

function b_talk21()


	--取消传送返回选择传送地点的对话内容和页面编号
	local ReSelectTalk = "I need to reconsider…"
	local ReSelectPage = 1

	--取消传送和退出传送的对话和页面编号
	local CancelSelectTalk = "Forget it…I will stay here"
	local CancelSelectPage = 5

	--地图名称信息
	local CurMapName = "eastgoaf"


	--黑龙巢穴二层坐标
	local GoTo01X = 767
	local GoTo01Y = 602
	local GoTo01M = CurMapName

	Talk( 1, "Guardian Statue: \"I am the Goddess that sealed Death within.\"" )
	Text( 1, "Go to Black Dragon Lair 2!", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 179,1 )
	TriggerCondition( 1, HasItem, 3084,1 )
	TriggerCondition( 1, HasItem, 3085,1 )
	TriggerAction( 1, TakeItem, 179,1 )
	TriggerAction( 1, TakeItem, 3084,1 )
	TriggerAction( 1, TakeItem, 3085,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Teleport to Black Dragon Lair 2 requires 1<ySigil of Anubis>, 1 <yMask of Mummy King> and 1 <yTimeless Machine>!" )
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 3, "Guardian Statue: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 3 )

	Talk( 4, "Sorry, you have not collect all 3 items!" )

	Talk( 5, "Remember to look for me again if you need to teleport", CloseTalk )
end

------------------------------------------------------------
--黑龙巢穴 二层to一层
------------------------------------------------------------

function b_talk22()


	--取消传送返回选择传送地点的对话内容和页面编号
	local ReSelectTalk = "I need to reconsider…"
	local ReSelectPage = 1

	--取消传送和退出传送的对话和页面编号
	local CancelSelectTalk = "Forget it…I will stay here"
	local CancelSelectPage = 4

	--地图名称信息
	local CurMapName = "eastgoaf"


	--黑龙巢穴三层坐标
	local GoTo01X = 847
	local GoTo01Y = 247
	local GoTo01M = CurMapName

	Talk( 1, "Guardian Statue: \"I am the Goddess that sealed Death within.\"" )
	Text( 1, "Go to Black Dragon Lair 1!", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, "Do you wish to go out?" )
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 3, "Guardian Statue: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 3 )

	Talk( 4, "Remember to look for me again if you need to teleport", CloseTalk )



end

------------------------------------------------------------
--黑龙巢穴 二层to三层
------------------------------------------------------------

function b_talk23()

	--地图名称信息
	local CurMapName = "eastgoaf"


	--黑龙巢穴三层坐标
	local GoTo01X = 772
	local GoTo01Y = 722
	local GoTo01M = CurMapName


	InitTrigger()
	TriggerCondition( 1, HasItem, 182,1 )
	--TriggerAction( 1, TakeItem, 1091,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "Guardian Statue: \"I am the Goddess that sealed Death within.\"" )
	Text( 1, "Go to Black Dragon Lair 3!", MultiTrigger, GetMultiTrigger(), 1 )

	--Talk( 3, "Guardian Statue: \"………………^$&#&^%………………\"" )
	--InitTrigger()
--	TriggerCondition( 1, HasRecord, 330 )
--	TriggerAction( 1, JumpPage, 1 )
--	TriggerCondition( 2, NoRecord, 330 )
--	TriggerAction( 2, JumpPage, 3 )
--	Start( GetMultiTrigger(), 3 )

	Talk( 4, "Statue is being sealed. You need a <Dragon Key> to access it" )

--	Talk( 4, "The statue emits a energy shield to keep me away. Looks like I am not strong enough to break it yet. I must think of other ways." )


end

------------------------------------------------------------
--黑龙宝箱
------------------------------------------------------------

function b_talk24()

--	InitFuncList()
--	AddFuncList( GiveItem,	110	,	1	,	4)
--	AddFuncList( GiveItem,	112	,	1	,	4)
--	AddFuncList( GiveItem,	114	,	1	,	4)
--	AddFuncList( GiveItem,	116	,	1	,	4)
--	AddFuncList( GiveItem,	118	,	1	,	4)
--	AddFuncList( GiveItem,	120	,	1	,	4)
--	AddFuncList( GiveItem,	151	,	1	,	4)

	InitTrigger()
	TriggerCondition( 1, HasItem, 182, 1 )
	TriggerAction( 1, TakeItem, 182, 1 )
	TriggerAction( 1, AddMoney, 10000000 )
--	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
	TriggerAction(1, GiveItem, 0266, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "This is a mysterious chest. It seems to be locked…" )
	Text( 1, "Forbidden words", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "Failed to open. It seems that some sort of key is needed" )

end

------------------------------------------------------------
-- 加勒比海盗版本 -----  铁匠
------------------------------------------------------------

function l_talk01()
	Talk(1, "Jack Arrow and I have been here for almost a month but failed to find the way out. And I don't know where is my loved one now! Arrgh! I hate this hellish place!")

	AddNpcMission(894)
	AddNpcMission(487)
	AddNpcMission(504)
	AddNpcMission(508)
	AddNpcMission(509)
	AddNpcMission(573)
	AddNpcMission(581)
	AddNpcMission(582)
	AddNpcMission(583)

end

------------------------------------------------------------
-- 加勒比海盗版本 -----  杰克史派罗
------------------------------------------------------------

function l_talk02()
	Talk(1, "Rumored that Barborosa got his monstrous power from the curse. This place is no longer safe, please be careful and these monsters aren't vegetarian.")

	AddNpcMission(895)
	AddNpcMission(896)
	AddNpcMission(482)
	AddNpcMission(485)
	AddNpcMission(486)
	AddNpcMission(574)
	AddNpcMission(575)
	AddNpcMission(584)
	AddNpcMission(585)
	AddNpcMission(586)
end

------------------------------------------------------------
-- 加勒比海盗版本 -----  诺灵顿将军
------------------------------------------------------------

function l_talk03()
	Talk(1, "Damn Jack! If he did not steal our war galley, I would not be stuck in this hellhole")

	AddNpcMission(897)
	AddNpcMission(898)
	AddNpcMission(899)
	AddNpcMission(476)
	AddNpcMission(479)
	AddNpcMission(480)
	AddNpcMission(481)
	AddNpcMission(576)
	AddNpcMission(577)
	AddNpcMission(578)
	AddNpcMission(589)
	AddNpcMission(590)

end

------------------------------------------------------------
-- 加勒比海盗版本 -----  伊丽莎白
------------------------------------------------------------

function l_talk04()
	Talk(1, "Where am I? How did I ended up here? Mark! Sob…Sob…")
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission(505)
	AddNpcMission(506)
	AddNpcMission(507)
	AddNpcMission(579)
	AddNpcMission(580)
	AddNpcMission(587)
	AddNpcMission(588)
	AddNpcMission(591)

	---------------白羊
	AddNpcMission	(5573)
	AddNpcMission	(5574)
end

------------------------------------------------------------
-- 加勒比海盗版本 -----  藏宝海湾北海港指挥·彭尼
------------------------------------------------------------
function mmm_talk06()

	Talk( 1, "Penny: Dock? Set sail? Salvage? Repair? Refuel?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 650,999, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
	Talk( 7, "Shuang: \"………………^$&#&^%………………\"" )




end

------------------------------------------------------------
-- 加勒比海盗版本 -----  藏宝海湾南海港指挥·凯奇
------------------------------------------------------------
function mmm_talk05()

	Talk( 1, "Catchy: Dock? Set sail? Salvage? Repair? Refuel?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 625,925, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
	Talk( 7, "Catchy: ..................^$&#&^%.................." )




end
------------------------------------------------------------
-- 加勒比海盗版本 -----  骷髅海港指挥
------------------------------------------------------------
function mmm_talk07()
Talk( 1, "Seaport Commander: Dock? Set sail? Salvage? Repair? Refuel?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 620,628, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
	Talk( 7, "Seaport Commander: ..................^$&#&^%.................." )
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  神秘人出海人
------------------------------------------------------------
function mmm_talk08()
Talk( 1, "Mysterious Sailor: Dock? Set sail? Salvage? Repair? Refuel?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 380,161, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
	Talk( 7, "Mysterious Sailor: ..................^$&#&^%.................." )
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  海军基地海港指挥
------------------------------------------------------------
function mmm_talk09()
Talk( 1, "Seaport Commander: Dock? Set sail? Salvage? Repair? Refuel?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 1070,212, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
	Talk( 7, "Seaport Commander: ………………^$&#&^%………………" )
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  打包人·戴普
------------------------------------------------------------
function mmm_talk10()
Talk( 1, "Zabu: Hi! I am the Freights NPC here. I can help you load the products up your ship if it is docked in this harbor" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Load Wood", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_MINE, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Load Crystal", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Zabu:  Hi! You do not have any ship docked at this harbor" )

end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地狱传送使
------------------------------------------------------------
function mmm_talk11()
	--地图名称信息
	local CurMapName = "jialebi" 

	--黑龙巢穴三层坐标
	local GoTo01X = 190
	local GoTo01Y = 815
	local GoTo01M = CurMapName


	InitTrigger()
	TriggerCondition( 1, HasItem, 2438,20 )
	TriggerCondition( 1, HasItem, 2419,15 )
	TriggerCondition( 1, HasItem, 2386,15 )
	TriggerAction( 1, TakeItem, 2438,20 )
	TriggerAction( 1, TakeItem, 2419,15 )
	TriggerAction( 1, TakeItem, 2386,15 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "Abaddon Teleporter: Want to go to Abaddon? Be prepared. Bring me 20 <Gold Coins>, 15 <Pirate's Bones> and 15 <Souls of Undead> and I will send you down." )
	Text( 1, "Go to Abaddon 1", MultiTrigger, GetMultiTrigger(), 1 )

	--Talk( 3, "Guardian Statue: \"………………^$&#&^%………………\"" )

--InitTrigger()
--	TriggerCondition( 1, HasRecord, 330 )
--	TriggerAction( 1, JumpPage, 1 )
--	TriggerCondition( 2, NoRecord, 330 )
--	TriggerAction( 2, JumpPage, 3 )
--	Start( GetMultiTrigger(), 3 )

	Talk( 4, "Come back again after you have the required items" )

--	Talk( 4, "The statue emits a energy shield to keep me away. Looks like I am not strong enough to break it yet. I must think of other ways." )

---------------白羊
	AddNpcMission	(5593)
	AddNpcMission	(5594)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  天堂传送使
------------------------------------------------------------
function mmm_talk12()
--Some Chineze Blabla
	local CurMapName = "jialebi" 

	--黑龙巢穴三层坐标
	local GoTo01X = 1604
	local GoTo01Y = 906
	local GoTo01M = CurMapName

	Talk( 1, "Heaven Teleporter: Hello I am the Heaven Teleporter, i'll Teleport u to Heaven for just an Small Fee." )
	Text( 1, "I want to go to Heaven", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasMoney, 10000000 )
	TriggerAction( 1, TakeMoney, 10000000 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "Heaven Teleporter: Are u Sure u Want to go to Heaven? Then you would have to pay the Fee of 30,000,000g" )
	Text( 2, "I want to go to Heaven now", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Come back again after you have the required Money" )

end
------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员A
------------------------------------------------------------
function mmm_talk13()
	Talk( 1, "Bewildered Researcher A: Hi, I have been lost for a long time. I got some good stuff with me, do you wish to do an exchange?" )
	Text( 1, "Redeem Secrets set item", JumpPage, 2)

	Talk( 2, "Bewildered Researcher A: These good items are also known as Tsunami set!" )
	Text( 2, "Redeem Armor of Secrets (Lance Crusader)", JumpPage, 3)
	Text( 2, "Redeem Gloves of Secrets (Lance Crusader)", JumpPage, 4)
	Text( 2, "Redeem Boots of Secrets (Lance Crusader)", JumpPage, 5)
	Text( 2, "Redeem Drakan (Lance Crusader)", JumpPage, 6)

	Talk(3,"To redeem Armor of Secrets requires 1 Guise Veilstone, 30 Rainbow Fruit, 20 Animal Skin, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2467, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2467, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0396, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Obtained Armor of Secrets", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Gloves of Secrets requires 1 Avow Blotstone, 30 Rainbow Fruit, 20 Hard Shell, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2473, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2473, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0588, 1 , 4)
	TriggerFailure( 1, JumpPage, 7)
	Text( 4, "Obtained Gloves of Secrets ", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Boots of Secrets requires 1 Mirage Shadestone, 30 Rainbow Fruit, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0748, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "Obtained Boots of Secrets", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Drakan requires 1 Demonic Orestone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2463, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2463, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0114, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "Obtained Drakan", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Sorry, you do not have the required items to redeem")
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员B
------------------------------------------------------------
function mmm_talk14()
	Talk( 1, "Bewildered Researcher B: Hi, I have been lost for a long time. I got some good stuff with me, do you wish to do an exchange?" )
	Text( 1, "Redeem Olympus set", JumpPage, 2)

	Talk( 2, "Bewildered Researcher B: These good items are also known as Olympus set!" )
	Text( 2, "Redeem Armor of Olympus (Carsise Champion)", JumpPage, 3)
	Text( 2, "Redeem Gauntlets of Olympus (Carsise Champion)", JumpPage, 4)
	Text( 2, "Redeem Greaves of Olympus (Carsise Champion)", JumpPage, 5)
	Text( 2, "Redeem Colossus (Carsise Champion)", JumpPage, 6)

	Talk(3,"To redeem Armor of Olympus requires 1 Myth Flamestone, 30 Magical Branches, 20 Animal Skins, 10 Splendor Cloths and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0398, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Obtained Armor of Olympus", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Gauntlets of Olympus requires 1 Rainbow Soothstone, 30 Magical Branch, 20 Hard Shell, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0604, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "Obtained Gauntlets of Olympus", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Greaves of Olympus requires 1 Spirit Orestone, 30 Magical Branch, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2484, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2484, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0830, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "Obtained Greaves of Olympus", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Colossus requires 1 Thaw Finestone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2464, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2464, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0116, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "Obtained Colossus", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Sorry, you do not have the required items to redeem")
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员C
------------------------------------------------------------
function mmm_talk15()
	Talk( 1, "Bewildered Researcher C: Hi, I have been lost for a long time. I got some good stuff with me, do you wish to do an exchange?" )
	Text( 1, "Redeem Dragon Lord set", JumpPage, 2)
	Text( 1, "Redeem Tsunami set", JumpPage, 9)

	Talk( 2, "Bewildered Researcher C: These good items are also known as Dragon Lord set!" )
	Text( 2, "Redeem Dragon Lord Costume (Ami Voyager)", JumpPage, 3)
	Text( 2, "Redeem Dragon Lord Muffs (Ami Voyager)", JumpPage, 4)
	Text( 2, "Redeem Dragon Lord Shoes (Ami Voyager)", JumpPage, 5)
	Text( 2, "Redeem Dragon Lord Cap (Ami Voyager)", JumpPage, 6)
	Text( 2, "Redeem Riven Soul (Ami Voyager)", JumpPage, 7)

	Talk(3,"To redeem Dragon Lord Costume requires 1 Beastie Finestone, 30 Rainbow Glass, 20 Animal Skin, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0413, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "Obtained Dragon Lord Costume", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Dragon Lord Muffs requires 1 Beastie Toothstone, 30 Rainbow Glass, 20 Hard Shell, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2477, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2477, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0602, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "Obtained Dragon Lord Muffs", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Dragon Lord Shoes requires 1 Cadavar Orestone, 30 Rainbow Glass, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2483, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2483, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0824, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Obtained Dragon Lord Shoes ", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Dragon Lord Cap requires 1 Beastie Borestone, 30 Rainbow Glass, 20 Life Stones, 10 Meteorites and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2487, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2487, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2223, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Obtained Dragon Lord Cap ", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"To redeem Riven Soul requires 1 Tear Soothstone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2466, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2466, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0151, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Obtained Riven Soul", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"Sorry, you do not have the required items to redeem")

	Talk( 9, "Bewildered Researcher C: These good items are also known as Tsunami set!" )
	Text( 9, "Redeem Tsunami Robe (Lance, Phyllis Voyager)", JumpPage, 10)
	Text( 9, "Redeem Tsunami Gloves (Lance, Phyllis Voyager)", JumpPage, 11)
	Text( 9, "Redeem Tsunami Shoes (Lance, Phyllis Voyager)", JumpPage, 12)
	Text( 9, "Redeem Riven Soul (Lance, Phyllis Voyager)", JumpPage, 7)

	Talk(10,"To redeem Tsunami Robe requires 1 Beastie Finestone, 30 Agate Crystal, 20 Animal Skin, 10 Earthen Element Fragment and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0411, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Obtained Tsunami Robe", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"To redeem Tsunami Gloves requires 1 Zest Jadestone, 30 Quartz Crystals, 20 Extender, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0600, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "Obtained Tsunami Gloves", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"To redeem Tsunami Shoes requires 1 Mirage Shadestone, 30 Agate Crystal, 20 Life Stone, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0760, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Obtained Tsunami Shoes", MultiTrigger, GetMultiTrigger(), 1)
end

------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员D
------------------------------------------------------------
function mmm_talk26()
	Talk( 1, "Bewildered Researcher D: Hi, I have been lost for a long time. I got some good stuff with me, do you wish to do an exchange?" )
	Text( 1, "Redeem Fish Fairy set", JumpPage, 2)
	Text( 1, "Redeem Faerie set", JumpPage, 9)

	Talk( 2, "Bewildered Researcher D: These good items are also known as Fish Fairy set!" )
	Text( 2, "Redeem Fish Fairy Costume (Ami Cleric)", JumpPage, 3)
	Text( 2, "Redeem Fish Fairy Muffs (Ami Cleric)", JumpPage, 4)
	Text( 2, "Redeem Fish Fairy Shoes (Ami Cleric)", JumpPage, 5)
	Text( 2, "Redeem Fish Fairy Cap (Ami Cleric)", JumpPage, 6)
	Text( 2, "Redeem Revered Staff (Ami Cleric)", JumpPage, 7)

	Talk(3,"To redeem Fish Fairy Costume requires 1 Searing Debstone, 30 Life Stone Fragment, 20 Animal Skin, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2471, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2471, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0408, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "Obtained Fish Fairy Costume", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Fish Fairy Muffs requires 1 Dark Soothstone, 30 Life Stone Fragment, 20 Hard Shell, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0598, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "Obtained Fish Fairy Muffs", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Fish Fairy Shoes requires 1 Pearl Soothstone, 30 Life Stone Fragment, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0758, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Obtained Fish Fairy Shoes", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Fish Fairy Cap requires 1 Oceanic Gutstone, 30 Life Stone Fragment, 20 Life Stone, 10 Meteorite and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2486, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2486, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2221, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Obtained Fish Fairy Cap", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"To redeem Revered Staff requires 1 Goddess Mudstone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2461, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2461, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0110, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Obtained Revered Staff", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"Sorry, you do not have the required items to redeem")

	Talk( 9, "Bewildered Researcher D: These good items are also known as Faerie set!" )
	Text( 9, "Redeem Faerie Robe (Phyllis Cleric)", JumpPage, 10)
	Text( 9, "Redeem Faerie Gloves (Phyllis Cleric) ", JumpPage, 11)
	Text( 9, "Redeem Faerie Shoes (Phyllis Cleric)", JumpPage, 12)
	Text( 9, "Redeem Revered Staff (Phyllis Cleric)", JumpPage, 7)

	Talk(10,"To redeem Faerie Robe requires 1 Myth Flamestone, 30 Life Stone Fragment, 20 Life Stone, 10 Pearl and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0406, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Obtained Faerie Robe", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"To redeem Faerie Gloves requires 1 Dark Soothstone, 30 Agate Crystal, 20 Animal Skin, 10 Splendor Cloth and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0596, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "Obtained Faerie Gloves", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"To redeem Faerie Shoes requires 1 Goddess Tearstone, 30 Life Stone Fragment, 20 Life Stone, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0756, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Obtained Faerie Shoes", MultiTrigger, GetMultiTrigger(), 1)
end

------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员E
------------------------------------------------------------
function mmm_talk27()
	Talk( 1, "Bewildered Researcher E: Hi, I have been lost for a long time. I got some good stuff with me. Do you wish to do an exchange?" )
	Text( 1, "Redeem Panda set", JumpPage, 2)
	Text( 1, "Redeem Sage set", JumpPage, 9)

	Talk( 2, "Bewildered Researcher E: These good items are also known as Panda set!" )
	Text( 2, "Redeem Mystic Panda Costume (Ami Seal Master)", JumpPage, 3)
	Text( 2, "Redeem Mystic Panda Gloves (Ami Seal Master)", JumpPage, 4)
	Text( 2, "Redeem Mystic Panda Shoes (Ami Seal Master)", JumpPage, 5)
	Text( 2, "Redeem Mystic Panda Cap (Ami Seal Master)", JumpPage, 6)
	Text( 2, "Redeem Crimson Rod (Ami Seal Master)", JumpPage, 7)

	Talk(3,"To redeem Mystic Panda Costume requires 1 Dim Jadestone, 30 Quartz Crystal, 20 Animal Skin, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0404, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "Obtained Mystic Panda Costume", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Mystic Panda Gloves requires 1 Worldstone, 30 Quartz Crystal, 20 Hard Shell, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2475, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2475, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0594, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "Obtained Mystic Panda Gloves", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Mystic Panda Shoes requires 1 Crystal Zionstone, 30 Quartz Crystal, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2481, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2481, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0754, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Obtained Mystic Panda Shoes", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Mystic Panda Cap requires 1 Sky Shadestone, 30 Quartz Crystals, 20 Life Stones, 10 Meteorites and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2485, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2485, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2219, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Obtained Mystic Panda Cap", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"To redeem Crimson Rod requires 1 Abrade Orestone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2462, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2462, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0112, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Obtained Crimson Rod", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"Sorry, you do not have the required items to redeem")

	Talk( 9, "Bewildered Researcher E: These good items are also known as Sage set!" )
	Text( 9, "Redeem Robe of the Sage (Phyllis Seal Master)", JumpPage, 10)
	Text( 9, "Redeem Gloves of the Sage (Phyllis Seal Master)", JumpPage, 11)
	Text( 9, "Redeem Boots of the Sage (Phyllis Seal Master)", JumpPage, 12)
	Text( 9, "Redeem Crimson Rod (Phyllis Seal Master)", JumpPage, 7)

	Talk(10,"To redeem Robe of the Sage requires 1 Dim Jadestone, 30 Quartz Crystal, 20 Hard Shell, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0402, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Obtained Robe of the Sage", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"To redeem Gloves of the Sage requires 1 Rainbow Soothstone, 30 Life Stone Fragment, 20 Extender, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0592, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "Obtained Gloves of the Sage", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"To redeem Boots of the Sage requires 1 Pearl Soothstone, 30 Agate Crystal, 20 Animal Skin, 10 Magical Bone and 50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0752, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Obtained Boots of the Sage", MultiTrigger, GetMultiTrigger(), 1)
end

------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员F
------------------------------------------------------------
function mmm_talk28()
	Talk( 1, "Bewildered Researcher F: Hi, I have been lost for a long time. I got some good stuff with me, do you wish to do an exchange?" )
	Text( 1, "Redeem Apollo set", JumpPage, 2)

	Talk( 2, "Bewildered Researcher F: These good items are also known as Apollo set!" )
	Text( 2, "Redeem Vest of Apollo (Lance, Phyllis Sharpshooter)", JumpPage, 3)
	Text( 2, "Redeem Gloves of Apollo (Lance, Phyllis Sharpshooter) ", JumpPage, 4)
	Text( 2, "Redeem Boots of Apollo (Lance, Phyllis Sharpshooter)", JumpPage, 5)
	Text( 2, "Redeem Twilight (Lance, Phyllis Sharpshooter)", JumpPage, 6)

	Talk(3,"To redeem Vest of Apollo requires 1 Hervo Bloodstone, 30 Clarity Crystal, 20 Animal Skin, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2469, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2469, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0400, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Obtained Vest of Apollo", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Gloves of Apollo requires 1 Zest Jadestone, 30 Clarity Crystals, 20 Hard Shells, 10 Earthen Element Fragments and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0590, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "Obtained Gloves of Apollo", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Boots of Apollo requires 1 Goddess Tearstone, 30 Clarity Crystal, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0750, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "Obtained Boots of Apollo", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Twilight requires 1 Oceanic Soulstone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2465, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2465, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0118, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "Obtained Twilight", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Sorry, you do not have the required items to redeem")
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  陆地一层传送使
------------------------------------------------------------
function mmm_talk16()
	--地图名称信息
	local CurMapName = "jialebi"


	--海军码头坐标
	local GoTo01X = 1250
	local GoTo01Y = 1010
	local GoTo01M = CurMapName

	Talk( 1, "Want to find out what is underneath? Pay me 5000G and I will send you in!" )
	Text( 1, "Vile merchant! Never mind...I will pay", JumpPage, 2 )
	Text( 1, "Forget it! I do not have enough money to go", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Below leads to the Underground Dock of the Deathsouls. Are you brave enough to enter?" )
	Text( 2, "Yes! Go to Underground Dock!", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "Go away beggar!" )
	Talk( 4, "You do not have enough gold", CloseTalk)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  实验室看守人A
------------------------------------------------------------
function mmm_talk17()
	--地图名称信息
	local CurMapName = "jialebi"

	--实验室A坐标
	local GoTo01X = 968
	local GoTo01Y = 828

	local GoTo01M = CurMapName

	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Vile merchant! Never mind...I will pay", JumpPage, 2 )
	Text( 1, "Forget it! I do not have enough money to go", JumpPage, 3 )
	
	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "The Research Room of the Deathsouls is on the inside. Do you dare to enter?" )
	Text( 2, "Go to Research Room A!", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "Go away beggar!" )
	Talk( 4, "You do not have enough gold", CloseTalk)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  实验室看守人B2386
------------------------------------------------------------
function mmm_talk18()
	--地图名称信息
	local CurMapName = "jialebi"


	--实验室B坐标
	local GoTo01X = 968
	local GoTo01Y = 906

	local GoTo01M = CurMapName

	Talk( 1, "Do you wish to know what is inside? Bring me 20 Soul of Undead and I will let you in!" )
	Text( 1, "Bring me in", JumpPage, 2 )
	Text( 1, "Forget it! I do not want to go", JumpPage, 3 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 2386, 20 )
	TriggerAction( 1, TakeItem, 2386, 20 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "Research Room B consists of a terrifying Deathsoul Commander. Do you still wish to enter?" )
	Text( 2, "Go to Research Room B!", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Go away beggar!" )
	Talk( 4, "You have not collect 20 Souls of Undead", CloseTalk)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  实验室看守人C
------------------------------------------------------------
function mmm_talk19()
	--地图名称信息
	local CurMapName = "jialebi"


	--实验室C坐标
	local GoTo01X = 968
	local GoTo01Y = 993

	local GoTo01M = CurMapName

	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Vile merchant! Never mind...I will pay", JumpPage, 2 )
	Text( 1, "Forget it! I do not have enough money to go", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "Research Room C is on the other side" )
	Text( 2, "Yes! Go to Research Room C!", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Go away beggar!" )
	Talk( 4, "You do not have enough gold", CloseTalk)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地下船坞守卫
------------------------------------------------------------
function mmm_talk20()
	--地图名称信息
	local CurMapName = "jialebi"


	--实验室坐标
	local GoTo01X = 1076
	local GoTo01Y = 869
	local GoTo01M = CurMapName

	Talk( 1, "Want to know what is inside?" )
	Text( 1, "What is underneath?", JumpPage, 2 )
	Text( 1, "I do not wish to know", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasItem , 2408,1)
	TriggerCondition(1,HasItem , 2409,1)
	TriggerCondition(1,HasItem , 2410,1)
	TriggerCondition(1,HasItem , 2411,1)
	TriggerCondition(1,HasItem , 2412,1)

	TriggerAction(1,TakeItem,2408,1)
	TriggerAction(1,TakeItem,2409,1)
	TriggerAction(1,TakeItem,2410,1)
	TriggerAction(1,TakeItem,2411,1)
	TriggerAction(1,TakeItem,2412,1)

	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "On the inside will be the Research Room of the Deathsouls. Many dangers lie in it and if you wish to enter, collect the full set of Passwords: AB, BC, CD, DE, EF." )
	Text( 2, "Go to Research Room!", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "......Bye!" )
	Talk( 4, "You have not finish collecting all the Passwords", CloseTalk)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地狱一层炼狱人
------------------------------------------------------------
function mmm_talk22()
	--地图名称信息
	local CurMapName = "jialebi"


	--地狱二层坐标
	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName


	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Vile merchant! Never mind...I will pay", JumpPage, 2 )
	Text( 1, "Forget it! I do not have enough money to go", JumpPage, 3 )
	Text( 1, "I heard that you have some good items here", JumpPage, 5 )


	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "Go to Abaddon 2?" )
	Text( 2, "Yes! Go to Abaddon 2!", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 3, "Go away beggar!" )
	Talk( 4, "You do not have enough gold" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0267, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Abaddon 1 Warden: Hi, I got some good stuff with me but don't expect me to give it for free. Bring me 1 Kal Runestone and I might reconsider" )
	Text( 5, "Obtain Power of Flame", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Abaddon 1 Warden: Come back again after you have the required items" )
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地狱二层炼狱人
------------------------------------------------------------
function mmm_talk23()
	--地图名称信息
	local CurMapName = "jialebi"


	--地狱一层坐标
	local GoTo01X = 199
	local GoTo01Y = 824
	local GoTo01M = CurMapName

	--地狱三层坐标
	local GoTo02X = 70
	local GoTo02Y = 952
	local GoTo02M = CurMapName


	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Go to Abaddon 1", JumpPage, 2 )
	Text( 1, "Go to Abaddon 3", JumpPage, 3 )
	Text( 1, "I heard that you have some good items here", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Do you wish to go to Abaddon 1?" )
	Text( 2, "Go to Abaddon 1", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "Go to Abaddon 3?" )
	Text( 3, "Yes! Go to Abaddon 3!", MultiTrigger, GetMultiTrigger(),2 )
	
	Talk( 4, "You do not have enough gold" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0268, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Abaddon 2 Warden: Hi, I got some good stuff with me but don't expect me to give it for free. Bring me 1 Kal Runestone and I might reconsider" )
	Text( 5, "Obtained Power of Wind", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Abaddon 2 Warden: Come back again after you have the required items" )
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地狱三层炼狱人
------------------------------------------------------------
function mmm_talk24()

	--地图名称信息
	local CurMapName = "jialebi"


	--地狱二层坐标
	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName

	--地狱四层坐标
	local GoTo02X = 209
	local GoTo02Y = 955
	local GoTo02M = CurMapName


	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Go to Abaddon 2", JumpPage, 2 )
	Text( 1, "Go to Abaddon 4", JumpPage, 3 )
	Text( 1, "I heard that you have some good items here", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Go to Abaddon 2?" )
	Text( 2, "Yes! Go to Abaddon 2!", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "Do you wish to go to Abaddon 4?" )
	Text( 3, "Go to Abaddon 4", MultiTrigger, GetMultiTrigger(), 2 )
	
	Talk( 4, "You do not have enough gold" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0269, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Abaddon 3 Warden: Hi, I got some good stuff with me but don't expect me to give it for free. Bring me 1 Kal Runestone and I might reconsider" )
	Text( 5, "Power of Thunder", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Abaddon 3 Warden: Come back again after you have the required items" )
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地狱四层炼狱人
------------------------------------------------------------
function mmm_talk25()

		--地图名称信息
	local CurMapName = "jialebi"


	--地狱三层坐标
	local GoTo01X = 70
	local GoTo01Y = 952
	local GoTo01M = CurMapName

	--藏宝海湾坐标
	local GoTo02X = 690
	local GoTo02Y = 1043
	local GoTo02M = CurMapName


	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Go back to Abaddon 3", JumpPage, 2 )
	Text( 1, "I want to leave this hellish place", JumpPage, 3 )
	Text( 1, "I heard that you have some good items here", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Go to Abaddon 3?" )
	Text( 2, "Yes! Go to Abaddon 3!", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "Do you wish to go out?" )
	Text( 3, "Yes! Let me out!", MultiTrigger, GetMultiTrigger(), 2 )
	
	Talk( 4, "You do not have enough gold" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0270, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Abaddon 4 Warden: Hi, I got some good stuff with me but don't expect me to give it for free. Bring me 1 Kal Runestone and I might reconsider" )
	Text( 5, "Power of Frost", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Abaddon 4 Warden: Come back again after you have the required items" )
end


------------------------------------------------------------
-- 藏宝海湾 传送使
------------------------------------------------------------

function mmm_talk29()
	--取消传送返回选择传送地点的对话内容和页面编号
	local ReSelectTalk = "I need to reconsider…"
	local ReSelectPage = 1

	--取消传送和退出传送的对话和页面编号
	local CancelSelectTalk = "Forget it…I will stay here"
	local CancelSelectPage = 7

	--地图名称信息
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	--白银之城坐标
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	--沙岚之城坐标
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	--冰狼堡坐标
	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	Talk( 1, "Teleporter: Do you wish to leave the beautiful Treasure Gulf?" )
	Text( 1, "Go to 鲤沐眚!", JumpPage, 2 )
	Text( 1, "Go to Shaitan City!", JumpPage, 3 )
	Text( 1, "Go to Icicle City!", JumpPage, 4 )
	Text( 1, "Record Spawn point", JumpPage, 5 )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 2, "Teleports to Argent City? No problem! Please pay 500G." )
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 3, "I love Shaitan City! Please pay 500G" )
	Text( 3, "Teleport",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 4, "Teleports to Icicle City? No problem! Please pay 500G." )
	Text( 4, "Teleport",MultiTrigger, GetMultiTrigger(), 2)
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 6, "Sorry! You do not have enough gold to teleport." )

	Talk( 7, "Remember to look for me if you need teleportation services", CloseTalk )
	Talk( 8, "..................^$&#&^%.................." )



	InitTrigger()
	TriggerAction( 1, JumpPage, 1 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )

	

end


-- 女神
------------------------------------------------------------

	
function mmm_talk30()

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	--白银之城坐标
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1	

	Talk( 1, "Goddess: It must be tough on you making your way here. Want a reward from me? Sure, answer a few questions. But keep in mind to be honest." )
	Text( 1, "I am ready", JumpPage, 2 )
	Text( 1, "I have some special request to make.", JumpPage, 17 )
	Text( 1, "I will not answer these boring questions.", CloseTalk )

	InitTrigger()
	TriggerAction( 1, GoTo, 631, 927, "jialebi" )
	Text( 1, "I am sick of this place, let me return to Treasure Gulf please.", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Goddess: Everyone can only select rewards according to their levels. Please select your level in the option below. Remember, dishonesty does not pay." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerCondition( 1, LvCheck, ">", 14 )
	TriggerAction ( 1, JumpPage, 4 )
	TriggerFailure( 1, JumpPage, 16 )
	
	Text( 2, "Lv 15 - Lv 40",MultiTrigger, GetMultiTrigger() ,1)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 40 )
	TriggerCondition( 1, LvCheck, "<", 61 )
	TriggerAction ( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 16 )

	Text( 2, "Lv 41 - Lv 60",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 60 )
	TriggerAction ( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 16 )
	Text( 2, "Lv 60 and above",MultiTrigger, GetMultiTrigger(), 1)


	Talk( 4, "Goddess: Seems like you are quite honest. I can convert your Honor points into gold or experience. If you are willing to dedicate all of your Honor points, you might even receive a surprise reward." )
	Text( 4, "Exchange Honor for gold", JumpPage, 7 )
	Text( 4, "Exchange Honor for experience", JumpPage, 8 )
	Text( 4, "I wish to dedicate all my Honor to the Goddess", JumpPage, 9 )


	Talk( 5, "Goddess: Seems like you are quite honest. I can convert your Honor points into gold or experience. If you are willing to dedicate all of your Honor points, you might even receive a surprise reward." )
	Text( 5, "Exchange Honor for gold", JumpPage, 10 )
	Text( 5, "Exchange Honor for experience", JumpPage, 11 )
	Text( 5, "I wish to dedicate all my Honor to the Goddess", JumpPage, 12 )

	Talk( 6, "Goddess: Seems like you are quite honest. I can convert your Honor points into gold or experience. If you are willing to dedicate all of your Honor points, you might even receive a surprise reward." )
	Text( 6, "Exchange Honor for gold", JumpPage, 13 )
	Text( 6, "Exchange Honor for experience", JumpPage, 14 )
	Text( 6, "I wish to dedicate all my Honor to the Goddess", JumpPage, 15 )

		InitFuncList()
	AddFuncList( CreditExchange,0 )
	Talk( 7, "Goddess: Do you wish to dedicate all your Honor to the Goddess in exchange for gold? All Honor points gained by you all these while will be gone." )
	Text( 7, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 7,"Let me think again",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,3 )
	Talk( 8, "Goddess: Do you wish to dedicate all your Honor to the Goddess in exchange for experience? All Honor points gained by you all these while will be gone." )
	Text( 8, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 8,"Let me think again",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 6 )--对换钱
	Talk( 9, "Goddess: Do you wish to dedicate all your Honor to the Goddess? All Honor points gained by you all these while will be gone and you might not even get anything in return." )
	Text( 9, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 9,"Let me think again",JumpPage , 4 )


	InitFuncList()
	AddFuncList( CreditExchange,1 )
	Talk( 10, "Goddess: Do you wish to dedicate all your Honor to the Goddess in exchange for gold? All Honor points gained by you all these while will be gone." )
	Text( 10, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 10,"Let me think again",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,4 )
	Talk( 11, "Goddess: Do you wish to dedicate all your Honor to the Goddess in exchange for experience? All Honor points gained by you all these while will be gone." )
	Text( 11, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 11,"Let me think again",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 7 )--对换钱
	Talk( 12, "Goddess: Do you wish to dedicate all your Honor to the Goddess? All Honor points gained by you all these while will be gone and you might not even get anything in return." )
	Text( 12, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 12,"Let me think again",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,2 )
	Talk( 13, "Goddess: Do you wish to dedicate all your Honor to the Goddess in exchange for gold? All Honor points gained by you all these while will be gone." )
	Text( 13, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 13,"Let me think again",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange,5 )
	Talk( 14, "Goddess: Do you wish to dedicate all your Honor to the Goddess in exchange for experience? All Honor points gained by you all these while will be gone." )
	Text( 14, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 14,"Let me think again",JumpPage , 4 )

	InitFuncList()
	AddFuncList( CreditExchange, 8 )
	Talk( 15, "Goddess: Do you wish to dedicate all your Honor to the Goddess? All Honor points gained by you all these while will be gone and you might not even get anything in return." )
	Text( 15, "I want to exchange", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 15,"Let me think again",JumpPage , 4 )

	Talk( 16, "Goddess: I know what your heart is telling you. Do not try to belittle me or you will be seeking death. I shall grant you another chance. Do not let me down." )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Text( 16, "I stand by my decision and I had not lied.", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 16,"Please forgive my ignorance. Allow me to reselect.",JumpPage , 2 )

	
	Talk( 17, "Goddess: I have some mystical precious stone with me at the moment. The effect will be remarkable if put to the correct use. Hope that you have some use for them. My messenger has discovered even more amazing stones during her time on the land. She will bring some of it back soon. Look for me again if you need more." )
	Text( 17, "Hephaestus Framestone (Champion )", JumpPage, 18)
	Text( 17, "Hermes Framestone (Crusader )", JumpPage, 19)
	Text( 17, "Apollo Framestone (Sharpshooter )", JumpPage, 20)
	Text( 17, "Poseidon Framestone (Voyager )", JumpPage, 21)
	Text( 17, "Hestia Framestone (Cleric )", JumpPage, 22)
	Text( 17, "Athena Framestone (Seal Master)", JumpPage, 23)  
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2530, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 18, "Goddess: When you have reached Lv 60 and bring me 5 Kal Runestone, I will give you the stone in return." )
	Text( 18, "Obtained Hephaestus Framestone", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2533, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 19, "Goddess: When you have reached Lv 60 and bring me 5 Kal Runestone, I will give you the stone in return." )
	Text( 19, "Obtained Hermes Framestone", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2536, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 20, "Goddess: When you have reached Lv 60 and bring me 5 Kal Runestone, I will give you the stone in return." )
	Text( 20, "Obtained Apollo Framestone", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2539, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 21, "Goddess: When you have reached Lv 60 and bring me 5 Kal Runestone, I will give you the stone in return." )
	Text( 21, "Obtained Poseidon Framestone", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2542, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 22, "Goddess: When you have reached Lv 60 and bring me 5 Kal Runestone, I will give you the stone in return." )
	Text( 22, "Obtained Hestia Framestone", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2545, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 23, "Goddess: When you have reached Lv 60 and bring me 5 Kal Runestone, I will give you the stone in return." )
	Text( 23, "Obtained Athena Framestone", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 24, "Goddess: When you have reached Lv 60 and bring me 5 Kal Runestone, I will give you something in return.")


	
	AddNpcMission(6000)


end

function dydz_talk()


	Talk( 1, "Abaddon Vagabond: \"If you treasured your life, leave now! I have seen too much adventurers like you!\"" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 40,74, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "What are you thinking? You don't have a boat that you can use anymore. Now scram if you value your life!" )
	Talk( 4, "Don't think that your boat will be repaired for free here. Dock your boat and prepare a fee of 1000G." )
	Talk( 5, "Don't think you can refuel your ship here for free. Dock your ship and prepare a fee of 200G." )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
	Talk( 7, "Abaddon Vagabond: \"………………^$&#&^%………………\"" )

end
----------------------------
---     momo code --------
-----------------------------

function dysr_talk ()

	Talk( 1, "Abaddon Merchant: On command of my lord, Death. I am here to provide help to you brave warriors, and to witness your deaths. Haha!" )
	Text( 1, "Trade", BuyPage)
	Text( 1, "Repair", OpenRepair)

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Other(	637	)
	Other(	819	)
	Other(	869	)
	Other(	874	)


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

--- ========= Sacred War Administrator

function roico_talk()
    Talk( 1, "Holy War Administrator: To enter the Holy War, please obtain the [Life and Death Token] from me, it represents your determination and spirit! Next I have some item you might be intrested in, but I'll only give them to heroes of the war!" )
    Text( 1, "Exchange Level 70 boss equipment",JumpPage, 2 )
	Text( 1, "Exchange for Title Medal",JumpPage, 16 )
	Text( 1, "Exchange Blood Pledge Token",JumpPage, 28 )
	Text( 1, "Use Honor points to exchange into Life and Death token",JumpPage, 29 )

	Talk( 2, "Select the boss stone of your choice" )
    Text( 2, "Hephaestus PawStone (Champion)", JumpPage, 3)
	Text( 2, "Hermes PawStone (Crusader)", JumpPage, 4)
	Text( 2, "Apollo PawStone (Sharpshooter)", JumpPage, 5)
	Text( 2, "Poseidon PawStone (Voyager)", JumpPage, 6)
	Text( 2, "Hestia PawStone (Cleric)", JumpPage, 7)
	Text( 2, "Athena PawStone (Seal Master)", JumpPage, 8)
	Text( 2, "Next Page", JumpPage, 9)
	Talk( 9, "Select the boss stone of your choice" )
	Text( 9, "Hephaestus ClawStone (Champion)", JumpPage, 10)
	Text( 9, "Hermes ClawStone (Crusader)", JumpPage, 11)
	Text( 9, "Apollo ClawStone (Sharpshooter)", JumpPage, 12)
	Text( 9, "Poseidon ClawStone (Voyager)", JumpPage, 13)
	Text( 9, "Hestia ClawStone (Cleric)", JumpPage, 14)
	Text( 9, "Athena ClawStone (Seal Master)", JumpPage, 15)
	Text( 9, "Go back a page", JumpPage, 2) 


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2532, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 3, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 3, "Obtained Hephaestus PawStone", MultiTrigger, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2535, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 4, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 4, "Hermes PawStone", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2538, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 5, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 5, "Apollo PawStone", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2541, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 6, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 6, "Poseidon PawStone", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2544, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 7, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 7, "Hestia PawStone", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2547, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 8, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 8, "Athena PawStone", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2531, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 10, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 10, "Hephaestus ClawStone", MultiTrigger, GetMultiTrigger(), 1)



	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2534, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 11, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 11, "Hermes ClawStone", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2537, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 12, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 12, "Apollo ClawStone", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2540, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 13, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 13, "Poseidon ClawStone", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2543, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 14, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 14, "Hestia ClawStone", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2546, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 15, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 15, "Athena ClawStone", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 16, "Sacred War Administrator: Please Select the Title Accessories that you want!" )
        Text( 16, "Scout", JumpPage, 17)
	Text( 16, "3rd Rank Special Attack Force", JumpPage, 18)
	Text( 16, "Vice_Cap", JumpPage, 19)
	Text( 16, "Major General", JumpPage, 20)
	Text( 16, "Major Chief", JumpPage, 21)
	Text( 16, "Next Page", JumpPage, 30)

	Talk( 30, "Sacred War Administrator: Please Select the Title Accessories that you want!" )
	Text( 30, "Iron blood commander", JumpPage, 22)
	Text( 30, "Argent lieutenant commander", JumpPage, 23)
	Text( 30, "Golden Colonel General", JumpPage, 24)
	Text( 30, "Gold General", JumpPage, 25)
	Text( 30, "General Godslayer", JumpPage, 26)
	Text( 30, "Go back a page", JumpPage, 16)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2383, 20 )
	TriggerAction( 1, GiveItem, 5331, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 17, "Sacred War Administrator: If you can give me 20 blood contract, I can give you this level of Medal." )
	Text( 17, "Obtained Emblem", MultiTrigger, GetMultiTrigger(), 1)



	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 50 )
	TriggerCondition( 1, HasItem, 5331, 1 )
	TriggerAction( 1, TakeItem, 2383, 50 )
	TriggerAction( 1, TakeItem, 5331, 1 )
	TriggerAction( 1, GiveItem, 5332, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 18, "Sacred War Administrator: If you can give me 50 Blood Contract and 1st Rank Medal, I'll give you the medal of this rank." )
	Text( 18, "Obtained Emblem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 100 )
	TriggerCondition( 1, HasItem, 5332, 1 )
	TriggerAction( 1, TakeItem, 2383, 100 )
	TriggerAction( 1, TakeItem, 5332, 1 )
	TriggerAction( 1, GiveItem, 5333, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 19, "Sacred War Administrator: If you can give me 100 Blood Contract and 2nd Rank Medal, I'll give you the medal of this rank." )
	Text( 19, "Obtained Emblem", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 250 )
	TriggerCondition( 1, HasItem, 5333, 1 )
	TriggerAction( 1, TakeItem, 2383, 250 )
	TriggerAction( 1, TakeItem, 5333, 1 )
	TriggerAction( 1, GiveItem, 5334, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 20, "Sacred War Administrator: If you can give me 250 Blood Contract and 3rd Rank Medal, I'll give you the medal of this rank." )
	Text( 20, "Obtained Emblem", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 400 )
	TriggerCondition( 1, HasItem, 5334, 1 )
	TriggerAction( 1, TakeItem, 2383, 400 )
	TriggerAction( 1, TakeItem, 5334, 1 )
	TriggerAction( 1, GiveItem, 5335, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 21, "Sacred War Administrator: If you can give me 400 Blood Contract and 4th Rank Medal, I'll give you the medal of this rank." )
	Text( 21, "Obtained Emblem", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 650 )
	TriggerCondition( 1, HasItem, 5335, 1 )
	TriggerAction( 1, TakeItem, 2383, 650 )
	TriggerAction( 1, TakeItem, 5335, 1 )
	TriggerAction( 1, GiveItem, 5336, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 22, "Sacred War Administrator: If you can give me 650 Blood Contract and 5th Rank Medal, I'll give you the medal of this rank." )
	Text( 22, "Obtained Emblem", MultiTrigger, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 55 )
	TriggerCondition( 1, HasItem, 5336, 1 )
	TriggerAction( 1, TakeItem, 2865, 55 )
	TriggerAction( 1, TakeItem, 5336, 1 )
	TriggerAction( 1, GiveItem, 5337, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 23, "Sacred War Administrator: If you can give me 55 Blood Pledge Token and 6th Rank Medal, then I'll give you the medal of this rank." )
	Text( 23, "Obtained Emblem", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 80 )
        TriggerCondition( 1, HasItem, 5337, 1)
	TriggerAction( 1, TakeItem, 2865, 80 )
	TriggerAction( 1, TakeItem, 5337, 1 )
	TriggerAction( 1, GiveItem, 5338, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 24, "Sacred War Administrator: If you can give me 80 Blood Pledge Token and 7th Rank Medal, then I'll give you the medal of this rank." )
	Text( 24, "Obtained Emblem", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 110 )
	TriggerCondition( 1, HasItem, 5338, 1)
	TriggerAction( 1, TakeItem, 2865, 110 )
	TriggerAction( 1, TakeItem, 5338, 1 )
	TriggerAction( 1, GiveItem, 5339, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 25, "Sacred War Administrator: If you can give me 110 Blood Pledge Token and 8th Rank Medal, then I'll give you the medal of this rank." )
	Text( 25, "Obtained Emblem", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 155 )
	TriggerCondition( 1, HasItem, 5339, 1)
	TriggerAction( 1, TakeItem, 2865, 155 )
	TriggerAction( 1, TakeItem, 5339, 1 )
	TriggerAction( 1, GiveItem, 5340, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 26, "Sacred War Administrator: If you can give me 155 Blood Pledge Token and 9th Rank Medal, then I'll give you the medal of this rank." )
	Text( 26, "Obtained Emblem", MultiTrigger, GetMultiTrigger(), 1)
	
	Text( 27, "Sacred War Administrator: Please Check if your inventory has enough space or you may not have all the items you needed I cannot exchange with you!")
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2383, 20 )
	TriggerAction( 1, GiveItem, 2865, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 28, "Sacred War Administrator: 20 Blood Covenant can be exchanged into 1 Token of Blood Alliance!" )
	Text( 28, "Confirm to exchange", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 29, "Sacred War Adminisrator: 15 honor points can be exchanged into one Life and Death Token. Life and Death Token will only disapear if you died inside Sacred War!")
	Text( 29, "Confirm to exchange", GetChaName45_2382, 1)

end
function r_talkmo1 () -- my ticket selling NPC

	Talk( 1, "Ticket Machine: Buy your tickets here" )
	Text( 1, "Buy Tickets", BuyPage)
	
	InitTrade()
	Other(	4602	) -- Argent
	Other(	4603	) -- Shaitan
	Other(	4604	) -- Icicle
	Other(	3048	) -- Thundoria Castle 5000
	Other(	3049	) -- Thundoria Harbour 8000
	Other(	3050	) -- Sacred Snow Mountain 15000
	Other(	3051	) -- Andes Forest haven
	Other(	3052	) -- Oasis Haven
	Other(	3053	) -- Icespire Haven
	Other(	3055	) -- Barren Cavern
	Other(	3073	) -- Abandoned Mine 1
	Other(	3056	) -- Abandoned Mine 2
	Other(	3057	) -- silver mine 2
	Other(	3058	) -- silver mine 3
	Other(	3054	) -- Lone Tower
	Other(	3059	) -- lone tower 2
	Other(	3060	) -- lone tower 3
	Other(	3070	) -- lone tower 4
	Other(	3071	) -- lone tower 5
	Other(	3072	) -- lone tower 6
	Other(	2445	) -- carrabean
	Other(	332		) -- spring
	Other(	563		) -- summer
	Other(	583		) -- autumn
	Other(	2491	) -- naval base 50,000
	Other(	2844	) -- abaddon 4 100,000
	--Other(	2943	) -- tauras gate
	
end 

function r_talkmo2 ()

	Talk( 1, "Hi! Welcome to Pirate Wear Inc, Pls Look Around!" )
	Text( 1, "Trade", BuyPage)

	  Other(  5900	) 
Other(  5901	) 
Other(  5902	) 
Other(  5903	) 
Other(  5904	) 
Other(  5905	) 
Other(  5906	) 
Other(  5907	) 
Other(  5908	) 
Other(  5909	) 
Other(  5910	) 
Other(  5911	) 
Other(  5912	) 
Other(  5913	) 
Other(  5914	) 
Other(  5915	) 
Other(  5916	) 	
Other(  5917	) 
Other(  5918	) 
Other(  5919	) 
Other(  5920	) 	
Other(  5921	) 	
Other(  5961	) 	
Other(  5962	) 	
Other(  5963	) 	
Other(  5964	) 	
Other(  5965	) 	
Other(  5966	) 	
Other(  5967	) 	
Other(  5968	) 	
Other(  5969	) 	
Other(  5970	) 	
Other(  5971	) 	
Other(  5972	) 	
Other(  5973	) 	
Other(  5974	) 	
Other(  5975	) 
Other(  5977	) 
Other(  5978	) 
Other(  5979	) 
Other(  5980	) 
Other(  5981	) 
 

end 

function r_talkmo3 () -- General Store

	Talk( 1, "Hi! I try to keep my stock up to date! feel free to look around! Prices still to be set" )
	Text( 1, "Buy", BuyPage)

	InitTrade()
	Other(  3075    ) -- Composition Catalyst
        Other(  3074    ) -- Refining Catalyst
        Other(  3087    ) -- Fortune Lot
        Other(  3086    ) -- Career Lot
        Other(  2816    ) -- Book Of Honor Bonus
        Other(  1780    ) -- Stone Of Oath
        Other(	0906	) -- Devil Wings
	Other(	0905	) -- Dragon Wings
	Other(  0141    ) -- Ebony Wings
        Other(	0904	) -- Vampiric wings
	Other(		) -- Elven wings
	Other(	0936	) -- Butterfly wings
	Other(	0937	) -- Angelic wings
	Other(	1024	) -- Super Rechargable battery
	Other(	3463	) -- Icy Crystal
	Other(	0849	) -- bananas
	Other(	3844	) -- heavens berry
	Other(	3094	) -- Amp of strive
	Other(	3095	) -- Hi Amp of strive
	Other(	3845	) -- charmed berry
	Other(	3096	) -- amp of luck
	Other(	3097	) -- hi amp of luck
	Other(	3880	) -- super mystic fruit
	Other(	3882	) -- super lucky fruit
	Other(	3105	) -- skating pot
	Other(	3909	) -- gyoza
	Other(	3846	) -- voodoo doll
	Other(	3099	) -- sp holy water
	Other(	3098	) -- con flask
	Other(	3336	) -- mystic clover
	Other(	3462	) -- magical clover
	Other(	3300	) -- intense magic
	Other(	3301	) -- crystalline blessing
	Other(	3109	) -- str reset
	Other(	3110	) -- con reset
	Other(	3111	) -- agi reset
	Other(	3112	) -- acc reset
	Other(	3113	) -- spr reset
	Other(	3088	) -- 
	Other(	3089	) -- 
	Other(	3090	) -- 
	Other(	3091	) -- 
	Other(	3092	) -- 
	Other(	3093	) -- 
Other(	1812	) -- 
Other(	2326	) -- 
Other(	2891	) -- 
Other(	2990	) -- 
Other(	1080	) -- 
Other(	1855	) -- 
Other(	851	) -- 
Other(	1856	) -- 
Other(	2988	) -- 
Other(	3338	) -- 
Other(	3896	) -- 
Other(	852	) -- 
Other(	3342	) -- 
Other(	4023	) -- 
Other(	4022	) -- 
Other(	3908	) -- 
end 

function dukun_2 () -- Job Changer-Dukan
	Talk( 1, "Dukan : Hey, i can change ur class against a small fee")
	Text( 1, "First Class Advancement", JumpPage, 2 )
	Text( 1, "Second Class Advancement", JumpPage, 3 )
	Text( 1, "Bye" , CloseTalk )

	Talk( 2, "First Class Advancement Will Cost 1000 Gold Are U Sure U Wanna Advance?" )
	Text( 2, "Yes I Am Sure", JumpPage, 8 )
	Text( 2, "I Wanna Go Back To The First Page", JumpPage, 1 ) 

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000, 1000 )
	TriggerAction( 1, SetProfession, 1 )
	TriggerAction( 1, TakeMoney, 1000, 1000 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, LvCheck, ">", 9 )
	TriggerCondition( 2, IsCategory, 2 )
	TriggerCondition( 2, PfEqual,0 )
	TriggerCondition( 2, HasMoney, 1000, 1000 )
	TriggerAction( 2, SetProfession, 1  )
	TriggerAction( 2, TakeMoney, 1000, 1000 )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )
	Text(8, "Ok, I will become a Swordman", MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000, 1000 )
	TriggerAction( 1, SetProfession, 2 )
	TriggerAction( 1, TakeMoney, 1000, 1000 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, LvCheck, ">", 9 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual,0 )
	TriggerCondition( 2, HasMoney, 1000, 1000 )
	TriggerAction( 2, SetProfession, 2  )
	TriggerAction( 2, TakeMoney, 1000, 1000 )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )
	Text(8, "Ok, I will become a Hunter", MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, IsCategory, 3 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000, 1000 )
	TriggerAction( 1, SetProfession, 5 )
	TriggerAction( 1, TakeMoney, 1000, 1000 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, LvCheck, ">", 9 )
	TriggerCondition( 2, IsCategory, 4 )
	TriggerCondition( 2, PfEqual,0 )
	TriggerCondition( 2, HasMoney, 1000, 1000 )
	TriggerAction( 2, SetProfession, 5  )
	TriggerAction( 2, TakeMoney, 1000, 1000 )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )
	Text(8, "Ok, I will become a Herbalis", MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000, 1000 )
	TriggerAction( 1, SetProfession, 4 )
	TriggerAction( 1, TakeMoney, 1000, 1000 )
	TriggerAction( 1, JumpPage, 6 )
	Text(8, "Ok, I will become a Explorer", MultiTrigger, GetMultiTrigger(), 2)		


	Talk( 3, "Second Class Advancement Will Cost 5000 Gold" )
	Text( 3, "Sharpshooter", JumpPage, 14 )
	Text( 3, "Crusader", JumpPage, 15 )
	Text( 3, "Champion", JumpPage, 16 )
	Text( 3, "Voyager", JumpPage, 17 )
	Text( 3, "Cleric", JumpPage, 18 )
	Text( 3, "Seal Master", JumpPage, 19 )
	Text( 3, "I Wanna Go Back To The First Page", JumpPage, 1 ) 

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, HasMoney, 5000, 5000 )
	TriggerAction( 1, SetProfession, 12 )
	TriggerAction( 1, TakeMoney, 5000, 5000 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, HasMoney, 5000, 5000 )
	TriggerAction( 2, SetProfession, 12  )
	TriggerAction( 2, TakeMoney, 5000, 5000 )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )
	Text(14, "Ok, I will become a Sharpshooter", MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 1 )
	TriggerCondition( 1, HasMoney, 5000, 5000 )
	TriggerAction( 1, SetProfession, 9 )
	TriggerAction( 1, TakeMoney, 5000, 5000 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text(15, "Ok, I will become a Crusader", MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 2 )
	TriggerCondition( 1, PfEqual, 1 )
	TriggerCondition( 1, HasMoney, 5000, 5000 )
	TriggerAction( 1, SetProfession, 8 )
	TriggerAction( 1, TakeMoney, 5000, 5000 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text(16, "Ok, I will become a Champion", MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, PfEqual, 4 )
	TriggerCondition( 1, HasMoney, 5000, 5000 )
	TriggerAction( 1, SetProfession, 16 )
	TriggerAction( 1, TakeMoney, 5000, 5000 )
	TriggerAction( 1, JumpPage, 6 )
	Text(17, "Ok, I will become a Voyager", MultiTrigger, GetMultiTrigger(), 2)

	
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, PfEqual, 5 )
	TriggerCondition( 1, HasMoney, 5000, 5000 )
	TriggerAction( 1, SetProfession, 13 )
	TriggerAction( 1, TakeMoney, 5000, 5000 )
	TriggerAction( 1, JumpPage, 6 )
	Text(18, "Ok, I will become a Cleric", MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, PfEqual, 5 )
	TriggerCondition( 1, HasMoney, 5000, 5000 )
	TriggerAction( 1, SetProfession, 14 )
	TriggerAction( 1, TakeMoney, 5000, 5000 )
	TriggerAction( 1, JumpPage, 6 )
	Text(19, "Ok, I will become a Seal Master", MultiTrigger, GetMultiTrigger(), 2)

	Talk(6, "Congratulations, Good Luck.")
	Talk(7, "Sorry, ur not able to change class.!")

end

function fairy_3 () -- Fairy Shop

	Talk( 1, "Hi! I  Sell various type of shit that u fucking and have a nice fucking day lol" )
        Text( 1, "Give me Money!!", BuyPage ) 
        Text( 1, "Fairies marriage", OpenEidolonMetempsychosis )
	Talk( 2, " New generation of pet fairies can learn Self Destruct and Possession. Fairy of Strength, Fairy of Constitution, Fairy of Accuracy, Fairy of Spirit and Fairy of Agility can all raise a character's attribute respectively. Fairy of Luck and Fairy of Evil can increases a character's drop rate and experience gain respectively and Mordo Junior has the ability of both Luck and Evil Fairy, and also other hidden ability.")	
	Talk( 3, " Level of normal fairies affects a baby fairy greatly. I have much information about fairies. Please do check them out.")
	Text( 3, "Conditions to conceieve a Fairy of Strength", JumpPage, 4  )
	Text( 3, "Conditions to conceieve a Fairy of Constitution", JumpPage, 5  )
	Text( 3, "Conditions to conceieve a Fairy of Accuracy", JumpPage, 6  )
	Text( 3, "Conditions to conceieve a Fairy of Spirit", JumpPage, 7  )
	Text( 3, "Conditions to conceieve a Fairy of Agility", JumpPage, 8  )
	Text( 3, "Conditions to conceieve a Fairy of Luck", JumpPage, 9 )
	Text( 3, "Conditions to conceieve a Fairy of Evil", JumpPage, 10 )
	Text( 3, "Conditions to conceieve a Mordo Junior", JumpPage, 11 )	
	Talk(  4, " To conceive a Fairy of Strength requires: Two Lv20 and above normal pet fairies, 1 Demonic Fruit of Strength, 10 Arabic Pearl Fragment, 10 Wailing Warrior Carcass and some gold")
	Talk(  5, " The conditions to grow Fairy of Constitution is: 2 fairy with Lv not lower than 20,  1 Demonic Fruit of Courage. Inventory must contain 10 Cracked Arabic Pearl, 10 Sorrow Archer Carcass and some Gold.")
	Talk(  6, " Conditions to grow Fairy of Accuracy: 2 fairys of Lv not lower than 20, 1 Demonic Fruit of Energy. Your inventory must have 10 Fish Spike, 10 Mud Chunk and some Gold.")
	Talk(  7, " To conceive a Fairy of Spirit requires: Two Lv20 and above normal pet fairies, 1 Demonic Fruit of Intellect, 10 Polliwog Tail, 10 Wailing Archer Carcass and some gold")
	Talk(  8, " To conceive a Fairy of Agility requires: Two Lv20 and above normal pet fairies, 1 Demonic Fruit of Aberrant, 10 Shark Fin, 10 Swamp Wood and some gold.")
	Talk(  9, " To conceive a Fairy of Luck requires:  Two Lv20 and above normal pet fairies, 1 Demonic Fruit of Acidity, 10 Tasty Squid Meat, 10 Sorrow Warrior Carcass and some gold")
	Talk(  10, " To conceive a Fairy of Evil requires: Two Lv20 and above normal pet fairies, 1 Demonic Fruit of Mystery, 10 Sparkling Arabic Pearl Fragments, 10 Mud Slice and some gold")
	Talk(  11, " Requirements to conceive Mordo Junior, A Mordo fairy who marry another Mordo will give birth to a Mordo Junior at 100% success rate and it has nothing to do with Demonic Fruit. The probability of giving birth to a Mordo Junior when a Mordo and other fairies marry will depend on their level.")

	Other(	0183	) -- Fairy of Life
	Other(	0184	) -- Fairy of Darkness
	Other(	0185	) -- Fairy of Virtue
	Other(	0186	) -- Fairy of Kudos
	Other(	0187	) -- Fairy of Faith
	Other(	0188	) -- Fairy of Valor
	Other(	0189	) -- Fairy of Hope
	Other(	0190	) -- Fairy of Woe
	Other(	0191	) -- Fairy of Love
                Other(      0680         ) -- Mordo
	Other(	0244	) -- Standard Protection
	Other(	0247	) -- Standard Berserk
	Other(	0250	) -- Standard Magic
	Other(	0253	) -- Standard Recover
	Other(	0260	) -- Standard Meditation
	Other(	0276	) -- Great Snow Dragon Fruit
	Other(	0277	) -- Great Icespire Plum
	Other(	0278	) -- Great Zephyr Fish Floss
	Other(	0279	) -- Great Argent Mango
	Other(	0280	) -- Great Shaitan Biscuit
	Other(	0222	) -- Snow Dragon Fruit
	Other(	0223	) -- Icespire Plum
	Other(	0224	) -- Zephyr Fish Floss
	Other(	0225	) -- Argent Mango
	Other(	0226	) -- Shaitan Biscuit
	Other(	0277	) -- Fairy Ration
	Other(	2312	) -- Auto Ration
	Other(	0609	) -- Expert Fairy Possession
	Other(	0578	) -- Fruit of Growth
	Other(	3918	) -- 
	Other(	3919	) --
	Other(	3920	) --
	Other(	3921	) -- 
	Other(	3922	) -- 
	Other(	3924	) -- 
	Other(	3925	) -- 
	Other(	3436	) --
	Other(	3435	) --
	Other(	3437	) --
	Other(	3434	) --
	Other(	3444	) --
	Other(	3443	) --
	Other(	3442	) --
	Other(	4531	) --
	Other(	1196	) --
	Other(	4537	) --
	Other(	4533	) --
	Other(	4540	) --
	Other(	4530	) --
	Other(	1253	) --


end

function salon_1 () -- Duffy Salon

	Talk( 1, "Hi! I  Sell all types of Stuff for hair and u guys are fucked up jkes " )
	Text( 1, "Buy", BuyPage)

Other (  1797   )-- Red Colorant
Other (  1798   )-- Orange Colorant
Other (  1799   )-- Yellow Colorant
Other (  1800   )-- Green Colorant
Other (  1801   )-- Cyan Colorant
Other (  1802   )-- Blue Colorant
Other (  1803   )-- Purple Colorant
Other (  1804   )-- Scissor
Other (  1805   )-- Comb
Other (  1806   )-- Hair Gel
Other (  1807   )-- Hairstyling Voucher
Other (  1808   )-- Lance Hairstyle Book
Other (  1809   )-- Carsise Hairstyle Book
Other (  1810   )-- Phyllis Hairstyle Book
Other (  1811   )-- Ami Hairstyle Book
Other (  0931   )-- Lance Trendy Hairstyle Book
Other (  0932   )-- Carsise Trendy Hairstyle Book
Other (  0933   )-- Phyllis Trendy Hairstyle Book
Other (  0934   )-- Ami Trendy Hairstyle Book
Other (  1120   )-- Snowdoll Mask
Other (  1121   )-- Pumpkin Mask
Other (  1122   )-- DeathSoul Mask 

end
function coola_1 () -- Appereal Shop 1

	Talk( 1, "Hi! I  Sell all types of apereals check out my other stores if you dont like this one" )
	Text( 1, "Buy", BuyPage)

        Other(  5900	) 
Other(  5901	) 
Other(  5902	) 
Other(  5903	) 
Other(  5904	) 
Other(  5905	) 
Other(  5906	) 
Other(  5907	) 
Other(  5908	) 
Other(  5909	) 
Other(  5910	) 
Other(  5911	) 
Other(  5912	) 
Other(  5913	) 
Other(  5914	) 
Other(  5915	) 
Other(  5916	) 	
Other(  5917	) 
Other(  5918	) 
Other(  5919	) 
Other(  5920	) 	
Other(  5921	) 	
Other(  5961	) 	
Other(  5962	) 	
Other(  5963	) 	
Other(  5964	) 	
Other(  5965	) 	
Other(  5966	) 	
Other(  5967	) 	
Other(  5968	) 	
Other(  5969	) 	
Other(  5970	) 	
Other(  5971	) 	
Other(  5972	) 	
Other(  5973	) 	
Other(  5974	) 	
Other(  5975	) 
Other(  5977	) 
Other(  5978	) 
Other(  5979	) 
Other(  5980	) 
Other(  5981	) 
Other(  5982	) 






end
function Westrnbla_01() -- Heaven Teleporter
--Some Chineze Blabla
	local CurMapName = "jialebi" 

	--黑龙巢穴三层坐标
	local GoTo01X = 1604
	local GoTo01Y = 906
	local GoTo01M = CurMapName

	Talk( 1, "Heaven Teleporter: Hello I am the Heaven Teleporter, i'll Teleport u to Heaven for just an Small Fee." )
	Text( 1, "I want to go to Heaven", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "Heaven Teleporter: Are u Sure u Want to go to Heaven? Then you would have to pay the Fee of 20,000,000g" )
	Text( 2, "I want to go to Heaven now", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Come back again after you have the required Money" )

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
function wing_2 () -- Wing Shop

	Talk( 1, "Hi! I  Sell Rings and Weapons" )
	Text( 1, "Sell Rings and Weapons :D", BuyPage)
Other(  5900	) 
Other(  5901	) 
Other(  5902	) 
Other(  5903	) 
Other(  5904	) 
Other(  5905	) 
Other(  5906	) 
Other(  5907	) 
Other(  5908	) 
Other(  5909	) 
Other(  5910	) 
Other(  5911	) 
Other(  5912	) 
Other(  5913	) 
Other(  5914	) 
Other(  5915	) 
Other(  5916	) 	
Other(  5917	) 
Other(  5918	) 
Other(  5919	) 
Other(  5920	) 	
Other(  5921	) 	
Other(  5961	) 	
Other(  5962	) 	
Other(  5963	) 	
Other(  5964	) 	
Other(  5965	) 	
Other(  5966	) 	
Other(  5967	) 	
Other(  5968	) 	
Other(  5969	) 	
Other(  5970	) 	
Other(  5971	) 	
Other(  5972	) 	
Other(  5973	) 	
Other(  5974	) 	
Other(  5975	) 
Other(  5977	) 
Other(  5978	) 
Other(  5979	) 
Other(  5980	) 
Other(  5981	) 
Other(  5982	) 

end
function lol_telep()

--MAP teleporter
	local ReSelectTalk = "I need to reconsider"
	local ReSelectPage = 1

	--cancel talk
	local CancelSelectTalk = "Forget it, I will stay here"
	local CancelSelectPage = 2

	--maps
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"
                local CurMapName6 = "abandonedcity"
                local CurMapName7 = "puzzleworld"
                local CurMapName9 = "hell"


	--garner
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	--magicsea
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	--garner
	local GoTo03X = 735
	local GoTo03Y = 1590
	local GoTo03M = CurMapName1


	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	--garner
	local GoTo05X = 633
	local GoTo05Y = 2100
	local GoTo05M = CurMapName1

	--garner
	local GoTo06X = 1007
	local GoTo06Y = 2966
	local GoTo06M = CurMapName1

	--garner
	local GoTo07X = 1507
	local GoTo07Y = 2039
	local GoTo07M = CurMapName1

	--garner
	local GoTo08X = 1711
	local GoTo08Y = 3448
	local GoTo08M = CurMapName1

	--garner
	local GoTo09X = 2501
	local GoTo09Y = 2997
	local GoTo09M = CurMapName1

	--garner	
	local GoTo10X = 3197
	local GoTo10Y = 1254
	local GoTo10M = CurMapName1

                --abandonedcity
	local GoTo11X = 301
	local GoTo11Y = 301
	local GoTo11M = CurMapName6


	local GoTo12X = 3323
	local GoTo12Y = 2507
	local GoTo12M = CurMapName5

	--garner
                local GoTo13X = 1903
	local GoTo13Y = 2807
	local GoTo13M = CurMapName1

	--garner
                local GoTo14X = 1007
	local GoTo14Y = 2966
	local GoTo14M = CurMapName1


                local GoTo15X = 36
	local GoTo15Y = 20
	local GoTo15M = CurMapName7

	--garner
                local GoTo16X = 271
	local GoTo16Y = 1775
	local GoTo16M = CurMapName1

	--magicsea
                local GoTo17X = 1369
	local GoTo17Y = 3033
	local GoTo17M = CurMapName2


                local GoTo18X = 3681
	local GoTo18Y = 2653
	local GoTo18M = CurMapName5


                local GoTo19X = 320
	local GoTo19Y = 175
	local GoTo19M = CurMapName4

  
                local GoTo20X = 2146
	local GoTo20Y = 542
	local GoTo20M = CurMapName5

	--garner2
	local GoTo21X = 72
	local GoTo21Y = 134
	local GoTo21M = CurMapName8

	--hell
	local GoTo22X = 99
	local GoTo22Y = 93
	local GoTo22M = CurMapName9


	        Talk( 1, "Hi, Plz Choose a Destination:" )
                Text( 1, "Argent City!", JumpPage, 4 )
	        Text( 1, "Shaitan City!", JumpPage, 5 )
	        Text( 1, "Thundoria Castle!", JumpPage, 6 )
	        Text( 1, "Icicle City!", JumpPage, 7 )
                Text( 1, "Spring Town!", JumpPage, 9 )
                Text( 1, "Dungeons", JumpPage, 2 )

	        Talk( 2, "Hi, Plz Choose a Destination:" )
                Text( 2, "Abaddon 5-8!", JumpPage, 19 )
                Text( 2, "Abandon Mine!", JumpPage, 10 )
                Text( 2, "Forsanken City!", JumpPage, 8 )
                Text( 2, "Andes Forest!", JumpPage, 11 )
                Text( 2, "Demonic World!", JumpPage, 12 )
                Text( 2, "Lone Tower!", JumpPage, 13 )
                Text( 2, "Special Places", JumpPage, 3 )
                Text( 2, "Towns", JumpPage, 1 )

	        Talk( 3, "Hi, Plz Choose a Destination:" )
	        Text( 3, "Barren Cavern!", JumpPage, 14 )
	        Text( 3, "Summer Island!", JumpPage, 15 )
	        Text( 3, "Lone Tower 4!", JumpPage, 16 )
	        Text( 3, "Skeleton Haven", JumpPage, 17 )
	        Text( 3, "Go Back", JumpPage, 2 )
                Text( 3, "Towns", JumpPage, 1 )

	        InitTrigger()
	        TriggerAction( 2,  GoTo, GoTo01X, GoTo01Y, GoTo01M )
	        Talk( 4, "Argent City?" )
	        Text( 4, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
                Text( 4, "I Have Changed My Mind", JumpPage, 1 )

	        InitTrigger()
	        TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	        Talk( 5, "Shaitan City?" )
                Text( 5, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	        Text( 5, "I Have Changed My Mind", JumpPage, 1 )


	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	Talk( 6, "Thundoria Castle?" )
	Text( 6, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2 )
	Text( 6, "I Have Changed My Mind", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 7, "Icicle City?" )
	Text( 7, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	Text( 7, "I Have Changed My Mind", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 2, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	Talk( 8, "u Sure u wanna go to Forsanken City?" )
	Text( 8, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	Text( 8, "I Have Changed My Mind", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 2, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	Talk( 9, "Spring Town?" )
	Text( 9, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	Text( 9, "I Have Changed My Mind", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 2, GoTo, GoTo13X, GoTo13Y, GoTo13M )
	Talk( 10, "u Sure u Wanna Go To Abandon Mine?" )
	Text( 10, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	Text( 10, "I Have Changed My Mind", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 2, GoTo, GoTo14X, GoTo14Y, GoTo14M )
	Talk( 11, "u Sure u Wanna Go To Andes Forest?" )
	Text( 11, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	Text( 11, "I Have Changed My Mind", JumpPage, 2 )

                InitTrigger()
	TriggerAction( 2, GoTo, GoTo15X, GoTo15Y, GoTo15M )
	Talk( 12, "u Sure u Wanna Go To Demonic World?" )
	Text( 12, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	Text( 12, "I Have Changed My Mind", JumpPage, 2 )

                InitTrigger()
	TriggerAction( 2, GoTo, GoTo16X, GoTo16Y, GoTo16M )
	Talk( 13, "u Sure u Wanna Go to Lone Tower?" )
	Text( 13, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	Text( 13, "I Have Changed My Mind", JumpPage, 2 )

                InitTrigger()
	TriggerAction( 2, GoTo, GoTo17X, GoTo17Y, GoTo17M )
	Talk( 14, "u Sure u Wanna Go to Barren Cavern?" )
	Text( 14, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	Text( 14, "I Have Changed My Mind", JumpPage, 2 )

                InitTrigger()
	TriggerAction( 2, GoTo, GoTo18X, GoTo18Y, GoTo18M )
	Talk( 15, "u Sure u Wanna Go to Summer Island?" )
	Text( 15, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	Text( 15, "I Have Changed My Mind", JumpPage, 2 )

                InitTrigger()
	TriggerAction( 2, GoTo, GoTo19X, GoTo19Y, GoTo19M )
	Talk( 16, "u Sure u Wanna Go to Lone Tower 4?" )
	Text( 16, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	Text( 16, "I Have Changed My Mind", JumpPage, 2 )

                InitTrigger()
	TriggerAction( 2, GoTo, GoTo20X, GoTo20Y, GoTo20M )
	Talk( 17, "u Sure u Wanna Go to Skeleton Haven?" )
	Text( 17, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	Text( 17, "I Have Changed My Mind", JumpPage, 2 )

                InitTrigger()
	TriggerAction( 2, GoTo, GoTo21X, GoTo21Y, GoTo21M )
	Talk( 18, "u Sure u Wanna Go to Chaos Argent?" )
	Text( 18, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	Text( 18, "I Have Changed My Mind", JumpPage, 2 )

                InitTrigger()
	TriggerAction( 2, GoTo, GoTo22X, GoTo22Y, GoTo22M )
	Talk( 19, "u Sure u Wanna Go to Abaddon 5-8?" )
	Text( 19, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	Text( 19, "I Have Changed My Mind", JumpPage, 2 )
end
function black_2 () -- gem and blacksmith

	Talk( 1, "Hi! I  Sell stuff like fusion scrolls gems etc" )
	Text( 1, "Buy", BuyPage)
	
        Other(  0885    ) -- Refining Gem
        Other(  0887    ) -- Spirit Gem
        Other(  0884    ) -- Shadow Gem
        Other(  0883    ) -- Shining Gem
        Other(  0882    ) -- Glowing Gem
        Other(  0881    ) -- Lustrious Gem
        Other(  0880    ) -- Explosive Gem
        Other(  0879    ) -- Furious Gem
        Other(  0878    ) -- Fiery Gem
        
	
        
        
        
        Other(	0890	) -- Equipment Stabilizer
	Other(	0891	) -- Equipment Catalyst
        Other(	0867	) -- Lv 1 Thunder Coral
        Other(	0868	) -- Lv 2 Thunder Coral
	Other(	0869	) -- Lv 3 Thunder Coral
        Other(	0870	) -- Lv 4 Thunder Coral
        Other(	0871	) -- Lv 5 Thunder Coral
	Other(	0872	) -- Lv 1 Fog Coral
        Other(	0873	) -- Lv 2 Fog Coral
        Other(	0874	) -- Lv 3 Fog Coral
	Other(	0875	) -- Lv 4 Fog Coral
        Other(	0876	) -- Lv 5 Fog Coral
        Other(	0635	) -- Lv 1 Strike Coral
        Other(	0636	) -- Lv 2 Strike Coral
	Other(	0637	) -- Lv 3 Strike Coral
        Other(	0638	) -- Lv 4 Strike Coral
        Other(	0639	) -- Lv 5 Strike Coral
	Other(	0453	) -- Fusion Scroll
	Other(	0454	) -- Fusion Catalyst
	Other(	0455	) -- Strengthening Scroll
	Other(	0456	) -- Strengthening Crystal
        Other(	1020	) --

end
function unsea_2 () -- gem and blacksmith

	Talk( 1, "Hi! I  Sell unseals adn also i am a twin of fair shop :D" )
	Text( 1, "Buy", BuyPage)
	
        Other(	0765	) -- 
	Other(	0766	) -- 
	Other(	0767	) -- 
        Other(	0768	) -- 
        Other(	0769	) -- 
	Other(	0770	) -- 
        Other(	0771	) -- 
        Other(	0772	) -- 
	Other(	0773	) -- 
        Other(	0774	) -- 
        Other(	0775	) -- 
	Other(	0776	) -- 
        Other(	0777	) -- 
        Other(	0778	) -- 
        Other(	0779	) --
	Other(	0780	) -- 
        Other(	0781	) -- 
        Other(	0782	) -- 
        Other(	0783	) -- 
	Other(	0784	) -- 
	Other(	0785	) -- 
        Other(	0786	) -- 
        Other(	0787	) -- 
	Other(	0788	) -- 
        Other(	0789	) -- 
        Other(	0790	) -- 
	Other(	0791	) -- 
        Other(	0792	) -- 
        Other(	0793	) -- 
	Other(	0794	) -- 
        Other(	0795	) -- 
        Other(	0796	) -- 
        Other(	0797	) --
	Other(	0798	) -- 
        Other(	0799	) -- 
        Other(	0800	) -- 
        Other(	0801	) -- 
        Other(	0802	) -- 
        Other(	0803	) -- 
        Other(	0804	) -- 
        Other(	0805	) -- 
        Other(	0806	) -- 
        Other(	0807	) -- 
        Other(	0808	) -- 
        Other(	0809	) -- 
        Other(	0810	) -- 
        Other(	0811	) -- 
        Other(	0812	) -- 
        Other(	0813	) -- 
        Other(	0814	) -- 
        Other(	0815	) -- 
        Other(	0816	) -- 
             
end
function lolne_1 () -- Lance appereal 

        Talk( 1, "Hi! I  Sell lance appereals if u are gay buy from me lol jkes" )
	Text( 1, "Buy", BuyPage)

        Weapon(	5001	)
	Weapon(	5002	)
	Weapon(	5003	)
	Weapon(	5004	)
	Weapon(	5005	)
	Weapon(	5006	)
	Weapon(	5007	)
	Weapon(	5008	)
	Weapon(	5009	)
	Weapon(	5010	)
	Weapon(	5012	)
	Weapon(	5013	)
	Weapon(	5014	)
	Weapon(	5015	)
	Weapon(	5016	)
	Weapon(	5017	)
	Weapon(	5018	)
	Weapon(	5019	)
	Weapon(	5020	)
	Weapon(	5021	)
	Weapon(	5022	)
	Weapon(	5023	)
	Weapon(	5024	)
	Weapon(	5025	)
	Weapon(	5026	)
	Weapon(	5027	)
	Weapon(	5028	)
	Weapon(	5029	)
	Weapon(	5030	)
	Weapon(	5031	)
	Weapon(	5032	)
	Weapon(	5033	)
	Weapon(	5034	)
	Weapon(	5035	)
	Weapon(	5036	)
	Defence(	5301	)
	Defence(	5302	)
	Defence(	5303	)
	Defence(	5304	)
	Defence(	5317	)
	Defence(	5318	)
	Defence(	5319	)
	Defence(	5320	)
	Defence(	5333	)
	Defence(	5334	)
	Defence(	5335	)
	Defence(	5336	)
	Defence(	5349	)
	Defence(	5350	)
	Defence(	5351	)
	Defence(	5352	)
	Defence(	5365	)
	Defence(	5366	)
	Defence(	5367	)
	Defence(	5368	)
	Defence(	5381	)
	Defence(	5382	)
	Defence(	5383	)
	Defence(	5384	)
	Defence(	5397	)
	Defence(	5398	)
	Defence(	5399	)
	Defence(	5400	)
	Defence(	5413	)
	Defence(	5414	)
	Defence(	5415	)
	Defence(	5416	)
	Defence(	5442	)
	Defence(	5429	)
	Defence(	5430	)
	Defence(	5431	)
	Defence(	5442	)
	Defence(	5443	)
	Defence(	5444	)
	Defence(	5445	)
	Defence(	5458	)
	Defence(	5459	)
	Defence(	5460	)
	Defence(	5461	)
	Defence(	5512	)
	Defence(	5513	)
	Defence(	5514	)
	Defence(	5515	)
	Defence(	5520	)
	Defence(	5521	)
	Defence(	5522	)
	Defence(	5523	)
	Defence(	5528	)
	Defence(	5529	)
	Defence(	5530	)
	Defence(	5531	)
	Defence(	5536	)
	Defence(	5537	)
	Defence(	5538	)
	Defence(	5539	)
	Defence(	5474	)
	Defence(	5475	)
	Defence(	5487	)
	Defence(	5488	)
	Defence(	5489	)
	Defence(	5499	)
	Defence(	5500	)
	Defence(	5501	)
	Defence(	5050	)
	Defence(	5051	)
	Defence(	5052	)
	Defence(	5053	)
	Defence(	5054	)
	Defence(	5055	)
	Defence(	5118	)
	Defence(	5119	)
	Defence(	5120	)
	Defence(	5121	)
	Defence(	5122	)
	Defence(	5123	)
	Defence(	5124	)
	Defence(	5125	)
	Defence(	5126	)
	Defence(	5127	)
	Defence(	5128	)
	Defence(	5129	)
	Defence(	5136	)
	Defence(	5137	)
	Defence(	5138	)
	Defence(	5139	)
	Defence(	5140	)
	Defence(	5141	)
	Defence(	5142	)
	Defence(	5143	)
	Defence(	5144	)
	Other(	141	)
	Other(	905	)
	Other(	904	)
	Other(	906	)
	Other(	935	)
	Other(	937	)
	Other(	142	)
	Other(	1120	)
	Other(	1122	)
	Other(	1121	)
	Other(	2583	)
	Other(	2584	)
	Other(	2585	)

end
function lolne_2 () -- Lance appereal 

        Talk( 1, "Hi! I  Sell phlyss appereals if you are gay buy from me jkes" )
	Text( 1, "Buy", BuyPage)

       Weapon(	5001	)
	Weapon(	5002	)
	Weapon(	5003	)
	Weapon(	5004	)
	Weapon(	5005	)
	Weapon(	5006	)
	Weapon(	5007	)
	Weapon(	5008	)
	Weapon(	5009	)
	Weapon(	5010	)
	Weapon(	5012	)
	Weapon(	5013	)
	Weapon(	5014	)
	Weapon(	5015	)
	Weapon(	5016	)
	Weapon(	5017	)
	Weapon(	5018	)
	Weapon(	5019	)
	Weapon(	5020	)
	Weapon(	5021	)
	Weapon(	5022	)
	Weapon(	5023	)
	Weapon(	5024	)
	Weapon(	5025	)
	Weapon(	5026	)
	Weapon(	5027	)
	Weapon(	5028	)
	Weapon(	5029	)
	Weapon(	5030	)
	Weapon(	5031	)
	Weapon(	5032	)
	Weapon(	5033	)
	Weapon(	5034	)
	Weapon(	5035	)
	Weapon(	5036	)
	Defence(	5309	)
	Defence(	5310	)
	Defence(	5311	)
	Defence(	5312	)
	Defence(	5325	)
	Defence(	5326	)
	Defence(	5327	)
	Defence(	5328	)
	Defence(	5341	)
	Defence(	5342	)
	Defence(	5343	)
	Defence(	5344	)
	Defence(	5357	)
	Defence(	5358	)
	Defence(	5359	)
	Defence(	5360	)
	Defence(	5373	)
	Defence(	5374	)
	Defence(	5375	)
	Defence(	5376	)
	Defence(	5389	)
	Defence(	5390	)
	Defence(	5391	)
	Defence(	5392	)
	Defence(	5405	)
	Defence(	5406	)
	Defence(	5407	)
	Defence(	5408	)
	Defence(	5421	)
	Defence(	5422	)
	Defence(	5423	)
	Defence(	5424	)
	Defence(	5450	)
	Defence(	5435	)
	Defence(	5436	)
	Defence(	5437	)
	Defence(	5450	)
	Defence(	5451	)
	Defence(	5452	)
	Defence(	5453	)
	Defence(	5466	)
	Defence(	5467	)
	Defence(	5468	)
	Defence(	5469	)
	Defence(	5480	)
	Defence(	5481	)
	Defence(	5482	)
	Defence(	5493	)
	Defence(	5494	)
	Defence(	5495	)
	Defence(	5505	)
	Defence(	5506	)
	Defence(	5507	)
	Defence(	5062	)
	Defence(	5063	)
	Defence(	5064	)
	Defence(	5065	)
	Defence(	5066	)
	Defence(	5067	)
	Defence(	5168	)
	Defence(	5169	)
	Defence(	5170	)
	Defence(	5171	)
	Defence(	5172	)
	Defence(	5173	)
	Defence(	5174	)
	Defence(	5175	)
	Defence(	5176	)
	Defence(	5177	)
	Defence(	5178	)
	Defence(	5183	)
	Defence(	5184	)
	Defence(	5185	)
	Defence(	5186	)
	Defence(	5187	)
	Defence(	5188	)
	Defence(	5189	)
	Defence(	5190	)
	Other(	141	)
	Other(	905	)
	Other(	904	)
	Other(	906	)
	Other(	935	)
	Other(	937	)
	Other(	142	)
	Other(	1120	)
	Other(	1122	)
	Other(	1121	)
	Other(	2583	)
	Other(	2584	)
	Other(	2585	)
end
function lolne_3 () -- Lance appereal 

        Talk( 1, "Hi! I  Sell Ami if you are gay buy from me jkes" )
	Text( 1, "Buy", BuyPage)


       Weapon(	5001	)
	Weapon(	5002	)
	Weapon(	5003	)
	Weapon(	5004	)
	Weapon(	5005	)
	Weapon(	5006	)
	Weapon(	5007	)
	Weapon(	5008	)
	Weapon(	5009	)
	Weapon(	5010	)
	Weapon(	5012	)
	Weapon(	5013	)
	Weapon(	5014	)
	Weapon(	5015	)
	Weapon(	5016	)
	Weapon(	5017	)
	Weapon(	5018	)
	Weapon(	5019	)
	Weapon(	5020	)
	Weapon(	5021	)
	Weapon(	5022	)
	Weapon(	5023	)
	Weapon(	5024	)
	Weapon(	5025	)
	Weapon(	5026	)
	Weapon(	5027	)
	Weapon(	5028	)
	Weapon(	5029	)
	Weapon(	5030	)
	Weapon(	5031	)
	Weapon(	5032	)
	Weapon(	5033	)
	Weapon(	5034	)
	Weapon(	5035	)
	Weapon(	5036	)
	Defence(	5313	)
	Defence(	5314	)
	Defence(	5315	)
	Defence(	5316	)
	Defence(	5329	)
	Defence(	5330	)
	Defence(	5331	)
	Defence(	5332	)
	Defence(	5345	)
	Defence(	5346	)
	Defence(	5347	)
	Defence(	5348	)
	Defence(	5361	)
	Defence(	5362	)
	Defence(	5363	)
	Defence(	5364	)
	Defence(	5377	)
	Defence(	5378	)
	Defence(	5379	)
	Defence(	5380	)
	Defence(	5393	)
	Defence(	5394	)
	Defence(	5395	)
	Defence(	5396	)
	Defence(	5409	)
	Defence(	5410	)
	Defence(	5411	)
	Defence(	5412	)
	Defence(	5425	)
	Defence(	5426	)
	Defence(	5427	)
	Defence(	5428	)
	Defence(	5438	)
	Defence(	5439	)
	Defence(	5440	)
	Defence(	5441	)
	Defence(	5454	)
	Defence(	5455	)
	Defence(	5456	)
	Defence(	5457	)
	Defence(	5470	)
	Defence(	5471	)
	Defence(	5472	)
	Defence(	5473	)
	Defence(	5483	)
	Defence(	5484	)
	Defence(	5485	)
	Defence(	5486	)
	Defence(	5483	)
	Defence(	5496	)
	Defence(	5497	)
	Defence(	5498	)
	Defence(	5508	)
	Defence(	5509	)
	Defence(	5510	)
	Defence(	5511	)
	Defence(	5068	)
	Defence(	5069	)
	Defence(	5070	)
	Defence(	5071	)
	Defence(	5072	)
	Defence(	5073	)
	Defence(	5074	)
	Defence(	5075	)
	Defence(	5191	)
	Defence(	5192	)
	Defence(	5193	)
	Defence(	5194	)
	Defence(	5199	)
	Defence(	5200	)
	Defence(	5201	)
	Defence(	5202	)
	Defence(	5203	)
	Defence(	5204	)
	Defence(	5205	)
	Defence(	5206	)
	Defence(	5207	)
	Defence(	5208	)
	Defence(	5209	)
	Defence(	5210	)
	Defence(	5211	)
	Defence(	5212	)
	Defence(	5213	)
	Defence(	5214	)
	Defence(	5215	)
	Defence(	5216	)
	Defence(	5217	)
	Defence(	5218	)
	Other(	141	)
	Other(	905	)
	Other(	904	)
	Other(	906	)
	Other(	935	)
	Other(	937	)
	Other(	142	)
	Other(	1120	)
	Other(	1122	)
	Other(	1121	)
	Other(	2583	)
	Other(	2584	)
	Other(	2585	)

end
function lolne_4 () -- Lance appereal 
 
        Talk( 1, "Hi! I  Sell Carsise appereals if you are gay buy from me jkes" )
	Text( 1, "Buy", BuyPage)


       Weapon(	5001	)
	Weapon(	5002	)
	Weapon(	5003	)
	Weapon(	5004	)
	Weapon(	5005	)
	Weapon(	5006	)
	Weapon(	5007	)
	Weapon(	5008	)
	Weapon(	5009	)
	Weapon(	5010	)
	Weapon(	5012	)
	Weapon(	5013	)
	Weapon(	5014	)
	Weapon(	5015	)
	Weapon(	5016	)
	Weapon(	5017	)
	Weapon(	5018	)
	Weapon(	5019	)
	Weapon(	5020	)
	Weapon(	5021	)
	Weapon(	5022	)
	Weapon(	5023	)
	Weapon(	5024	)
	Weapon(	5025	)
	Weapon(	5026	)
	Weapon(	5027	)
	Weapon(	5028	)
	Weapon(	5029	)
	Weapon(	5030	)
	Weapon(	5031	)
	Weapon(	5032	)
	Weapon(	5033	)
	Weapon(	5034	)
	Weapon(	5035	)
	Weapon(	5036	)
	Defence(	5305	)
	Defence(	5306	)
	Defence(	5307	)
	Defence(	5308	)
	Defence(	5321	)
	Defence(	5322	)
	Defence(	5323	)
	Defence(	5324	)
	Defence(	5337	)
	Defence(	5338	)
	Defence(	5339	)
	Defence(	5340	)
	Defence(	5353	)
	Defence(	5354	)
	Defence(	5355	)
	Defence(	5356	)
	Defence(	5369	)
	Defence(	5370	)
	Defence(	5371	)
	Defence(	5372	)
	Defence(	5385	)
	Defence(	5386	)
	Defence(	5387	)
	Defence(	5388	)
	Defence(	5401	)
	Defence(	5402	)
	Defence(	5403	)
	Defence(	5404	)
	Defence(	5417	)
	Defence(	5418	)
	Defence(	5419	)
	Defence(	5420	)
	Defence(	5446	)
	Defence(	5432	)
	Defence(	5433	)
	Defence(	5434	)
	Defence(	5446	)
	Defence(	5447	)
	Defence(	5448	)
	Defence(	5449	)
	Defence(	5462	)
	Defence(	5463	)
	Defence(	5464	)
	Defence(	5465	)
	Defence(	5516	)
	Defence(	5517	)
	Defence(	5518	)
	Defence(	5519	)
	Defence(	5524	)
	Defence(	5525	)
	Defence(	5526	)
	Defence(	5527	)
	Defence(	5532	)
	Defence(	5533	)
	Defence(	5534	)
	Defence(	5535	)
	Defence(	5540	)
	Defence(	5541	)
	Defence(	5542	)
	Defence(	5543	)
	Defence(	5477	)
	Defence(	5478	)
	Defence(	5479	)
	Defence(	5490	)
	Defence(	5491	)
	Defence(	5492	)
	Defence(	5502	)
	Defence(	5503	)
	Defence(	5504	)
	Defence(	5056	)
	Defence(	5057	)
	Defence(	5058	)
	Defence(	5059	)
	Defence(	5060	)
	Defence(	5061	)
	Defence(	5145	)
	Defence(	5146	)
	Defence(	5147	)
	Defence(	5148	)
	Defence(	5149	)
	Defence(	5150	)
	Defence(	5151	)
	Defence(	5152	)
	Defence(	5153	)
	Defence(	5154	)
	Defence(	5155	)
	Defence(	5160	)
	Defence(	5161	)
	Defence(	5162	)
	Defence(	5163	)
	Defence(	5164	)
	Defence(	5165	)
	Defence(	5166	)
	Defence(	5167	)
	Other(	141	)
	Other(	905	)
	Other(	904	)
	Other(	906	)
	Other(	935	)
	Other(	937	)
	Other(	142	)
	Other(	1120	)
	Other(	1122	)
	Other(	1121	)
	Other(	2583	)
	Other(	2584	)
	Other(	2585	)

end
function sky_06 ()
	Talk( 1, "Reputation NPC: Hello I am the Reputation NPC, who will exchange you reputation for items! Do you wish to know?" )
	Text( 1, "Exchange Reputation", JumpPage, 2)

	Talk( 2, "Reputation NPC: Ok select what you want, and i will deduct some Reputations Points for it. Make sure that you met the requeriments." )
	Text( 2, "Rations Package 1", JumpPage, 5)
	Text( 2, "Rations Package 2", JumpPage, 6)
	Text( 2, "Rations Package 3", JumpPage, 7)
	Text( 2, "Mysterious Pet Egg", JumpPage, 8)
	Text( 2, "Egg of Mordo", JumpPage, 9)
	Text( 2, "Next Page    -->", JumpPage, 3)

	Talk( 3, "Reputation NPC: Check all the list before start Exchanging your Reputations Points!" )
	Text( 3, "Standar Protection", JumpPage, 10)
	Text( 3, "Standar Meditation", JumpPage, 11)
	Text( 3, "Standar Recover", JumpPage, 12)
	Text( 3, "Standar Bersek", JumpPage, 13)
	Text( 3, "Standar Magic", JumpPage, 14)
	Text( 3, "Next Page    -->", JumpPage, 4)
	Text( 3, "Previus Page <--", JumpPage, 2)

	Talk( 4, "Reputation NPC: Check all the list before start Exchanging your Reputations Points!" )
	Text( 4, "Morph Runestone", JumpPage, 19)
	Text( 4, "Equipment Catalyst", JumpPage, 16)
	Text( 4, "Equipment Stabilizer", JumpPage, 17)
	Text( 4, "Refining Gem Voucher", JumpPage, 18)
	Text( 4, "Unique Gem Voucher", JumpPage, 23)
	Text( 4, "Next Page    -->", JumpPage, 20)
	Text( 4, "Previus Page <--", JumpPage, 3)

	Talk( 20, "Reputation NPC: Check all the list before start Exchanging your Reputations Points!" )
	Text( 20, "Unique Coral Voucher", JumpPage, 21)
	Text( 20, "Unique Necklace Voucher", JumpPage, 22)
	Text( 20, "Unique Ring Voucher", JumpPage, 15)
        Text( 20, "Refining Catalyst", JumpPage, 24)
        Text( 20, "Composition Catalyst", JumpPage, 25)
	Text( 20, "Previus Page <--", JumpPage, 4)

	Talk(5,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,800 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 800 )
	TriggerAction( 1, GiveItem, 227,25,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(5,"Rations Package 1 requires 800 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(6,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,1500 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 1500 )
	TriggerAction( 1, GiveItem, 227,50,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(6,"Rations Package 2 requires 1500 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(7,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 2000 )
	TriggerAction( 1, GiveItem, 227,99,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(7,"Rations Package 3 requires 2000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(8,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,750 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 750 )
	TriggerAction( 1, GiveItem, 1015,1,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(8,"Mysterius Pet Egg requires 750 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(9,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 2000 )
	TriggerAction( 1, GiveItem, 679,1,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(9,"Egg of Mordo requires 2000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(10,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 1000 )
	TriggerAction( 1, GiveItem, 244,1,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(10,"Standar Protection requires 1000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(11,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 1000 )
	TriggerAction( 1, GiveItem, 260,1,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(11,"Standar Meditation requires 1000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(12,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 1000 )
	TriggerAction( 1, GiveItem, 253,1,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(12,"Standar Recover requires 1000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(13,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 1000 )
	TriggerAction( 1, GiveItem, 247,1,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(13,"Standar Bersek requires 1000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(14,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 1000 )
	TriggerAction( 1, GiveItem, 250,1,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(14,"Standar Magic requires 1000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(15,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,15000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 15000 )
	TriggerAction( 1, GiveItem, 580,1,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(15,"Unique Ring Voucher requires 15000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(16,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemptio")
	InitTrigger()
	TriggerCondition( 1, HasCredit,1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 1000 )
	TriggerAction( 1, GiveItem, 891,1,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(16,"Equipment Catalyst requires 1000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(17,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 1000 )
	TriggerAction( 1, GiveItem, 890,1,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(17,"Equipment Stabilizer requires 1000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(18,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 2000 )
	TriggerAction( 1, GiveItem, 3885,1,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(18,"Refining Gem Voucher requires 2000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(21,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,15000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 15000 )
	TriggerAction( 1, GiveItem, 582,1,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(21,"Unique Coral Voucher requires 15000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(22,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,20000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 20000 )
	TriggerAction( 1, GiveItem, 581,1,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(22,"Unique Necklace Voucher requires 20000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(23,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,15000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 15000 )
	TriggerAction( 1, GiveItem, 333,1,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(23,"Unique Gem Voucher requires 15000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(24,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,100 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 100 )
	TriggerAction( 1, GiveItem, 3074,5,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(24,"Refining Catalyst 100 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(25,"We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption")
	InitTrigger()
	TriggerCondition( 1, HasCredit,100 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 100 )
	TriggerAction( 1, GiveItem, 3075,5,4 )
	TriggerFailure( 1, JumpPage, 30)
	Text(24,"Composition Catalyst 100 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk( 30, "Reputation NPC: Sorry, you do not have the required Reputations Points. I cannot exchange it for you." )

end

function chest_22 ()

 	Talk( 1, "Hi im Penny, Newbie Guide Senna's Twin Sister, except im richer because I sell all chests! Skeletar,Incantation,Evanescence, and Enigma " )
                    Text( 1, "Buy Chests", BuyPage )

                    InitTrade()

        Other(       3400     )--
        Other(       3401     )--
        Other(       3402     )--
        Other(       3403     )--
        Other(       3404     )--
        Other(       3405     )--
        Other(       3406     )--
        Other(       3407     )--
        Other(       3408     )--
        Other(       3409     )--
        Other(       3410     )--
        Other(       3411     )--
        Other(       3412     )--
        Other(       3413     )--
        Other(       3414     )--
        Other(       3415     )--
        Other(       3416     )--
        Other(       3417     )--
        Other(       3418     )--
        Other(       3419     )--
        Other(       3420     )--
        Other(       3421     )--

end

function fasthustler_15 ()	


                    Talk( 1, "What do you want?!Illegal items? Well you came to the right place.I have all illegal stuff right here..Your not a Cop Are you?" )
	Text( 1, "Exchange MaydayCard for Kals", JumpPage, 2 )
	Text( 1, "Exchange Kals for Items", JumpPage, 3 )

	Talk( 2, "Want to Exchange for kals? im the guy" )  
	Text( 2, "Kal Runestone", JumpPage, 4)

	Talk( 4, "Want my Kal? give me Mayday Card..15 Mayday cards for 1 kal" )
	InitTrigger()
	TriggerCondition( 1, HasItem, 452, 15 )
	TriggerAction( 1, TakeItem, 452, 15 )
	TriggerAction( 1, GiveItem, 3457, 1, 4 )
	TriggerFailure( 1, JumpPage, 20 )
	Text( 4, "Recive Kals", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 3, "Want to Exchange for Items? im the guy" )
	Text( 3, "Gold", JumpPage, 5)
	Text( 3, "Death Chest", JumpPage, 6)
	Text( 3, "Kylin Chest", JumpPage, 7)
	Text( 3, "Rightful BD chest", JumpPage, 8)


	Talk( 5, "You have Your Gold" )
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerAction( 1, TakeItem, 3457, 3 )
	TriggerAction( 1, AddMoney, 5000000 )
	TriggerFailure( 1, JumpPage, 20 )
	Text( 5, "Gold", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Death Chests..300 kals each.Choose what you want" )
	Text( 6, "Chest of Hardin", JumpPage, 10)
	Text( 6, "Chest of Darkness", JumpPage, 11)
	Text( 6, "Chest of Abaddon", JumpPage, 12)
	Text( 6, "Chest of Asura", JumpPage, 13)
	Text( 6, "Chest of Abyss", JumpPage, 14)
	Text( 6, "Chest of Styx", JumpPage, 15)

	Talk( 7, "Kylin Chest..Better thank me for this..So Damn Hard finding these.700 kals and 20 million gold" )
	Text( 7, "Kylin Chest", JumpPage, 16)

	Talk( 8, "Rightful Chest of BD...Better Pay me Extra..Its Not easy Stealling this from the Black Dragon.550 kals and 10 million gold" )
	Text( 8, "Rightful Chest of BD", JumpPage, 17)

	Text( 10, "Chest of Hardin")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 300 )
	TriggerAction( 1, TakeItem, 3457, 300 )
	TriggerAction( 1, GiveItem, 2836, 1, 4 )
	TriggerFailure( 1, JumpPage, 20 )
	Text( 10, "Recive Chest of Hardin", MultiTrigger, GetMultiTrigger(), 1)

	Text( 11, "Chest of Darkness")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 300 )
	TriggerAction( 1, TakeItem, 3457, 300 )
	TriggerAction( 1, GiveItem, 2837, 1, 4 )
	TriggerFailure( 1, JumpPage, 20 )
	Text( 11, "Recive Chest of Darkness", MultiTrigger, GetMultiTrigger(), 1)

	Text( 12, "Chest of Abaddon")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 300 )
	TriggerAction( 1, TakeItem, 3457, 300 )
	TriggerAction( 1, GiveItem, 2838, 1, 4 )
	TriggerFailure( 1, JumpPage, 20 )
	Text( 12, "Recive Chest of Abaddon", MultiTrigger, GetMultiTrigger(), 1)

	Text( 13, "Chest of Asura")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 300 )
	TriggerAction( 1, TakeItem, 3457, 300 )
	TriggerAction( 1, GiveItem, 2839, 1, 4 )
	TriggerFailure( 1, JumpPage, 20 )
	Text( 13, "Recive Chest of Asura", MultiTrigger, GetMultiTrigger(), 1)

	Text( 14, "Chest of Abyss")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 300 )
	TriggerAction( 1, TakeItem, 3457, 300 )
	TriggerAction( 1, GiveItem, 2840, 1, 4 )
	TriggerFailure( 1, JumpPage, 20 )
	Text( 14, "Recive Chest of Abyss", MultiTrigger, GetMultiTrigger(), 1)

	Text( 15, "Chest of Styx")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 300 )
	TriggerAction( 1, TakeItem, 3457, 300 )
	TriggerAction( 1, GiveItem, 2841, 1, 4 )
	TriggerFailure( 1, JumpPage, 20 )
	Text( 15, "Recive Chest of Styx", MultiTrigger, GetMultiTrigger(), 1)

	Text( 16, "Kylin Chest")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 700 )
	TriggerCondition( 1, HasMoney, 20000000 )
	TriggerAction( 1, TakeItem, 3457, 700 )
	TriggerAction( 1, GiveItem, 192, 1, 4 )
	TriggerFailure( 1, JumpPage, 20 )
	Text( 16, "Recive Kylin Chest", MultiTrigger, GetMultiTrigger(), 1)

	Text( 17, "Rightful Chest of Black Dragon")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 550 )
	TriggerCondition( 1, HasMoney, 10000000 )
	TriggerAction( 1, TakeItem, 3457, 550 )
	TriggerAction( 1, GiveItem, 2843, 1, 4 )
	TriggerFailure( 1, JumpPage, 20 )
	Text( 17, "Recive Rightful Chest of Black Dragon", MultiTrigger, GetMultiTrigger(), 1)

	Talk(20, "YOU THINK IM JOKING?ILL KILL YOU!!..SH*T COPS!")
                Text(20, "Im Inoccent", CloseTalk)

end

function dina_talk11()

	Talk( 1, "2nd Rebirth Angel: I see you've gone through the 2nd Rebirth quests, This is where your prize is given to you for establishing peace through out the world and finding it's most preacius treasures." )
	Text( 1, "I wish to Reincarnate", JumpPage, 2)
	Text( 1, "I wish to know more", JumpPage, 3)
	Text( 1, "I am having problems on 2nd Rebirth", JumpPage, 5 )
	Text( 1, "I have not done this task.", CloseTalk)
	
	Talk( 2, "2nd Rebirth Angel: So you have done the task? Select the best option for you." )
	Text( 2, "Become a Crusader to uphold justice and peace",  GetChaName1_born2, 1)
	Text( 2, "Become a Champion to protect companion",  GetChaName2_born2, 1)
	Text( 2, "Become a voyager to sail the seas",  GetChaName5_born2, 1)
	Text( 2, "Become a Sharpshooter to vanquish your enemies",  GetChaName3_born2, 1)
	Text( 2, "Become a Cleric to heal the sick", GetChaName4_born2, 1)
	Text( 2, "Become a Cleric to heal the sick", GetChaName_born2, 1)	
	Text( 2, "Become a Seal Master to do anything", GetChaName6_born2, 1)
	Text( 2, "I do not wish to do 2nd Rebirth right now", CloseTalk)
	
	Talk( 3, "What do you wish to know more about?" )
	Text( 3, "Classes after 2nd Rebirth", JumpPage, 4 )
	
	Talk( 5, "Whats wrong?" )
	Text( 5, "I have the 2nd Rebirth stone, but it wont let me!", JumpPage, 6)
	Text( 5, "I don't know where to do the quests!", JumpPage, 7)
	Text( 5, "The High Priest will not hand me any quests!", JumpPage, 8)
	
	Talk( 6, "Take off all your equips, including rings and necklesses. Make sure you are choosing your new class according to race.") 
	Text( 6, "Let me try once again!", JumpPage, 1)
	
	Talk( 7, "We have not done/translated all the quests. Please wait untill we can get all the according files and have these quests translated")
    Text( 7, "I understand", CloseTalk )
	
	Talk( 8, "Have you done Rebirth task? It is required to stand the 2nd Rebirth quests." )
	Text( 8, "YES! I have done it", JumpPage, 9 )
	Text( 8, "I have not", JumpPage, 10 )
	
	Talk( 9, "If you have done it, nothing is wrong, try checking if you have already done the quest and/or a GM set you a quest record")
	Text( 9, "I will check", CloseTalk )
	
	Talk( 10, "Then why are you here? You cannot start 2nd Rebirth until you have completed your 1st Rebirth.")
	Text( 10, "Sorry for my lack of inteligence", CloseTalk )

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
-------------------------
-----Blacksmith - Ben
----------------------
function d_talk1()

        Talk(1,"Ben: Hi, I sell all sorts of weapons! Take a look!")

	Text( 1, "Trade", BuyPage )
	Text( 1, "Repair", OpenRepair )
	Text( 1, "Nothing, I am just looking around",CloseTalk )

	InitTrade()
	Weapon(	4197	)
	Weapon(	4199	)
	Weapon(	4201	)
	Weapon(	4207	)
	Weapon(	4211	)
	Weapon(	4213	)
	Weapon(	4214	)
	Weapon(	4215	)
	Weapon(	4218	)
	-- Weapon(	0127	)
	-- Weapon(	0110	)
	-- Weapon(	0112	)
	-- Weapon(	0114	)
	-- Weapon(	0116	)
	-- Weapon(	0118	)
	-- Weapon(	0120	)
	-- Weapon(	0151	)




end

--------------------
------Grocer - Eddie
-------------------
function d_talk2()

        Talk(1,"Eddie: Hi, what can I do for you?")
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing, I am just looking around",CloseTalk )
	
	InitTrade()
	Other(	1611	)
	Other(	1682	)
	Other(	1842	)
	Other(	1612	)
	Other(	1710	)
	Other(	1693	)
	Other(	4716	)
	Other(	1716	)
	Other(	1711	)
	Other(	3384	)
	Other(	3932	)
	Other(	1619	)
	Other(	2396	)
	Other(	1729	)
	Other(	4459	)
	Other(	1697	)
	Other(	1730	)
	Other(	1712	)
	Other(	1734	)
	Other(	1621	)
	Other(	1703	)

	
end 
---------------------
-------Physician - Vegito
----------------------
function d_talk3()

        Talk(1,"Vegito: Hi! The herbs I have are all gathered by meself. Have a look!")
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing, I am just looking around",CloseTalk )

	InitTrade()
	Other(	6203	)
	Other(	6204	)
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	--Leo
	Other(	1576	)
	Other(	4049	)
	Other(	4050	)
	Other(	1578	)
	Other(	4060	)
	Other(	4055	)
	Other(	4061	)
	Other(	2225	)
	Other(	4057	)
	Other(	1768	)


end
---------------------
------Tailor Dar
---------------------
function d_talk4()

        Talk(1,"Dar: I am owner of this fashion shop. what can I do for you ?")
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing, I am just looking around",CloseTalk )

	InitTrade()
	Defence(	4147	)
	Defence(	4149	)
	Defence(	4151	)
	Defence(	4153	)
	Defence(	4154	)
	Defence(	4157	)
	Defence(	4158	)
	Defence(	4161	)
	Defence(	4162	)
	Defence(	4165	)
	Defence(	4167	)
	Defence(	4169	)
	Defence(	4170	)
	Defence(	4173	)
	Defence(	4174	)
	Defence(	4177	)
	Defence(	4178	)
	Defence(	4181	)
	Defence(	4183	)
	Defence(	4185	)
	Defence(	4186	)
	Defence(	4189	)
	Defence(	4190	)
	Defence(	4193	)
	Defence(	4194	)
	-- Defence(	0396	)
	-- Defence(	0398	)
	-- Defence(	0400	)
	-- Defence(	0402	)
	-- Defence(	0404	)
	-- Defence(	0406	)
	-- Defence(	0408	)
	-- Defence(	0411	)
	-- Defence(	0413	)
	-- Defence(	0588	)
	-- Defence(	0590	)
	-- Defence(	0592	)
	-- Defence(	0594	)
	-- Defence(	0596	)
	-- Defence(	0598	)
	-- Defence(	0600	)
	-- Defence(	0602	)
	-- Defence(	0604	)
	-- Defence(	0748	)
	-- Defence(	0750	)
	-- Defence(	0752	)
	-- Defence(	0754	)
	-- Defence(	0756	)
	-- Defence(	0758	)
	-- Defence(	0760	)
	-- Defence(	0824	)
	-- Defence(	0830	)
	-- Defence(	2219	)
	-- Defence(	2221	)
	-- Defence(	2223	)

	
end
-------------------
--------Unknown
----------------------
function d_talk5()

        Talk(1,"Unknown Talk")
	Text( 1, "Unknown", JumpPage, 2)
	Text( 1, "Nothing, I am just looking around",CloseTalk )

	Talk( 2, "Unknown Talk" )
	Text( 2, "Unknown", JumpPage, 3)
	
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1908 )
	TriggerCondition( 1, HasItem, 5828, 1 )
	TriggerAction( 1, TakeItem, 5828, 1 )
	TriggerAction( 1, GiveItem, 6294, 1, 4 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 3, "Unknown Talk" )
	Text( 3, "Unknown", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "Unknown Talk" )


end



-------------------
--------Teleporter - Mary
--------------------

function d_talk6 ()
	Talk ( 1, "Mary: Hi! I am the Teleporter! How may I help you?")
	Text ( 1, "Argent City", JumpPage, 2)
	Text ( 1, "Shaitan City", JumpPage, 3)
	Text ( 1, "Icicle City", JumpPage, 4)
	Text ( 1, "Record Spawn Point", JumpPage, 5 )
	Text ( 1, "Close",CloseTalk )


	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, 2187,2776, "garner")
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 2, "Teleport to Argent City? No problem! Please pay 500G!")
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, 918,3562, "magicsea")
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 3, "I just love Shaitan City! Please pay 500G!")
	Text( 3, "Teleport",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, 1323,544, "darkblue")
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 4, "Teleport to Icicle City? No problem! Please pay 500G!")
	Text( 4, "Teleport",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 5, "Mary: Record in Winter Land? Is that correct?" )
	Text( 5, "Yes. Please record.", SetSpawnPos, "winterland" )
	Text( 5, "Close",CloseTalk )

	Talk( 6, "Unknown Talk" )


end


-------------------
--------Harbor Operatro-Sunny
--------------------
function d_talk7()

        Talk(1,"Hi! I am the Harbor Operator for Winter Land. I am in charge of all ships that is docked in this harbor. Look for me if you want to set sail.")

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 337,965, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair ship", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )


-----------2.0Missions-----------

end

-----------------
--------Researcher Yee
-------------------
function d_talk8()

	Talk( 1,"Researcher Michael: Bring me to the edge of sky and sea, a place where only my dreams could ever compose sucks visions i want to solve all of the mysteries of the ancient civilizations.")
	Text( 1, "I want to remove the seal upon the Gearpieces of Epic Prowess",JumpPage, 3 )
	Text( 1, "I want to remove the seal upon the Gearpieces of Honor",JumpPage, 4 )
	Text( 1, "I want to remove the seal upon the Gearpieces of Sacrifice",JumpPage, 5 )
	Text( 1, "I want to remove the seal upon the Gearpieces of Justice",JumpPage, 6 )
	Text( 1, "I want to remove the seal upon the Gearpieces of Empathy",JumpPage, 7 )
	Text( 1, "I want to remove the seal upon the Gearpieces of Inspiration",JumpPage, 8 )

        Talk( 2, "Researcher Michael: If you don't have enough inventory slots and items, or your class does not match the description of the gear, you can't remove the seals." )

	Talk( 3, "Reseatcher Micheal: You can remove seals on the Gearpieces of Epic Prowess for the Sharpshooter." )
	Text( 3, "Remove the seals on the Redemption of Epic Prowess",JumpPage, 9 )
	Text( 3, "Remove the seals on the Guard of Epic Prowess",JumpPage, 10 )
	Text( 3, "Remove the seals on the Bless of Epic Prowess",JumpPage, 11 )
	Text( 3, "Remove the seals on the Favor of Epic Prowess",JumpPage, 12 )

	Talk( 4, "You can remove seal on the Gearpieces of Honor for Crusader." )
	Text( 4, "Remove the seals on the Redemption of Honor",JumpPage, 13 )
	Text( 4, "Remove the seals on the Guard of Honor",JumpPage, 14 )
	Text( 4, "Remove the seals on the Bless of Honor",JumpPage, 15 )
	Text( 4, "Remove the seals on the Favor of Honor",JumpPage, 16 )

	Talk( 5, "You can remove seals on the Gearpieces of Sacrifice for Champion." )
	Text( 5, "Remove the seal on the Redemption of Sacific",JumpPage, 17 )
	Text( 5, "Remove the seal on the Guard of Sacific",JumpPage, 18 )
	Text( 5, "Remove the seal on the Bless of Sacific",JumpPage, 19 )
	Text( 5, "Remove the seal on the Favor of Sacific",JumpPage, 20 )

	Talk( 6, "You can remove seals on the Gearpieces of Justice for Voyager." )
	Text( 6, "Remove the seal on the Redemption of Justice",JumpPage, 21 )
	Text( 6, "Remove the seal on the Guard of Justice",JumpPage, 22 )
	Text( 6, "Remove the seal on the Bless of Justice",JumpPage, 23 )
	Text( 6, "Remove the seal on the Favor of Justice",JumpPage, 24 )

	Talk( 7, "You can remove seals on the Gearpieces of Empathy for Cleric." )
	Text( 7, "Remove the seal on the Redemption of Empathy",JumpPage, 25 )
	Text( 7, "Remove the seal on the Guard of Empathy",JumpPage, 26 )
	Text( 7, "Remove the seal on the Bless of Empathy",JumpPage, 27 )
	Text( 7, "Remove the seal on the Favor of Empathy",JumpPage, 28)

	Talk( 8, "You can remove seals on the Gearpieces of Inspiration for Seal Master." )
	Text( 8, "Remove the seal on the Redemption of Inspiration",JumpPage, 29 )
	Text( 8, "Remove the seal on the Guard of Inspiration",JumpPage, 30 )
	Text( 8, "Remove the seal on the Bless of Inspiration",JumpPage, 31 )
	Text( 8, "Remove the seal on the Favor of Inspiration",JumpPage, 32 )

	InitTrigger()
	TriggerCondition( 1, PfEqual, 12 )
	TriggerCondition( 1, HasItem, 6173, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6173, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6104, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 9, "Researcher Michael: Give me your Redemption of Epic Prowess and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 9, "Confirim", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 12 )
	TriggerCondition( 1, HasItem, 6174, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6174, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6105, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 10, "Researcher Michael: Give me your Guard of Epic Prowess and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 10, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 12 )
	TriggerCondition( 1, HasItem, 6175, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6175, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6106, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 11, "Researcher Michael: Give me your Bless of Epic Prowess and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 11, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 12 )
	TriggerCondition( 1, HasItem, 6176, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6176, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6107, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 12, "Researcher Michael: Give me your Favor of Epic Prowess and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 12, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 9 )
	TriggerCondition( 1, HasItem, 6177, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6177, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6108, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 13, "Researcher Michael: Give me your Redemption of Epic Honor and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 13, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 9 )
	TriggerCondition( 1, HasItem, 6178, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6178, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6109, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 14, "Researcher Michael: Give me your Guard of Epic Honor and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 14, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 9 )
	TriggerCondition( 1, HasItem, 6179, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6179, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6110, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 15, "Researcher Michael: Give me your Bless of Epic Honor and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 15, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 9 )
	TriggerCondition( 1, HasItem, 6180, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6180, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6111, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 16, "Researcher Michael: Give me your Favor of Epic Honor and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 16, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasItem, 6181, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6181, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6112, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 17, "Researcher Michael: Give me your Redemption of Epic Sacific and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 17, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasItem, 6182, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6182, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6113, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 18, "Researcher Michael: Give me your Guard of Epic Sacific and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 18, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasItem, 6183, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6183, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6114, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 19, "Researcher Michael: Give me your Bless of Epic Sacific and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 19, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasItem, 6184, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6184, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6115, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 20, "Researcher Michael: Give me your Favor of Epic Sacific and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 20, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 16 )
	TriggerCondition( 1, HasItem, 6185, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6185, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6116, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 21, "Researcher Michael: Give me your Redemption of Epic Justice and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 21, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 16 )
	TriggerCondition( 1, HasItem, 6186, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6186, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6117, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 22, "Researcher Michael: Give me your Guard of Epic Justice and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 22, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 16 )
	TriggerCondition( 1, HasItem, 6187, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6187, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6118, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 23, "Researcher Michael: Give me your Bless of Epic Justice and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 23, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 16 )
	TriggerCondition( 1, HasItem, 6188, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6188, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6119, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 24, "Researcher Michael: Give me your Favor of Epic Justice and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 24, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 13 )
	TriggerCondition( 1, HasItem, 6189, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6189, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6120, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 25, "Researcher Michael: Give me your Redemption of Epic Empathy and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 25, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 13 )
	TriggerCondition( 1, HasItem, 6190, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6190, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6121, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 26, "Researcher Michael: Give me your Guard of Epic Empathy and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 26, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 13 )
	TriggerCondition( 1, HasItem, 6191, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6191, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6122, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 27, "Researcher Michael: Give me your Bless of Epic Empathy and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 27, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 13 )
	TriggerCondition( 1, HasItem, 6192, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6192, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6123, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 28, "Researcher Michael: Give me your Favor of Epic Empathy and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 28, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 14 )
	TriggerCondition( 1, HasItem, 6193, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6193, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6124, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 29, "Researcher Michael: Give me your Redemption of Epic Inspiration and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 29, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 14 )
	TriggerCondition( 1, HasItem, 6194, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6194, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6125, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 30, "Researcher Michael: Give me your Guard of Epic Inspiration and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 30, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 14 )
	TriggerCondition( 1, HasItem, 6195, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6195, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6126, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 31, "Researcher Michael: Give me your Bless of Epic Inspiration and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 31, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 14 )
	TriggerCondition( 1, HasItem, 6196, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6196, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6127, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 32, "Researcher Michael: Give me your Favor of Epic Inspiration and I will help to remove the seals upon it with the two Runes of Courtesy, two Runes of Justness, one Rune of Pity and one Rune of Courage." )
	Text( 32, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

-----------2.0Missions-----------


end

-------------------
---Harbor Operator Luna
-------------------

function d_talk9()
      
       Talk(1,"Luna: Hi! I am the Harbor Operator for Winter Island. I am in charge of all ships that is docked in this harbor. Look for me if you want to set sail.")

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 702,720, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )



end
-------------------
------Explorer - Winston
--------------------

function d_talk10()
      
       Talk(1,"Winston: My teacher likes adventures. Last time he ran into zombies while hanging a round outside Thundoria Castle and rorally freekend out.")


-----------2.0Missions-----------


end
-----------------
---Snow Cara Guardianyes
-------------------


function d_talk11()
      
       Talk(1,"Snow Cara Guardin: Hello, All I an a Guardian.")


end
------------------
---Unknown
-----------------


function d_talk12()
      
       Talk(1,"Unknown Talk")

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 1043, 629, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Unknown Talk" )
	Talk( 4, "Unknown Talk" )
	Talk( 5, "Unknown Talk" )
	Talk( 6, "Unknown Talk" )




end
-------------------
--Explorer - Chris
----------------


function d_talk13()
      
       Talk(1,"What Are You Looking For?")


-----------2.0Missions-----------


end
---------------
--Unknown
---------------


function d_talk14()
      
       Talk(1,"Unknown Talk")



end
---------------
--Unknown
-------------------


function d_talk15()
      
       Talk(1,"Unknown Talk")

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 246,1185, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Unknown Talk" )
	Talk( 4, "Unknown Talk" )
	Talk( 5, "Unknown Talk" )
	Talk( 6, "Unknown Talk" )



end
--------------------
---North Ville
-------------------


function d_talk16()
      
	Talk(1,"Ville: Kara, why, why, why you do this to me? Haven't you forgotten our promise? You have no heart!")
	Text ( 1, "Teleport To Ice-Covered Island", JumpPage, 2)
	Text ( 1, "Teleport To Aurora Area", JumpPage, 3)
	Text ( 1, "Teleport To Dark Area", JumpPage, 4)
	Text ( 1, "Redeem Level 95 Weapon Seals Box", JumpPage, 5)
	Text ( 1, "Nothing, Im Just Looking Around",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1648 )
	TriggerAction( 1, GoTo, 1970,950, "winterland" )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 2, "Are you ready to get teleported to Ice-Covered Island?")
	Text( 2, "Yes, Im Ready",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1664 )
	TriggerCondition( 1, goto_mj1_time )
	TriggerAction( 1, GoTo, 366,395, "mjing1")
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 3, "Are you ready to get teleported to Aurora Area?")
	Text( 3, "Yes, Im Ready",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1664 )
	TriggerCondition( 1, goto_mj2_time )
	TriggerAction( 1, mj3sjc )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 4, "Are you ready to get teleported to Dark Area?")
	Text( 4, "Yes, Im Ready",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6, "Unknown Talk" )
	Talk( 7, "Unknown Talk")
	Talk( 8, "Check if you have got enough empty inventory slots, complete your second rebirth or all quests in your quest log. remember you have only one chance to reclaim it." )

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasRecord, 1671 )
	TriggerCondition( 1, NoRecord, 1891 )
	TriggerAction( 1, GiveItem, 6251, 1, 4 )
	TriggerAction( 1, SetRecord, 1891 )
	TriggerCondition( 2, PfEqual, 9 )
	TriggerCondition( 2, HasRecord, 1671 )
	TriggerCondition( 2, NoRecord, 1891 )
	TriggerAction( 2, GiveItem, 6250, 1, 4 )
	TriggerAction( 2, SetRecord, 1891 )
	TriggerCondition( 3, PfEqual, 12 )
	TriggerCondition( 3, HasRecord, 1671 )
	TriggerCondition( 3, NoRecord, 1891 )
	TriggerAction( 3, GiveItem, 6252, 1, 4 )
	TriggerAction( 3, SetRecord, 1891 )
	TriggerCondition( 4, PfEqual, 13 )
	TriggerCondition( 4, HasRecord, 1671 )
	TriggerCondition( 4, NoRecord, 1891 )
	TriggerAction( 4, GiveItem, 6255, 1, 4 )
	TriggerAction( 4, SetRecord, 1891 )
	TriggerCondition( 5, PfEqual, 14 )
	TriggerCondition( 5, HasRecord, 1671 )
	TriggerCondition( 5, NoRecord, 1891 )
	TriggerAction( 5, GiveItem, 6254, 1, 4 )
	TriggerAction( 5, SetRecord, 1891 )
	TriggerCondition( 6, PfEqual, 16 )
	TriggerCondition( 6, HasRecord, 1671 )
	TriggerCondition( 6, NoRecord, 1891 )
	TriggerAction( 6, GiveItem, 6253, 1, 4 )
	TriggerAction( 6, SetRecord, 1891 )
	TriggerFailure( 6, JumpPage, 8 )
	Talk( 5, "If you complete the quest of Relic image, you will recive one level 95 weapon seal box" )
	Text( 5, "Confirm", MultiTrigger, GetMultiTrigger(), 6)


end


------------------
----Explorer - Lion
------------------


function d_talk17()
      
       Talk(1,"Lion: What are you doing here?")


-----------2.0Missions-----------


end
----------------
----Explorer - Jill
------------------


function d_talk18()
      
       Talk(1,"Jill: What are you doing here?")


-----------2.0Missions-----------


end
-----------------
--Unknown
-----------------


function d_talk19()
      
       Talk(1,"Unknown Talk")


end
------------------
--Ancient Relic rotector
--------------------


function d_talk20()
      
       Talk(1,"What are you doing here?")



end
-------------------
--Kara's Statue
------------------


function d_talk21()
      
       Talk(1,"Unknown Talk")



end
-------------------
--Ville's Statue
---------------------


function d_talk22()
      
       Talk(1,"Unknown Talk")


end
--------------------
---秋岛　维尔分身
--------------------


function d_talk23()
     -- Talk(1,"Nothing") 
	Talk(1,"维尔分身：你好，请问你找我有什么事吗？")
	Text ( 1, "前往冬岛", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1636 )
	TriggerCondition( 1, HasAllBoatInBerth, 13 )
	TriggerAction( 1, LuanchBerthList, 13, 2583,3235, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "你准备好了去冬岛群岛了吗？")
	Text( 2, "准备好了", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "你现在还不能去冬岛群岛，那里对你太危险了；如果你觉得你实力足够的话，那么请你把船停靠在春岛或者夏岛，我好方便把你传到湖面上的传动点。" )



end
---------------------
--光明秘境第一境界　光明秘境守护者
-----------------------


function d_talk24()
      
       Talk(1,"光明秘境守护者：你好，我是光明秘境的守护者。")


end
--------------------
--Unknown
----------------------


function d_talk25()
      
       Talk(1,"Unknown Talk")

end
---------------------
--Unknown
----------------------


function d_talk26()
      
       Talk(1,"Unknown Talk")


end
-----------------------
--Unknown
-----------------------


function d_talk27()
      
       Talk(1,"Unknown Talk")



end

----------------Nurse - Tsukino
function d_talk28 ()

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, HasMoney, 1000 )
	TriggerAction( 2, TakeMoney, 1000 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )
	
	Talk( 1, "Tsukino: Hello! I am Nurse Tsukino. Look for me if you are sick or injured!" )
	Text( 1, "Greater Heal", MultiTrigger,GetMultiTrigger(),2)
	 
	Talk( 2, "Gina: Sorry, healing requires 200G. You do not have enough.")



end

-----------------------
--Builder-Endymion
-----------------------

function d_talk29()
	
	Talk( 1, "Endymion: Yo! Want to get out to the sea? How can you do so without a good ship? I offer the best ship around here. Come have a look!" )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "Ships limit reached. Unable to build more ship" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Build Ship", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 34 )
	TriggerAction( 1, BoatLevelBerthList, 34 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Upgrade ship", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Endymion: What type of ships you wish to build? I have a few varieties. Please have a look." )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerAction( 1, CreateBoat, 1, 34 )
	Text( 2, "Build Guppy", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerAction( 1, CreateBoat, 5, 34 )
	Text( 2, "Build Windseeker", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 34 )
	Text( 2, "Build Swordfish", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 34 )
	Text( 2, "Build Trutle", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 14 )
	TriggerAction( 1, CreateBoat, 14, 34 )
	Text( 2, "Build Torrent", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 15 )
	TriggerAction( 1, CreateBoat, 15, 34 )
	Text( 2, "Build Goddess", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Endymion: I guess your ship is not docked here. You need to dock here to upgrade the level when it has gained enough experience from sailing or killing monsters out in the sea." )


end

-----------------------
--暗黑秘境第二境界　神秘人·冬仔
-----------------------


function d_talk30()
      
       Talk(1,"冬仔：你没事找我干嘛，你太假了！")



end

function d_talk31()
      
       	Talk(1,"Little Bell: Every girl was once an angel without tears. When she meets her beloved she gets tears. And after she cries, she falls to the earth There for , every boy shall be nice his girl, cause she once gave up the whole of heaven for him!")

	Text( 1, "I want to remove the seals on the Weapons of Legacy!",JumpPage, 2 )


	Talk( 2,"Little Bell: I can help you remove the seals on the Weaponns of Legacy.")
	Text( 2, "I wantto unseal the Heaven Sword",JumpPage, 4 )
	Text( 2, "I wantto unseal the Holy Cavalier Shiled",JumpPage, 5 )
	Text( 2, "I wantto unseal the Punishment Bow",JumpPage, 6 )
	Text( 2, "I wantto unseal the Justice Gun",JumpPage, 7 )
	Text( 2, "I wantto unseal the Quietness Knife",JumpPage, 8 )
	Text( 2, "I wantto unseal the Stateliness Sword",JumpPage, 9 )
	Text( 2, "I wantto unseal the Sacrifice Staff",JumpPage, 10 )
	Text( 2, "I wantto unseal the Life Staff",JumpPage, 11 )

        Talk( 3, "Little Bell: If you don't have enough inventory slots or items, you can't remove the seals." )

	InitTrigger()
	TriggerCondition( 1, HasItem, 6165, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6165, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6096, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 4, "Little Bell: Give me your Heaven Sword and I will help to remove the seals upon it with one Rune Courtesy, one Rune of Justness, two Runes of Pity and two Runes of Courage." )
	Text( 4, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 6166, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6166, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6097, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 5, "Little Bell: Give me your Holy Cavalier Shiled and I will help to remove the seals upon it with one Rune Courtesy, one Rune of Justness, two Runes of Pity and two Runes of Courage." )
	Text( 5, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 6167, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6167, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6098, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 6, "Little Bell: Give me your Punishment Bow and I will help to remove the seals upon it with one Rune Courtesy, one Rune of Justness, two Runes of Pity and two Runes of Courage." )
	Text( 6, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 6168, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6168, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6099, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 7, "Little Bell: Give me your Justice Gun and I will help to remove the seals upon it with one Rune Courtesy, one Rune of Justness, two Runes of Pity and two Runes of Courage." )
	Text( 7, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 6169, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6169, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6100, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 8, "Little Bell: Give me your Quietness Knife and I will help to remove the seals upon it with one Rune Courtesy, one Rune of Justness, two Runes of Pity and two Runes of Courage." )
	Text( 8, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 6170, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6170, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6101, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 9, "Little Bell: Give me your Stateliness Sword and I will help to remove the seals upon it with one Rune Courtesy, one Rune of Justness, two Runes of Pity and two Runes of Courage." )
	Text( 9, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 6171, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6171, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6102, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 10, "Little Bell: Give me your Sacrifice Staff and I will help to remove the seals upon it with one Rune Courtesy, one Rune of Justness, two Runes of Pity and two Runes of Courage." )
	Text( 10, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 6172, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6172, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6103, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 11, "Little Bell: Give me your Life Staff and I will help to remove the seals upon it with one Rune Courtesy, one Rune of Justness, two Runes of Pity and two Runes of Courage." )
	Text( 11, "Confirm", MultiTrigger, GetMultiTrigger(), 1)

	
end