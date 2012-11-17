--------------------------------------------------------------------------
--									--
--									--
--NPCScript01.lua Created by Robin 2005.1.20.	--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript01.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


------------------------------------------------------------
-- 白银之城:服装店尼萨婆婆
------------------------------------------------------------

function BT_NpcSale001()


	Talk( 1, "Granny Nila: Welcome! My clothings are cheap and good! We also have trendy stuff! Have a look around!" )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	0290	)
	Defence(	0466	)
	Defence(	0642	)
	Defence(	0296	)
	Defence(	0472	)
	Defence(	0648	)
	Defence(	0291	)
	Defence(	0467	)
	Defence(	0643	)
	Defence(	0297	)
	Defence(	0473	)
	Defence(	0649	)
	Defence(	0293	)
	Defence(	0469	)
	Defence(	0645	)
	Defence(	0298	)
	Defence(	0474	)
	Defence(	0650	)
	Defence(	0300	)
	Defence(	0476	)
	Defence(	0652	)
	Defence(	0301	)
	Defence(	0477	)
	Defence(	0653	)
	Defence(	0228	)
	Defence(	0229	)
	Defence(	0230	)
	Defence(	0295	)
	Defence(	0471	)
	Defence(	0647	)
	Defence(	0302	)
	Defence(	0478	)
	Defence(	0654	)
	Defence(	0299	)
	Defence(	0475	)
	Defence(	0651	)
	Defence(	0303	)
	Defence(	0479	)
	Defence(	0655	)
	
	-- AddNpcMission ( 220 )
	AddNpcMission ( 705 )
	
end

-------------------------------------------------------------------
--								--
--		白银城（比特）		--
--		219533,270323				--
-------------------------------------------------------------------

function r_talk86()

	Talk( 1, "Peter: Hi, I am the Guard, Peter. I keep the streets of this city free of thugs. I am also incharge of training new Swordsman. Is there anything that matters?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000 )
	TriggerCondition( 1, HasItem, 3953, 1 )
	TriggerAction( 1, TakeItem, 3953, 1 )
	TriggerAction( 1, TakeMoney, 1000 )
	TriggerAction( 1, GiveItem, 3164, 1, 4 )
	TriggerAction( 1, GiveItem, 1, 1, 4 )
	TriggerAction( 1, SetProfession, 1 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerCondition( 2, LvCheck, ">", 9 )
	TriggerCondition( 2, IsCategory, 2 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000 )
	TriggerCondition( 2, HasItem, 3953, 1 )
	TriggerAction( 2, TakeItem, 3953, 1 )
	TriggerAction( 2, TakeMoney, 1000 )
	TriggerAction( 2, GiveItem, 3164, 1, 4 )
	TriggerAction( 2, GiveItem, 1, 1, 4 )
	TriggerAction( 2, SetProfession, 1  )
	TriggerAction( 2, JumpPage, 3 )
	TriggerFailure( 2, JumpPage, 4 )

	--Talk(2, "Peter: Hey wait! Are you interested in swordsmanship? Hmm…you seems suitable to learn some sword fighting. It'll be a pity if you did not become a Swordsman!")
	--Text(2, "Ok, I will advance to become a Swordsman", MultiTrigger, GetMultiTrigger(), 2)
	--Text(2, "No, it is good enough for now.", CloseTalk)

	--Talk(3, "Peter: I have taught you all I know regarding swordsmanship. The rest will be up to your own effort.")

	--Talk(4, "Peter: Want to become a Swordsman? Only male Newbies at Level 10 with 1 Courage Certificate are eligible. Registration fee is 1000G.")

	--InitTrigger()
	---------------剑士
	--TriggerCondition( 1, LvCheck, ">", 9 )
	--TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 0 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerCondition( 2, LvCheck, ">", 9 )
	--TriggerCondition( 2, IsCategory, 2 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 2 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )

	AddNpcMission( 100 )
	AddNpcMission( 204 )
	AddNpcMission ( 279 )
	AddNpcMission ( 281 )
	AddNpcMission ( 404 )
	AddNpcMission ( 749 )
	AddNpcMission ( 750 )
	AddNpcMission ( 66 )
	AddNpcMission ( 67 )
	AddNpcMission ( 68 )
	AddNpcMission ( 72 )
	AddNpcMission(	1222	)
----------eleven
	AddNpcMission(	5056	)
	AddNpcMission(	5060	)	
	AddNpcMission(	5068	)	
------------1.7
	AddNpcMission(	5167	)
	AddNpcMission(	5089	)
	AddNpcMission (5093 )
	AddNpcMission (5094 )
	AddNpcMission (5095 )
	AddNpcMission (5096 )
	AddNpcMission (5109 )


	MisListPage(2)


end


-------------------------------------------------------------------
--								--
--		白银城（铁匠——小金金）		--
--		219533,270323				--
-------------------------------------------------------------------
function r_trade01 ()
	--买卖东西对话
	Talk( 1, "Goldie: Hi, I sell all sorts of weapons! Take a look!" )
	Text( 1, "Trade", BuyPage)	
	Text( 1, "Repair", OpenRepair)
	Text( 1, "Forge", OpenForge)
	Text( 1, "Fusion", OpenMilling)
	Text( 1, "Apparel Fusion", OpenFusion)
	Text( 1, "Apparel Upgrade", OpenUpgrade)
	Text( 1, "Regarding Forging", JumpPage, 2)
	Text( 1, "Regarding Combining", JumpPage, 3)
	Text( 1,"Event of aberrance Alloy Pickaxe",JumpPage,9)
	
	
	Talk(9,"Recently, the item mall has sold a batch of aberrance Alloy Pickaxe which has caused much trouble to the players. Should you have any Alloy Pickaxe which durability is at 0, you can come to me to exchange a new one")
	Text(9,"I have an aberrance pickaxe, I need to repair my pickaxe",CheckMetal)
	Text(9,"Don't know what are you talking about",CloseTalk)

	
	Text( 1, "Mold a mask", JumpPage,4)

	Talk( 2, "Goldie: Forging? Only the blacksmith in Shaitan City can do it." )

	Talk( 3, "Goldie: You wish to combine something? From what I understand, you need a combining scroll and it will list the required items. Collect the items needed and talk to Grocer - Amos in Shaitan City. He is the only person who knows how to combine." )

	InitTrade()
	Defence(	0335	)
	Defence(	0511	)
	Defence(	0687	)
	Defence(	0336	)
	Defence(	0512	)
	Defence(	0688	)
	Defence(	0338	)
	Defence(	0514	)
	Defence(	0690	)
	Defence(	0337	)
	Defence(	0513	)
	Defence(	0689	)
	Defence(	0340	)
	Defence(	0516	)
	Defence(	0692	)
	Defence(	0339	)
	Defence(	0515	)
	Defence(	0691	)
	Defence(	0341	)
	Defence(	0517	)
	Defence(	0693	)
	Defence(	0342	)
	Defence(	0518	)
	Defence(	0694	)
	Defence(	0345	)
	Defence(	0521	)
	Defence(	0697	)
	Defence(	0343	)
	Defence(	0519	)
	Defence(	0695	)
	Defence(	0380	)
	Defence(	0556	)
	Defence(	0732	)
	Defence(	0351	)
	Defence(	0527	)
	Defence(	0703	)
	Defence(	0386	)
	Defence(	0562	)
	Defence(	0738	)
	Defence(	0352	)
	Defence(	0528	)
	Defence(	0704	)
	Defence(	0350	)
	Defence(	0526	)
	Defence(	0702	)
	Defence(	0354	)
	Defence(	0530	)
	Defence(	0706	)
	Defence(	0353	)
	Defence(	0529	)
	Defence(	0705	)
	Defence(	0356	)
	Defence(	0532	)
	Defence(	0708	)
	Defence(	0355	)
	Defence(	0531	)
	Defence(	0707	)
	Defence(	0357	)
	Defence(	0533	)
	Defence(	0709	)
	Defence(	0290	)
	Defence(	0466	)
	Defence(	0642	)
	Defence(	0296	)
	Defence(	0472	)
	Defence(	0648	)
	Defence(	0291	)
	Defence(	0467	)
	Defence(	0643	)
	Defence(	0297	)
	Defence(	0473	)
	Defence(	0649	)
	Defence(	0293	)
	Defence(	0469	)
	Defence(	0645	)
	Defence(	0298	)
	Defence(	0474	)
	Defence(	0650	)
	Defence(	0300	)
	Defence(	0476	)
	Defence(	0652	)
	Defence(	0301	)
	Defence(	0477	)
	Defence(	0653	)
	Defence(	0228	)
	Defence(	0229	)
	Defence(	0230	)
	Defence(	0295	)
	Defence(	0471	)
	Defence(	0647	)
	Defence(	0302	)
	Defence(	0478	)
	Defence(	0654	)
	Defence(	0299	)
	Defence(	0475	)
	Defence(	0651	)
	Defence(	0303	)
	Defence(	0479	)
	Defence(	0655	)
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0001	)
	Weapon(	0010	)
	Weapon(	0002	)
	Weapon(	0011	)
	Weapon(	0003	)
	Weapon(	0012	)
	Weapon(	0013	)
	Weapon(	0014	)
	Weapon(	0022	)
	Weapon(	0005	)
	Weapon(	0023	)
	Weapon(	1388	)
	Weapon(	1389	)
	Weapon(	1390	)
	Weapon(	1391	)
	Weapon(	1392	)
	Weapon(	1395	)
	Weapon(	1396	)
	Weapon(	1397	)
	Weapon(	1398	)
	Weapon(	1399	)
	Weapon(	0121	)
	Weapon(	0122	)
	Weapon(	0123	)
	Weapon(	0124	)
	Weapon(	0125	)
	Weapon(	0126	)
	Weapon(	0015	)
	Weapon(	0020	)
	Weapon(	0016	)
	Weapon(	0021	)
	Weapon(	0004	)
	Weapon(	1370	)
	Weapon(	1371	)
	Weapon(	1372	)
	Weapon(	1373	)
	Weapon(	1377	)
	Weapon(	1378	)
	Weapon(	1379	)
	Weapon(	1380	)
	Weapon(	1381	)
	Weapon(	1382	)
	Weapon(	1386	)
	Weapon(	1387	)
	Weapon(	0073	)
	Weapon(	0080	)
	Weapon(	0074	)
	Weapon(	0081	)
	Weapon(	0075	)
	Weapon(	0082	)
	Weapon(	0076	)
	Weapon(	0083	)
	Weapon(	0077	)
	Weapon(	0084	)
	Weapon(	1415	)
	Weapon(	1416	)
	Weapon(	1417	)
	Weapon(	1418	)
	Weapon(	1419	)
	Weapon(	1422	)
	Weapon(	1423	)
	Weapon(	1424	)
	Weapon(	1425	)
	Weapon(	1426	)
	Weapon(	1443	)
	Weapon(	1444	)
	Weapon(	1445	)
	Weapon(	1446	)
	Weapon(	1447	)
	Weapon(	1450	)
	Weapon(	1451	)
	Weapon(	1452	)
	Weapon(	1460	)
	Weapon(	1461	)
	Weapon(	0817	)
	Weapon(	0818	)
	Weapon(	0867	)
	Weapon(	0868	)
	Weapon(	0872	)
	Weapon(	0873	)
	Weapon(	0635	)
	Weapon(	0636	)
	Other(	0455	)
	Other(	0456	)
	Other(	0886	)
	Other(	0453	)
	Other(	3074	)
	Other(	3075	)
	Other(	0891	)
	Other(	0454	)
	Other(	1020	)
	Other(	2625	)
	Other(	2630	)
	Other(	2634	)
	Other(	2635	)
	Other(	2636	)
	Other(	2637	)
	Other(	2638	)
	Other(	2639	)
	Other(	0890	)


	Talk( 4, "Goldie: What type of mask would you like to mold?")
	Text( 4, "Snowdoll Mask",JumpPage,5)
	Text( 4, "Pumpkin Mask", JumpPage,6)
	Text( 4, "Deathsoul Mask", JumpPage,7)


	InitTrigger() --兑换鬼怪面具
	TriggerCondition( 1, HasItem, 4358, 30 )
	TriggerCondition( 1, HasItem, 3909, 2 )
        TriggerAction( 1, TakeItem, 4358, 30 )
	TriggerAction( 1, TakeItem,  3909, 2 )
	TriggerAction( 1, GiveItem,1120, 1,4 )
	TriggerFailure( 1, JumpPage, 8 ) 
	Talk(5, "Goldie: Snowdoll Mask requires 30 Blue Snowballs to mold.")
	Text( 5, "Confirm to make",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --兑换面具
	TriggerCondition( 1, HasItem, 4809, 30 )
	TriggerCondition( 1, HasItem, 3909, 2 )
        TriggerAction( 1, TakeItem, 4809, 30 )
	TriggerAction( 1, TakeItem,  3909, 2 )
	TriggerAction( 1, GiveItem,1121, 1,4 )
	TriggerFailure( 1, JumpPage, 8 ) 
	Talk(6, "Goldie: Pumpkin Mask requires 30 Pumpkin Heads")
	Text( 6, "Confirm to make",MultiTrigger, GetMultiTrigger(), 1) 
	
	InitTrigger() --兑换面具
	TriggerCondition( 1, HasItem, 2419, 20 )
	TriggerCondition( 1, HasItem, 3909, 2 )
        TriggerAction( 1, TakeItem, 2419, 20 )
	TriggerAction( 1, TakeItem,  3909, 2 )
	TriggerAction( 1, GiveItem,1122, 1,4 )
	TriggerFailure( 1, JumpPage, 8 ) 
	Talk(7, "Goldie: Deathsoul Mask requires 20 Magical Bones to mold.")
	Text( 7, "Confirm to make",MultiTrigger, GetMultiTrigger(), 1) 
	
	Talk( 8, "Goldie: You do not seems to have the required items to mold a mask or your inventory has been binded.")
	
	AddNpcMission ( 703 )
	AddNpcMission	(1044)
	AddNpcMission	(1096)
	AddNpcMission	(1155)
	AddNpcMission	(1207)
	AddNpcMission	(58)
	AddNpcMission	(59)
	AddNpcMission	(60)
	AddNpcMission(	1221	)


end
-----------------------------------------------------------------小金金铁匠结束----------------------------------------------------------------------------------------------




------------------------------------------------------------------
--								--
--								--
------------------------白银城秘书斯克特---------------------------
--			221925,274925				--
--								--
------------------------------------------------------------------
function r_talk01 ()
	
	Talk( 1, "Salvier: Hi! You look new! How can I help you?" )
	Text( 1, "Who are you?", JumpPage, 2)
	Text( 1, "Where is this place?", JumpPage, 3 )
	
	Text( 1, "I think I have understand. Goodbye", JumpPage, 4 )

	Talk( 2, "Salvier: I am in charge of answering people's question for this city. If you meet up with any trouble, look for me." )
	Text( 2, "Return", JumpPage, 1)

	Talk( 3, "Salvier: This is the most prosperous city in the whole of Ascaron. We have no lack of resources in any way. This is all thanks to our Duke who built this city." )
	Text( 3, "Return", JumpPage, 1)

	Talk( 4, "Salvier: Ok sure, look for me again if you need more." )
	Text( 4, "Ok, I want to know some more things.", JumpPage, 5)
	
	Talk( 5, "Salvier: Don't be shy. Ask away." )
	Text( 5, "The Duke and founding of Argent", JumpPage, 6)
	
	Talk( 6, "Salvier: Many centuries ago, a war between the demons and Ascaron empire ensures. It lasted for years and taken a hugh toll on the citizen of the empire. Due to this, the Duke and his nephew leads the citizen to the current Argent City and build it from scratch. They endure 30 over years of hardship and manage to build this new city." )
	--Text( 6, "Wow! How sauve.", JumpPage, 7)

	InitTrigger()

	TriggerCondition( 1, NoRecord, 500 )

	TriggerAction( 1, CloseTalk )
	TriggerAction( 1, AddExp, 100, 200 )
	TriggerAction( 1, SetRecord, 500 )
	TriggerAction( 1, AddMoney, 100 )
	
	Talk( 7, "Salvier: As a great leader of a great city, I will treat all newcomers with hospitality. A gift of  100G! You can receive healing from the nurse if you are below Lv 5 too!" )
	Text( 7, "Thank you!",  MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "Salvier: Hi! Argent City need someone like you!" )
	Text( 8, "Thank you. I am only looking around",  CloseTalk )


	InitTrigger()

	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, JumpPage, 8 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )

----------------注册任务

	AddNpcMission ( 203 )
	AddNpcMission ( 204 )
	AddNpcMission ( 205 )
	AddNpcMission ( 206 )
	AddNpcMission ( 221 )
	AddNpcMission ( 222 )
	AddNpcMission ( 1002 )
	AddNpcMission ( 1057 )
	AddNpcMission ( 1112 )
	AddNpcMission ( 1166 )
	AddNpcMission ( 55 )
	AddNpcMission ( 56 )
	AddNpcMission ( 57 )
	AddNpcMission ( 1220 )
	AddNpcMission ( 319 )
	AddNpcMission ( 325 )
	AddNpcMission ( 326 )
---------eleven
	AddNpcMission ( 5037 )	



	MisListPage(8)
end 
---------------<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<NPC 《斯克特》结束了!
----------------------------------------------------------
--							--
--							--
--		白银城[老奶奶]				--
--							--
--		227725,276925				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk02 ()

	
	Talk( 1, "Old granny: How are you, young man." )
	--Text( 1, "Seed of Love", JumpPage, 2)
	--Text( 1, "Redeem 10 Seeds of Love", JumpPage, 3)
	--Text( 1, "Redeem 100 Seeds of Love", JumpPage, 4)
	--Text( 1, "Redeem 1000 Seeds of Love", JumpPage, 5)
	Text( 1, "Exchange Lantern", JumpPage, 7 )
	Text( 1, "Leave", CloseTalk)
	
	
	Talk( 2, "Granny: Why wait when you can sow your Seed of Love. Bring me 1 vial of Pure Water, 1 Fancy Petal, 1 Perfect Sapphire and 1 Heart of Naiad to germinate 1 Seed of Love." )
	Text( 2, "Redeem Seed of Love", GetChaName_21, 1 )

	Talk( 3, "Granny: 10 Seeds of Love to exchange for 1 Honey Chocolate")
	Text(3,"Confirm to exchange",  GetChaName_22, 1)

	Talk( 4, "Granny: 100 Seeds of Love to exchange for 3 Amplifiers of Strive")
	Text(4,"Confirm to exchange",  GetChaName_23, 1)

	Talk( 5, "Granny: 1000 Seeds of Love can be used to exchange for 1 Pass to Abandon 4")
	Text(5,"Confirm to exchange",  GetChaName_24, 1)
	
	InitTrigger() --对换灯笼
	TriggerCondition( 1, HasItem, 3904, 15 )
	TriggerCondition( 1, HasItem, 3911, 15 )
	TriggerCondition( 1, HasItem, 4450, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 3904, 15 )
	TriggerAction( 1, TakeItem, 3911, 15 )
	TriggerAction( 1, TakeItem, 4450, 1 )
 	TriggerAction( 1, GiveItem, 3342, 1 ,4)
	TriggerFailure( 1, JumpPage, 9 ) 
	Talk( 7, "Bingo: Give me 15 pieces of Red Paper, 15 sticks of Bamboo Stick and 1 Strange Candle to exchange for a Lantern.")
	Text( 7, "Confirm trade",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 9, "Bingo: You do not seem to have enough of Red Paper, Bamboo Stick or Strange Candle!")

	MisListPage(1)

	AddNpcMission ( 282 )
	AddNpcMission ( 283 )
	AddNpcMission	(1026)
	AddNpcMission	(1084)
	AddNpcMission	(1137)
	AddNpcMission	(1189)
	AddNpcMission(	1224	)
	AddNpcMission(	373	)
	AddNpcMission(	374	)
	AddNpcMission(	388	)
--	AddNpcMission( 906 )



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<老奶奶结束




----------------------------------------------------------
--							--
--							--
--		白银城[药草商人——帝姆]			--
--							--
--		224575,277025				--
----------------------------------------------------------
function r_talk03 ()

	Talk( 1, "Ditto: Hi! The herbs I have are all gathered by meself. Have a look!" )
	Text( 1, "Trade", BuyPage)
	--Text( 1, "Sell items!", SalePage)
	Text( 1, "Decoct Recovery Potion", JumpPage, 5)


	Talk( 4, "Ditto: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Icicle or Shaitan by using the teleporter." )
	Text( 4, "Trade", BuyPage)
	--Text( 4, "Sell items!", SalePage )
	Text( 4, "Decoct Recovery Potion", JumpPage, 5)

---------------制作甘草药水
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3129, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3129, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3133, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 5, "Ditto: You need to have medicine when you are sick! What do you need?" )
	Text( 5, "Decoct Liquorice Potion", MultiTrigger, GetMultiTrigger(), 1 )
	--------------炮制醒神花茶
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3130, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3130, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3134, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Brew Energetic Tea", MultiTrigger, GetMultiTrigger(), 1 )
	-------------------合成秘制奇异膏
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3131, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3131, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3135, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 5, "Decoct Special Ointment", MultiTrigger, GetMultiTrigger(), 1 )
	-------------------蒸烤冰芽酥
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3132, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3132, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3136, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "Make Snowy Soft Bud", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6, "Ditto: Money first. This is what you wanted. Keep it well." )
	Talk( 7, "Ditto: It requires 10 Medicated Grass, 1 Bottle and 50G to make 1 Liquorice Potion." )
	Talk( 8, "Ditto: Oh, you need 10 Fancy Petals, 1 Bottle and 50G to make 1 cup of Energetic Tea." )
	Talk( 9, "Ditto: Hi, I need 10 Strange Fruits and 1 Bottle to make 1 Special Ointment. You also need to pay me 50G." )
	Talk( 10, "Ditto: Hey, you need to have 10 Snowy Grass Buds and 1 Bottle to make 1 Snowy Soft Bud. There is a fee of 50G too!" )

	InitTrade()
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



--这里写任务的检测


-----------超过9级告诉玩家可以转职
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	---TriggerAction( 1, JumpPage, 4 )
	--TriggerFailure( 1, JumpPage, 1 )

	--Start( GetMultiTrigger(), 1 )

---------------------注册任务
	MisListPage(1)

	AddNpcMission ( 707 )
	--AddNpcMission ( 733 )
	--AddNpcMission ( 738 )
	--AddNpcMission ( 739 )
	AddNpcMission ( 214 )
	AddNpcMission ( 215 )
	AddNpcMission ( 217 )
	AddNpcMission ( 218 )
	AddNpcMission ( 219 )
	AddNpcMission ( 220 )
	AddNpcMission	(1046)
	AddNpcMission	(1208)
	AddNpcMission	(73)
	AddNpcMission	(74)
	AddNpcMission	(75)
	--AddNpcMission	(913)
	--AddNpcMission	(914)
	--AddNpcMission	(915)
	--AddNpcMission	(916)
-------------eleven
	AddNpcMission	(5027)
	AddNpcMission	(5035)
	AddNpcMission	(5036)

	MisListPage(4)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<药草商人——嫡母结束



----------------------------------------------------------
--							--
--							--
--		白银城[护士小姐——岚岚]			--
--							--
--		224575,277025				--
----------------------------------------------------------

---------------加血恢复的判定


----------------普通对话开始
function r_talk04 ()

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 1, "Gina: Hello! I am Nurse Gina. Look for me if you are sick or injured!" )
	Text( 1, "Greater Heal", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 1, "Heal", MultiTrigger,GetMultiTrigger(),2)
	--Text( 1, "Build Ship", JumpPage, 10)

	Talk( 2, "Gina: Sorry, healing requires 200G. You do not have enough…" )

	Talk( 3, "Gina: Sorry! Healing requires 50G…You do not have enough…" )

	Talk( 4, "I do not have any letter. I guess you got the wrong person" )

	Talk( 5, "Ya? Forget it...Thank you. Take this reward for your hard work." )
		
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 6, "Gina: Hello! I am Nurse Gina. Look for me if you are sick or injured!" )
	Text( 6, "Greater Heal", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 6, "Heal", MultiTrigger,GetMultiTrigger(),2)
	

	InitTrigger()
	TriggerCondition( 1, HasMission, 53 )
	TriggerCondition( 1, HasFlag, 53, 1 )
	TriggerCondition( 1, NoRecord, 53 )
	TriggerCondition( 1, NoFlag, 53, 4 )
	TriggerCondition( 1, HasItem, 2304, 1 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )
	AddNpcMission	(1048)
	AddNpcMission	(1210)
	AddNpcMission	(920)-----------------------------------------
	AddNpcMission	(921)

	MisListPage(6)
	
	-----铁人六项
	AddNpcMission ( 6117 )
	AddNpcMission ( 6118 )
	AddNpcMission ( 6119 )
	AddNpcMission ( 6120 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护士小姐——岚岚         结束咯



----------------------------------------------------------
----							--
--							--
--		白银城[酒吧女 - 蒂娜]			--
--							--
--		225325,278875				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk05 ()

	Talk( 1, "Donna: Hi, I am Donna. Are you a sailor? Have you been to the legendary Galley Isle? Tell me the stories if you have." )
	Text( 1, "Buy Wine", BuyPage )
	Text(1, "regarding fame",JumpPage,4)
	--Text(1, "Royal Pirate Reputation Redemption",JumpPage,7)
	InitTrade()
	Other(	3916	)

	Talk( 2, "Donna: Heard you have run out of Eight Treasure Wine. I have one left though. If you would like to purchase it, bring me 100000G." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 4072, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "Eight Treasures Wine", MultiTrigger,GetMultiTrigger(),1)

	Talk( 3, "Donna: It seems that you do not have enough gold. Wine is not for the poor. Come back when you have earned enough." )

	Talk(4,"Reputation is very important. Those who are extremely helpful will in turn obtain more reputation! You can redeem these reputation points for rewards here")
	Text(4,"I have faith in my reputation. I come to redeem the rewards.", JumpPage,5)

	Talk(5,"The current rewards for redemption are as follows. When you redempt your rewards, I'll minus your fame.")
	InitTrigger()
	TriggerCondition( 1, HasCredit,20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 20 )
	TriggerAction( 1, GiveItem, 2602,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"Novice Endeavor Emblem: Requires 20 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,200 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 200 )
	TriggerAction( 1, GiveItem, 2603,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"Standard Endeavor Emblem: Requires 200 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 2000 )
	TriggerAction( 1, GiveItem, 2604,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"Expert Endeavor Emblem: Requires 2000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)
	Talk(6,"Please make sure that there are empty slots in your inventory and your inventory is not binded. Either that you do not have sufficient reputation points. Help more people before you come back looking for me. Let me tell you a secret...If you are willing to accept a disciple...",CloseTalk)

	Talk(7,"Hi! This is the Royal Pirates! We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption.")
	InitTrigger()
	TriggerCondition( 1, HasCredit,500 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 500 )
	TriggerAction( 1, GiveItem, 855,5,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"5 fairy coins: Requires 500 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 5000 )
	TriggerAction( 1, GiveItem, 3094,3,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"Amplifier of Strive x3: Requires 5000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,20000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 20000 )
	TriggerAction( 1, GiveItem, 0610,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"1 Novice Self Destruct: Requires 20000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,50000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 50000 )
	TriggerAction( 1, GiveItem, 0885,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"Lv1 Refining Gem: Requires 50000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,200000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 200000 )
	TriggerAction( 1, GiveItem, 0862,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"Gem of Colossus x1: Requires 200000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,600000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 600000 )
	TriggerAction( 1, GiveItem, 1012,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"1 Gem of Soul: Requires 600000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(8,"Welcome to the Royal Pirates! Work harder to achieve your aim!")

	InitTrigger()
	TriggerCondition( 1, HasRecord, 255 )
	TriggerCondition( 1, NoItem, 4072, 1 )
	TriggerCondition( 1, NoRecord, 242 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )


	Start( GetMultiTrigger(), 1 )

	MisListPage(2)

	AddNpcMission ( 268 )
	AddNpcMission ( 269 )
	AddNpcMission ( 288 )
	AddNpcMission ( 502 )
	AddNpcMission ( 334 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<酒吧女 - 蒂娜结束



----------------------------------------------------------
--							--
--							--
--		白银城[小山车]				--
--							--
--		219350,273050				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk06 ()
	
	
	Talk( 1, "Little Daniel: Young adventurers should not be afraid to explore the world. There are many beautiful things waiting to be discovered. Have you been to the great shrine in the desert? How about the Lone Tower in the deep Sacred forest?" )
	--Text( 1, "Learn Navigation Skill", BuyPage )
	Text( 1, "I do not have time for story now.", CloseTalk)
	Text(1,"Show Little Daniel those Robot Cores in your inventory",JumpPage,2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3933, 10 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeItem, 3933, 10 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, GiveItem, 1812, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Little Daniel: Oh my...I did not expect you to bring so many mechanical core. Bring me 10 Robot Core and 5000G so that I can make a Ancient Generator for you." )
	Text( 2, "Ok I will pay the (5000G) fee",  MultiTrigger, GetMultiTrigger(), 1 )
	Text( 2, "Let me consider", CloseTalk)

	Talk(3, "Little Daniel: Keep it well. This is the Ancient Generator that you will need to get inside Forsaken City. Come to me if you need more.")

	Talk(4, "Little Daniel: Sorry, you need to give me 10 Robot Cores and 5000G to make 1 Ancient Generator.")

	InitTrade()
	Other(	3243	)
	Other(	3244	)
	Other(	3245	)
	Other(	3246	)
	Other(	3247	)
	Other(	3248	)
	Other(	3249	)
	Other(	3250	)
	Other(	3251	)
	Other(	3252	)
	Other(	3253	)
	Other(	3254	)
	Other(	3255	)
	Other(	3256	)
	Other(	3257	)
	Other(	3258	)
	Other(	3259	)
	Other(	3260	)
	Other(	3261	)
	Other(	3262	)
	Other(	3263	)
	Other(	3264	)
	Other(	3265	)
	Other(	3266	)
	Other(	3267	)
	Other(	3268	)
	Other(	3269	)
	Other(	3270	)
	Other(	3271	)
	Other(	3272	)
	Other(	3273	)
	Other(	3274	)
	Other(	3275	)
	Other(	3276	)
	Other(	3277	)
	Other(	3278	)
	Other(	3279	)
	Other(	3280	)
	Other(	3281	)
	Other(	3282	)
	Other(	3283	)
	Other(	3284	)
	Other(	3285	)
	Other(	3286	)
	Other(	3287	)
	Other(	3288	)
	Other(	3289	)
	Other(	3290	)
	Other(	3291	)
	Other(	3292	)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3933, 10 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 748 )
	AddNpcMission	(1045)
	AddNpcMission	(1099)
	AddNpcMission	(1157)
	AddNpcMission	(758)
	AddNpcMission	(103)
	AddNpcMission	(191)
	AddNpcMission	(192)
	AddNpcMission	(193)
	AddNpcMission	(197)
	AddNpcMission(	1225	)
	AddNpcMission(	503	)
	AddNpcMission	(330)
	AddNpcMission	(331)
	AddNpcMission	(332)
	AddNpcMission	(335)
	AddNpcMission	(359)
	AddNpcMission	(360)
	AddNpcMission	(361)
	AddNpcMission	(362)
	AddNpcMission	(363)
	AddNpcMission	(364)
	AddNpcMission	(365)
	AddNpcMission	(366)
	AddNpcMission	(367)
	AddNpcMission	(368)
	AddNpcMission	(369)
	AddNpcMission	(370)
	AddNpcMission	(371)
	AddNpcMission	(522)
------------eleven
	AddNpcMission	(5058)
	AddNpcMission	(5062)
	

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<小山车结束






----------------------------------------------------------
--							--
--							--
--		白银城[杂货商人 - 吉普立]			--
--							--
--		225075,277025				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk07 ()

	Talk( 1, "Jimberry: Hi, welcome! How can I help you?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )
	Text( 1, "Redeem Reality Mask",JumpPage, 2 )

	InitTrade()
	Other(	3297	)
	Other(	3298	)
	Other(	3164	)
	Other(	3160	)
	Other(	3161	)
	Other(	3165	)
	Other(	3238	)
	Other(	3170	)
	Other(	3293	)
	Other(	3174	)
	Other(	3163	)
	Other(	3176	)
	Other(	3180	)
	Other(	3179	)
	Other(	3177	)
	Other(	3168	)
	Other(	3162	)
	Other(	3166	)
	Other(	3167	)
	Other(	3172	)
	Other(	3173	)
	Other(	3227	)
	Other(	3231	)
	Other(	3228	)
	Other(	3229	)
	Other(	3230	)
	Other(	3232	)
	Other(	3233	)
	Other(	3234	)
	Other(	3235	)
	Other(	3236	)
	Other(	3237	)
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other(	3296	)
	Other(	3299	)
	--baby--生活技能书Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--leo
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
	Other(  2440    )
	--AddNpcMission	(5501)


	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "To obtain a Reality Mask requires 1 Elven Signet, 10000G and any of 10x Lv3 gathered resource" )
	Text( 2, "Bones to change a Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "Exchange Razor Tooth for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Crystal Eolith to change a Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Teak Wood Log to change a Reality Mask ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Bubble Fish to change a Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Jimberry: Keep it well, this is important!" )
	Talk( 4, "Jimberry: You do not seem to have enough materials. Your inventory may be binded or you do not have enough free slots." )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<杂货商人 - 吉普立结束


----------------------------------------------------------
--							--
--							--
--		白银城[居民·玛格丽特]			--
--							--
--		227459,277722				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk08 ()

	Talk( 1, "Margaret: You...Hahaha...Hello. Yesterday on television...Hahaha...Did you watch it. Hohoho...Its so funny! Hahaha..." )
	Text( 1, "Bake Pastry", JumpPage, 2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Margaret: You have good foresight! Not that I am boosting, but I watched the \"Iron Chef\" on television daily! The foodstuff I made are just delicious. Hehe" )
	Text( 2, "Mix Elven Fruit Juice", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3117, 10 )
	TriggerAction( 1, TakeItem, 3117, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3123, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Brew Red Date Tea", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3118, 10 )
	TriggerAction( 1, TakeItem, 3118, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3124, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2, "Make Mushroom Soup", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3119, 10 )
	TriggerAction( 1, TakeItem, 3119, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3125, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 2, "Mix Stramonium Juice", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3120, 10 )
	TriggerAction( 1, TakeItem, 3120, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3126, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "Make Ice Cream", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Margaret: This is what you wanted. No more no less." )
	Talk( 4, "Margaret: Sorry, you do not have the required items. Elven Fruit Juice needs 10 Elven Fruits and 1 Glass to mix." )
	Talk( 5, "Margaret: Sorry, you do not have the required items. Red Date Tea needs 10 Red Dates and 1 Glass to make." )
	Talk( 6, "Margaret: Sorry, you do not have the required items. Mushroom Soup requires 10 Mushroom and 1 Glass to make." )
	Talk( 7, "Margaret: Sorry, you do not have the required items for the recipe. It requires 10 Stramonium Fruits and 1 Glass to mix." )
	Talk( 8, "Margaret: Sorry! You do not have the required items. You need 10 Ice Fruits and 1 Glass to make an Ice Cream." )
	AddNpcMission	(1023)
	AddNpcMission	(1080)
	AddNpcMission	(1135)
	AddNpcMission	(1186)
	AddNpcMission(	1223	)
	




end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<居民·玛格丽特


----------------------------------------------------------
--							--
--							--

	--白银城[旅店老板·玛拉依兰]		--
--							--
--		221150,278125				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk09 ()
	
	
	Talk( 1, "Marriam: Hi, I am the Innkeeper. Want to stay for a few days? Or maybe a new hairstyle?" )		
	Text( 1, "Decoct Hair Colorant", JumpPage, 2)
	
	--Text(1, "Cooking delicious turkey meat", JumpPage, 10)
	--Text(1, "Cook Christmas Dinner", JumpPage, 13)
	
	
---------------------烹调美味的火鸡肉
	InitTrigger()
	TriggerCondition( 1, HasItem, 2886, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2886,10 )
	TriggerAction( 1, GiveItem, 2895, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 10, "Marriam: I need 10 Turkey Meat. Theres also a fee of 10000G.")
	Text(10, "Confirm to cook",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(11, "Marriam: This is the Tasty Turket Meat that I have cooked. How do it taste?" )

	Talk( 13, "Marriam: Everyone can only make Christmas Dinner three times!")
	Text(13, "The first Christmas Cooking Contest",  JumpPage, 15)
	Text(13, "Second Set of Christmas Dinner",  JumpPage, 16)
	Text(13, "Third time making Christmas Dinner", JumpPage, 17)
	---------------------烹调圣诞大餐
	InitTrigger()
	TriggerCondition( 1, NoRecord, 815 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 815 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 14 )
	Talk( 15, "To make a good Christmas Dinner is not simple. I required 10 slices of Tasty Turkey Meat and 1 Christmas Rose. Christmas Rose seems to be found in the Item Mall. Beside paying me 10000G for the troublle, you can only make the Christmas Dinner 3 times.")
	Text( 15, "Confirm to cook",  MultiTrigger, GetMultiTrigger(), 1)

	

	---------------------烹调圣诞大餐
	InitTrigger()
	TriggerCondition( 1, HasRecord, 815 )
	TriggerCondition( 1, NoRecord, 816 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney,1000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction(1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 816 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 18 )
	Talk(16, "Making Christmas Dinner again? I required 10 slices of Tasty Turkey Meat and 1 Christmas Rose. Christmas Rose seems to be found in the Item Mall. Beside paying me 1000000G for the troublle, you can only make the Christmas Dinner 3 times.")
	Text( 16, "Confirm to cook",  MultiTrigger, GetMultiTrigger(), 1)

	---------------------烹调圣诞大餐
	InitTrigger()
	TriggerCondition( 1, HasRecord, 816 )
	TriggerCondition( 1, NoRecord, 817 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 817 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage,19 )
	Talk(17, "Making Christmas Dinner again? I required 10 slices of Tasty Turkey Meat and 1 Christmas Rose. Christmas Rose seems to be found in the Item Mall. Besides paying me 10000G for the troublle, you can only make the Christmas Dinner 3 times.")
	Text( 17, "Confirm to cook",  MultiTrigger, GetMultiTrigger(), 1)
	Talk( 14, "Marriam: You do not seem to have enough cookling material or money! You need to have 1 free slot. Is it your first time making christmas dinner? You can only make 3.")
	Talk( 18, "Marriam: You do not seem to have enough material for cooking or Gold. You need at least 1 empty slot in your inventory. Are you sure its your second time making Christmas dinner? You can only do it three times.")
	Talk( 19, "Marriam: You do not seem to have sufficient ingredient for cooking or gold! You need to have at least a free space in your inventory. Are you sure about cooking for the 3rd time? Each person is limit to 3 times.")
	Talk( 12, "Marriam: You do not seem to have sufficient ingredient for cooking or gold! You need to have at least a free space in your inventory.")
------------------调配红色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1787, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1787, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1797, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Marriam: Keeping the same color of hairdo will make you a boring person. I can decoct colored hair dyes for you if you wish." )
	Text( 2, "Decoct Red Colorant", MultiTrigger, GetMultiTrigger(), 1)
---------------------调配橙色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1788, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1788, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1798, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Decoct Orange Colorant", MultiTrigger, GetMultiTrigger(), 1)
---------------------调配黑色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 4606, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 4606, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 4607, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "Decoct Black Colorant", MultiTrigger, GetMultiTrigger(), 1)
---------------------调配褐色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 4608, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 4608, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 4609, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 2, "Decoct Brown Colorant", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Marriam: Look! Its done! Take this nice colorant with you." )
	Talk( 4, "Marriam: Red Colorant requires 5 Red Dye, 1 Special Gas, 1 Rainbow Glass and a 200G fee." )
	Talk( 5, "Marriam: Orange Colorant requires 5 Orange Dye, 1 Special Gas, 1 Rainbow Glass and 200G to decoct." )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 2 )
	TriggerAction( 1, AddExp, 116688305, 116688305 )
	TriggerAction( 1, AddExpAndType,2,370500,370500)
	TriggerAction( 1, AddMoney, 1000000 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 6, "Marriam: To test PK, I will make you Lv 65 and add 1 million gold for you." )
	Text( 6, "Ok", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "Marriam: I only give this chance to level 1 new players." )

	Talk( 8, "Marriam: Black Colorant requires 5 Black Dye, 1 Special Gas, 1 Rainbow Glass and 200G to decoct." )
	Talk( 9, "Marriam: Brown Colorant requires 5 Brown Dye, 1 Special Gas, 1 Rainbow Glass and also 200G." )

	AddNpcMission	(1029)
	AddNpcMission	(1192)
	------------二月-----------情为何物-----------倾城之恋------------幸运猪猪----------七猪开泰
	--AddNpcMission	(5505)
	--AddNpcMission	(5506)
	--AddNpcMission	(5508)
	--AddNpcMission	(5509)
	--AddNpcMission	(5536)

end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<旅店老板·玛拉依兰




----------------------------------------------------------
--							--
--							--
--		白银城[佛姆]				--
--							--
--		222629,272668				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk11 ()
	
	
	Talk( 1, "Forbei: I have a riddle for you, what is 1 plus 1? Hoho, its 2! Isn't it funny? No? Let me change another…Wait! Don't go!" )
	AddNpcMission	(1009)
	AddNpcMission	(1173)

	-----铁人六项
	AddNpcMission ( 6123 )
	AddNpcMission ( 6124 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<佛姆



----------------------------------------------------------
--							--
--							--
--		白银城[水手·海云]			--
--							--
--		235013,284694				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk12 ()
	
	
	Talk( 1, "Coddy: Hi, I am Sailor Coddy." )

--	InitTrigger()
--	TriggerCondition( 1, HasMission, 1043 )
--	TriggerCondition( 1, HasRecord, 1042 )
--	TriggerCondition( 1, NoRecord, 1058 )
--	TriggerAction( 1, JumpPage, 2 )
--	TriggerFailure( 1, JumpPage, 3 )
--	Text( 1, "First question",MultiTrigger, GetMultiTrigger(), 1 )
--
--	InitTrigger()
--	TriggerAction( 1, SetRecord, 1044 )
--	TriggerAction( 1, SetRecord, 1058 )
--	TriggerAction( 1, JumpPage, 4 )
--	Talk( 2, "Is killing Mystic Shrubs fun?")
--	Text( 2, "Good",MultiTrigger, GetMultiTrigger(), 1 )
--
--	InitTrigger()
--	TriggerAction( 1, SetRecord, 1045 )
--	TriggerAction( 1, SetRecord, 1058 )
--	TriggerAction( 1, JumpPage, 5 )
--	Text( 2, "Not happy",MultiTrigger, GetMultiTrigger(), 1  )
--
--
--	Talk( 3, "Who are you? I do not know you!")
--	Talk( 4, "Good? Let's continue.")
--	Talk( 5, "No satisfied? Let's change another for you to kill")

	AddNpcMission	(1039)
	AddNpcMission	(1202)
	AddNpcMission	(80)
	AddNpcMission	(81)
	AddNpcMission	(79)
	----------------吉尼斯-海云---01
	AddNpcMission	(5510)
--	AddNpcMission ( 6061 )
--	AddNpcMission ( 6062 )
--	AddNpcMission ( 6063 )
--	AddNpcMission ( 6064 )
--	AddNpcMission ( 6065 )
--	AddNpcMission ( 6066 )
--	AddNpcMission ( 6067 )
--	AddNpcMission ( 6068 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<水手·海云


----------------------------------------------------------
--							--
--							--
--		白银城[银行出纳·摩妮雅]			--
--							--
--		222050,270400				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk13 ()
	
	
	Talk( 1, "Monica: Hi, I am Banker Monica. Accounts can never go wrong with me around." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Vault (200G Fee)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Sorry, you do not have sufficient gold to pay for vault usage" )

	AddNpcMission	(1050)
	AddNpcMission	(1212)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<银行出纳·摩妮雅

----------------------------------------------------------
--							--
--							--
--		白银城[海军少将·威尔斯]			--
--							--
--		230228,270157				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk14 ()
	
	
	Talk( 1, "William: Hi, I am General William. The highest authority around here." )
	

	InitTrigger()
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, GiveItem, 4082, 1, 4)
	Talk( 2, "William: What? What! You lost your token? The Chairman will not admit to anything without it! Luckily I still have another. I spend 20000G to get it but you can buy from me.")
	Text( 2, "Ok, I will buy a Bounty Token", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasMission, 248 )
	TriggerCondition( 1, NoItem, 4082, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, HasRecord, 249 )
	TriggerCondition( 2, NoRecord, 250 )
	TriggerCondition( 2, NoItem, 4082, 1 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerFailure( 2, JumpPage, 1 )

	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 207 )
	AddNpcMission ( 208 )
	AddNpcMission ( 209 )
	AddNpcMission ( 212 )
	AddNpcMission ( 213 )
	AddNpcMission ( 216 )
	AddNpcMission ( 274 )
	AddNpcMission ( 275 )
	AddNpcMission ( 276 )
	AddNpcMission	(1016)
	AddNpcMission	(1179)
	AddNpcMission	(69)
	AddNpcMission	(70)
	AddNpcMission	(71)
	AddNpcMission	(194)
	AddNpcMission	(195)
	AddNpcMission	(196)
	AddNpcMission	(318)
	AddNpcMission	(323)
	AddNpcMission	(324)
----------eleven
	AddNpcMission	(5053)

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海军少将·威尔斯



----------------------------------------------------------
--							--
--							--
--		白银城[沙岚城大使·席巴]			--
--							--
--		225648,270640				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk15 ()
	
	
	Talk( 1, "Xiba: Although I am an Ambassador, I need some time for myself too…Life cannot be just about work. You need to play to balance it too!" )

	AddNpcMission	(1032)
	AddNpcMission	(1195)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<沙岚城大使·席巴


----------------------------------------------------------
--							--
--							--
--		白银城[白银城商会会长·劳伦迪马斯]		--
--							--
--		224207,274850				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk16 ()
	
	
	Talk( 1, "Ronnie: I am the chairman who is in-charge of all commerce trading in Argent City. I can train you to become the richest Merchant in Ascaron." )
	
	AddNpcMission ( 271 )
	AddNpcMission ( 277 )
	AddNpcMission ( 278 )
	AddNpcMission ( 280 )
	AddNpcMission ( 286 )
------------1.7
	AddNpcMission (5076 )
	AddNpcMission (5077 )
	AddNpcMission (5078 )
	AddNpcMission (5079 )
	AddNpcMission (5088 )
	AddNpcMission (5110 )
	AddNpcMission (5112 )
	AddNpcMission (5114 )
	AddNpcMission (5116 )
	AddNpcMission (5147 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<白银城商会会长·劳伦迪马斯

----------------------------------------------------------
--							--
--							--
--		白银城[老者·糊涂山人]			--
--							--
--		227208,270036				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk17 ()
	
	
	Talk( 1, "Blurry: The strawberry biscuit made by Beldi is so delicious!" )

	AddNpcMission ( 266 )
	AddNpcMission ( 267 )
	AddNpcMission ( 270 )
	AddNpcMission ( 272 )
	AddNpcMission ( 273 )
	AddNpcMission ( 337 )
	AddNpcMission ( 338 )
	AddNpcMission ( 554 )
	AddNpcMission ( 555 )
	AddNpcMission ( 901 )
	---------------白羊
	AddNpcMission	(5557)
	AddNpcMission	(5558)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<老者·糊涂山人

----------------------------------------------------------
--							--
--							--
--		白银城[会长助理·罗伊]			--
--							--
--		224075,275275				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk18 ()
	
	
	Talk( 1, "Rouri: Hmm…I am wandering what secret does our chairman has? I am really interested to find out…" )
	
	AddNpcMission ( 76 )
	AddNpcMission ( 77 )
	AddNpcMission ( 78 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<会长助理·罗伊

----------------------------------------------------------
--							--
--							--
--		白银城[路人·甲]				--
--							--
--		221588,282819				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk19 ()
	
	
	Talk( 1, "Passerby A: Of all the sea monsters, Bubble Clam are the most fearsome. Its true. I have seen one at the port this big. If Sakura 13 hadn't shot a dart at it, those living by the shore would have been done for." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·甲

----------------------------------------------------------
--							--
--							--
--		白银城[酒鬼·芬德内]			--
--							--
--		236002,281965				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk20 ()
	
	
	Talk( 1, "Anthony: What? You want to find out something from me? Then you have found the right guy. However, only money talk. You have to pay for all information. Please input '/?keyword' into your text back for enquiry." )
	
	AddNpcMission ( 500 )
	AddNpcMission ( 501 )
	AddNpcMission ( 358 )
	AddNpcMission ( 372 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<酒鬼·芬德内

----------------------------------------------------------
--							--
--							--
--		白银城[少年·唐德]			--
--							--
--		196225,269425				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk21 ()
	
	
	Talk( 1, "Tommy: Hi, I am Tommy. What about you? Monsters are running rampant these days." )
	
	AddNpcMission ( 210 )
	AddNpcMission ( 211 )
	AddNpcMission	(1034)
	AddNpcMission	(1197)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<少年·唐德

----------------------------------------------------------
--							--
--							--
--		白银城[制造师·德萨克]			--
--							--
--		173269,278261				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk22 ()
	
	
	Talk( 1, "Desmond: Our artisan works are better than you humans, but you humans are just too arrogant to admit." )
	
	AddNpcMission	(1054)
	AddNpcMission	(1216)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<制造师·德萨克


----------------------------------------------------------
--							--
--							--
--		白银城[D版商·走私兔]			--
--							--
--		2298,2520				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk23 ()
	
	
	Talk( 1, "Smuggling Bunny: Banned items? You name it, I have it! What do you need?" )
	
	AddNpcMission	(1000)
	AddNpcMission	(1164)
			--------愚人节
	--AddNpcMission	(5601)
	--AddNpcMission	(5602)
	--AddNpcMission	(5603)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<D版商·走私兔


----------------------------------------------------------
--							--
--							--
--		雷霆堡[海军司令官·德斯塔罗]		--
--							--
--		71350,141619				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk24 ()
	
	
	Talk( 1, "Dessaro: Hi, I am the highest in command in Thundoria. Do you wish to join us?" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerCondition( 1, NoGuild )
	TriggerAction( 1, CreateGuild, 0 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Create a Navy Guild", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "Dessaro: To become a guild leader of the Navy Division, you will need to pay 100000G and bring a Stone of Oath to prove your loyalty." )
        
	AddNpcMission	(566)
	AddNpcMission	(477)
	AddNpcMission	(478)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海军司令官·德斯塔罗


----------------------------------------------------------
--							--
--							--
--		雷霆堡[酒吧服务员·米娜]			--
--							--
--		99053,133465				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk25 ()
	
	
	Talk( 1, "Mona: Hi! Do you know the famous pirate, Sakura 13? She is my idol! I wish to leave this boring place and be a pirate like her!" )
	AddNpcMission	(1022)
	AddNpcMission	(1079)
	AddNpcMission	(1134)
	AddNpcMission	(1185)
	AddNpcMission	(378)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<酒吧服务员·米娜

----------------------------------------------------------
--							--
--							--
--		雷霆堡[水手·迪奥]			--
--							--
--		108330,128563				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk26 ()
	
	
	Talk( 1, "Hi! I am Sailor Dio. Becareful when you are out in the open sea. There are many ferocious monsters out there, especially those sharks. They are demons…and they will bite off your leg! Just like mine! Oh no!...My leg!" )
	AddNpcMission	(1038)
	AddNpcMission	(1092)
	AddNpcMission	(1150)
	AddNpcMission	(1201)
----------------吉尼斯---水手·迪奥--01
	AddNpcMission (5535 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<水手·迪奥






----------------------------------------------------------
--							--
--							--
--		雷霆堡[军医·玛沙]			--
--							--
--		77300,154900				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk28 ()
	
	
	Talk( 1, "Masa: Anything wrong with you? I am the military doctor of Thundoria. Don't look for me if its only a small cut." )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)

	AddNpcMission	(1024)
	AddNpcMission	(1081)
	AddNpcMission	(1136)
	AddNpcMission	(1187)
	----------------1.7
	AddNpcMission (5130 )
	AddNpcMission (5131 )
	AddNpcMission (5132 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<军医·玛沙

----------------------------------------------------------
--							--
--							--
--		雷霆堡[银行出纳·玛卡多]			--
--							--
--		74300,153400				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk29 ()
	
	
	Talk( 1, "Macurdo: Hi, welcome to Thundoria Bank." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Vault (200G Fee)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Sorry, you do not have sufficient gold to pay for vault usage" )

	AddNpcMission	(1049)
	AddNpcMission	(1103)
	AddNpcMission	(1159)
	AddNpcMission	(1211)
	AddNpcMission	(320)
	AddNpcMission	(375)
	AddNpcMission	(376)
	AddNpcMission	(377)
	AddNpcMission	(432)
	AddNpcMission	(560)
	AddNpcMission	(561)
	AddNpcMission	(542)
	AddNpcMission	(562)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<银行出纳·玛卡多


----------------------------------------------------------
--							--
--							--
--		雷霆堡[铁匠·佛朗哥]			--
--							--
--		76662,144769				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk30 ()
	
	
	Talk( 1, "Furlington: Eh? Smelting? Hehe!" )
	Text( 1, "Refine", JumpPage, 2)
	Text( 1, "Nothing...",CloseTalk )


----------------炼制水晶砂碎片
	InitTrigger()
	TriggerCondition( 1, HasItem, 1784, 10 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1784, 10 )
	TriggerAction( 1, GiveItem, 1785, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Furlington: Forge…forge…forge…All I do all day long is forge items…zzZZz" )
	Text( 2, "Refine Clarion Fragment",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3, "Furlington: This Clarion Crystal is made from the fragments. Keep it well. Look for me again." )
	Talk( 4, "Furlington: I can refine 10 Clarion Sand into a Clarion Fragment. You need to pay 200G for my service." )
	AddNpcMission	(1042)
	AddNpcMission	(1094)
	AddNpcMission	(1153)
	AddNpcMission	(1205)


	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<铁匠·佛朗哥
----------------------------------------------------------
--							--
--							--
--		雷霆堡[少女·辛蒂]			--
--							--
--		74026,145143				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk31 ()
	
	
	Talk( 1, "Cindy: Hi, I love cute stuff. If you come across any cute items, keep for me!" )
	
	--Text( 1, "Vampiric Aries Palace (Horoscope Quest)", JumpPage,6 )
	--Text( 1, "Sailor Completion Reward", JumpPage,8 )
	--Text( 1, "Pirate Completion Reward", JumpPage,11 )
	--Text( 1, "Captain completion reward", JumpPage,12 )
	Text( 1, "Decoct Hair Colorant", JumpPage, 2)

	Talk( 6, "Cindy: Please select the difficulty, in ascending order from Sailor to Captain. Greater rewards awaits those who chosen a tougher challenge. Have you come to a decision? Do not regret." )

	InitTrigger()
	TriggerCondition( 1, NoRecord,834 )
	TriggerCondition( 1, NoRecord,835 )
	TriggerAction( 1, SetRecord, 833 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "Sailor",MultiTrigger_1, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,833 )
	TriggerCondition( 1, NoRecord,835 )
	TriggerAction( 1, SetRecord, 834 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "Pirate",MultiTrigger_2, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,834 )
	TriggerCondition( 1, NoRecord,833 )
	TriggerAction( 1, SetRecord, 835 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "Captain",MultiTrigger_3, GetMultiTrigger(), 1)

	Talk( 7, "Cindy: Good luck!" )
  



	InitTrigger()
	TriggerCondition( 1, HasRecord,833 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )
	TriggerAction( 1, SetLog  , 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 1 , 4)
	TriggerAction( 1, AddMoney, 10000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 8, "Cindy: Collect 7 Emblems to change for the Seal of Aries and the ticket to the next palace. There will also be other rewards" )
	Text( 8, "Confirm to exchange",MultiTrigger_0, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasRecord,834 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 3 , 4)
	TriggerAction( 1, AddMoney, 50000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 11, "Cindy: Collect 7 Emblems to change for the Seal of Aries and the ticket to the next palace. There will also be other rewards" )
	Text( 11, "Confirm to exchange",MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasRecord,835 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 5 , 4)
	TriggerAction( 1, AddMoney, 80000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 12, "Cindy: Collect 7 Emblems to change for the Seal of Aries and the ticket to the next palace. There will also be other rewards" )
	Text( 12, "Confirm to exchange",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 10, "Cindy: You do not seem to have enough emblems. Please check to see if your inventory has been binded, and make sure that you have at least 3 free slots. Also, are you sure about the difficulty that you have chose?")
	Talk( 9, "Cindy: Taurus Palace has many difficult challenges!")
	Talk( 13, "Cindy: You can only chose the difficulty level once while challenging Aries Palace")

	InitTrigger()
	TriggerCondition( 1, HasItem, 1789, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1789, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1799, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Cindy: Want to have the same hair color as me? Let me help you mix the hair colourant." )
	Text( 2, "Decoct Yellow Colorant",MultiTrigger, GetMultiTrigger(), 1)
---------------调配绿色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1790, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1790, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1800, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Decoct Green Colorant",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Cindy: I am still new to this art. Please be patient. This is the colorant you needed." )
	Talk( 4, "Cindy: I can make Yellow Colorant. You will need to give me 5 Yellow Dye, 1 Special Gas, 1 Rainbow Glass and 200G." )
	Talk( 5, "Cindy: I can make Green Colorant. You need to bring me 5 Green Dye, 1 Special Gas, 1 Rainbow Glass and 200G." )
	AddNpcMission	(1036)
	AddNpcMission	(1090)
	AddNpcMission	(1148)
	AddNpcMission	(1199)
	AddNpcMission	(867)
	AddNpcMission	(863)
	------------------------------------------
	AddNpcMission	(5536)
	AddNpcMission	(5537)
	AddNpcMission	(5538)
	AddNpcMission	(5539)
	AddNpcMission	(5540)
	AddNpcMission	(5541)

	AddNpcMission	(5542)
	AddNpcMission	(5543)
	AddNpcMission	(5544)
	AddNpcMission	(5545)
	AddNpcMission	(5546)
	AddNpcMission	(5547)

	AddNpcMission	(5548)
	AddNpcMission	(5549)
	AddNpcMission	(5550)
	AddNpcMission	(5551)
	AddNpcMission	(5552)


	AddNpcMission	(5597)
	AddNpcMission	(5600)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<少女·辛蒂


----------------------------------------------------------
--							--
--							--
--		雷霆堡[沙岚驻雷霆堡大使·埃德加]		--
--							--
--		71220,150827				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk32 ()
	
	
	Talk( 1, "Alix: Hi, I am the Shaitan Ambassador Alix. Have you been there recently? I miss that place." )
	AddNpcMission	(1033)
	AddNpcMission	(1088)
	AddNpcMission	(1145)
	AddNpcMission	(1196)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<沙岚驻雷霆堡大使·埃德加

----------------------------------------------------------
--							--
--							--
--		雷霆堡[道具商人·休布李维斯]		--
--							--
--		74100,156300				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk33 ()
	
	
	Talk( 1, "Wesley: Holla! Welcome welcome! I am also a new citizen in this town. Please visit me often." )

	AddNpcMission	(1008)
	AddNpcMission	(1063)
	AddNpcMission	(1118)
	AddNpcMission	(1172)
	AddNpcMission	(850)
	AddNpcMission	(861)
	AddNpcMission	(868)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<道具商人·休布李维斯

----------------------------------------------------------
--							--
--							--
--		雷霆堡[旅馆老板·玛雅婆婆]		--
--							--
--		69761,154269				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk34 ()
	
	
	Talk( 1, "Granny Maya: Hi, my inn is closed as I am not in good health." )
	AddNpcMission	(1030)
	AddNpcMission	(1086)
	AddNpcMission	(1139)
	AddNpcMission	(1193)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<旅馆老板·玛雅婆婆

----------------------------------------------------------
--							--
--							--
--		雷霆堡[服装店主·迪乐]			--
--							--
--		75450,151200				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk35 ()
	
	
	Talk( 1, "Ditter: Hi! We are closed for the moment" )
	Text( 1, "Nothing...",CloseTalk )
	AddNpcMission	(1010)
	AddNpcMission	(1066)
	AddNpcMission	(1122)
	AddNpcMission	(1174)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<服装店主·迪乐

----------------------------------------------------------
--							--
--							--
--		雷霆堡[白银城驻雷霆堡大使·伊塔多]		--
--							--
--		74171,155325				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk36 ()
	
	
	Talk( 1, "Yata: Only wicked merchants made it big! Haha." )
	AddNpcMission	(1003)
	AddNpcMission	(1058)
	AddNpcMission	(1113)
	AddNpcMission	(1167)
--	AddNpcMission ( 6025 )
--	AddNpcMission ( 6026 )
--	AddNpcMission ( 6027 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<白银城驻雷霆堡大使·伊塔多

----------------------------------------------------------
--							--
--							--
--		雷霆堡[护卫长·迦略克]			--
--							--
--		79600,148800				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk37 ()
	
	
	Talk( 1, "Mallack: Hellow! I am the Guard for Thundoria Castle." )
	Text( 1, "Nothing...",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 1 )
	TriggerCondition( 1, HasItem, 1673, 1 )
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerAction( 1, TakeItem, 1673, 1 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, SetProfession, 10 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 2 )
	TriggerCondition( 2, PfEqual, 1 )
	TriggerCondition( 2, HasItem, 1673, 1 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeItem, 1673, 1 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetProfession, 10  )
	TriggerAction( 2, JumpPage, 3 )
	TriggerFailure( 2, JumpPage, 4 )

	Talk(2, "Pirates and monsters are rampant nowadays. We are lacking of Swordsman to deal with them. Hmm...You look suitable to become a Swordsman. Want to consider being the one to defend the peace?")
	Text(2, "Ok, become a White Knight", MultiTrigger, GetMultiTrigger(), 2)
	Text(2, "No, it is good enough for now.", CloseTalk)

	Talk(3, "Keeping the peace is the job of a White Knight. Please remember this in your heart.")

	Talk(4, "Want to become a White Knight? Come back to me when you have reached Lv 40. You must train your swordsmanship well. Remember to bring 1 Strange Metal Fragment and 20000G as a proof of your training too.")
	

	
	
	
		

	----------转职成为剑盾士
	--TriggerCondition( 1, LvCheck, ">", 39 )
	--TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 1 )
	--TriggerAction( 1, JumpPage, 2 )

	--TriggerCondition( 2, LvCheck, ">", 39 )
	--TriggerCondition( 2, IsCategory, 2 )
	--TriggerCondition( 2, PfEqual, 1 )
	--TriggerAction( 2, JumpPage, 2 )

-------------------转狙击手判断

	AddNpcMission	(1019)
	AddNpcMission	(1074)
	AddNpcMission	(1130)
	AddNpcMission	(1182)
	AddNpcMission	(852)
	AddNpcMission	(855)
	AddNpcMission	(865)
	AddNpcMission	(473)

	MisListPage(5)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护卫长·迦略克

----------------------------------------------------------
--							--
--							--
--		雷霆堡[杂货商人·咕嘟]			--
--							--
--		72500,155100				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk38 ()
	
	
	Talk( 1, "Kudu: Hi! You come at the right moment! We are having a promotion here. Look for me when you are above Lv 10, I can give you special discount for my items. Maybe you will get some experience bonus too!" )
	Text( 1, "Nothing...",CloseTalk )
	AddNpcMission	(1053)
	AddNpcMission	(1107)
	AddNpcMission	(1163)
	AddNpcMission	(1215)

		
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<杂货商人·咕嘟

----------------------------------------------------------
--							--
--							--
--		雷霆堡[少女·罗莉]			--
--							--
--		101653,128642				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk39 ()
	
	
	Talk( 1, "Rioli: You have been to many places. Have you met Navy General William? Since he has been transferred to Argent City, the city is a boring place to be in." )
	AddNpcMission	(1035)
	AddNpcMission	(1089)
	AddNpcMission	(1147)
	AddNpcMission	(1198)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<少女·罗莉

----------------------------------------------------------
--							--
--							--
--		雷霆堡[海军总部指挥官·基.埃斯西准将]	--
--							--
--		80800,152100				--
---------------------2005-3-8-------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk40 ()
	
	
	Talk( 1, "General Ken: I sense that Maxi will come looking for my trouble one day. Even I sent himto guard other outpost, I am sure that he will make some trouble there too. He is always landing me in trouble…" )
	AddNpcMission	(1017)
	AddNpcMission	(1071)
	AddNpcMission	(1127)
	AddNpcMission	(1180)
---------------白羊
	AddNpcMission	(5575)
	AddNpcMission	(5576)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海军总部指挥官·基.埃斯西准将

----------------------------------------------------------
--							--
--							--
--		雷霆堡[海军总部参谋长·玛亚兹少校]		--
--							--
--		65323,150512				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk41 ()
	
	
	Talk( 1, "Colonel Maxi: Hi, I am Colonel Maxi. General Ken delegates me to take care of this place. Hehe! I love to make trouble for him…Hehe!" )
	
	AddNpcMission	(849)
	AddNpcMission	(856)
	AddNpcMission	(858)
	AddNpcMission	(860)
	AddNpcMission	(866)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海军总部参谋长·玛亚兹少校

----------------------------------------------------------
--							--
--							--
--		雷霆堡[摩尔克人后裔·菲儿]		--
--							--
--		65146,158595				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk42 ()
	
	
	Talk( 1, "Freya: Didn't you guys label us as demons? Don't talk to me, arrogant fellow!" )
	
	AddNpcMission	(851)
	AddNpcMission	(853)
	AddNpcMission	(854)
	AddNpcMission	(862)
	AddNpcMission	(864)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<摩尔克人后裔·菲儿

----------------------------------------------------------
--							--
--							--
--		雷霆堡[护卫·尼松]			--
--							--
--		71187,141438				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk43 ()
	
	
	Talk( 1, "Nisson: I am a close friend of Sonny and the both of us are excellent Navy guards." )

	AddNpcMission	(859)
	AddNpcMission	(857)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护卫·尼松

----------------------------------------------------------
--							--
--							--
--		雷霆堡[护卫·松尼]			--
--							--
--		71536,141462				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk44 ()
	
	
	Talk( 1, "Sonny: Good friends do not talk about money." )

	AddNpcMission	(474)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护卫·松尼

----------------------------------------------------------
--							--
--							--
--		雷霆堡[路人·丙]				--
--							--
--		66976,155428				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk45 ()
	
	
	Talk( 1, "Bey: Thundoria has a nice bar near the harbor. But its too far for me to visit." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·丙


----------------------------------------------------------
--							--
--							--
--		雷霆堡[路人·巴比]				--
--							--
--		99475,123473				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk46 ()
	
	
	Talk( 1, "Barbi: Hi, are you an ex-pirate? There are just too much Navy men in Thundoria. The pirates dare not approach!" )
	Text( 1, "Refine", JumpPage, 2)

--------------炼造地金
	InitTrigger()
	TriggerCondition( 1, HasItem, 1782, 10 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 1782, 10 )
	TriggerAction( 1, GiveItem, 1783, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Barbi: My job is to combine those ore fragment into a big ore." )
	Text( 2, "Refine Terra Gold", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Barbi: I will give Terra Gold Ore to you. Do not regret in the future." )
	Talk( 4, "Barbi: Terra Gold? Bring me 10 Terra Gold Ores and 2000G in exchange." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·巴比

----------------------------------------------------------
--							--
--							--
--		沙岚城[大神官·甘地维拉]			--
--							--
--		86299,350092				--
 
-----------------------------------------------------------这里开始P话聊天
function r_talk47 ()
	
	
	Talk( 1, "Gannon: Hello, my friend. May the Goddess Kara bless you. I'm High Priest Gannon of Shaitan City" )
	Text( 1, "Research Runestone", JumpPage, 2)
        Text( 1, "Combine Treasure Map", JumpPage, 7)
        Text( 1, "Illusion Fragment to change a Blueprint", JumpPage, 9)
	Text( 1, "Illusion Heart to exchange for Lv 60 ring", JumpPage, 10)

	Talk( 2, "Gannon: I am doing some research on ancient runestones. If you bring me enough, I will exchange them for something good." )
	Text( 2, "Regarding Skeletar set items", JumpPage, 3)
	Text( 2, "Regarding Incantation set", JumpPage, 4)
	Text( 2, "Regarding Evanescence set items", JumpPage, 5)
	Text( 2, "Regarding Enigma set items", JumpPage, 6)
	
	Talk( 3, "Gannon: Skeletar set items belong to Lv 30 equipments from Forsaken City. You will need to pass me 10 Nal Runestones and 10 Sol Runestones. You can select the related class too." )
	--------------骷髅之剑士宝箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3400, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "Obtain Swordsman equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------骷髅之猎人宝箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3401, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "Obtained Hunter equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------骷髅之药师宝箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3402, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "Obtained Herbalist equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------骷髅之冒险者宝箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3403, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "Obtained Explorer equipment", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "Gannon: Incantation set items are Lv 40 equipments from Forsaken City and Dark Swamp. You need to bring me 10 El Runestone and 10 Cam Runestone in exchange. You can select the class for the equipment." )
	--------------咒术之双剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3404, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtained Crusader equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------咒术之巨剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3405, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtained Champion equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------咒术之狙击手装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3406, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtained Sharpshooter equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------咒术之圣职者装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3407, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtain Cleric equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------咒术之封印师装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3408, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtained Seal Master equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------咒术之航海士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3409, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtained Voyager equipment", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 5, "Gannon: Incantation set items belonged to Demonic World Lv50 equipments. You will need to pass me 10 Ja Runestones and 10 Tef Runestones. You can select the related class too." )
	--------------幻灵之双剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3410, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtained Crusader equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------幻灵之巨剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3411, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtained Champion equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------幻灵之狙击手装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3412, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtained Sharpshooter equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------幻灵之圣职者装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3413, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtain Cleric equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------幻灵之封印师装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3414, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtained Seal Master equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------幻灵之航海士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3415, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtained Voyager equipment", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 6, "Gannon: Enigma set items belonged to Demonic World Lv60 equipments. You will need to pass me 10 Ter Runestones and 10 Fa Runestones. You can select the related class too." )
	--------------迷之双剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3416, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtained Crusader equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------迷之巨剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3417, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtained Champion equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------迷之狙击手装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3418, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtained Sharpshooter equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------迷之圣职者装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3419, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtain Cleric equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------迷之封印师装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3420, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtained Seal Master equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------迷之航海士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3421, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtained Voyager equipment", MultiTrigger, GetMultiTrigger(), 1)

 
	InitTrigger() --合成藏宝图
	TriggerCondition( 1, HasItem, 0432, 1 )
        TriggerCondition( 1, HasItem, 0433, 1 )
	TriggerCondition( 1, HasItem, 0434, 1 )
	TriggerCondition( 1, HasItem, 0435, 1 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeItem, 0432, 1 )
	TriggerAction( 1, TakeItem, 0433, 1 )
	TriggerAction( 1, TakeItem, 0434, 1 )
	TriggerAction( 1, TakeItem, 0435, 1 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GiveItem, 1092, 1, 4 )
	TriggerFailure( 1, JumpPage, 8 ) 

	Talk( 7, "Gannon: Bring the 4 map fragments to me and I will combine a complete treasure map for you." )
	Text( 7, "Combine Treasure Map",MultiTrigger, GetMultiTrigger(), 1) 
	Talk( 8, "Gannon: When you have collected the 4 separate maps, look for me and bring along 2000G." )

	--------------兑换图纸
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 5 )
	TriggerAction( 1, GiveItem, 1000, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 9, "Gannon: Ah? Can you give me your Fragment? It will be worth your while." )
	Text( 9, "5 Illusion Fragments to exchange for 1 Burry Blueprint", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换图纸
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 30 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 30 )
	TriggerAction( 1, GiveItem, 1001, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "30 Illusion Fragments to exchange for 1 Encrypted Blueprint ", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换图纸
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 100 )
	TriggerAction( 1, GiveItem, 1002, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "100 Illusion Fragments to exchange for 1 Sealed Blueprint", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换图纸
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 500 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 500 )
	TriggerAction( 1, GiveItem, 1003, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "500 Illusion Fragments to exchange for 1 Invocation Blueprint", MultiTrigger, GetMultiTrigger(), 1)


	--------------兑换戒指
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4656, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 10, "Gannon: Its such a beautiful Illusion Heart. Let me use this ring to exchange." )
	Text( 10, "Exchanged Flame of Fury", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换戒指
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4657, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "Redeem Stable Cliff", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换戒指
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4658, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "Redeem Wind of the Gentle Soul", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换戒指
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4659, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "Redeem Entwined Rattan", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换戒指
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4660, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "Redeem Water of Miracle", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 11, "You do not have the items required for exchanging, or your inventory might be binded or you do not have sufficient inventory slots." )



	--AddNpcMission ( 719 )
	AddNpcMission ( 102 )
	AddNpcMission 	(416)
	AddNpcMission 	(751)
	AddNpcMission 	(755)
	AddNpcMission 	(95)
	AddNpcMission 	(96)
	AddNpcMission 	(97)
	AddNpcMission 	(151)
	AddNpcMission(	1227	)
	AddNpcMission 	(342)
	AddNpcMission 	(343)
	AddNpcMission 	(344)
	AddNpcMission 	(345)
	AddNpcMission 	(346)
	AddNpcMission 	(347)
	AddNpcMission 	(348)
	AddNpcMission 	(349)
	AddNpcMission 	(350)
	AddNpcMission 	(351)
	AddNpcMission 	(352)
	AddNpcMission 	(353)
	AddNpcMission 	(354)
	AddNpcMission 	(355)
-------------eleven
	AddNpcMission 	(5009)
	AddNpcMission 	(5015)
	AddNpcMission 	(5017)
	AddNpcMission 	(5024)
	AddNpcMission 	(5028)
	AddNpcMission 	(5031)
	AddNpcMission 	(5059)
	AddNpcMission 	(5064)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<大神官·甘地维拉


----------------------------------------------------------
--							--
--							--
--		沙岚城[氏族长·阿布多罗.李]		--
--							--
--		90374,364023				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk48 ()
	
	
	Talk( 1, "Albuda: Hi, I am the Clan Chief. How can I help you?" )
--	InitTrigger()
--	TriggerCondition( 1, HasMission, 1014 )
--	TriggerCondition( 1, HasRecord, 1013 )
--	TriggerCondition( 1, NoRecord, 1059 )
--	TriggerAction( 1, JumpPage, 2 )
--	TriggerFailure( 1, JumpPage, 3)
--	Text( 1, "Select path of Rebirth",MultiTrigger, GetMultiTrigger(), 1 )
--
--
--	InitTrigger()
--	TriggerCondition( 1, HasRecord, 1059 )
--	TriggerCondition( 1, HasNOZSExp )
--	TriggerCondition( 1, NoRecord, 1056 )
--	TriggerAction( 1, JumpPage, 5 )
--	TriggerFailure( 1, JumpPage, 6)
--	Text( 1, "Reselect path of rebirth",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1, "Nothing", CloseTalk)
--
--
--	InitTrigger()
--	TriggerAction( 1, SetRecord, 1015 )
--	TriggerAction( 1, SetRecord, 1059 )
--	TriggerAction( 1, JumpPage, 4 )
--	Talk( 2, "Albuda: There are two paths to rebirth. One has tough difficulty and you will meet the strongest monsters in this game along the way. This path is meant for the strong. The other path consists of many obstacles and interference. This is meant for those with great patience. You must be fully prepared before you embark on either path. Complete either and you will be rebirthed!")
--	Text( 2, "Tough Difficulty",MultiTrigger, GetMultiTrigger(), 1 )
--
--
--	InitTrigger()
--	TriggerAction( 1, SetRecord, 1016 )
--	TriggerAction( 1, SetRecord, 1059 )
--	TriggerAction( 1, JumpPage, 4 )
--	Text( 2, "Troublesome Path",MultiTrigger, GetMultiTrigger(), 1  )
--
--	Talk( 3, "You have not select the path of rebirth or have you selected the path of rebirth")
--
--	Talk( 4, "Go forth once you have selected your path. Look for Tink!")
--
--
--	InitTrigger()
--	TriggerCondition( 1, HasRecord, 1016 )
--	TriggerCondition( 1, HasMoney, 5000000 )
--	TriggerAction( 1, ClearRecord, 1016 )
--	TriggerAction( 1, SetRecord, 1015 )
--	TriggerAction( 1, TakeMoney, 5000000 )
--	TriggerAction( 1, JumpPage, 7 )
--	TriggerFailure( 1, JumpPage, 8)
--	Talk( 5, "To reselect the path of rebirth requires a high price of 5000000 gold!")
--	Text( 5, "Changed to tough difficulty",MultiTrigger, GetMultiTrigger(), 1 )
--
--	InitTrigger()
--	TriggerCondition( 1, HasRecord, 1015 )
--	TriggerCondition( 1, HasMoney, 5000000 )
--	TriggerAction( 1, ClearRecord, 1015 )
--	TriggerAction( 1, SetRecord, 1016 )
--	TriggerAction( 1, TakeMoney, 5000000 )
--	TriggerAction( 1, JumpPage, 7 )
--	TriggerFailure( 1, JumpPage, 8)
--	Text( 5, "Change to troublesome path",MultiTrigger, GetMultiTrigger(), 1 )
--
--	Talk( 6, "You have not select your path of rebirth or you have already competed your rebirth process. This function is for players who regretted their initial choice.")
--
--	Talk( 7, "You must work harder this time")
--
--	Talk( 8, "You do not have sufficient gold or you have selected the same path of rebirth")

	AddNpcMission ( 231 )
	AddNpcMission ( 232 )
	AddNpcMission ( 234 )
	AddNpcMission	(1037)
	AddNpcMission	(1091)
	AddNpcMission	(1149)
	AddNpcMission	(1200)
	AddNpcMission(	1228	)
	AddNpcMission	(327)
	AddNpcMission	(339)
	AddNpcMission	(340)
--	AddNpcMission ( 6017 )
--	AddNpcMission ( 6018 )
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<氏族长·阿布多罗.李


----------------------------------------------------------
--							--
--							--
--		沙岚城[道具店主·欧翟]			--
--							--
--		86214,359121				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk49 ()
	
	
	Talk( 1, "Ouya: Come and take a look, my friend. My medicines are made from the secret recipes of the natives." )
	Text( 1, "Decoct Recovery Potion", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3129, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeItem, 3129, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, GiveItem, 3133, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Ouya: To recover SP you will need a potion. I can decoct one for you if you like." )
	Text( 2, "Decoct Liquorice Potion", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2, "Mix Elven Fruit Juice", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3130, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3130, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3134, 1 , 4)
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "Brew Energetic Tea", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Ouya: Money first…This is the Energetic Tea you needed. Keep it well." )
	Talk( 4, "Ouya: Oh…It requires 10 Medicated Grass and 1 Bottle to make 1 Liquorice Potion. Also, it needs a fee of 50G." )
	Talk( 5, "Ouya: This Elven Fruit Juice was made from your Elven Fruit. Keep it well." )
	Talk( 6, "Ouya: Sorry, you do not have the required items. Elven Fruit Juice requires 10 Elven Fruits and 1 Glass to make." )
	Talk( 7, "Ouya: Money first...This is the Energetic Tea you needed. Keep it well." )
	Talk( 8, "Ouya: Oh…It requires 10 Fancy Petal and 1 Bottle to make 1 Energetic Tea. Needs a fee of 50G too." )

	AddNpcMission( 1007 )
	AddNpcMission( 1117 )
	AddNpcMission( 1171 )
	AddNpcMission(	1062	)
	AddNpcMission(	1229	)
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<道具店主·欧翟


----------------------------------------------------------
--							--
--							--
--		沙岚城[服装店主·莫亚]			--
--							--
--		89463,360213				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk50 ()
	
	
	Talk( 1, "Moya: I come from a family of tailors. See if there is anything you like." )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Defence(	0365	)
	Defence(	0541	)
	Defence(	0717	)
	Defence(	0372	)
	Defence(	0548	)
	Defence(	0724	)
	Defence(	0366	)
	Defence(	0542	)
	Defence(	0718	)
	Defence(	0373	)
	Defence(	0549	)
	Defence(	0725	)
	Defence(	0368	)
	Defence(	0544	)
	Defence(	0720	)
	Defence(	0374	)
	Defence(	0550	)
	Defence(	0726	)
	Defence(	0367	)
	Defence(	0543	)
	Defence(	0719	)
	Defence(	0375	)
	Defence(	0551	)
	Defence(	0727	)
	Defence(	0369	)
	Defence(	0545	)
	Defence(	0721	)
	Defence(	0376	)
	Defence(	0552	)
	Defence(	0728	)
	Defence(	0370	)
	Defence(	0546	)
	Defence(	0722	)
	Defence(	0378	)
	Defence(	0554	)
	Defence(	0730	)
	Defence(	0371	)
	Defence(	0547	)
	Defence(	0723	)
	Defence(	0379	)
	Defence(	0555	)
	Defence(	0731	)
	Defence(	0383	)
	Defence(	0559	)
	Defence(	0735	)
	Defence(	0359	)
	Defence(	0535	)
	Defence(	0711	)
	Defence(	0381	)
	Defence(	0557	)
	Defence(	0733	)
	Defence(	0360	)
	Defence(	0536	)
	Defence(	0712	)
	Defence(	0389	)
	Defence(	0565	)
	Defence(	0741	)
	Defence(	0361	)
	Defence(	0537	)
	Defence(	0713	)
	Defence(	0390	)
	Defence(	0566	)
	Defence(	0742	)
	Defence(	0362	)
	Defence(	0538	)
	Defence(	0714	)
	Defence(	0385	)
	Defence(	0561	)
	Defence(	0737	)
	Defence(	0363	)
	Defence(	0539	)
	Defence(	0715	)
	Defence(	0392	)
	Defence(	0568	)
	Defence(	0744	)
	Defence(	0388	)
	Defence(	0564	)
	Defence(	0740	)
	Defence(	0382	)
	Defence(	0558	)
	Defence(	0734	)
	Defence(	0391	)
	Defence(	0567	)
	Defence(	0743	)


	AddNpcMission ( 715 )
	AddNpcMission	(1011)
	AddNpcMission	(1068)
	AddNpcMission	(1123)
	AddNpcMission	(1175)
	AddNpcMission(	1230	)
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<服装店主·莫亚

----------------------------------------------------------
--							--
--							--
--		沙岚城[银行出纳·朱迪斯]			--
--							--
--		90637,353900				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk51 ()
	
	
	Talk( 1, "Judis: Hi! Welcome to the bank of Shaitan! How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Vault (200G Fee)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Sorry, you do not have sufficient gold to pay for vault usage" )

	AddNpcMission	(1051)
	AddNpcMission	(1104)
	AddNpcMission	(1160)
	AddNpcMission	(1213)
	AddNpcMission(	1231	)
-------eleven
	AddNpcMission(	5012	)	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<银行出纳·朱迪斯

----------------------------------------------------------
--							--
--							--
--		沙岚城[港卫队成员·鹧鸪草]		--
--							--
--		86734,366071				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk52 ()
	
	
	Talk( 1, "Franco: I wanted to join the Navy actually. However, I am a jinx. One time while we were out in the open sea, our ship got attacked by 10 pirate ships. My officers were stripped bare with only their underwear left. They got so angry with me that they made me to look after this place in Shaitan." )
	Text( 1, "Nothing...",CloseTalk )
	
	
	----------------转职成为训兽师
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerCondition( 1, HasItem, 3364, 1 )
	TriggerAction( 1, TakeItem, 3364, 1 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, SetProfession, 11 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerCondition( 2, HasItem, 3364, 1 )
	TriggerAction( 2, TakeItem, 3364, 1 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetProfession, 11  )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )

	Talk(5, "Sigh…it's a pity that you are not a Beast Tamer. I believed that you have the ability to become one. Let me teach you how!")
	Text(5, "Ok, I will become a Beast Tamer", MultiTrigger, GetMultiTrigger(), 2)
	Text(5, "No, it is good enough for now.", CloseTalk)

	Talk(6, "How is it? I knew you are born to be a Beast Tamer!")

	Talk(7, "Want to become a Beast Tamer? Come back to me when you have reached Lv 40. Train your hunter skills well as they are important foundation for you to advance further. Remember to bring 1 Clarity Crystal and 20000G too.")


	--TriggerCondition( 2, LvCheck, ">", 39 )
	--TriggerCondition( 2, IsCategory, 1 )
	--TriggerCondition( 2, PfEqual, 2 )
	--TriggerAction( 2, JumpPage, 5 )
	--TriggerCondition( 3, LvCheck, ">", 39 )
	--TriggerCondition( 3, IsCategory, 3 )
	--TriggerCondition( 3, PfEqual, 2 )
	--TriggerAction( 3, JumpPage, 5 )
	

	--Start( GetMultiTrigger(), 1 )
	

	AddNpcMission ( 243 )
	AddNpcMission ( 244 )
	AddNpcMission	(1012)
	AddNpcMission	(1069)
	AddNpcMission	(1124)
	AddNpcMission	(1176)
	AddNpcMission	(88)
	AddNpcMission	(89)
	AddNpcMission	(90)
	AddNpcMission(	1232	)
	



	
	MisListPage(5)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<港卫队成员·鹧鸪草

----------------------------------------------------------
--							--
--							--
--		沙岚城[铁匠·铜铜鼓]			--
--							--
--		90424,349871				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk53 ()
	
	
	Talk( 1, "Smithy: Hi! I have a wide variety of weapons here! Free free to browse!" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Repair", OpenRepair )
	Text( 1, "Forge", OpenForge)
	Text( 1, "Fusion", OpenMilling)
	Text( 1, "Apparel Fusion", OpenFusion)
	Text( 1, "Apparel Upgrade", OpenUpgrade)
	Text( 1, "Nothing...",CloseTalk )


	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0097	)
	Weapon(	0104	)
	Weapon(	0098	)
	Weapon(	0105	)
	Weapon(	0099	)
	Weapon(	0106	)
	Weapon(	0101	)
	Weapon(	0107	)
	Weapon(	0102	)
	Weapon(	0108	)
	Weapon(	0100	)
	Weapon(	4301	)
	Weapon(	0103	)
	Weapon(	4302	)
	Weapon(	1427	)
	Weapon(	1428	)
	Weapon(	1429	)
	Weapon(	1430	)
	Weapon(	1431	)
	Weapon(	1432	)
	Weapon(	1433	)
	Weapon(	1434	)
	Weapon(	1435	)
	Weapon(	1436	)
	Weapon(	1437	)
	Weapon(	1438	)
	Weapon(	1440	)
	Weapon(	1441	)
	Weapon(	1462	)
	Weapon(	1463	)
	Weapon(	1464	)
	Weapon(	1465	)
	Weapon(	1466	)
	Weapon(	1467	)
	Weapon(	1468	)
	Weapon(	1469	)
	Weapon(	1470	)
	Weapon(	1471	)
	Weapon(	1472	)
	Weapon(	1473	)
	Weapon(	1475	)
	Weapon(	1476	)

	AddNpcMission ( 713 )
	AddNpcMission	(1043)
	AddNpcMission	(1095)
	AddNpcMission	(1154)
	AddNpcMission	(1206)
	AddNpcMission	(91)
	AddNpcMission	(92)
	AddNpcMission	(93)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<铁匠·铜铜鼓




--------------------------------------------------------------铁匠的徒弟 
function mmm_talk04 ()
	Talk( 1, "Blacksmith's apprentice: If only I have my teacher's skills." )
	Text( 1, "Regarding Item Forging", JumpPage, 2 )
	Text( 1, "Regarding Composition", JumpPage, 3 )
	Text( 1, "Regarding Fusion", JumpPage, 7 )
	Text( 1, "Nothing...",CloseTalk )
	
	
	Talk( 2, "Blacksmith's Disciple: To forge any item, there is a huge fee to pay. You will need to have a Refining Gem that is of equal level to that of your item as a catalyst. Then you select the type of Gems to forge onto your item. Different type of Gems have different attribute added and item type restriction. The Gems also need to be of equal level to that of your item. Do you want to forge?" )
	Text( 2, "Regarding Refining Gem", JumpPage, 4)
	Text( 2, "Regarding Gem", JumpPage, 5)
	Text( 2, "Regarding Forging Success Rate", JumpPage, 6)
	
	Talk( 3, "Blacksmith Disciple: You wish to combine something? From what I understand, you need a combining scroll and it will list the required items. Collect the items needed and talk to Grocer - Amos in Shaitan City. He is the only person who knows how to combine." )
	
	Talk( 4, "Blacksmith Disciple: Refining Gems are a crucial catalyst in the forging of items. It must match the level of the item before it can be used. High level refining gems may be obtained from combining or killing monsters." )

	Talk( 5, "Blacksmith Disciple: There are a lof of gems for forging. Fire based attack gem, water based defense gem and sacred spiritual gem. High level gems can be obtained from combining or killing monsters." )

	Talk( 6, "Blacksmith's Disciple: Success rate gets lower as item level gets higher. Max level of item that can be forged is 27. Items will disappear if forging fails." )
	
	Talk( 7, "Blacksmith Disciple: For item fusion, you need to prepare 1 Equipment Stabilizer and 1 Equipment Catalyst in order to make a socket." )

end

----------------------------------------------------------
--							--
--							--
--		沙岚城[莉娜]				--
--							--
--		88307,352019				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk54 ()
	
	
	Talk( 1, "Lena: Hi! I am the wife of Smithy." )
	Text( 1, "Decoct Hair Colorant", JumpPage, 2)

----------------调配青色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1791, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1791, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1801, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Lena: I think this color will suit your hair. Need me to decoct a hair colorant for you?" )
	Text( 2, "Decoct Cyan Colorant",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Lena: How is it? Is this Cyan Colorant to your liking?" )
	Talk( 4, "Lena: 5 Cyan Dye, 1 Special Gas, 1 Rainbow Glass and 200G to make a Cyan Colorant." )
	
	AddNpcMission	(1146)
	AddNpcMission	(155)
	AddNpcMission	(156)
	AddNpcMission	(157)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<莉娜

----------------------------------------------------------
--							--
--							--
--		沙岚城[杂货商人·艾墨]			--
--							--
--		84040,358567				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk55 ()
	
	
	Talk( 1, "Amos: Hi, we have the latest items here. Don't bother to look elsewhere." )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Combine", OpenUnite)
	Text( 1, "Nothing...",CloseTalk )
	Text( 1, "Redeem Reality Mask",JumpPage, 2 )

	InitTrade()
	Other(	3206	)
	Other(	3208	)
	Other(	3205	)
	Other(	3242	)
	Other(	3210	)
	Other(	3207	)
	Other(	3211	)
	Other(	3215	)
	Other(	3212	)
	Other(	3209	)
	Other(	3220	)
	Other(	3222	)
	Other(	3219	)
	Other(	3218	)
	Other(	3216	)
	Other(	3223	)
	Other(	3217	)
	Other(	3224	)
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other( 3296 )
	Other( 886 )
	--baby--生活技能书Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--Leo
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
	Other(  2440    )

	AddNpcMission	(1161)
	AddNpcMission	(152)
	AddNpcMission	(153)
	AddNpcMission	(154)
	--AddNpcMission	(5500)

	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "To obtain a Reality Mask requires 1 Elven Signet, 10000G and any of 10x Lv3 gathered resource" )
	Text( 2, "Use bones to exchange for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "Exchange Razor Tooth for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Use Crystal Eolith to exchange for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Use Teak Wood Log to exchange for a Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Use Bubble Fish to exchange for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Amos: Be careful with it, its very important." )
	Talk( 4, "Amos: You do not seem to have enough material. Or it might be that your inventory is binded or you do not have enough slots in your inventory." )

end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<杂货商人·艾墨

----------------------------------------------------------
--							--
--							--
--		沙岚城[旅店老板·哈根]			--
--							--
--		81035,349813				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk56 ()
	
	
	Talk( 1, "Moken: Hi! Need a stay? I have a room for two above." )
	Text( 1, "Make nice desert", JumpPage, 2)


--------------------调配五彩琉璃汁
	InitTrigger()
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasItem, 3121, 4 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3121, 4 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 3127, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Harken: It's a good year for the business. All my items are sold out due to overwhelming demands." )
	Text( 2, "Mix Rainbow Fruit Juice",MultiTrigger, GetMultiTrigger(), 1)

----------------调配综合果汁
	InitTrigger()
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasItem, 3122, 1 )
	TriggerCondition( 1, HasItem, 3123, 1 )
	TriggerCondition( 1, HasItem, 3124, 1 )
	TriggerCondition( 1, HasItem, 3125, 1 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3122, 1 )
	TriggerAction( 1, TakeItem, 3123, 1 )
	TriggerAction( 1, TakeItem, 3124, 1 )
	TriggerAction( 1, TakeItem, 3125, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 3128, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Decoct Fruity Mix",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Harken: Young man, the drink you wanted is done. Be careful with it. Its the most popular drink in town." )
	Talk( 4, "Harken: Sorry, you do not have the required items. Rainbow Fruit Juice requires 4 Rainbow Fruits, 1 Rainbow Glass and 50G" )
	Talk( 5, "Harken: Sorry, you do not have the required items. Fruity Mix requires 1 Elven Fruit Juice, 1 Red Date Tea, 1 Mushroom Soup, 1 Stramonium Fruit Juice, 1 Rainbow Glass and also 50G to make." )
	AddNpcMission	(1138)
	AddNpcMission	(1161)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<旅店老板·哈根

----------------------------------------------------------
--							--
--							--
--		沙岚城[护士小姐·兰兰]			--
--							--
--		87954,356282				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk57 ()
	
	
	Talk( 1, "Landy: Hi I am Nurse Landy. I am still in training so my healing skill is mediocre. I am unable to heal you for the moment. If you need anything, look for Physician - Shala at (903,3646)." )
	AddNpcMission	(1129)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护士小姐·兰兰

----------------------------------------------------------
--							--
--							--
--		沙岚城[海盗·德克]			--
--							--
--		80262,364842				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk58 ()
	
	
	Talk( 1, "Decky: Hey! I am the werewolf pirates leader Decky! I am currently ranked 7th on the Navy bounty list. Why I telling you this? It is because I am not afraid of the Navy! Hehe!" )
	AddNpcMission	(1125)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海盗·德克

----------------------------------------------------------
--							--
--							--
--		沙岚城[新手指导·拉丝碧]			--
--							--
--		87614,357250				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk59 ()
	Talk( 1, "Resline: \"Hi, I am Resline. I love to chat and poke my nose into all troubles. Look for me if you have any troubles.\"" )
	Text( 1, "Star of Unity", JumpPage, 31 )
	Text( 1, "I would like to ask about something", JumpPage, 4 )
	Text( 1, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 1, "Check Monster Coordinate", JumpPage, 30 )

	Talk( 4, "Shaitan City focus on handicraft and arts of magic. Most of the best weapons are made here. Why don't you talk a walk around and see our magnificient city." )
	Text( 4, "Regarding Weapon Shop", JumpPage, 5 )
	Text( 4, "Regarding Armor Shop", JumpPage, 7 )
	Text( 4, "Regarding Item Shop", JumpPage, 8 )
	Text( 4, "Regarding Teleporter", JumpPage, 9 )
	Text( 4, "Not feeling well, need to go see a doctor", JumpPage, 10 )

	Talk( 5, "Shaitan Blacksmith Smithy sells all sorts of top quality weapon. Look for him at his shop at the right corner of the city." )
	Text( 5, "Regarding other shops", JumpPage, 4 )
	Text( 5, "I have understood all", CloseTalk )

--	Talk( 6, "Look for me again if there is anything you don't understand", CloseTalk )

	Talk( 7, "To buy armors for yourself, look for Tailor Moya. His prices are reasonable. Moya can be found just below the fountain on the right." )
	Text( 7, "Regarding other shops", JumpPage, 4 )
	Text( 7, "I have understood all", CloseTalk )

	Talk( 8, "Buying item? Tools seller Ouya is at the west corner of this city. Look for him there." )
	Text( 8, "Regarding other shops", JumpPage, 4 )
	Text( 8, "I have understood all",  CloseTalk )

	Talk( 9, "To get elsewhere, Shaitan Teleporter - May can teleports you to any main city in the world. She can also registered a new Spawn point for you here. Look for her near the entrance to this city." )
	Text( 9, "Regarding other shops", JumpPage, 4 )
	Text( 9, "I have understood all",  CloseTalk )

	Talk( 10, "Are you ill? The nurse is just beside the small pond. Go and look for her now!" )
	Text( 10, "Regarding other shops", JumpPage, 4 )
	Text( 10, "I have understood all",  CloseTalk)


	InitTrigger()
	TriggerCondition( 1, NoRecord, 706 )
	TriggerCondition( 1, HasMission, 706 )
	TriggerCondition( 1, NoFlag, 706, 10 )
	TriggerAction( 1, SetFlag, 706, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "Resline: To be a good player, you will need to understand the basic of different classes and attributes. Would you like to find out more?" )
	Text( 11, "Regarding Classes", JumpPage, 12)
	Text( 11, "Regarding Attributes", JumpPage, 13)
	--Text( 11, "Regarding Classes", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 706 )
	TriggerCondition( 1, HasMission, 706 )
	TriggerCondition( 1, NoFlag, 706, 20 )
	TriggerAction( 1, SetFlag, 706, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "Regarding Attributes", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "Resline: There are 7 basic classes in this game. Each has its unique ways and serve a special purpose in the game. Which would you like to become?" )
	Text( 12, "Regarding Swordsman", JumpPage, 14 )
	Text( 12, "Regarding Hunter", JumpPage, 15 )
--	Text( 12, "Regarding Sailor", JumpPage, 16 )
	Text( 12, "Regarding Explorer", JumpPage, 17 )
	Text( 12, "Regarding Herbalist", JumpPage, 18 )
--	Text( 12, "Regarding Artisan", JumpPage, 19 )
--	Text( 12, "Regarding Merchant", JumpPage, 20 )

	Talk( 13, "Resline: Each character will have 5 base attributes. Players can increase them accordingly to raise certain aspect of their ability. Each level will reward players with 1 stat point and 1 skill point. Beginner will have 5 stat points to distribute." )
	Text( 13, "Regarding Strength", JumpPage, 21 )
	Text( 13, "Regarding Agility", JumpPage, 22 )
	Text( 13, "Regarding Constitution", JumpPage, 23 )
	Text( 13, "Regarding Spirit", JumpPage, 24 )
	--Text( 13, "Regarding Luck", JumpPage, 25 )
	Text( 13, "Regarding Accuracy", JumpPage, 26 )

	Talk( 14, "Resline: Swordsman has the highest physical resistance in this game. Male character may chose to become one when they reach Lv 10. Look for Peter in Argent City to select the Swordsman class." )
	Text( 14, "Regarding other Classes", JumpPage, 12)
	Text( 14, "Regarding Attributes", JumpPage, 13)
	Text( 14, "I have understood all", JumpPage, 27)

	Talk( 15, "Resline: Hunters is the only long range class in this game. After further advancement, they can learn to use fireguns which have higher damage. Only Lance and Phyllis may become a Hunter. Players Lv 10 and above can look for Ray in Icicle to become a Hunter." )
	Text( 15, "Regarding other Classes", JumpPage, 12)
	Text( 15, "Regarding Attributes", JumpPage, 13)
	Text( 15, "I have understood all", JumpPage, 27)

	Talk( 16, "Resline: Sailor is the strongest class in the sea. It is still unreleased in current version." )
	Text( 16, "Regarding other Classes", JumpPage, 12)
	Text( 16, "Regarding Attributes", JumpPage, 13)
	Text( 16, "I have understood all", JumpPage, 27)
	
	Talk( 17, "Resline: Explorers are the support class for sea battle. Beside Carsise, all other three characters can apply to become an Explorer. Players Lv 10 and above can look for Little Daniel in Argent City to an Explorer." )
	Text( 17, "Regarding other Classes", JumpPage, 12)
	Text( 17, "Regarding Attributes", JumpPage, 13)
	Text( 17, "I have understood all", JumpPage, 27)

	Talk( 18, "Resline: Herbalist are loyal followers of Goddess Kara. They possess mystical healing ability. Only Phyllis and Ami can select to become a Herbalist. Lv 10 players can look for High Priest - Gannon in Shaitan City to become a Herbalist." )
	Text( 18, "Regarding other Classes", JumpPage, 12)
	Text( 18, "Regarding Attributes", JumpPage, 13)
	Text( 18, "I have understood all", JumpPage, 27)

	Talk( 19, "Resline: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version." )
	Text( 19, "Regarding other Classes", JumpPage, 12)
	Text( 19, "Regarding Attributes", JumpPage, 13)
	Text( 19, "I have understood all", JumpPage, 27)

	Talk( 20, "Resline: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version." )
	Text( 20, "Regarding other Classes", JumpPage, 12)
	Text( 20, "Regarding Attributes", JumpPage, 13)
	Text( 20, "I have understood all", JumpPage, 27)

	Talk( 21, "Resline: Strength increases Melee Attack Power" )
	Text( 21, "Enquire about other Attributes", JumpPage, 13)
	Text( 21, "Enquire about other Classes", JumpPage, 12)
	Text( 21, "I have understood all", JumpPage, 27)

	Talk( 22, "Resline: Agility increases Attack Speed and Dodge Rate" )
	Text( 22, "Enquire about other Attributes", JumpPage, 13)
	Text( 22, "Enquire about other Classes", JumpPage, 12)
	Text( 22, "I have understood all", JumpPage, 27)

	Talk( 23, "Resline: Constitution increases Max HP and Physical Resist" )
	Text( 23, "Enquire about other Attributes", JumpPage, 13)
	Text( 23, "Enquire about other Classes", JumpPage, 12)
	Text( 23, "I have understood all", JumpPage, 27)

	Talk( 24, "Resline: Spirit increases Max SP and affect some skill effect" )
	Text( 24, "Enquire about other Attributes", JumpPage, 13)
	Text( 24, "Enquire about other Classes", JumpPage, 12)
	Text( 24, "I have understood all", JumpPage, 27)

	Talk( 25, "Resline:  Luck increases Critical Rate and Combining Success Rate" )
	Text( 25, "Enquire about other Attributes", JumpPage, 13)
	Text( 25, "Enquire about other Classes", JumpPage, 12)
	Text( 25, "I have understood all", JumpPage, 27)

	Talk( 26, "Resline: Accuracy increases Hit Rate and Range attack power" )
	Text( 26, "Enquire about other Attributes", JumpPage, 13)
	Text( 26, "Enquire about other Classes", JumpPage, 12)
	Text( 26, "I have understood all", JumpPage, 27)

	Talk( 27, "Resline: Good. Look for me again if you have any question!")

	Talk( 28, "Resline: Well done, it looks like you now have a good grasp at basic combat and also a good idea on how item drops work. Since there is nothing much left to learn from me, why don't you go and look for my friends? If fighting is your cup of tea, seek out Michael. He was last seen at (958, 3549). Another person you may like to meet would be Shala (903, 3646), Shaitan City's famous physician. Lately, she has been looking for helpers to help her collect more ingredients. If you are interested, you can look for her near the city fountain." )
	Text( 28, "I would like to ask about something", JumpPage, 4 )
	Text( 28, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 28, "I have understood all",  CloseTalk)

	Talk( 29, "Resline: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Icicle or Argent by using the teleporter." )
	Text( 29, "I would like to ask about something", JumpPage, 4 )
	Text( 29, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 29, "I have understood all",  CloseTalk )

	Talk( 30, "Resline: To check the coordinates of monsters in game, all you have to do is look for a Drunkyard in Argent City Bar at (2222, 288). He can tell you the coordinates for a fee." )

	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )

	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )

	Talk( 31, "Resline: Star of Unity is a mysterious accessory from another world. When you equip it, you might be able to activate the power of unity and something unexpected might happen. We are running a trial event \"Hoard Exchange\". All players below Lv 41 can redeem a Star of Unity to exchange for a suitable piece of equipment. Are you interested?" )
	Text( 31, "Redeem Star of Unity",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "Hoard Exchange",JumpPage, 32 )

	Talk( 32, "Thank you for using our products. If you have a \"Star of Unity\", you can redeem a Lv 50 weapon for your class. Interesting isn't it?")
	Text( 32, "Redeem class weapon", Transfer_TeamStar, 1)

	Talk( 6, "Resline: Sorry, you do not meet the requirements to redeem." )
	
	--InitTrigger()
	---------------------玩家超过6级完成过瑟安的战斗训练任务
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 9 )
	---TriggerCondition( 1, HasRecord, 710 )
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )


	--Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 711 )
	AddNpcMission ( 712 )
	AddNpcMission ( 714 )
	AddNpcMission ( 716 )
	AddNpcMission ( 718 )
	AddNpcMission ( 202 )
	AddNpcMission 	(414)
	AddNpcMission 	(83)
	AddNpcMission 	(84)
	AddNpcMission 	(94)
	AddNpcMission 	(161)
	AddNpcMission 	(62)
	AddNpcMission 	(63)
	AddNpcMission 	(64)
	AddNpcMission 	(65)

	MisListPage(28)
	MisListPage(29)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<新手指导·拉丝碧


----------------------------------------------------------
--							--
--							--
--		沙岚城[海军办事处官员·艾微尔少校]		--
--							--
--		86507,364804				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk61 ()
	
	
	Talk( 1, "Admiral Nic: Hi! I am Nic, the first female officer appointed here." )
	AddNpcMission	(1126)
	AddNpcMission	(98)
	AddNpcMission	(99)
	AddNpcMission	(150)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海军办事处官员·艾微尔少校

----------------------------------------------------------
--							--
--							--
--		沙岚城[沙岚城商会会长·古利击]		--
--							--
--		87362,354566				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk62 ()
	
	
	Talk( 1, "Guile: I love collecting strange items, buy low price items and sell them off at a higher price. I can be considered the most resourceful trader. Is there any matter?" )
	Text( 1, "Nothing...",CloseTalk )
	AddNpcMission	(1144)

	-----铁人六项
	AddNpcMission ( 6115 )
	AddNpcMission ( 6116 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<沙岚城商会会长·古利击

----------------------------------------------------------
--							--
--							--
--		沙岚城[路人·珊瑚虫]		--
--							--
--		84634,349945				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk63 ()
	
	
	Talk( 1, "Wowo: Little Daniel cannot be trusted. I moved here to avoid him" )

--	AddNpcMission ( 6028 )
--	AddNpcMission ( 6029 )
--	AddNpcMission ( 6054 )
--	AddNpcMission ( 6055 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·珊瑚虫

----------------------------------------------------------
--							--
--							--
--		沙岚城[小羊·威利]			--
--							--
--		89875,368331				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk64 ()
	
	
	Talk( 1, "Welly: Hi! I am the world only talking lamb! Baa!" )

	AddNpcMission ( 233 )
	---------------白羊
	AddNpcMission	(5565)
	AddNpcMission	(5566)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<小羊·威利

----------------------------------------------------------
--							--
--							--
--		沙岚城[会长助理·提司面包]		--
--							--
--		87171,354774				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk65 ()
	
	
	Talk( 1, "Tintin: We always talk but never take any action." )
--	AddNpcMission ( 905 )
	----------------周岁包
	AddNpcMission ( 5604 )
	AddNpcMission ( 5605 )
	AddNpcMission ( 5606 )
	AddNpcMission ( 5607 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<会长助理·提司面包

----------------------------------------------------------
--							--
--							--
--		沙岚城[路人·乙]				--
--							--
--		79792,355469				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk66 ()
	
	
	Talk( 1, "Yay: Holy Priestess is at the temple in Shaitan City. She has the blessings of many devotees." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·乙

----------------------------------------------------------
--							--
--							--
--		沙岚城[沙匪·闪光侠八世]			--
--							--
--		108242,310135				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk67 ()
	
	
	Talk( 1, "Supermun: I am the great descendent of Superman! I will rule the desert with my super powers! (Oh god he is dreaming again…)" )
	
	AddNpcMission ( 237 )
	AddNpcMission ( 238 )
	AddNpcMission ( 239 )
	AddNpcMission ( 240 )
	AddNpcMission ( 248 )
	AddNpcMission ( 557 )
--------eleven
	AddNpcMission (5011 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<沙匪·闪光侠八世


----------------------------------------------------------
--							--
--							--
--		沙岚城[人鱼王子·哈沙特]			--
--							--
--		125471,349171				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk68 ()
	
	
	Talk( 1, "Hassan: Hmm…I smell something nice the other day and the smell has lingered for very long. I wish to find out what is it exactly." )
	Text( 1, "Combine", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1785, 10 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 1785, 10 )
	TriggerAction( 1, GiveItem, 1786, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Hassan: Clarion Fragment has little value. Would you like to combine them into a Clarion Crystal?" )
	Text( 2, "Combine Clarion Crystal", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Hassan: Isn't this Clarion Crystal beautiful? Remember to look for me next time." )
	Talk( 4, "Hassan: Bring 10 Crystal Fragment and 2000G and Clarion Crystal will be yours." )
	-------------eleven
	AddNpcMission ( 5010)
	AddNpcMission ( 5014)
	AddNpcMission ( 5033)
	AddNpcMission ( 5034)
	---------------白羊
	AddNpcMission	(5553)
	AddNpcMission	(5554)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<人鱼王子·哈沙特


----------------------------------------------------------
--							--
--							--
--		沙岚城[乐器专家·沙梅洱]			--
--							--
--		66465,609367				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk69 ()
	
	
	Talk( 1, "Shamel: Hi! I am a musician that bring melody to this place." )
---------------白羊
	AddNpcMission	(5559)
	AddNpcMission	(5560)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<乐器专家·沙梅洱


----------------------------------------------------------
--							--
--							--
--		沙岚城[圣女·艾达]			--
--							--
--		86248,330381				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk70 ()
	
	
	Talk( 1, "Ada: Hi, friend from afar. May the Goddess be with you. I am High Priestess Ada." )

	AddNpcMission ( 756 )
	AddNpcMission ( 341 )
	AddNpcMission ( 356 )
	AddNpcMission ( 357 )
	AddNpcMission ( 521 )
	AddNpcMission ( 539 )
	AddNpcMission ( 540 )
	AddNpcMission ( 541 )
	AddNpcMission ( 552 )
	AddNpcMission ( 553 )
	AddNpcMission ( 556 )

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<圣女·艾达

----------------------------------------------------------
--							--
--							--
--		沙岚城[路人·法利尔]			--
--							--
--		93176,352977				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk71 ()
	
	
	Talk( 1, "Fairu: You know something? Cactus also has flowers! And the smell is just heavenly!" )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·法利尔

----------------------------------------------------------
--							--
--							--
--		沙岚城[工会会长·佛瑞]			--
--							--
--		83171,354853				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk72 ()
	
	Talk( 1, "Forlan: Unity is strength! Want to challenge the Top 3 Guilds? Want to rule this world? Guild leader may apply for guild challenge with me. Your guild might make it to the Top 3 too!" )
	Text( 1, "View Top 3 Guild", ListChallenge)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<工会会长·佛瑞

----------------------------------------------------------
--							--
--							--
--		冰狼堡[铁匠·暴冰]			--
--							--
--		134423,52988				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk73 ()
	
	
	Talk( 1, "Bash: Welcome! I sell all sorts of weapon! Satisfaction guarantee!" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Repair", OpenRepair)
	Text( 1, "Regarding Forging", JumpPage, 2)
	Text( 1, "Regarding Combining", JumpPage, 3)
	Text( 1, "Nothing...",CloseTalk )

	Talk( 2, "Bash: Forging? Only Shaitan Blacksmith know how to forge items." )

	Talk( 3, "Bash: You wish to combine something? From what I understand, you need a combining scroll and it will list the required items. Collect the items needed and talk to Grocer - Amos in Shaitan City. He is the only person who knows how to combine." )


	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0025	)
	Weapon(	0032	)
	Weapon(	0026	)
	Weapon(	0033	)
	Weapon(	0027	)
	Weapon(	0034	)
	Weapon(	1400	)
	Weapon(	1401	)
	Weapon(	1402	)
	Weapon(	1403	)
	Weapon(	1404	)
	Weapon(	1405	)
	Weapon(	0037	)
	Weapon(	0038	)
	Weapon(	0039	)
	Weapon(	0044	)
	Weapon(	0040	)
	Weapon(	0045	)
	Weapon(	1406	)
	Weapon(	1407	)
	Weapon(	1408	)
	Weapon(	1409	)
	Weapon(	1413	)
	Weapon(	1414	)




	AddNpcMission ( 723 )
	AddNpcMission	(1041)
	AddNpcMission	(1093)
	AddNpcMission	(1152)
	AddNpcMission	(1204)
	AddNpcMission(	1233	)
	


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<铁匠·暴冰

----------------------------------------------------------
--							--
--							--
--		冰狼堡[杂货商人·伯鲁]			--
--							--
--		135671,48320				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk74 ()
	Talk( 1, "Palpin: Hi, I am the Grocer in Icicle City. I love to collect items. After you are Lv 10, look for me to get some item scollection quest. I pay well for the items I needed. How can I help you?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )
	Text( 1, "Redeem Reality Mask",JumpPage, 2 )

	InitTrade()
	Other(	3187	)
	Other(	3188	)
	Other(	3190	)
	Other(	3239	)
	Other(	3197	)
	Other(	3193	)
	Other(	3241	)
	Other(	3192	)
	Other(	3198	)
	Other(	3202	)
	Other(	3203	)
	Other(	3204	)
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other( 3296 )
	--baby--生活技能书Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--Leo
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
	Other(  2440    )


	AddNpcMission	(1052)
	AddNpcMission	(1106)
	AddNpcMission	(1162)
	AddNpcMission	(1214)
	AddNpcMission	(181)
	AddNpcMission	(182)
	AddNpcMission	(183)
	AddNpcMission	(1234)
	--AddNpcMission	(5502)

	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "To obtain a Reality Mask requires 1 Elven Signet, 10000G and any of 10x Lv3 gathered resource" )
	Text( 2, "Use bones to exchange for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "Exchange Razor Tooth for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Use Crystal Eolith to exchange for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Use Teak Wood Log to exchange for a Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Use Bubble Fish to exchange for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Palpin: Keep it well...It is important." )
	Talk( 4, "Palpin: You do not seem to have enough material. Your inventory may be binded or you do not have enough free slots." )
end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<杂货商人·伯鲁

----------------------------------------------------------
--							--
--							--
--		冰狼堡[药店老板·达赫]			--
--							--
--		135298,49926				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk75 ()
	
	
	Talk( 1, "Daisha: Hello! Have a look here! I have the best herbs in all of Icicle." )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )
	
	Talk( 2, "Daisha: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Argent or Shaitan by using the teleporter." )
	Text( 2, "Trade", BuyPage )
	Text( 2, "Nothing...",CloseTalk )

	InitTrade()
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

	---------------------玩家超过9级
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerFailure( 1, JumpPage, 1 )
	--Start( GetMultiTrigger(), 1 )

	AddNpcMission ( 727 )
	--AddNpcMission ( 735 )
	--AddNpcMission ( 746 )
	--AddNpcMission ( 747 )
	AddNpcMission	(1047)
	AddNpcMission	(1101)
	AddNpcMission	(1158)
	AddNpcMission	(1209)
	AddNpcMission(	1235	)
---------eleven	
	AddNpcMission(	5067)
	AddNpcMission(	593)
	AddNpcMission(	594	)
	AddNpcMission(	596	)	

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<药店老板·达赫


----------------------------------------------------------
--							--
--							--
--		冰狼堡[护士小姐·安妮]			--
--							--
--		131725,50169				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk76 ()
	
	
	Talk( 1, "Anne: Hi! I am Nurse Anne. As I am on probation, I cannot give you any treatment just yet." )
	AddNpcMission	(1018)
	AddNpcMission	(1073)
	AddNpcMission	(1128)
	AddNpcMission	(1181)
	AddNpcMission(	1236	)
	



	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护士小姐·安妮

----------------------------------------------------------
--							--
--							--
--		冰狼堡[新手指导·安琪露亚]		--
--							--
--		131577,50700				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk77 ()
	
	
        Talk( 1, "Angela: \"Hi, everyone calls me Angela. I will teach you the way of living in Icicle city. Enjoy all year round of winter! \"" )
	Text( 1, "Star of Unity", JumpPage, 31 )
	Text( 1, "I would like to ask about something", JumpPage, 4 )
	Text( 1, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 1, "Regarding Monsters Coordinates", JumpPage, 30 )
	Text( 1, "I have understood all", CloseTalk )
--	Text( 1, "I have understood all", CloseTalk )


	Talk( 4, "Just like what you have seen, Icicle City is a place covered in snow. To stay here in comfort, you must learn how to get the necessary items and equipments." )
	Text( 4, "Regarding Weapon Shop", JumpPage, 5 )
	Text( 4, "Regarding Armor Shop", JumpPage, 7 )
	Text( 4, "Regarding Item Shop", JumpPage, 8 )
	Text( 4, "Regarding Teleporter", JumpPage, 9 )
	Text( 4, "Regarding Healing", JumpPage, 10 )

	Talk( 5, "Walk south from here and turn right at the crossroad. From there, you should be able to see the Blacksmith. He sell all sort of weapons. See if you can find anything you like." )
	Text( 5, "Regarding other shops", JumpPage, 4 )
	Text( 5, "I have understood all", CloseTalk )

--	Talk( 6, "Look for me again if there is anything you don't understand", CloseTalk )

	Talk( 7, "To buy armors, look for the Tailor. He is a friendly and kind man. Find him at the bottom right corner of town." )
	Text( 7, "Regarding other shops", JumpPage, 4 )
	Text( 7, "I have understood all", CloseTalk )

	Talk( 8, "Buying items? The grocery is not far from here. It is at the western corner of this city. It will have all you need to start your adventure." )
	Text( 8, "Regarding other shops", JumpPage, 4 )
	Text( 8, "I have understood all", CloseTalk )

	Talk( 9, "Walk along the path and you will find a beautiful lady near the gate. She is the Teleporter who can send you to other cities. You can also record your Spawn point there." )
	Text( 9, "Regarding other shops", JumpPage, 4 )
	Text( 9, "I have understood all", CloseTalk )

	Talk( 10, "The nurse is the lady at the other side of the fountain. Remember to look for her when you are sick or injuired." )
	Text( 10, "Regarding other shops", JumpPage, 4 )
	Text( 10, "I have understood all", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 10 )
	TriggerAction( 1, SetFlag, 700, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "Angela: Being a new player, you should understand more about the different class and attributes. What you wish to know?" )
	Text( 11, "Regarding Classes", JumpPage, 12)
	Text( 11, "Regarding Attributes", JumpPage, 13)

	--Text( 11, "Regarding Classes", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 20 )
	TriggerAction( 1, SetFlag, 700, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "Regarding Attributes", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "Angela: There are 7 basic classes in Tales of Pirates. Each have their unique attributes and roles. Which interests you most?" )
	Text( 12, "Regarding Swordsman", JumpPage, 14 )
	Text( 12, "Regarding Hunter", JumpPage, 15 )
--	Text( 12, "Regarding Sailor", JumpPage, 16 )
	Text( 12, "Regarding Explorer", JumpPage, 17 )
	Text( 12, "Regarding Herbalist", JumpPage, 18 )
--	Text( 12, "Regarding Artisan", JumpPage, 19 )
--	Text( 12, "Regarding Merchant", JumpPage, 20 )
	Text( 12, "Understood. Let me check out others.", JumpPage, 11 )

	Talk( 13, "Angela: Each character will have 5 base attributes. Players can increase them accordingly to raise certain aspect of their ability. Each level will reward players with 1 stat point and 1 skill point. Beginner will have 5 stat points to distribute." )
	Text( 13, "Regarding Strength", JumpPage, 21 )
	Text( 13, "Regarding Agility", JumpPage, 22 )
	Text( 13, "Regarding Constitution", JumpPage, 23 )
	Text( 13, "Regarding Spirit", JumpPage, 24 )
	--Text( 13, "Regarding Luck", JumpPage, 25 )
	Text( 13, "Regarding Accuracy", JumpPage, 26 )
	Text( 13, "Understood. Let me check out others.", JumpPage, 11 )

	Talk( 14, "Angela: Swordsman is the highest physical defence Class in Pirate King. Male Newbies can look for Argent City's Guard Peter to become one when they reach Lv 10." )
	Text( 14, "Regarding other Classes", JumpPage, 12)
	Text( 14, "Regarding Attributes", JumpPage, 13)
	Text( 14, "I have understood all", JumpPage, 27)

	Talk( 15, "Angela: Hunter is the only long ranged attacking class in this game. In the second advancement, they can adopt using firegun to boost the attacking power. Only Lance and Phyllis may apply to be a Hunter. Players who are Lv 10 can look for Swordsman Ray in Icicle City to become one." )
	Text( 15, "Regarding other Classes", JumpPage, 12)
	Text( 15, "Regarding Attributes", JumpPage, 13)
	Text( 15, "I have understood all", JumpPage, 27)

	Talk( 16, "Angela: Sailor is the strongest class in the sea. It is still unreleased in current version." )
	Text( 16, "Regarding other Classes", JumpPage, 12)
	Text( 16, "Regarding Attributes", JumpPage, 13)
	Text( 16, "I have understood all", JumpPage, 27)
	
	Talk( 17, "Angela: Explorer is the strongest support Class on the sea. Everyone can become one except for Carsise. You can look for Little Daniel at Argent City to become one when you reach Lv10." )
	Text( 17, "Regarding other Classes", JumpPage, 12)
	Text( 17, "Regarding Attributes", JumpPage, 13)
	Text( 17, "I have understood all", JumpPage, 27)

	Talk( 18, "Angela: Herbalist are loyal followers of Goddess Kara. They possess mystical healing ability. Only Phyllis and Ami can select to become a Herbalist. Lv 10 players can look for High Priest - Gannon in Shaitan City to become a Herbalist." )
	Text( 18, "Regarding other Classes", JumpPage, 12)
	Text( 18, "Regarding Attributes", JumpPage, 13)
	Text( 18, "I have understood all", JumpPage, 27)

	Talk( 19, "Angela: Angela: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version." )
	Text( 19, "Regarding other Classes", JumpPage, 12)
	Text( 19, "Regarding Attributes", JumpPage, 13)
	Text( 19, "I have understood all", JumpPage, 27)

	Talk( 20, "Angela: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version." )
	Text( 20, "Regarding other Classes", JumpPage, 12)
	Text( 20, "Regarding Attributes", JumpPage, 13)
	Text( 20, "I have understood all", JumpPage, 27)

	Talk( 21, "Angela: Strength increases Melee Attack power" )
	Text( 21, "Enquire about other Attributes", JumpPage, 13)
	Text( 21, "Enquire about other Classes", JumpPage, 12)
	Text( 21, "I have understood all", JumpPage, 27)

	Talk( 22, "Angela: Agility increases Attack Speed and Dodge Rate" )
	Text( 22, "Enquire about other Attributes", JumpPage, 13)
	Text( 22, "Enquire about other Classes", JumpPage, 12)
	Text( 22, "I have understood all", JumpPage, 27)

	Talk( 23, "Angela: Constitution increases Max HP and Physical Resistance" )
	Text( 23, "Enquire about other Attributes", JumpPage, 13)
	Text( 23, "Enquire about other Classes", JumpPage, 12)
	Text( 23, "I have understood all", JumpPage, 27)

	Talk( 24, "Angela: Spirit increases Max SP and Skill effect" )
	Text( 24, "Enquire about other Attributes", JumpPage, 13)
	Text( 24, "Enquire about other Classes", JumpPage, 12)
	Text( 24, "I have understood all", JumpPage, 27)

	Talk( 25, "Angela: Luck increases Critical strike and Combine success rate" )
	Text( 25, "Enquire about other Attributes", JumpPage, 13)
	Text( 25, "Enquire about other Classes", JumpPage, 12)
	Text( 25, "I have understood all", JumpPage, 27)

	Talk( 26, "Angela: Accuracy increases Hit Rate and Range Attack power" )
	Text( 26, "Enquire about other Attributes", JumpPage, 13)
	Text( 26, "Enquire about other Classes", JumpPage, 12)
	Text( 26, "I have understood all", JumpPage, 27)

	Talk( 27, "Angela: Good. Look for me if there is anything you are unsure of!")

	Talk( 28, "Angela: Well done, it looks like you now have a good grasp at basic combat and also a good idea on how item drops work. Since there is nothing much left to learn from me, why don't you go and look for my friends? If fighting is your cup of tea, seek out Little Mo. He's a patroller and is often seen patrolling about the outskirts of this city. He was last seen at (1237, 613). Another person you may like to meet would be Physican - Daisha (1352, 499), he likes collecting all sorts of stuff. I'm sure you will like to meet them." )
	Text( 28, "I would like to ask about something", JumpPage, 4 )
	Text( 28, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 28, "I have understood all",  CloseTalk )

	Talk( 29, "Angela: Very good! Now it is time for you to select your class. To become a Swordsman, go to Peter in Argent City (2192, 2767), Herbalist go to Shaitan City look for High Priest - Gannon at (862, 3500), Hunter look for Swordsman - Ray in Icicle City at (1365, 570). The path is long…Choose well." )
	Text( 29, "I would like to ask about something", JumpPage, 4 )
	Text( 29, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 29, "I have understood all",  CloseTalk)

	Talk( 30, "Angela: To check the coordinates of monsters in game, all you have to do is look for a Drunkyard in Argent City Bar at (2222, 288). He can tell you the coordinates for a fee." )

	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )

	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )

	Talk( 31, "Angela: Star of Unity is a mysterious accessory from another world. When you equip it, you might be able to activate the power of unity and something unexpected might happen. We are running a trial event \"Hoard Exchange\". All players below Lv 41 can redeem a Star of Unity to exchange for a suitable piece of equipment. Are you interested?" )
	Text( 31, "Redeem Star of Unity",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "Hoard Exchange",JumpPage, 32 )

	Talk( 32, "Thank you for using our products. If you have a \"Star of Unity\", you can redeem a Lv 50 weapon for your class. Interesting isn't it?")
	Text( 32, "Redeem class weapon", Transfer_TeamStar, 1)

	Talk( 6, "Angela: Sorry, you do not meet the requirements to redeem." )

	--InitTrigger()
	---------------------玩家超过6级完成过瑟安的战斗训练任务
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 9 )
	--TriggerCondition( 1, HasRecord, 716 )
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )

	
	AddNpcMission ( 721 )
	AddNpcMission ( 722 )
	AddNpcMission ( 724 )
	AddNpcMission ( 726 )
	AddNpcMission ( 728 )
	AddNpcMission ( 201 )
	AddNpcMission 	(406)
	AddNpcMission 	(62)
	AddNpcMission 	(63)
	AddNpcMission 	(64)
	AddNpcMission 	(65)
	AddNpcMission 	(162)
	AddNpcMission 	(163)
	AddNpcMission 	(173)
	AddNpcMission 	(190)


	MisListPage(28)
	MisListPage(29)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<新手指导·安琪露亚


----------------------------------------------------------
--							--
--							--
--		冰狼堡[冰狼堡剑士·雷欧]		--
--							--
--		136573,57078				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk78 ()
	
	-------------------转职双剑
	Talk( 1, "Ray: I am a bounty hunter. I love to hunt for undeads. If you are interested, I can recommend a few places to you." )

		----------------转职成为猎人
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000 )
	TriggerCondition( 1, HasItem, 3955, 1 )
	TriggerAction( 1, TakeItem, 3955, 1 )
	TriggerAction( 1, TakeMoney, 1000 )
	TriggerAction( 1, GiveItem, 3187, 1 , 4)
	TriggerAction( 1, GiveItem, 25, 1 , 4)
	TriggerAction( 1, SetProfession, 2 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerCondition( 2, LvCheck, ">", 7 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000 )
	TriggerCondition( 2, HasItem, 3955, 1 )
	TriggerAction( 2, TakeItem, 3955, 1 )
	TriggerAction( 2, TakeMoney, 1000 )
	TriggerAction( 2, GiveItem, 3187, 1 , 4)
	TriggerAction( 2, GiveItem, 25, 1, 4)
	TriggerAction( 2, SetProfession, 2  )
	TriggerAction( 2, JumpPage, 3 )
	TriggerFailure( 2, JumpPage, 4 )

	Talk(2, "Hi my friend. You have great reflexes, suitable to become a hunter. Why don't you become a hunter now? I believe that you will not be disappointed.")
	Text(2, "Ok, class change to be Hunter", MultiTrigger, GetMultiTrigger(), 2)
	Text(2, "No, it is good enough for now.", CloseTalk)

	Talk(3, "I have told you all I can about being a Hunter. Now its up to you to become the best Hunter.")

	Talk(4, "Want to be a Hunter? Only players Lv 8 and above who possess a Hunter Manual can register with me for 1000G. Muscular guy or little girl are not suitable.")

	----------------转职成为狙击手
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, HasMoney, 15000 )
	TriggerCondition( 1, HasItem, 3364, 1 )
	TriggerAction( 1, TakeItem, 3364, 1 )
	TriggerAction( 1, TakeMoney, 15000 )
	TriggerAction( 1, SetProfession, 12 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, HasMoney, 15000 )
	TriggerCondition( 2, HasItem, 3364, 1 )
	TriggerAction( 2, TakeItem, 3364, 1 )
	TriggerAction( 2, TakeMoney, 15000 )
	TriggerAction( 2, SetProfession, 12  )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )

	Talk(5, "Sharpshoots nowadays only want to earn more money. They will kill anyone on sight as long as there is a bounty. Friend, it seems that you are suitable to become a sharpshooter. You have a good character and build. Would you consider to be one so that you might restore the glory of the Sharpshooters one day?")
	Text(5, "Ok, I will become a Sharpshooter", MultiTrigger, GetMultiTrigger(), 2)
	Text(5, "No, it is good enough for now.", CloseTalk)

	Talk(6, "Sharpshooters are not assassins. You must not forget the principles of the sharpshooters in the future.")

	Talk(7, "Want to become a Sharpshooter? Come back here when you are Lv 40. Remember to bring along 1 Clarity Crystal and 15000G too!")

	--InitTrigger()

-------------------转猎人判断
	--TriggerCondition( 1, LvCheck, ">", 9 )
	----TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 0 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerCondition( 2, LvCheck, ">", 9 )
	--TriggerCondition( 2, IsCategory, 3 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 2 )
	--TriggerFailure( 2, JumpPage, 1 )

----------------狙击手

	--TriggerCondition( 3, LvCheck, ">", 39 )
	--TriggerCondition( 3, IsCategory, 1 )
	--TriggerCondition( 3, PfEqual, 2 )
	--TriggerAction( 3, JumpPage, 5 )
	--TriggerCondition( 4, LvCheck, ">", 39 )
	--TriggerCondition( 4, IsCategory, 3 )
	--TriggerCondition( 4, PfEqual, 2 )
	--TriggerAction( 4, JumpPage, 5 )
	--TriggerFailure( 4, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )
	
	--AddNpcMission ( 729 )
	AddNpcMission ( 101 )
	AddNpcMission ( 251 )
	AddNpcMission ( 252 )
	AddNpcMission ( 260 )
	AddNpcMission ( 261 )
	AddNpcMission 	(410)
	AddNpcMission 	(757)
	AddNpcMission 	(167)
	AddNpcMission 	(168)
	AddNpcMission 	(169)
	AddNpcMission 	(174)
	AddNpcMission 	(175)
	AddNpcMission 	(176)
	AddNpcMission 	(180)
	AddNpcMission 	(523)
	AddNpcMission(	1237	)
-------------eleven
	AddNpcMission(	5057	)
	AddNpcMission(	5061	)	
	AddNpcMission(	5069	)
----------1.7
	AddNpcMission(	5168	)
	AddNpcMission(	5090	)
	AddNpcMission (5097 )
	AddNpcMission (5098 )
	AddNpcMission (5099 )
	AddNpcMission (5100 )
	AddNpcMission (5111 )

	MisListPage(2)


	-----铁人六项
	AddNpcMission ( 6125 )


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<冰狼堡剑士·雷欧

----------------------------------------------------------
--							--
--							--
--		冰狼堡[冰狼堡商会会长·艾立克]		--
--							--
--		129486,49842				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk79 ()
	
	
	Talk( 1, "Reyno: Wherever there are money to be earned, I will be there. Hi! I am Icicle Chairman - Reyno. The richest man in the city." )
	Text( 1, "Decoct Recovery Potion", JumpPage, 5)

	--------------------炮制提神剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3138, 2 )
	TriggerCondition( 1, HasItem, 3137, 2 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3138, 2 )
	TriggerAction( 1, TakeItem, 3137, 2 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3139, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 5, "Reyno: Those herbs sold by physicians are just common herbs. Only I possess rare herbs that do miracles." )
	Text( 5, "Make Agrypnotic",MultiTrigger, GetMultiTrigger(), 1)

	----------------合成魔幻药水
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3133, 1 )
	TriggerCondition( 1, HasItem, 3134, 1 )
	TriggerCondition( 1, HasItem, 3135, 1 )
	TriggerCondition( 1, HasItem, 3136, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3133, 1 )
	TriggerAction( 1, TakeItem, 3134, 1 )
	TriggerAction( 1, TakeItem, 3135, 1 )
	TriggerAction( 1, TakeItem, 3136, 1 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3140, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Decoct Magical Potion",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Reyno: Did you wait for a long time? This is what you wanted." )
	Talk( 7, "Reyno: I do have Agrypnotic. However, you must bring me 2 Mystery Fruits, 2 Tiamari Fruits, 1 Bottle and 200G in exchange." )
	Talk( 8, "Reyno: I have with me some Magical Potion. You can bring me 1 Liquorice Potion, 1 Energetic Tea, 1 Special Ointment, 1 Snowy Soft Bud, 1 Bottle and 200G in exchange." )

	AddNpcMission 	(459)
	AddNpcMission 	(465)
	AddNpcMission 	(699)
	AddNpcMission 	(800)
	AddNpcMission	(1005)
	AddNpcMission	(1060)
	AddNpcMission	(1115)
	AddNpcMission	(1169)
	AddNpcMission(	1238	)
	--------------------1.7
	AddNpcMission ( 5084	)
	AddNpcMission ( 5085	)
	AddNpcMission ( 5086	)
	AddNpcMission ( 5087	)
	AddNpcMission (5143 )
	AddNpcMission (5144 )
	AddNpcMission (5145 )
	AddNpcMission (5146 )
	AddNpcMission (5151 )



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<商会会长·艾立克

----------------------------------------------------------
--							--
--							--
--		冰狼堡[冰狼堡贵族·马尔修斯]		--
--							--
--		134652,45141				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk80 ()
	
	
	Talk( 1, "\207\240\232\226\229\242, \255 \236\238\227\243 \241\238\231\228\224\242\252 \228\235\255 \242\229\225\255 \227\232\235\252\228\232\254!" )
	Text( 1, "\209\238\231\228\224\242\252 \239\232\240\224\242\241\234\243\254 \227\232\235\252\228\232\254",JumpPage, 2 )
	Text( 1, "\205\229\247\232\227\238... ",CloseTalk )


	Talk( 2, "\210\251 \245\238\247\229\248\252 \241\238\231\228\224\242\252 \239\232\240\224\242\241\234\243\254 \227\232\235\252\228\232\254?" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerAction( 1, CreateGuild, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "\209\238\231\228\224\242\252 \227\232\235\252\228\232\254", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Mas: \196\235\255 \242\238\227\238 \247\242\238\225 \241\238\231\228\224\242\252 \227\232\235\252\228\232\254 \242\229\225\229 \237\243\230\237\229\237 \234\224\236\229\237\252 \234\235\255\242\226\251 \232 1.000.000 \231\238\235\238\242\224!" )


	AddNpcMission ( 253 )
	AddNpcMission ( 254 )
	AddNpcMission (	453 )
	AddNpcMission 	(698)
	AddNpcMission 	(801)
	AddNpcMission	(1004)
	AddNpcMission	(1059)
	AddNpcMission	(1114)
	AddNpcMission	(1168)
	AddNpcMission	(317)
	AddNpcMission	(321)
	AddNpcMission	(322)
-----------eleven
	AddNpcMission	(5045)
	AddNpcMission	(5046)
	AddNpcMission	(5047)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<冰狼堡贵族·马尔修斯

----------------------------------------------------------
--							--
--							--
--		冰狼堡[银行出纳·布丽娜]		--
--							--
--		136058,51931				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk81 ()
	
	
	Talk( 1, "Belinda: Welcome to Icicle Bank. How may I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Vault (200G Fee)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Sorry, you do not have sufficient gold to pay for vault usage" )

	AddNpcMission	(1102)
	AddNpcMission	(187)
	AddNpcMission	(188)
	AddNpcMission	(189)
----------eleven
	AddNpcMission	(597)
	AddNpcMission	(598)	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<银行出纳·布丽娜

----------------------------------------------------------
--							--
--							--
--		冰狼堡[酒吧服务员·芭芭拉]		--
--							--
--		131083,53031				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk82 ()
	
	
	Talk( 1, "Babara: Hi, do you have any interesting story to tell?" )
	Text( 1, "Decoct Hair Colorant", JumpPage, 2)
	Text( 1, "Bake Pastry", JumpPage, 6)

-----------调配蓝色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1792, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1792, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1802, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Babara: Hi! Have you encounter anything interesting? Tell me!" )
	Text( 2, "Decoct Blue Colorant", MultiTrigger, GetMultiTrigger(), 1)
-------------------------调配紫色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1793, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1793, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1803, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Decoct Purple Colorant", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Babara: I did a great job for you! Keep it close. Look for me next time." )
	Talk( 4, "Babara: 5 Blue Dye, 1 Special Gas, 1 Rainbow Glass and 200G to make 1 Blue Colorant." )
	Talk( 5, "Babara: 5 Purple Dye, 1 Special Gas, 1 Rainbow Glass and 200G to make 1 Purple Colorant." )

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6, "Babara: I'm the only one in Icicle City who can make Elven Fruit Juice. Do you want a glass?" )
	Text( 6, "Mix Elven Fruit Juice", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "Babara: This is the Elven Fruit Juice I mixed for you. Keep it well." )

	Talk( 8, "Babara: Sorry! You do not have the required items. You need to have 10 Elven Fruits and 1 Glass to mix the drink." )
	AddNpcMission	(1078)
	AddNpcMission	(389)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<酒吧服务员·芭芭拉

----------------------------------------------------------
--							--
--							--
--		冰狼堡[服装店主·翰娜]		--
--							--
--		134926,53992				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk83 ()
	
	
	Talk( 1, "Hannah: Welcome to the Tailor Shop of Icicle City. We have all sorts of trendy clothes." )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )
	
	InitTrade()
	Defence(	0305	)
	Defence(	0481	)
	Defence(	0657	)
	Defence(	0313	)
	Defence(	0487	)
	Defence(	0665	)
	Defence(	0306	)
	Defence(	0482	)
	Defence(	0658	)
	Defence(	0311	)
	Defence(	0489	)
	Defence(	0663	)
	Defence(	0307	)
	Defence(	0483	)
	Defence(	0659	)
	Defence(	0314	)
	Defence(	0490	)
	Defence(	0666	)
	Defence(	0310	)
	Defence(	0486	)
	Defence(	0662	)
	Defence(	0491	)
	Defence(	0315	)
	Defence(	0667	)
	Defence(	0312	)
	Defence(	0488	)
	Defence(	0664	)
	Defence(	0316	)
	Defence(	0492	)
	Defence(	0668	)




	AddNpcMission ( 725 )
	AddNpcMission	(1067)
	AddNpcMission	(170)
	AddNpcMission	(171)
	AddNpcMission	(172)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<服装店主·翰娜

----------------------------------------------------------
--							--
--							--
--		冰狼堡[旅店老板·约瑟夫]		--
--							--
--		129074,54098				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk84 ()
	
	
	Talk( 1, "Yaskey: Welcome to the Inn of Icicle City. I am the owner Yaskey." )
	AddNpcMission	(1085)
	AddNpcMission	(184)
	AddNpcMission	(185)
	AddNpcMission	(186)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<旅店老板·约瑟夫

----------------------------------------------------------
--							--
--							--
--		冰狼堡[路人·丁]		--
--							--
--		133550,46900				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk85 ()
	
	
	Talk( 1, "Tink: Have you seen my three brothers? They live in Shaitan, Argent and Thundoria respectively." )
	Text( 1, "Refine", JumpPage, 2)
-------------------炼造地金矿石
	InitTrigger()
	TriggerCondition( 1, HasItem, 1781, 10 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1781, 10 )
	TriggerAction( 1, GiveItem, 1782, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )	
	Talk( 2, "Tink: I am not just a normal NPC. The game cannot do without me! Hoho! Let me prove it to you!" )
	Text( 2, "Refine Terra Gold", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Tink: Ok! This Terra Gold Ore is yours!" )
	Talk( 4, "Tink: Tink: I have a method to make Terra Gold Ore. Pass me 10 Terra Gold Fragment and 200G and it'll be yours." )

--	AddNpcMission ( 6015 )
--	AddNpcMission ( 6016 )
--	AddNpcMission ( 6019 )
--	AddNpcMission ( 6020 )
--	AddNpcMission ( 6021 )
--	AddNpcMission ( 6022 )
--	AddNpcMission ( 6023 )
--	AddNpcMission ( 6024 )

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·丁




------------------------------------------------------------
-- 白银之城:历史任务:新手指导任务
------------------------------------------------------------

function BT_NewUser001()

	Talk( 1, "Senna: Hi, I am the image consultant for Argent City. I am responsible for all newcomers and visitors. Look for me if there is something you do not understand." )
	Text( 1, "Star of Unity", JumpPage, 31 )
	Text( 1, "Regarding Argent City", JumpPage, 4 )
	Text( 1, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 1, "Regarding Monster Coordinates", JumpPage, 30 )
	Text( 1, "I have understood all",  CloseTalk)



	Talk( 4, "Argent City is a place for merchant to sell their products. Have a look around." )
	Text( 4, "Regarding Weapon Shop", JumpPage, 5 )
	Text( 4, "Regarding Armor Shop", JumpPage, 7 )
	Text( 4, "Regarding Item Shop", JumpPage, 8 )
	Text( 4, "Regarding Teleporter", JumpPage, 9 )
	Text( 4, "Regarding the Nurse", JumpPage, 10 )

	Talk( 5, "Argent City's Blacksmith Goldie deals in the sale of weapons. His weapons are of excellent quality. Go take a look. Blacksmith's shop is at Argent City's top left corner." )
	Text( 5, "Regarding other shops", JumpPage, 4 )
	Text( 5, "I have understood all",  CloseTalk )

--	Talk( 6, "Look for me again if there is anything you don't understand", CloseTalk )

	Talk( 7, "Armors made in Argent City are very durable. You can have a look at them at the top right corner of the city." )
	Text( 7, "Regarding other shops", JumpPage, 4 )
	Text( 7, "I have understood all",  CloseTalk )

	Talk( 8, "We have a lot of items here that are important to an Explorer. Check it out on the right side of the pond." )
	Text( 8, "Regarding other shops", JumpPage, 4 )
	Text( 8, "I have understood all",  CloseTalk )

	Talk( 9, "Teleporter can send you to any city in this land. They can also record the spawn point for you. She is beside the western gate." )
	Text( 9, "Regarding other shops", JumpPage, 4 )
	Text( 9, "I have understood all",  CloseTalk )

	Talk( 10, "The nurse is just slightly below the fountain. She is a gentle and caring lady that is well loved by all." )
	Text( 10, "Regarding other shops", JumpPage, 4 )
	Text( 10, "I have understood all", CloseTalk)

	
	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 10 )
	TriggerAction( 1, SetFlag, 700, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "Senna: Being a new player, you must understand the basic of each class and attributes. What you wish to know?" )
	Text( 11, "Regarding Classes", JumpPage, 12)
	Text( 11, "Regarding Attributes", JumpPage, 13)
	Text( 11, "I have understood all", JumpPage, 6 )
	--Text( 11, "Regarding Classes", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 20 )
	TriggerAction( 1, SetFlag, 700, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "Regarding Attributes", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "Senna: There are 7 basic classes in this game. Each has its unique ways and serves a special purpose in the game. Which would you like to become?" )
	Text( 12, "Regarding Swordsman", JumpPage, 14 )
	Text( 12, "Regarding Hunter", JumpPage, 15 )
--	Text( 12, "Regarding Sailor", JumpPage, 16 )
	Text( 12, "Regarding Explorer", JumpPage, 17 )
	Text( 12, "Regarding Herbalist", JumpPage, 18 )
--	Text( 12, "Regarding Artisan", JumpPage, 19 )
--	Text( 12, "Regarding Merchant", JumpPage, 20 )
	Text( 12, "Understood. Let me check out others.", JumpPage, 11 )

	Talk( 13, "Senna: Each character will have 5 base attributes. Players can increase them accordingly to raise certain aspect of their ability. Each level will reward players with 1 stat point and 1 skill point. Beginner will have 5 stat points to distribute." )
	Text( 13, "Regarding Strength", JumpPage, 21 )
	Text( 13, "Regarding Agility", JumpPage, 22 )
	Text( 13, "Regarding Constitution", JumpPage, 23 )
	Text( 13, "Regarding Spirit", JumpPage, 24 )
	--Text( 13, "Regarding Luck", JumpPage, 25 )
	Text( 13, "Regarding Accuracy", JumpPage, 26 )
	Text( 13, "Understood. Let me check out others.", JumpPage, 11 )

	Talk( 14, "Senna: Swordsman has the highest physical resistance in this game. Male character may choose to become one when they reach Lv 10. Look for Peter in Argent City to select the Swordsman class." )
	Text( 14, "Regarding other Classes", JumpPage, 12)
	Text( 14, "Regarding Attributes", JumpPage, 13)
	Text( 14, "I have understood all", JumpPage, 27)

	Talk( 15, "Senna: Hunters is the only long range class in this game. After further advancement, they can learn to use fireguns which have higher damage. Only Lance and Phyllis may become a Hunter. Players Lv 10 and above can look for Ray in Icicle to become a Hunter." )
	Text( 15, "Regarding other Classes", JumpPage, 12)
	Text( 15, "Regarding Attributes", JumpPage, 13)
	Text( 15, "I have understood all", JumpPage, 27)

	Talk( 16, "Senna: Sailor is the strongest class in the sea. It is still unreleased in current version." )
	Text( 16, "Regarding other Classes", JumpPage, 12)
	Text( 16, "Regarding Attributes", JumpPage, 13)
	Text( 16, "I have understood all", JumpPage, 27)
	
	Talk( 17, "Senna: Senna: Explorer are the best support class in the sea. Beside Carsise, all other 3 character can apply for this class. Players Lv 10 and above can talk to Little Daniel in Argent City to become an Explorer." )
	Text( 17, "Regarding other Classes", JumpPage, 12)
	Text( 17, "Regarding Attributes", JumpPage, 13)
	Text( 17, "I have understood all", JumpPage, 27)

	Talk( 18, "Resline: Herbalist are loyal followers of Goddess Kara. They possess mystical healing ability. Only Phyllis and Ami can select to become a Herbalist. Lv 10 players can look for High Priest - Gannon in Shaitan City to become a Herbalist." )
	Text( 18, "Regarding other Classes", JumpPage, 12)
	Text( 18, "Regarding Attributes", JumpPage, 13)
	Text( 18, "I have understood all", JumpPage, 27)

	Talk( 19, "Senna: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version." )
	Text( 19, "Regarding other Classes", JumpPage, 12)
	Text( 19, "Regarding Attributes", JumpPage, 13)
	Text( 19, "I have understood all", JumpPage, 27)

	Talk( 20, "Senna: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version." )
	Text( 20, "Regarding other Classes", JumpPage, 12)
	Text( 20, "Regarding Attributes", JumpPage, 13)
	Text( 20, "I have understood all", JumpPage, 27)

	Talk( 21, "Senna: Strength increases Melee Attack power" )
	Text( 21, "Enquire about other Attributes", JumpPage, 13)
	Text( 21, "Enquire about other Classes", JumpPage, 12)
	Text( 21, "I have understood all", JumpPage, 27)

	Talk( 22, "Senna: Agility increases Attack Speed and Dodge Rate" )
	Text( 22, "Enquire about other Attributes", JumpPage, 13)
	Text( 22, "Enquire about other Classes", JumpPage, 12)
	Text( 22, "I have understood all", JumpPage, 27)

	Talk( 23, "Senna: Constitution increases Max HP and Physical Resist" )
	Text( 23, "Enquire about other Attributes", JumpPage, 13)
	Text( 23, "Enquire about other Classes", JumpPage, 12)
	Text( 23, "I have understood all", JumpPage, 27)

	Talk( 24, "Senna: Spirit increases Max SP and certain skill effect" )
	Text( 24, "Enquire about other Attributes", JumpPage, 13)
	Text( 24, "Enquire about other Classes", JumpPage, 12)
	Text( 24, "I have understood all", JumpPage, 27)

	Talk( 25, "Senna: Luck increases Critical Rate and Combining Rate" )
	Text( 25, "Enquire about other Attributes", JumpPage, 13)
	Text( 25, "Enquire about other Classes", JumpPage, 12)
	Text( 25, "I have understood all", JumpPage, 27)

	Talk( 26, "Senna: Accuracy increases Hit Rate and Range Attack power" )
	Text( 26, "Enquire about other Attributes", JumpPage, 13)
	Text( 26, "Enquire about other Classes", JumpPage, 12)
	Text( 26, "I have understood all", JumpPage, 27)

	Talk( 27, "Senna: Ok, look for me again if you have something that you do not understand.")
	
	Talk( 28, "Well done, it looks like you now have a good grasp at basic combat and also a good idea on how item drops work. Since there is nothing much left to learn from me, why don't you go and look for my friends? If fighting is your cup of tea, seek out Marcusa. He's a patroller and is often seen patrolling about the outskirts of this city. He was last seen at (2085, 2742). Another person you may like to meet would be Ditto (2250, 2770), Argent City's famous physician. Lately, he has been looking for helpers to help him collect more ingredients for his medicine. If you are interested, you can look for him on the right side of the city fountain (2250, 2770)." )
	Text( 28, "Regarding Argent City", JumpPage, 4 )
	Text( 28, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 28, "I have understood all",  CloseTalk)

	Talk( 29, "Senna: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). Explorer look for Little Daniel at (2193, 2730). You can reach Argent or Shaitan by using the teleporter." )
	Text( 29, "I would like to ask about something", JumpPage, 4 )
	Text( 29, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 29, "I have understood all",  CloseTalk )

	Talk( 30, "Senna: To check the coordinates of monsters in game, all you have to do is look for a Drunkyard in Argent City Bar at (2222, 288). He can tell you the coordinates for a fee." )
	
	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )

	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 31, "Senna: Star of Unity is a mysterious accessory from another world. When you equip it, you might be able to activate the power of unity and something unexpected might happen. We are running a trial event \"Hoard Exchange\". All players below Lv 41 can redeem a Star of Unity to exchange for a suitable piece of equipment. Are you interested?" )
	Text( 31, "Redeem Star of Unity",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "Hoard Exchange",JumpPage, 32 )

	Talk( 32,"Thank you for using our products. If you have a \"Star of Unity\", you can redeem a Lv 50 weapon for your class. Interesting isn't it?")
	Text( 32, "Redeem class weapon", Transfer_TeamStar, 1)

	Talk( 6, "Senna: I'm sorry, you are not qualified to receive the prize" )

	--InitTrigger()
	---------------------玩家超过6级完成过瑟安的战斗训练任务
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 8 )
	--TriggerCondition( 1, HasRecord, 704)
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 701 )
	AddNpcMission ( 702 )
	AddNpcMission ( 704 )
	AddNpcMission ( 706 )
	AddNpcMission ( 708 )
	AddNpcMission ( 200 )
	AddNpcMission 	(402)
	AddNpcMission 	(50)
	AddNpcMission 	(51)
	AddNpcMission 	(61)
	AddNpcMission 	(62)
	AddNpcMission 	(63)
	AddNpcMission 	(64)
	AddNpcMission 	(65)
	AddNpcMission 	(82)

	MisListPage(28)
	MisListPage(29)
-----------------二月-------------压岁包
	--AddNpcMission 	(5507)
end




------------------------------------------------------------
-- 通用竞技场脚本
------------------------------------------------------------

function r_talk87 ()

	Talk( 1, "Arena Administrator: Hi! I am the Arena Administrator. Do you wish to prove your capability? Or challenge other players?" )
	Text( 1, "Obtain Medal of Valor", JumpPage, 2)
	Text( 1, "Party Challenge Honor System", JumpPage, 6)
	Text( 1, "Honor Exchange", JumpPage, 3)
	Text( 1, "Record Current Challenge Location", SetSpawnPos, "Argent Bar")

	Talk( 2, "Arena Administrator: Hi young man, to obtain the Medal of Valor, you need to be above Lv25, prepare 50000G as administration fee along with the Medal of Valor, you will be able to participate in party pk. This Medal of Valor will forever with you. You won't be able to throw, destroy or sell it." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 25 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerCondition( 1, NoItem, 3849, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 3849, 1, 97 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Obtain Medal of Valor", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Arena Administrator: To exchange for Honor points, you will need to have Party Contribution points. They can be obtained by winning party challenge. Each Honor point requires 10 Party Contribution points and 500G." )
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 10 )
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, TakeOffer, 10 )
	TriggerAction( 1, AddCredit, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Redeem 10 Party Contribution points", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 50 )
	TriggerCondition( 1, HasMoney, 2500 )
	TriggerAction( 1, TakeMoney, 2500 )
	TriggerAction( 1, TakeOffer, 50 )
	TriggerAction( 1, AddCredit, 5 )
	TriggerFailure( 1, JumpPage, 11 )
	Text( 3, "Redeem 50 Party Contribution points", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 100 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, TakeOffer, 100 )
	TriggerAction( 1, AddCredit, 10 )
	TriggerFailure( 1, JumpPage, 12 )
	Text( 3, "Redeem 100 Party Contribution points", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 300 )
	TriggerCondition( 1, HasMoney, 15000 )
	TriggerAction( 1, TakeMoney, 15000 )
	TriggerAction( 1, TakeOffer, 300 )
	TriggerAction( 1, AddCredit, 30 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 3, "Redeem 300 Party Contribution points", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "Arena Administrator: Sorry, you need to have at least 1 empty inventory slot, higher than Lv25 with at least 50000G. Each person is limit to 1 Medal of Valor." )

	Talk( 5, "Arena Administrator: Hi! To exchange 10 Party Contribution points for 1 Honor point, you will need to have 10 Party Contribution points, 500G and a negative Honor value." )

	Talk( 6, "Arena Administrator: Regarding Honor system as followed" )
	Text( 6, "Regarding Battle Count", JumpPage, 7)
	Text( 6, "Regarding Challenge Honor", JumpPage, 8)
	Text( 6, "Regarding Victory Honor", JumpPage, 9)
	Text( 6, "Regarding Escape Penalty", JumpPage, 10)

	Talk( 7, "Arena Administrator: Each battle will increase battle count by 1" )

	Talk( 8, "Arena Administrator: Each kill will increase Kill count by 1 and 1 Honor point (Opponent lower by 10 levels will not have any Honor. Those higher by 10 levels will earn a bonus 1 Honor). Vice versa for those defeated in challenge." )

	Talk( 9, "Arena Administrator: Each victory to the party will increase victory count by 1 and gain Honor points according to the differences between the average level of the two parties." )

	Talk( 10, "Arena Administrator: Each time a party escape or quit battle, System will deduct Honor points according to the average level of both party and an additional of 2 Honor points per person. The other party will gain Honor points based on those lost by the party." )

	Talk( 11, "Arena Administrator: Hi! To exchange 50 Party Contribution points for 5 Honor points, you will need to have 50 Party Contribution points, 2500G and a negative Honor value." )

	Talk( 12, "Arena Administrator: Hi, 100 Party Contribution points can be exchanged for 10 Honor points. You also need to pay 5000G and have a negative Honor point value in order to exchange." )

	Talk( 13, "Arena Administrator: Hi, exchanging 300 Party Contribution points for 30 Honor points requires 300 Party Contribution points, 15000G and negative Honor points" )

end



------------------------------------------------------------
-- 白银城——巡逻兵·马尔斯
------------------------------------------------------------

function r_talk88 ()

	Talk( 1, "Marcusa: Hi, I am new around here. My name is Marcusa. Wonder why so many squids appear outside of Argent. My captain sends me to clear up the mess they did with their ink…sob…sob. New man always gets bullied…" )

	Talk( 2, "Marcusa: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). Explorer look for Little Daniel at (2193, 2730). You can reach Icicle or Shaitan by using the teleporter." )


	---------------------玩家超过9级
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 730 )
	--AddNpcMission ( 736 )
	--AddNpcMission ( 737 )
	AddNpcMission ( 400 )
	AddNpcMission ( 52 )
	AddNpcMission ( 53 )
	AddNpcMission ( 54 )

	MisListPage(2)

end

------------------------------------------------------------
-- 沙岚城——巡逻兵·迈克
------------------------------------------------------------

function r_talk89 ()

	Talk( 1, "Michael: Hi, I am suppose to patrol around here.. You better be careful as the scorpions here are dangerous. Its so boring…" )
	
	Talk( 2, "Michael: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Icicle or Argent by using the teleporter." )

	---------------------玩家超过9级
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 731 )
	--AddNpcMission ( 740 )
	--AddNpcMission ( 741 )
	AddNpcMission ( 235 )
	AddNpcMission ( 236 )
	AddNpcMission ( 241 )
	AddNpcMission ( 242 )
	AddNpcMission 	(412)
	AddNpcMission 	(85)
	AddNpcMission 	(86)
	AddNpcMission 	(87)
	AddNpcMission 	(922)--------------------------------------------
	AddNpcMission 	(923)
	AddNpcMission 	(924)------------


	MisListPage(2)

end

------------------------------------------------------------
-- 冰狼堡——巡逻兵·小莫
------------------------------------------------------------

function r_talk90 ()

	Talk( 1, "Little Mo: I am supposed to patrol around this area all day long. It is so boring and cold around here. Do you have something for me to eat? I am so hungry. There are no good foods around here…" )

	Talk( 2, "Little Mo: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Icicle or Shaitan by using the teleporter." )

	---------------------玩家超过9级
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 732 )
	--AddNpcMission ( 742 )
	--AddNpcMission ( 743 )
	AddNpcMission ( 255 )
	AddNpcMission ( 256 )
	AddNpcMission 	(408)
	AddNpcMission 	(164)
	AddNpcMission 	(165)
	AddNpcMission 	(166)
	AddNpcMission 	(177)
	AddNpcMission 	(178)
	AddNpcMission 	(179)


	MisListPage(2)

end

------------------------------------------------------------
-- 沙岚城——药材商人·沙拉拉
------------------------------------------------------------

function r_talk91 ()

	Talk( 1, "Shala: Hey hey...I am the physician in Shaitan. I have all you needed!" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )
	
	Talk( 2, "Shala: Very good. You have advanced to Lv9. You can select a class at Lv 10. Now is the time for you to make a decision. Look for Peter in Argent City at (2192, 2767) if you want to become a Swordsman. Look for High Priest - Gannon in Shaitan City at (862, 3500) to be a Herbalist. To be a Hunter, look for Swordsman Ray in Icicle City at (1365, 570). As the journey to Argent and Icicle is too far, look for the Teleporter to teleport you there in an instant." )
	Text( 2, "Trade", BuyPage )
	Text( 2, "Nothing...",CloseTalk )

	InitTrade()
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


	---------------------玩家超过9级
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerFailure( 1, JumpPage, 1 )
	--Start( GetMultiTrigger(), 1 )

	AddNpcMission ( 717 )
	--AddNpcMission ( 734 )
	--AddNpcMission ( 744 )
	--AddNpcMission ( 745 )

	MisListPage(2)

end 

------------------------------------------------------------
--卡尔加德雪原    旅行医生·瓦罗温妮
------------------------------------------------------------

function r_talk92 ()

	Talk( 1, "Chivo: Hi, I am Chivo. I am the only doctor around here. You need any herbs?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission(	471	)
	AddNpcMission(	472	)
	AddNpcMission	(753)
	
end

------------------------------------------------------------
-- 赖安森林——旅行医生·米奈希尔
------------------------------------------------------------

function r_talk93 ()

	Talk( 1, "Minoseva: Hi, I am Minoseva. There is no other doctor nearby. Do you need some medicine?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission(	1442	)
	AddNpcMission (	1900	)

	---------------白羊
	AddNpcMission	(5567)
	AddNpcMission	(5568)
--	AddNpcMission ( 6052 )
--	AddNpcMission ( 6053 )
	


	
end

------------------------------------------------------------
-- 德尔维平原-----福克
------------------------------------------------------------

function r_talk94 ()

	Talk( 1, "Fukei: You may say that I am arrogant! But my dream is to be a proud sailor? Did I say that?" )

end

------------------------------------------------------------
-- 冰极补给站-----法迪尔
------------------------------------------------------------

function r_talk95 ()

	Talk( 1, "Fardey: My dumb friend is thinking to bring winter clothings to sell in the hot and dry Shaitan City…What can I do to deter him…." )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
		
	AddNpcMission	(1065)
	AddNpcMission	(	869	)
	AddNpcMission	(	872	)
	AddNpcMission	(	874	)
	AddNpcMission	(	878	)
	AddNpcMission	(	886	)
	AddNpcMission	(	889	)
	AddNpcMission	(	470	)
	AddNpcMission(	1738	)
	AddNpcMission (	1927	)
	AddNpcMission (	1948	)

	------------------二月
	--AddNpcMission (5504	)



end

------------------------------------------------------------
-- 德尔维平原-----席特
------------------------------------------------------------

function r_talk96 ()

	Talk( 1, "Xitron: Everyone says that I'm a wolf in sheep's clothing. Hehe." )

end

------------------------------------------------------------
-- 德尔维平原-----严罗塔
------------------------------------------------------------

function r_talk97 ()

	Talk( 1, "Kentaro: Life is short like a fleeting snowflake which melts before it reaches the ground." )

	AddNpcMission 	(409)
	AddNpcMission 	(415)
	AddNpcMission 	(424)
	AddNpcMission 	(426)
	AddNpcMission 	(449)
	AddNpcMission 	(809)
	AddNpcMission 	(813)
	AddNpcMission(	1431	)
	AddNpcMission (	1901	)
----------eleven
	AddNpcMission (	5048	)
	AddNpcMission (	5049	)
	AddNpcMission (	5050	)
	AddNpcMission (	5051	)
	AddNpcMission (	5052	)
--	AddNpcMission ( 6030 )
--	AddNpcMission ( 6031 )

end

------------------------------------------------------------
-- 德尔维平原-----布布
------------------------------------------------------------

function r_talk98 ()

	Talk( 1, "Bubu: My father is a pirate so I want to join the Navy and be their spy!" )

end

------------------------------------------------------------
-- 德尔维平原-----鲁鲁
------------------------------------------------------------

function r_talk99 ()

	Talk( 1, "Lulu: Haha! See no evil!" )

	AddNpcMission(	1736	)
	AddNpcMission (	1925	)
	AddNpcMission (	1946	)

	---------------白羊
	AddNpcMission	(5561)
	AddNpcMission	(5562)
--	AddNpcMission ( 6040 )
--	AddNpcMission ( 6041 )



end

------------------------------------------------------------
-- 德尔维平原-----奥迪斯.闪光
------------------------------------------------------------

function r_talk100()

	Talk( 1, "Odessis: When I am old, I want to move to Demon Isle. To be able to see the magnificient volcanic eruption." )

	AddNpcMission (	454	)
	AddNpcMission (	458	)
	AddNpcMission 	(654)
	AddNpcMission 	(657)
	AddNpcMission 	(658)
	AddNpcMission 	(663)
	AddNpcMission 	(666)
	AddNpcMission	(1110)
	AddNpcMission(	1584	)
	AddNpcMission (	1914	)

	




end

------------------------------------------------------------
-- 德尔维平原-----梅尔
------------------------------------------------------------

function r_talk101()

	Talk( 1, "Melissa: To end a gossip, start another." )

end

------------------------------------------------------------
-- 德尔维平原-----古博拉
------------------------------------------------------------

function r_talk102()

	Talk( 1, "Gador: I have written a bestseller by the name of \"Beach Boys with Tees\". I heard its popular among the pirates." )

	AddNpcMission 	(603)
	AddNpcMission 	(608)
	AddNpcMission 	(613)
	AddNpcMission 	(615)
	AddNpcMission 	(618)


end

------------------------------------------------------------
-- 德尔维平原-----小库尔森
------------------------------------------------------------

function r_talk103()

	Talk( 1, "Little Cuwen: Mum say I should not talk to stranger…Can I have a sweet?" )

end

------------------------------------------------------------
-- 德尔维平原-----玛姬婶婶
------------------------------------------------------------

function r_talk104()

	Talk( 1, "Aunt Mary: I love to eat Black Forest Cake, baked with a thick layer of chocolates on top. Yummy…It makes me drool." )

end

------------------------------------------------------------
-- 德尔维平原-----瓦萨法尔
------------------------------------------------------------

function r_talk105()

	Talk( 1, "Waala: Tell you a secret…Recently, my friends and I made a new card game. It requires 4 person and 108 cards. Each of us sit in a circle and…." )

	AddNpcMission 	(451)
	AddNpcMission 	(457)
	AddNpcMission 	(621)
	AddNpcMission 	(625)
	AddNpcMission(	1590	)
	AddNpcMission (	1902	)
	AddNpcMission (	1940	)

	




end

------------------------------------------------------------
-- 德尔维平原-----朱丽布玛
------------------------------------------------------------

function r_talk106()

	Talk( 1, "Julie Burn: Do you want to know why the blacksmith is bald? I like to gossip? You are so boring!" )

	AddNpcMission 	(689)
	AddNpcMission	(1109)
	AddNpcMission(	1579	)
	AddNpcMission (	1918	)





end

------------------------------------------------------------
-- 德尔维平原-----阿里克斯
------------------------------------------------------------

function r_talk107()

	Talk( 1, "Alexandis: Life is tough, why not play online game?" )
	AddNpcMission 	(425)
	AddNpcMission 	(431)
	AddNpcMission 	(436)
	AddNpcMission 	(442)
	AddNpcMission 	(448)
	AddNpcMission 	(601)
	AddNpcMission 	(607)
	AddNpcMission 	(610)
	AddNpcMission 	(612)
	AddNpcMission	(1001)
	AddNpcMission	(1165)



end

------------------------------------------------------------
-- 德尔维平原-----老库尔森
------------------------------------------------------------

function r_talk108()

	Talk( 1, "Old Cuwen: In this warm summer I feel like going to a isolated island for a holiday." )

	AddNpcMission	(475)

end

------------------------------------------------------------
-- 德尔维平原-----海军列兵
------------------------------------------------------------

function r_talk109()

	Talk( 1, "Shhhh~ softer, our boss is speaking" )

end

------------------------------------------------------------
-- 帕克荒漠-----吉尔尼尼斯
------------------------------------------------------------

function r_talk110()

	Talk( 1, "Jernis: My ancestors are all woodcutters. Some environmentalist has been picking on my family recently. So troublesome." )

	AddNpcMission 	(411)
	AddNpcMission 	(669)
	AddNpcMission 	(675)
	AddNpcMission 	(678)
	AddNpcMission 	(680)
	AddNpcMission	(1075)



end

------------------------------------------------------------
-- 帕克荒漠-----米尔米莉
------------------------------------------------------------

function r_talk111()

	Talk( 1, "Minelli: Hi how are you? My friends all call me Elli. I don't mind if you call me that too." )

	AddNpcMission 	(456)
	AddNpcMission 	(656)
	AddNpcMission 	(661)
	AddNpcMission 	(665)
	AddNpcMission	(1142)
	AddNpcMission(	1582	)
	AddNpcMission (	1910	)
---------eleven
	AddNpcMission (	5025	)
	AddNpcMission ( 5026	)
	AddNpcMission ( 5029	)
	AddNpcMission (	5070)
	AddNpcMission ( 5072	)
	AddNpcMission ( 5073	)
	------------1.7
	AddNpcMission ( 5074	)
	AddNpcMission(	5092 )
	AddNpcMission (5101 )
	AddNpcMission (5102 )
	AddNpcMission (5103 )
	AddNpcMission (5104 )
	AddNpcMission (5113 )
--	AddNpcMission ( 6032 )
--	AddNpcMission ( 6033 )

end

------------------------------------------------------------
-- 帕克荒漠-----奥格森
------------------------------------------------------------

function r_talk112()

	Talk( 1, "Augustan: There are many myth and legends waiting for a great adventurer to solve them all!" )

	AddNpcMission	(1111)


end

------------------------------------------------------------
-- 帕克荒漠-----加西亚·破帆
------------------------------------------------------------

function r_talk113()

	Talk( 1, "Jeynaa: Hi, I am Jeynaa." )
	AddNpcMission	(1131)

end

------------------------------------------------------------
-- 帕克荒漠-----迪迪马修
------------------------------------------------------------

function r_talk114()

	Talk( 1, "Ditaro: Great adventurers! Let's set off for the big ocean!" )

	AddNpcMission 	(640)
	AddNpcMission 	(644)
	AddNpcMission 	(645)
	AddNpcMission 	(646)
	AddNpcMission 	(651)
	AddNpcMission	(1119)
	AddNpcMission(	1437	)
	AddNpcMission (	1911	)
--	AddNpcMission ( 6038 )
--	AddNpcMission ( 6039 )

	





end

------------------------------------------------------------
-- 帕克荒漠-----俄克琉西斯
------------------------------------------------------------

function r_talk115()

	Talk( 1, "Ruben Actus: I want to earn a lot of gold. If that cannot be done, I need a party mate that is able to supply me with lots of gold." )
	AddNpcMission	(1120)


end

------------------------------------------------------------
-- 帕克荒漠-----梅利西亚·猫眼
------------------------------------------------------------

function r_talk116()

	Talk( 1, "Merrix: Why you look so surprised? Have you not seen a female pirate before?" )
	
	AddNpcMission ( 245 )
	AddNpcMission ( 246 )
	AddNpcMission ( 247 )
	AddNpcMission ( 249 )
	AddNpcMission ( 250 )
	AddNpcMission (1141)

end

------------------------------------------------------------
-- 帕克荒漠-----古得塔克·灰墙
------------------------------------------------------------

function r_talk117()

	Talk( 1, "Gudas: Who say I will get seasick, in this golden era, how can I be seasick! I am only not accustomed to the new ship." )

end

------------------------------------------------------------
-- 帕克荒漠-----奎赛斯·狂沙
------------------------------------------------------------

function r_talk118()

	Talk( 1, "Gasardis: It doesn't pay to be kind…" )
	
	AddNpcMission ( 257 )
	AddNpcMission ( 258 )
	AddNpcMission ( 259 )
	AddNpcMission 	(435)
	AddNpcMission 	(686)
	AddNpcMission 	(691)
	AddNpcMission 	(693)
	AddNpcMission 	(694)
	AddNpcMission	(1082)



end

------------------------------------------------------------
-- 帕克荒漠-----通灵者·月光眼
------------------------------------------------------------

function r_talk119()

	Talk( 1, "Oracle Moonlight: I can see what others cannot see…like the shadow behind you…" )

	AddNpcMission 	(804)
	AddNpcMission 	(808)
	
	AddNpcMission	(	468	)
	AddNpcMission(	1586	)
	AddNpcMission (	1920	)

	
---------------白羊
	AddNpcMission	(5585)
	AddNpcMission	(5586)



end

------------------------------------------------------------
-- 帕克荒漠-----卡尔苏斯·泥巴
------------------------------------------------------------

function r_talk120()

	Talk( 1, "Kavosky: I do not envy being Argent secretary or a high ranking officer of Thundoria. I only want to be myself." )

	AddNpcMission 	(407)
	AddNpcMission 	(638)
	AddNpcMission 	(642)
	AddNpcMission(	1438	)
	AddNpcMission (	1912	)

	



end

------------------------------------------------------------
-- 帕克荒漠-----尼里艾亚·长发
------------------------------------------------------------

function r_talk121()

	Talk( 1, "Neila: Ya, you…me….that…oh….Sorry! Did I say anthing?" )

	
	AddNpcMission	(	870	)
	AddNpcMission	(	875	)
	AddNpcMission	(	876	)
	AddNpcMission	(	880	)
	AddNpcMission	(	882	)
	AddNpcMission	(	885	)
	AddNpcMission	(	888	)
	AddNpcMission	(	891	)
	AddNpcMission	(	892	)
	AddNpcMission(	1735	)
	AddNpcMission (	1924	)
	AddNpcMission (	1945	)

	


end

------------------------------------------------------------
-- 帕克荒漠-----克莉莉雅
------------------------------------------------------------

function r_talk122()

	Talk( 1, "Geliya: Argent City is well known as a trendsetter. Those pirates cannot match it." )

	AddNpcMission 	(428)
	AddNpcMission 	(812)
	AddNpcMission	(1025)
	AddNpcMission	(1188)


end

------------------------------------------------------------
-- 帕克荒漠-----贝克
------------------------------------------------------------

function r_talk123()

	Talk( 1, "Beck: I have a brother named Ham. However, I am cuter!" )

end

------------------------------------------------------------
-- 帕克荒漠-----汉姆
------------------------------------------------------------

function r_talk124()

	Talk( 1, "Ham: I have a brother by the name of Beck. But I am the better half." )

end

------------------------------------------------------------
-- 帕克荒漠-----爱尔尤利·微风
------------------------------------------------------------

function r_talk125()

	Talk( 1, "Love Yuri: Sigh…Love is so near yet so far…Sigh…" )

end

------------------------------------------------------------
-- 帕克荒漠-----薇莉尔
------------------------------------------------------------

function r_talk126()

	Talk( 1, "Willi: First! Never say that I am fat! Second! Never say that I am plump! Third! Don't tell me that I look like a pig! Ok…you can speak now." )

	AddNpcMission 	(685)
	AddNpcMission 	(688)
	AddNpcMission 	(690)
	AddNpcMission	(1097)
--	AddNpcMission ( 6034 )
--	AddNpcMission ( 6035 )


end
------------------------------------------------------------
-- 帕克荒漠-----冬达米婆婆
------------------------------------------------------------
function r_talk127()
Talk( 1, "Granny Dong: Young fellow…explore while you are still young." )
	
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1557 )
	TriggerCondition( 1, NoRecord, 1558 )
	TriggerCondition( 1, NoRecord, 1559 )
	TriggerCondition( 1, NoRecord, 1560 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "Hello!",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerCondition( 1, HasMission, 1561 )
	TriggerCondition( 1, HasRecord, 1558 )
	TriggerCondition( 1, HasRecord, 1559 )
	TriggerCondition( 1, NoRecord, 1569 )
	TriggerCondition( 1, NoRecord, 1561 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "Hello again!",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1, "I am only passing by",JumpPage, 3  )
	
	InitTrigger()
	TriggerAction( 1, SetRecord, 1558 )
	TriggerAction( 1, SetRecord, 1559 )
	TriggerAction( 1, JumpPage, 4 )
	Talk( 2, "Granny Dong: Do you think egg come first or the chicken?")
	Text(2, "Chicken first", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerAction( 1, SetRecord, 1558 )
	TriggerAction( 1, SetRecord, 1560 )
	TriggerAction( 1, JumpPage, 5 )
	Text(2, "Egg first", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3, "Granny Dong: Young friends, Granny is very busy. If theres nothing important, please move away a little bit~~")
	Talk( 10, "Granny Dong: Young friend, you have answered wrongly. Think it over before coming again.")

	Talk( 4, "Granny Dong: You are gifted! Not bad!")

	Talk( 5, "Granny Dong: Can it be that Weird Grampa's disease is infecteous!?")
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1563 )
	TriggerAction( 1, JumpPage, 7 )
	Talk( 6, "Granny Dong: A rabbit and a tortoise had a race. Who won?")
	Text( 6, "turtle",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6, "Rabbit",JumpPage, 10  )

	Talk( 7, "Granny Dong: Of course the tortoise won, because it's a tortoise that runs super fast.")
	Text( 7, "Next question",JumpPage, 8  )
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1564 )
	TriggerAction( 1, JumpPage, 9 )
	Talk( 8, "Granny Dong: A rabbit and a turtle with sunglasses in a race, who will be the winner?")
	Text( 8, "Turtle with Sunglasses",MultiTrigger, GetMultiTrigger(), 1 )
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1565 )
	TriggerAction( 1, JumpPage, 9 )
	Text( 8, "Rabbit",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 9, "Granny Dong: The rabbit did not win. It is because the turtle with sunglasses is a speedo racer! Hoho!")
	--Start( GetMultiTrigger(), 1 )
	AddNpcMission 	(417)
	AddNpcMission 	(674)
	AddNpcMission 	(676)
	AddNpcMission 	(681)
	AddNpcMission	(1064)
	AddNpcMission	(752)

	
	------------------1.7
	AddNpcMission (5153 )
	AddNpcMission (5154 )
	AddNpcMission (5155 )
	AddNpcMission (5156 )
	AddNpcMission (5157 )
	AddNpcMission (5159 )
	end

------------------------------------------------------------
-- 帕克荒漠-----罗宾斯·背包
------------------------------------------------------------

function r_talk128()

	Talk( 1, "Robin: When I was small, my father would put me in his backpack and roam the world. I wanted to do the same too…" )

end

------------------------------------------------------------
-- 帕克荒漠-----瑞得·皮戈
------------------------------------------------------------

function r_talk129()

	Talk( 1, "Don Pitt: Ah Ha! How are you. Why have you come looking for me, Don Pitt!" )

	AddNpcMission 	(623)
	AddNpcMission 	(627)
	AddNpcMission 	(634)
	AddNpcMission	(1031)
	AddNpcMission	(1194)
	AddNpcMission(	1591	)
	AddNpcMission (	1905	)
	AddNpcMission (	1941	)

	---------------白羊
	AddNpcMission	(5583)
	AddNpcMission	(5584)



end

------------------------------------------------------------
-- 阿兰比斯冰原-----温莉·冰泉
------------------------------------------------------------

function r_talk130()

	Talk( 1, "Wynne: My home is in Icicle Castle. Have you visited my house?" )
---------------白羊
	AddNpcMission	(5581)
	AddNpcMission	(5582)
end

------------------------------------------------------------
-- 阿兰比斯冰原-----雷斯·小虫
------------------------------------------------------------

function r_talk131()

	Talk( 1, "Lessie: People always refer to me as a little worm…But I will not stay this small forever…" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----达米尔·嘟嘟
------------------------------------------------------------

function r_talk132()

	Talk( 1, "Dodo: Dodo, Dodo, Dodo..." )
	AddNpcMission	(1061)
	AddNpcMission	(1007)
	AddNpcMission	(1062)
	AddNpcMission	(1117)
	AddNpcMission	(1171)


end

------------------------------------------------------------
-- 阿兰比斯冰原-----索拉姆·萨加
------------------------------------------------------------

function r_talk133()

	Talk( 1, "Solaru: Have you heard of the PKO treasure chest? I have been looking for it for many many years!" )

	AddNpcMission 	(421)
	AddNpcMission 	(427)
	AddNpcMission 	(438)
	AddNpcMission 	(444)
	AddNpcMission 	(653)
	AddNpcMission 	(659)
	AddNpcMission 	(660)
	AddNpcMission 	(664)
	AddNpcMission	(1151)
	AddNpcMission(	1583	)
	AddNpcMission (	1913	)






end

------------------------------------------------------------
-- 阿兰比斯冰原-----狼牙拉姆
------------------------------------------------------------

function r_talk134()

	Talk( 1, "Lamut: I cannot see any city after three days of walking….Am I lost again?" )
	AddNpcMission	(1083)

end

------------------------------------------------------------
-- 阿兰比斯冰原-----狼牙拉姆
------------------------------------------------------------

function r_talk135()

	Talk( 1, "Irisis: If you never bring me a letter by the \"Legendary Prince Charming\", don't talk to me…" )
	AddNpcMission	(1098)

end


------------------------------------------------------------
-- 阿兰比斯冰原-----艾伦娜
------------------------------------------------------------

function r_talk136()

	Talk( 1, "Eluna: I am preparing to go to the sales today! If I am late, nothing will be left!" )

	AddNpcMission ( 262 )
	AddNpcMission ( 263 )
	AddNpcMission ( 264 )
	AddNpcMission ( 265 )
	AddNpcMission	(1056)


end

------------------------------------------------------------
-- 阿兰比斯冰原-----赫尔达达
------------------------------------------------------------

function r_talk137()

	Talk( 1, "Shereda: Boring...this is really so boring..." )
	AddNpcMission	(1072)

end

------------------------------------------------------------
-- 阿兰比斯冰原-----约瑟夫·乔
------------------------------------------------------------

function r_talk138()

	Talk( 1, "Ciao: I hate those squids! They always spray me with their ink!" )
	AddNpcMission	(1105)

end

------------------------------------------------------------
-- 阿兰比斯冰原-----草莓优优
------------------------------------------------------------

function r_talk139()

	Talk( 1, "Strawberry: Have you seen those pinkish piglets? They are the tastiest around here." )
---------------白羊
	AddNpcMission	(5555)
	AddNpcMission	(5556)
end

------------------------------------------------------------
-- 阿兰比斯冰原-----伊文
------------------------------------------------------------

function r_talk140()

	Talk( 1, "Eve: Hi! I am Eve. What are you doing here?" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----苏珊娜
------------------------------------------------------------

function r_talk141()

	Talk( 1, "Susana: Oh my god! Time is passing me by so fast!" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----卡诺林
------------------------------------------------------------

function r_talk142()

	Talk( 1, "Caroline: I am a vegetarian, hence theres something that troubles me. Is the rolling Melon an animal or vegetable?" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----詹姆斯
------------------------------------------------------------

function r_talk143()

	Talk( 1, "Jameson: Rumored that there is a talking lamb in this world…" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----露西丽丽雅
------------------------------------------------------------

function r_talk144()

	Talk( 1, "Lucy: Hi! Visitor!" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----尤兰达克
------------------------------------------------------------

function r_talk145()

	Talk( 1, "Yulandor: I always try to earn more money by killing monsters. However, I discover that they have very small purse recently…" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----博尔芬尼
------------------------------------------------------------

function r_talk146()

	Talk( 1, "Professor Fenny: I met a mermaid once while out at sea. I forgot to ask her where she bought those alluring eyelashes." )

	AddNpcMission 	(622)
	AddNpcMission 	(624)
	AddNpcMission 	(628)
	AddNpcMission 	(630)
	AddNpcMission 	(636)
	AddNpcMission	(1006)
	AddNpcMission	(1170)
	AddNpcMission(	1592	)
	AddNpcMission (	1906	)
	AddNpcMission (	1942	)
--	AddNpcMission ( 6036 )
--	AddNpcMission ( 6037 )

	



end

------------------------------------------------------------
-- 阿兰比斯冰原-----淘淘
------------------------------------------------------------

function r_talk147()

	Talk( 1, "Berry: This sky is so blue... Blue… Ocean… Blue… Blue… Oh my… mood also… Blue… Blue!" )

	AddNpcMission ( 401 )
	AddNpcMission 	(810)
	AddNpcMission	(1040)
	AddNpcMission	(1203)
	AddNpcMission(	1433	)
	AddNpcMission (	1909	)

	
---------------白羊
	AddNpcMission	(5579)
	AddNpcMission	(5580)





end

------------------------------------------------------------
-- 阿兰比斯冰原-----科瑞其
------------------------------------------------------------

function r_talk148()

	Talk( 1, "Ketan: Hi, I am pondering why there isn't any moon here. What about you?" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----米歇尔梅林芬
------------------------------------------------------------

function r_talk149()

	Talk( 1, "Missy Elene: ..............(I don't have anything to say to you...)" )

end

------------------------------------------------------------
-- 冰狼堡-----水手·埃迪加
------------------------------------------------------------

function r_talk156()

	Talk( 1, "Ajax: Hi! I am the best sailor around here. Do you need my help?" )

end

------------------------------------------------------------
-- 古里咯利补给站-----榴莲
------------------------------------------------------------

function r_talk157()

	Talk( 1, "Durian: I am always hungry although I eat a lot. I guess it's an illness..." )

	AddNpcMission 	(419)
	AddNpcMission 	(460)
	AddNpcMission 	(600)
	AddNpcMission 	(604)
	AddNpcMission 	(606)
	AddNpcMission 	(611)
	AddNpcMission 	(614)
	AddNpcMission 	(619)
	AddNpcMission	(1028)
	AddNpcMission	(1191)
	AddNpcMission(	1434	)
	AddNpcMission (	1903	)

	---------------白羊
	AddNpcMission	(5587)
	AddNpcMission	(5588)

--	AddNpcMission ( 6042 )
--	AddNpcMission ( 6043 )


end

------------------------------------------------------------
-- 古里咯利补给站-----莲娜姨
------------------------------------------------------------

function r_talk158()

	Talk( 1, "Leyna: Wh...at...do...yyy...ou...wan...t...tooo...bbuy?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(450)
	AddNpcMission 	(452)
	AddNpcMission 	(602)
	AddNpcMission 	(605)
	AddNpcMission 	(609)
	AddNpcMission 	(616)
	AddNpcMission 	(617)
	AddNpcMission(	1435	)
	AddNpcMission (	1904	)

	



	
end

------------------------------------------------------------
-- 瓦尔诺补给站-----古奈斯
------------------------------------------------------------

function r_talk159()

	Talk( 1, "Guiderius: Buy or sell, you can come find me." )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	
	AddNpcMission 	(463)
	AddNpcMission 	(620)
	AddNpcMission 	(626)
	AddNpcMission 	(629)
	AddNpcMission 	(631)
	AddNpcMission 	(632)
	AddNpcMission 	(633)
	AddNpcMission 	(635)
	AddNpcMission 	(637)
	AddNpcMission	(1015)
	AddNpcMission	(1178)
	AddNpcMission(	1593	)
	AddNpcMission (	1907	)
	AddNpcMission (	1943	)

	


end

------------------------------------------------------------
-- 废矿补给站-----里卡尔
------------------------------------------------------------

function r_talk160()

	Talk( 1, "Kal: Hi! I am Security - Kal! This place is dangerous…" )

	AddNpcMission ( 223 )
	AddNpcMission ( 224 )
	AddNpcMission ( 225 )
	AddNpcMission ( 226 )
	AddNpcMission ( 227 )
	AddNpcMission ( 228 )
	AddNpcMission ( 229 )
	AddNpcMission ( 230 )
	AddNpcMission	(1055)
	AddNpcMission	(1217)
	AddNpcMission(	1432	)
	AddNpcMission (	1908	)

	



	
end

------------------------------------------------------------
-- 废矿补给站-----里卡尔
------------------------------------------------------------

function r_talk161()

	Talk( 1, "Drunky: Groan…I am so hungry…I lost my lunchbox…Sigh…" )

	AddNpcMission ( 284 )
	AddNpcMission ( 285 )
	AddNpcMission ( 311 )
end

------------------------------------------------------------
-- 废矿补给站-----古灵精
------------------------------------------------------------

function r_talk162()

	Talk( 1, "Greg: Hi, I am Greg. Do you need my help?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(455)
	AddNpcMission 	(461)
	AddNpcMission 	(811)
	AddNpcMission 	(814)
	AddNpcMission	(1013)
	AddNpcMission	(1014)
	AddNpcMission	(1177)

	-----铁人六项
	AddNpcMission ( 6121 )
	AddNpcMission ( 6122 )

	
end

------------------------------------------------------------
-- 温拿补给站-----琳达
------------------------------------------------------------

function r_talk163()

	Talk( 1, "Linda: I don't want to work OT! But my boss force me to OT everyday…I want a pay rise!" )
	AddNpcMission	(1027)
	AddNpcMission	(1190)
----------------1.7
	AddNpcMission (5139 )
	AddNpcMission (5140 )
	AddNpcMission (5141 )
--	AddNpcMission ( 6044 )
--	AddNpcMission ( 6045 )

end

------------------------------------------------------------
-- 温拿补给站-----达达迈亚
------------------------------------------------------------

function r_talk164()

	Talk( 1, "Dada: Hi my friend. How can you come to such a dangerous place without any supplies?" )

end

------------------------------------------------------------
-- 温拿补给站-----古力果
------------------------------------------------------------

function r_talk165()

	Talk( 1, "Gregg: Hi, is there anything you required?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	---------------白羊
	AddNpcMission	(5563)
	AddNpcMission	(5564)
end

------------------------------------------------------------
-- 巴布补给站-----蘑蘑
------------------------------------------------------------

function r_talk166()

	Talk( 1, "Momo: Hi! I am Momo. You can buy some delicious foodstuff from me." )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(433)
	AddNpcMission 	(655)
	AddNpcMission 	(662)
	AddNpcMission 	(667)
	AddNpcMission	(1143)
	AddNpcMission(	1585	)
	AddNpcMission (	1915	)

	---------------白羊
	AddNpcMission	(5577)
	AddNpcMission	(5578)




end

------------------------------------------------------------
-- 沙泉补给站-----维娜
------------------------------------------------------------

function r_talk167()

	Talk( 1, "Wenona: I am getting married soon! I want everybody to share my joy!" )

	AddNpcMission 	(418)
	AddNpcMission 	(641)
	AddNpcMission 	(650)
	AddNpcMission	(1156)

	
end


------------------------------------------------------------
-- 沙泉补给站-----菲菲
------------------------------------------------------------

function r_talk168()

	Talk( 1, "Fey Fey: Hi! My name is Fey Fey." )

	AddNpcMission 	(422)
	AddNpcMission 	(639)
	AddNpcMission 	(648)
	AddNpcMission	(1121)
	AddNpcMission(	1439	)
	AddNpcMission (	1916	)

	---------------二月
	--AddNpcMission (5503	)

---------------白羊
	AddNpcMission	(5569)
	AddNpcMission	(5572)

	
end

------------------------------------------------------------
-- 沙泉补给站-----马洛
------------------------------------------------------------

function r_talk169()

	Talk( 1, "Marcus: I can replenish your item. Need anything?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(403)
	AddNpcMission 	(413)
	AddNpcMission 	(420)
	AddNpcMission 	(643)
	AddNpcMission 	(647)
	AddNpcMission 	(649)
	AddNpcMission 	(652)
	AddNpcMission	(1140)
	AddNpcMission(	1440	)
	AddNpcMission (	1917	)

	----------------1.7
	AddNpcMission (5124 )
	AddNpcMission (5125 )
	AddNpcMission (5126 )
end

------------------------------------------------------------
-- 阿兰比斯补给站-----朱比
------------------------------------------------------------

function r_talk170()

	Talk( 1, "Zurbi: I always hear the summon of the sea. I guess there are many beautiful things to explore in this world." )

	AddNpcMission 	(429)
	AddNpcMission 	(464)
	AddNpcMission 	(466)
	AddNpcMission 	(684)
	AddNpcMission 	(696)
	AddNpcMission 	(697)
	AddNpcMission	(1108)

----------------1.7
	AddNpcMission (5136 )
	AddNpcMission (5137 )
	AddNpcMission (5138 )

end

------------------------------------------------------------
-- 沙泉补给站-----尤塔里尼
------------------------------------------------------------

function r_talk171()

	Talk( 1, "Ulkar: Hey! Do you want some bread?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(423)
	AddNpcMission 	(440)
	AddNpcMission 	(446)
	AddNpcMission 	(462)
	AddNpcMission 	(683)
	AddNpcMission 	(687)
	AddNpcMission 	(692)
	AddNpcMission 	(695)
	AddNpcMission(	1580	)
	AddNpcMission (	1919	)
	AddNpcMission (	1955	)

	




end

------------------------------------------------------------
-- 骷髅营地补给站-----修司
------------------------------------------------------------

function r_talk172()

	Talk( 1, "Xeus: Kill-stealing is despicable!" )

	AddNpcMission 	(802)
	AddNpcMission 	(807)
	AddNpcMission	(1100)
	AddNpcMission(	1587	)
	AddNpcMission (	1921	)
	AddNpcMission (	1922	)
----------------1.7
	AddNpcMission (5127 )
	AddNpcMission (5128 )
	AddNpcMission (5129 )
--	AddNpcMission ( 6046 )
--	AddNpcMission ( 6047 )

	


end

------------------------------------------------------------
-- 骷髅营地补给站-----嘻嘻哈哈
------------------------------------------------------------

function r_talk173()

	Talk( 1, "Hoho: Hi, I am incharge of replenishment. Do you need anything?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(467)
	AddNpcMission 	(803)
	AddNpcMission(	1588	)
	AddNpcMission (	1923	)
	AddNpcMission (	1944	)

	





end

------------------------------------------------------------
-- 冰极补给站-----米开朗费罗
------------------------------------------------------------

function r_talk174()

	Talk( 1, "Mekkilon: My father admired a famous artist and so he named me after him." )

	
	AddNpcMission	(	871	)
	AddNpcMission	(	873	)
	AddNpcMission	(	879	)
	AddNpcMission	(	887	)
	AddNpcMission	(	890	)
	AddNpcMission	(	893	)
	AddNpcMission(	1737	)
	AddNpcMission (	1926	)
	AddNpcMission (	1947	)

	



end

------------------------------------------------------------
-- 冰都补给站-----奈奈
------------------------------------------------------------

function r_talk175()

	Talk( 1, "Nana: I guess I am stupid…being lost just outside of the city. If only I have a automated guide." )

	AddNpcMission 	(405)
	AddNpcMission 	(432)
	AddNpcMission 	(668)
	AddNpcMission 	(672)
	AddNpcMission 	(673)
	AddNpcMission 	(677)
	AddNpcMission	(1087)
	AddNpcMission(	1429	)
	AddNpcMission (	1928	)
---------------白羊
	AddNpcMission	(5589)
	AddNpcMission	(5590)
--	AddNpcMission ( 6050 )
--	AddNpcMission ( 6051 )
	




end

------------------------------------------------------------
-- 冰都补给站-----怪叟爷爷
------------------------------------------------------------

function r_talk176()

	Talk( 1, "Weird Grampa: Although I look strange, I am the healer around here. Any pretty ladies requires a check up?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(430)
	AddNpcMission 	(434)
	AddNpcMission 	(670)
	AddNpcMission 	(671)
	AddNpcMission 	(679)
	AddNpcMission 	(682)
	AddNpcMission	(1070)
	AddNpcMission(	1430	)
	AddNpcMission (	1929	)

	---------------1.7
	AddNpcMission (5148 )
	AddNpcMission (5150 )
	AddNpcMission (5152 )
	AddNpcMission (5158 )
	AddNpcMission (5160 )
	AddNpcMission (5161 )
	AddNpcMission (5162 )
	AddNpcMission (5163 )
	AddNpcMission (5164 )
	AddNpcMission (5165 )
	AddNpcMission (5166 )
	AddNpcMission (5169 )


end


------------------------------------------------------------
-- 骷髅营地补给站-----阿泰
------------------------------------------------------------

function r_talk177()

	Talk( 1, "Tae: I want to organize a music band made up of sea animals. Let the mermaids do the singing and armored crab as the drummers. I will be the lead guitarist! Hehe!" )

	AddNpcMission 	(805)
	AddNpcMission 	(806)
	AddNpcMission(	1589	)
	AddNpcMission (	1934	)
	AddNpcMission (	1949	)

	




	
end

------------------------------------------------------------
-- 德尔维平原-----贝壳商人·拉姆
------------------------------------------------------------

function r_talk221()

	Talk( 1, "Lamon: I love to collect any type of Conch. I have lots of unique Conchs. Do you wish to have a look?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Conch Energy Replenishment", JumpPage, 2 )
	Text( 1, "Nothing...",CloseTalk )


	Talk( 2, "Lamon: Corals can be recharged. In the sea, there are many regions. Wind corals need to go to Wind region, Thunder corals to Thunder region and Fog coral to Fog regions...I remember that there is a Thunder region near Argent at (2500, 2850). You can try it there. Remember to equip back the coral after it is recharged.")


	InitTrade()
	Weapon(	0817	)
	Weapon(	0818	)
	Weapon(	0867	)
	Weapon(	0868	)
	Weapon(	0872	)
	Weapon(	0873	)
	Weapon(	0635	)
	Weapon(	0636	)



end




------------------------------------------------------------
-- 白银城-----服装店助理◎蓓蓓
------------------------------------------------------------
function r_talk222()


	Talk( 1, "Bebe: Hi, I am the new tailor around here! I sell all type of clothing for Explorer." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	0335	)
	Defence(	0511	)
	Defence(	0687	)
	Defence(	0336	)
	Defence(	0512	)
	Defence(	0688	)
	Defence(	0338	)
	Defence(	0514	)
	Defence(	0690	)
	Defence(	0337	)
	Defence(	0513	)
	Defence(	0689	)
	Defence(	0340	)
	Defence(	0516	)
	Defence(	0692	)
	Defence(	0339	)
	Defence(	0515	)
	Defence(	0691	)
	Defence(	0341	)
	Defence(	0517	)
	Defence(	0693	)
	Defence(	0342	)
	Defence(	0518	)
	Defence(	0694	)
	Defence(	0345	)
	Defence(	0521	)
	Defence(	0697	)
	Defence(	0343	)
	Defence(	0519	)
	Defence(	0695	)
	Defence(	0380	)
	Defence(	0556	)
	Defence(	0732	)
	Defence(	0351	)
	Defence(	0527	)
	Defence(	0703	)
	Defence(	0386	)
	Defence(	0562	)
	Defence(	0738	)
	Defence(	0352	)
	Defence(	0528	)
	Defence(	0704	)
	Defence(	0350	)
	Defence(	0526	)
	Defence(	0702	)
	Defence(	0354	)
	Defence(	0530	)
	Defence(	0706	)
	Defence(	0353	)
	Defence(	0529	)
	Defence(	0705	)
	Defence(	0356	)
	Defence(	0532	)
	Defence(	0708	)
	Defence(	0355	)
	Defence(	0531	)
	Defence(	0707	)
	Defence(	0357	)
	Defence(	0533	)
	Defence(	0709	)
----------------1.7
	AddNpcMission (5118 )
	AddNpcMission (5119 )
	AddNpcMission (5120 )

end
------------------------------------------------------------
-- 秋之岛-----莱娜
------------------------------------------------------------
function r_talk223()


	Talk( 1, "Lanna: Hi! I am the Teleporter of Autumn Island. How can I help you?" )
	Text( 1, "Return to Icicle City", GoTo, 1318, 510, "darkblue" )

end


------------------------------------------------------------
-- 冰雪岛-----海盗杰里米
------------------------------------------------------------
function r_talk224()


	Talk( 1, "Pirate Jeremy: \"I'm a pirate! Lala! I'm a happy go lucky pirate! Oh yeah!\"" )

	AddNpcMission ( 306 )
	AddNpcMission ( 307 )
	AddNpcMission ( 308 )

end

------------------------------------------------------------
-- 鸣沙岛-----杰克船长
------------------------------------------------------------
function r_talk225()


	Talk( 1, "Captain Jack: Hoho! I am rich and handsome, the famous Jack that everybody idolize! Hoho!" )

	AddNpcMission ( 309 )
	AddNpcMission ( 310 )
	AddNpcMission ( 312 )
	AddNpcMission ( 313 )
	AddNpcMission ( 314 )
	AddNpcMission ( 315 )
	AddNpcMission ( 316 )
	AddNpcMission ( 328 )
	AddNpcMission ( 329 )
	AddNpcMission ( 333 )
	AddNpcMission ( 336 )
	AddNpcMission ( 483 )
	AddNpcMission ( 484 )
end


------------------------------------------------------------
-- 冰狼堡下城-----鲁格兰
------------------------------------------------------------
function r_talk226()


	Talk( 1, "Luke: My brother loves to create trouble for me…always expecting me to clear the mess. Sigh…" )
	
	Talk( 2, "Luke: My brother loves to create trouble for me…always expecting me to clear the mess. Sigh…")
	Text( 2, "I lost the ring you gave me", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 4144, 1 , 4)
	TriggerAction( 1, JumpPage, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "Luke: You lost such an expensive ring? Pay me 50000G and I will remake for you.")
	Text( 3, "Okay, heres 50000G.", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "This is extortion! I do not have so much", CloseTalk )

	Talk( 4, "Luke: Keep it well, this ring is for you")

	Talk( 5, "Luke: You don't seems to have enough gold...Its 50000G...")

	InitTrigger()
	-----------检测任务拿了鱼鳞戒指,但是丢了不见了
	TriggerCondition( 1, HasRecord, 260 )
	TriggerCondition( 1, NoRecord, 262 )
	TriggerCondition( 1, NoItem, 4144, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	
	Start( GetMultiTrigger(), 1 )

	AddNpcMission ( 296 )
	AddNpcMission ( 297 )
	AddNpcMission ( 298 )
	AddNpcMission ( 302 )
	AddNpcMission ( 303 )

end


------------------------------------------------------------
-- 骷髅营地补给站-----克拉拉大师
------------------------------------------------------------
function r_talk227()

	Talk( 1, "Master Kerra: Everyone thought that I have super powers. Actually, its because they do not have a strong faith." )

	AddNpcMission ( 299 )
	AddNpcMission ( 300 )
	AddNpcMission ( 469 )
	AddNpcMission ( 391 )
	----------------1.7
	AddNpcMission (5121 )
	AddNpcMission (5122 )
	AddNpcMission (5123 )
end

------------------------------------------------------------
-- 卡尔加德补给站-----萨南·格力德
------------------------------------------------------------
function r_talk228()

	Talk( 1, "Simon Gilter: Sigh…When can I become an officier in the Navy? Am I not charming?" )
	
	AddNpcMission ( 837 )
	AddNpcMission ( 838 )
	AddNpcMission ( 839 )

end

------------------------------------------------------------
-- 卡尔加德补给站-----海蓝·微风
------------------------------------------------------------
function r_talk229()

	Talk( 1, "Azur Breeze: Please remember to keep any nice looking branch for me." )

	AddNpcMission ( 840 )
---------------白羊
	AddNpcMission	(5591)
	AddNpcMission	(5592)
--	AddNpcMission ( 6048 )
--	AddNpcMission ( 6049 )

end

------------------------------------------------------------
-- 卡尔加德补给站-----?·魔力
------------------------------------------------------------
function r_talk230()

	Talk( 1, "Sa Mori: Hohoho! There isn't any lady as beautiful and gentle as me in this world." )

	AddNpcMission ( 844 )
	AddNpcMission ( 841 )
	AddNpcMission ( 842 )
	AddNpcMission ( 843 )

end

------------------------------------------------------------
-- 卡尔加德补给站-----卡休·碎石
------------------------------------------------------------
function r_talk231()

	Talk( 1, "Carin Livingstone: I hate that fat old granny over there. Still dare to claim that she is young and beautiful. Pukes!" )

	AddNpcMission ( 845 )
	AddNpcMission ( 846 )
	AddNpcMission ( 847 )
	AddNpcMission ( 848 )

end

------------------------------------------------------------
-- 冰极补给站-----塞维·朱尔
------------------------------------------------------------
function r_talk232()

	Talk( 1, "Sasha: The wind here is very big and my delicate skin often get expose to the sand particle in the wind. I use seaweed and mud found in Icespire to keep them in good condition. Do you want to try too." )
	
	AddNpcMission ( 877 )
	AddNpcMission ( 883 )
	AddNpcMission ( 884 )


end

------------------------------------------------------------
-- 冰极补给站-----凯文·狼
------------------------------------------------------------
function r_talk233()

	Talk( 1, "Kevin Wolf: I am a wolf wandering in the lonely desert…." )

	AddNpcMission ( 881 )
end

------------------------------------------------------------
-- 白银城-----潮流发型师·卡特
------------------------------------------------------------
function r_talk234()

	Talk( 1, "Cartel: Hi! Want a change of hairstyle? Be hip and keep up with the trend!" )
	Text( 1, "I want to change my hairstyle", JumpPage, 2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1807, 1 )
	TriggerAction( 1, OpenHair )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "Cartel: Acutally...I have not style any hair for a long time. But if you would like, I can change your hairdo for you. Just bring me a Hairstyling Voucher.")
	Text( 2, "Yes, I am sure", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "Forget it", CloseTalk )

	Talk( 3, "Cartel: You do not seem to have any Hairstyling Voucher. I cannot style your hair yet.")


end
----- Plastic Surgeon Test----
function r_talkpls()

	Talk( 1, "Plastic Surgeon: This is a test npc?" )
	Text( 1, " test pk state on ", JumpPage, 2)
	Text( 1, " test pk state off ", JumpPage, 3)
	
	InitTrigger()
	TriggerAction( 1, SetPkState, 1 )
	TriggerAction(1,SystemNotice, "Testing Pkstate" )
--	TriggerAction( 1, OpenChaSel )
--	TriggerAction( 1, OpenTiger )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 2, " Start Test " )
	Text( 2, " Engage ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerAction( 1, SetPkState, 0 )
	TriggerAction(1,SystemNotice, "Testing Pkstate " )
--	TriggerAction( 1, OpenChaSel )
--	TriggerAction( 1, OpenTiger )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, " Start Test " )
	Text( 3, " Dis-Engage ", MultiTrigger, GetMultiTrigger(), 1)
	

end
------------------------------------------------------------
-- 废矿补给站-----饰品商人·布卡
------------------------------------------------------------
function r_talk235()

	Talk( 1, "Pucan: I have all sorts of valuable rings and necklaces. See if there is anything you like. My prices are the cheapest around here." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	4611	)
	Defence(	4612	)
	Defence(	4613	)
	Defence(	4614	)
	Defence(	4615	)
	Defence(	4616	)
	Defence(	4617	)
	Defence(	4618	)
	Defence(	4619	)
	Defence(	4620	)

end

------------------------------------------------------------
-- 赖安森林补给站-----饰品商人·里克
------------------------------------------------------------
function r_talk236()

	Talk( 1, "Rikka: I have all sorts of valuable rings and necklaces. See if there is anything you like. My prices are the cheapest around here." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	4626	)
	Defence(	4627	)
	Defence(	4628	)
	Defence(	4629	)
	Defence(	4630	)
	Defence(	4631	)
	Defence(	4632	)
	Defence(	4633	)
	Defence(	4634	)
	Defence(	4635	)
end

------------------------------------------------------------
-- 瓦尔诺补给站-----饰品商人·费拉里
------------------------------------------------------------
function r_talk237()

	Talk( 1, "Ferrari: I have here the best rings and necklace you can find. Have a look around and see if there is anything you like." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	4631	)
	Defence(	4632	)
	Defence(	4633	)
	Defence(	4634	)
	Defence(	4635	)
	Defence(	4636	)
	Defence(	4637	)
	Defence(	4638	)
	Defence(	4639	)
	Defence(	4640	)

end

------------------------------------------------------------
-- 雷霆堡-----饰品商人·维克多
------------------------------------------------------------
function r_talk238()

	Talk( 1, "Wetigo: I have all sorts of valuable rings and necklaces. See if there is anything you like. My prices are the cheapest around here." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	4641	)
	Defence(	4642	)
	Defence(	4643	)
	Defence(	4644	)
	Defence(	4645	)
	Defence(	4646	)
	Defence(	4647	)
	Defence(	4648	)
	Defence(	4649	)
	Defence(	4650	)
	Defence(	4706	)
	Defence(	4707	)
	Defence(	4708	)
	Defence(	4709	)
	Defence(	4711	)
	Defence(	4712	)
	Defence(	4713	)
	Defence(	4714	)
	Defence(	4715	)

end

------------------------------------------------------------
-- 卡尔加德补给站-----饰品商人·艾尔
------------------------------------------------------------
function r_talk239()

	Talk( 1, "Aii: I have all sort of valuable necklace and ring. Have a look to see if anything suits you." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	4651	)
	Defence(	4652	)
	Defence(	4653	)
	Defence(	4654	)
	Defence(	4655	)
	Defence(	4656	)
	Defence(	4657	)
	Defence(	4658	)
	Defence(	4659	)
	Defence(	4660	)

end

------------------------------------------------------------
-- 巴布补给站-----饰品商人·艾伦
------------------------------------------------------------
function r_talk240()

	Talk( 1, "Accessory - Dunman: I only sell valuable rings and necklace of the best quality. Have a look around. My prices are reasonable." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	4666	)
	Defence(	4667	)
	Defence(	4668	)
	Defence(	4669	)
	Defence(	4671	)
	Defence(	4672	)
	Defence(	4673	)
	Defence(	4674	)
	Defence(	4675	)
	Defence(	4676	)
	Defence(	4677	)
	Defence(	4678	)
	Defence(	4679	)
	Defence(	4681	)
	Defence(	4682	)
	Defence(	4683	)
	Defence(	4684	)
	Defence(	4685	)

end

------------------------------------------------------------
-- 冰极补给站-----饰品商人·瑞恩
------------------------------------------------------------
function r_talk241()

	Talk( 1, "Accessory - Dunman: I only sell valuable rings and necklace of the best quality. Have a look around. My prices are reasonable." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	4686	)
	Defence(	4687	)
	Defence(	4688	)
	Defence(	4689	)
	Defence(	4691	)
	Defence(	4692	)
	Defence(	4693	)
	Defence(	4694	)
	Defence(	4695	)
	Defence(	4696	)
	Defence(	4697	)
	Defence(	4698	)
	Defence(	4699	)
	Defence(	4701	)
	Defence(	4702	)
	Defence(	4703	)
	Defence(	4704	)
	Defence(	4705	)

end


------------------------------------------------------------
-- 白银城-----清洗机
------------------------------------------------------------
function r_talk252()
	
	InitFuncList()
	AddFuncList( GiveItem,	0817	,	1	,	4)
	AddFuncList( GiveItem,	0818	,	1	,	4)
	AddFuncList( GiveItem,	0819	,	1	,	4)
	AddFuncList( GiveItem,	0867	,	1	,	4)
	AddFuncList( GiveItem,	0868	,	1	,	4)
	AddFuncList( GiveItem,	0869	,	1	,	4)
	AddFuncList( GiveItem,	0872	,	1	,	4)
	AddFuncList( GiveItem,	0873	,	1	,	4)
	AddFuncList( GiveItem,	0874	,	1	,	4)
	AddFuncList( GiveItem,	1630	,	2	,	4)
	AddFuncList( GiveItem,	1631	,	1	,	4)
	AddFuncList( GiveItem,	1632	,	1	,	4)
	AddFuncList( GiveItem,	1633	,	2	,	4)
	AddFuncList( GiveItem,	1634	,	1	,	4)
	AddFuncList( GiveItem,	1635	,	1	,	4)
	AddFuncList( GiveItem,	1636	,	2	,	4)
	AddFuncList( GiveItem,	1637	,	1	,	4)
	AddFuncList( GiveItem,	1638	,	1	,	4)
	AddFuncList( GiveItem,	1639	,	2	,	4)
	AddFuncList( GiveItem,	1640	,	1	,	4)
	AddFuncList( GiveItem,	1641	,	1	,	4)
	AddFuncList( GiveItem,	1642	,	2	,	4)
	AddFuncList( GiveItem,	1643	,	1	,	4)
	AddFuncList( GiveItem,	1644	,	1	,	4)
	AddFuncList( GiveItem,	3360	,	1	,	4)
	AddFuncList( GiveItem,	3361	,	1	,	4)
	AddFuncList( GiveItem,	3362	,	1	,	4)
	AddFuncList( GiveItem,	3363	,	1	,	4)
	AddFuncList( GiveItem,	3364	,	1	,	4)
	AddFuncList( GiveItem,	3365	,	1	,	4)
	AddFuncList( GiveItem,	3366	,	1	,	4)
	AddFuncList( GiveItem,	3367	,	1	,	4)
	AddFuncList( GiveItem,	3425	,	1	,	4)
	AddFuncList( GiveItem,	3426	,	1	,	4)
	AddFuncList( GiveItem,	3427	,	1	,	4)
	AddFuncList( GiveItem,	3428	,	1	,	4)
	AddFuncList( GiveItem,	3429	,	1	,	4)
	AddFuncList( GiveItem,	3430	,	1	,	4)
	AddFuncList( GiveItem,	3431	,	1	,	4)
	AddFuncList( GiveItem,	3432	,	1	,	4)
	AddFuncList( GiveItem,	3433	,	1	,	4)
	AddFuncList( GiveItem,	1804	,	1	,	4)
	AddFuncList( GiveItem,	1805	,	1	,	4)
	AddFuncList( GiveItem,	1806	,	1	,	4)
	AddFuncList( GiveItem,	1807	,	1	,	4)
	AddFuncList( GiveItem,	1808	,	1	,	4)
	AddFuncList( GiveItem,	1809	,	1	,	4)
	AddFuncList( GiveItem,	1810	,	1	,	4)
	AddFuncList( GiveItem,	1811	,	1	,	4)
	AddFuncList( GiveItem,	1787	,	1	,	4)
	AddFuncList( GiveItem,	1788	,	1	,	4)
	AddFuncList( GiveItem,	1789	,	1	,	4)
	AddFuncList( GiveItem,	1790	,	1	,	4)
	AddFuncList( GiveItem,	1791	,	1	,	4)
	AddFuncList( GiveItem,	1792	,	1	,	4)
	AddFuncList( GiveItem,	1793	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3927, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3927, 1 )
	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "This is a very old Cleaner which can cleanse any dirt for you. Do you need to clean anything at 200G each try?" )
	Text( 1, "Cleanse Mud", MultiTrigger, GetMultiTrigger(), 1)
	--Text( 1, "Cleanse Christmas Box", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2892, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2892, 1 )
	TriggerAction( 1, GiveItem, 2893, 1 , 4)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 3, "Woah! What a dirty box! You need to pay 10000G to clean such a dirty box." )
	Text( 3, "Comfirm to clean", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 4, "What a beautiful chest! Open it for some surprises" )
	Talk( 2, "Failed to clean the item. Insufficient gold or does not possess the required item" )
end


------------------------------------------------------------
-- 考古队长-----考古学家
------------------------------------------------------------
function r_talk253()
	
	Talk( 1, "Researcher: Hi! I belong to a organization of professional researchers. I have studied a lot on ancient curse and spell. How can I help you?" )
	Text( 1, "Regarding the Fire Seal", JumpPage, 3)

	Talk( 3, "Researcher: Since you found me, I will not reject you. Those seals are of ancient bearing. Bring me the required runestones and I will uncurse the item for you." )
	Text( 3, "Robe of the Arcane", JumpPage, 6)
	Text( 3, "Staff of Mirage", JumpPage, 7)
	Text( 3, "Staff of Evanescence", JumpPage, 8)
	Text( 3, "Cloak of Evanescence", JumpPage, 9)
	Text( 3, "Coat of Evanescence", JumpPage, 10)
	Text( 3, "Tattoo of Evanescence", JumpPage, 11)
	Text( 3, "Armor of Evanescence", JumpPage, 12)
	Text( 3, "Next Page", JumpPage, 4)

	Talk( 4, "Researcher: Since you found me, I will not reject you. Those seals are of ancient bearing. Bring me the required runestones and I will uncurse the item for you." )
	Text( 4, "Bellow of Evanescence", JumpPage, 13)
	Text( 4, "Roar of Evanescence", JumpPage, 14)
	Text( 4, "Dance of Evanescence", JumpPage, 15)
	Text( 4, "Tooth of Evanescence", JumpPage, 16)
	Text( 4, "Robe of Malediction", JumpPage, 17)
	Text( 4, "Gauntlets of Evanescence", JumpPage, 18)
	Text( 4, "Greaves of Evanescence", JumpPage, 19)
	Text( 4, "Next Page", JumpPage, 5)

	Talk( 5, "Researcher: Since you found me, I will not reject you. Those seals are of ancient bearing. Bring me the required runestones and I will uncurse the item for you." )
	Text( 5, "Gloves of Evanescence", JumpPage, 20)
	Text( 5, "Shoes of Evanescence", JumpPage, 21)
	Text( 5, "Gloves of Malediction", JumpPage, 22)
	Text( 5, "Boots of Malediction", JumpPage, 23)
	Text( 5, "Gloves of the Arcane", JumpPage, 24)
	Text( 5, "Boots of the of the Arcane", JumpPage, 25)
	Text( 5, "Heavy Gloves of Evanescence", JumpPage, 26)
	Text( 5, "Boots of Evanescence", JumpPage, 27)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1912, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1912, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 791, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "Researcher: To unseal the curse on Robe of the Arcane, you must bring me: Fire Sealed Robe of the Arcane, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 6, "Unseal curse on Robe of the Arcane", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1915, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1915, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 794, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "Researcher: To unseal the curse on Staff of Mirage, you must bring me: Fire Sealed Staff of Mirage, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 7, "Unseal curse on Staff of Mirage", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1908, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1908, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 787, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "Researcher: To unseal the curse on Staff of Evanescence, you must bring me: Fire Sealed Staff of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 8, "Unseal curse on Staff of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1926, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1926, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 805, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "Researcher: To unseal the curse on Cloak of Evanescence, you must bring me: Fire Sealed Cloak of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 9, "Unseal curse on Cloak of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1900, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1900, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 779, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "Researcher: To unseal the curse on Coat of Evanescence, you must bring me: Fire Sealed Coat of Evanescence, Fel Runestonex5, Ja Runestonex10, Tef Runestonex10 and also 600000G as fee." )
	Text( 10, "Unseal curse on Coat of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1886, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1886, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 765, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "Researcher: To unseal the curse on Tattoo of Evanescence, you must bring me: Fire Sealed Tattoo of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 11, "Unseal curse on Tattoo of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1889, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1889, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 768, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "Researcher: To unseal the curse on Armor of Evanescenc, you must bring me: Fire Sealed Armor of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 12, "Unseal curse on Armor of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1904, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1904, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 783, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "Researcher: To unseal the curse on Bellow of Evanescence, you must bring me: Fire Sealed Bellow of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 13, "Unseal curse on Bellow of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1893, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1893, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 772, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "Researcher: To unseal the curse on Roar of Evanescence, you must bring me: Fire Sealed Roar of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 14, "Unseal curse on Roar of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1896, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1896, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 775, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "Researcher: To unseal the curse on Dance of Evanescence, you must bring me: Fire Sealed Dance of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 15, "Unseal curse on Dance of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1922, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1922, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 801, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "Researcher: To unseal the curse on Tooth of Evanescence, you must bring me: Fire Sealed Tooth of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 16, "Unseal curse on Tooth of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1918, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1918, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 797, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "Researcher: To unseal the curse on Robe of Malediction, you must bring me: Fire Sealed Robe of Malediction, Fel Runestonex5, Ja Runestonex10, Tef Runestonex10 and also 600000G as fee." )
	Text( 17, "Unseal curse on Robe of Malediction", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1988, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1988, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0807, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 18, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Boots of Malediction, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 18, "Unseal curse on Gauntlets of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1989, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1989, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0808, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 19, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Shoes of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 19, "Unseal curse on Greaves of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1990, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1990, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0809, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 20, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Greaves of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 20, "Unseal curse on Gloves of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1991, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1991, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0810, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 21, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Boots of Malediction, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 21, "Unseal curse on Shoes of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1992, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1992, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0811, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 22, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Heavy Gloves of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 22, "Unseal curse on Gloves of Malediction", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 1994, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1994, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0813, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 23, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Gloves of the Arcane, Fel Runestone x5, Ja Runestonex10, Tef Runestone x10 and also 600000G as fee." )
	Text( 23, "Unseal curse on Boots of Malediction", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1993, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1993, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0812, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 24, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Boots of the of the Arcane, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 24, "Unseal curse on Gloves of the Arcane", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1995, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1995, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0814, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 25, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Heavy Gloves of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 25, "Unseal curse on Boots of the of the Arcane", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1996, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1996, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0815, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 26, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Gloves of Malediction, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 26, "Unseal curse on Heavy Gloves of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1997, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1997, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0877, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 27, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Gloves of the Arcane, Fel Runestone x5, Ja Runestonex10, Tef Runestone x10 and also 600000G as fee." )
	Text( 27, "Unseal curse on Boots of Evanescence", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 30, "Researcher: Sorry, you did not give me the correct items. I cannot break the seal for you without them." )


end

------------------------------------------------------------
-- 废灵之都-----考古学家
------------------------------------------------------------
function r_talk254()
	
	Talk( 1, "Researcher: Hi, I belonged to an organization of professional researchers. I am responsible for the research of Forsaken City. Is there anything I can help you?" )
	Text( 1, "Regarding Forsaken City", JumpPage, 2)

	Talk( 2, "Researcher: I have been researching on Forsaken City for a long time. I can break the seal with the use of some powerful runestones." )
	Text( 2, "Unseal curse", JumpPage, 3)
	
	Talk( 3, "Researcher: There are many hidden Undead Sealed equipments in Forsaken City. After many years of research. I am able to break the curse on these equipments. Do you wish to uncurse anything?" )
	Text( 3, "Tooth of Specter", JumpPage, 6)
	Text( 3, "Mantle of the Naga", JumpPage, 7)
	Text( 3, "Staff of the Avenger", JumpPage, 8)
	Text( 3, "Sword of Grief", JumpPage, 9)
	Text( 3, "Robe of Death", JumpPage, 10)
	Text( 3, "Touch of Death", JumpPage, 11)
	Text( 3, "Robe of the Venom Witch", JumpPage, 12)
	Text( 3, "Armor of Revenant", JumpPage, 13)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1920, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1920, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 799, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "Researcher: To unseal the curse on Tooth of Specter, you must bring me:  Undead Sealed Tooth of Specter, Yal Runestone x5, El Runestone x5, Nal Runestone x10 and also 200000G as fee." )
	Text( 6, "Unseal curse on Tooth of Specter", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1924, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1924, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 803, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "Researcher: To unseal the curse on Mantle of the Naga, you must bring me: Undead Sealed Mantle of the Naga, Yal Runestone x5, El Runestone x5, Nal Runestone x10 and also 200000G as fee." )
	Text( 7, "Unseal curse on Mantle of the Naga", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1906, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1906, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 785, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "Researcher: To unseal the curse on Staff of the Avenger, you must bring me: Undead Sealed Staff of the Avenger, Yal Runestone x5, El Runestone x5, Nal Runestone x10 and also 200000G as fee." )
	Text( 8, "Unseal curse on Staff of the Avenger", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1891, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1891, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 770, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "Researcher: To unseal the curse on Sword of Grief, you must bring me: Undead Sealed Sword of Grief, Yal Runestone x5, El Runestone x5, Nal Runestone x10 and also 200000G as fee." )
	Text( 9, "Unseal curse on Sword of Grief", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1898, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1898, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 777, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "Researcher: To unseal the curse on Robe of Death, you must bring me: Undead Sealed Robe of Death, Yal Runestone x5, El Runestone x5, Nal Runestone x10 and also 200000G as fee." )
	Text( 10, "Unseal curse on Robe of Death", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1902, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1902, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 781, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "Researcher: To unseal the curse on Touch of Death, you must bring me: Undead Sealed Touch of Death, Yal Runestone x5, El Runestone x5, Nal Runestone x10 and also 200000G as fee" )
	Text( 11, "Unseal curse on Touch of Death", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1910, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1910, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 789, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "Researcher: To unseal the curse on Robe of the Venom Witch, you must bring me: Undead Sealed Robe of the Venom Witch, Yal Runestone x5, El Runestone x5, Nal Runestone x10 and also 200000G as fee." )
	Text( 12, "Unseal curse on Robe of the Venom Witch", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1884, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1884, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 763, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "Researcher: To unseal the curse on Armor of Revenant, you must bring me: Undead Sealed Armor of Revenant, Yal Runestone x5, El Runestone x5, Nal Runestone x10 and also 200000G as fee." )
	Text( 13, "Unseal curse on Armor of Revenant", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "Researcher: Sorry, you did not give me the correct items. I cannot break the seal for you without them." )

end

------------------------------------------------------------
-- 魔方世界-----考古学家
------------------------------------------------------------
function r_talk255()
	
	Talk( 1, "Researcher: Hi! I belong to an organization of professional researcher. I am responsible for the research of Demonic World. How may I help you?" )
	Text( 1, "Regarding Demonic World", JumpPage, 2)

	Talk( 2, "Researcher: I have done research on Demonic World for a long time. If you need to unseal the curse on the items, bring me some runestones." )
	Text( 2, "Unseal curse", JumpPage, 3)
	
	Talk( 3, "Researcher: In the Demonic World, there are many items being Ice sealed. After many years of research, I am able to break these seals by using some powerful runestones. Do you need to unseal anything?" )
	Text( 3, "Staff of Enigma", JumpPage, 6)
	Text( 3, "Mantle of the Sphinx", JumpPage, 7)
	Text( 3, "Kris of the Sphinx", JumpPage, 8)
	Text( 3, "Judgment of Enigma", JumpPage, 9)
	Text( 3, "Rifle of Enigma", JumpPage, 10)
	Text( 3, "Mantle of Enigma", JumpPage, 11)
	Text( 3, "Robe of Enigma", JumpPage, 12)
	Text( 3, "Next Page", JumpPage, 4)

	Talk( 4, "Researcher: In the Demonic World, there are many items being Ice sealed. After many years of research, I am able to break these seals by using some powerful runestones. Do you need to unseal anything?" )
	Text( 4, "Blade of Enigma", JumpPage, 13)
	Text( 4, "Tattoo of Enigma", JumpPage, 14)
	Text( 4, "Armor of Enigma", JumpPage, 15)
	Text( 4, "Robe of the Sphinx", JumpPage, 16)
	Text( 4, "Staff of the Sphinx", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1909, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1909, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 788, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "Researcher: To unseal the curse on Staff of Enigma, you must bring me: Ice Sealed Staff of Enigma, Kal Runestone x5, Fa Runestone x10, Ter Runestone x20 and also 800000G as fee." )
	Text( 6, "Unseal curse on Staff of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1927, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1927, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 806, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "Researcher: To unseal the curse on Mantle of the Sphinx, you must bring me: Ice Sealed Mantle of the Sphinx, Kal Runestone x5, Fa Runestone x10, Ter Runestone x20 and also 800000G as fee." )
	Text( 7, "Unseal curse on Mantle of the Sphinx", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1923, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1923, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 802, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "Researcher: To unseal the curse on Kris of the Sphinx, you must bring me: Ice Sealed Kris of the Sphinx, Kal Runestone x5, Fa Runestone x10, Ter Runestone x20 and also 800000G as fee." )
	Text( 8, "Unseal curse on Kris of the Sphinx", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1894, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1894, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 773, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "Researcher: To unseal the curse on Judgment of Enigma, you must bring me: Ice Sealed Judgment of Enigma, Kal Runestonex5, Fa Runestonex10, Ter Runestonex20 and also 800000G as fee." )
	Text( 9, "Unseal curse on Judgment of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1905, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1905, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 784, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "Researcher: To unseal the curse on Rifle of Enigma, you must bring me: Ice Sealed Rifle of Enigma, Kal Runestone x5, Fa Runestone x10, Ter Runestone x20 and also 800000G as fee." )
	Text( 10, "Unseal curse on Rifle of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1901, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1901, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 780, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "Researcher: To unseal the curse on Mantle of Enigma, you must bring me: Ice Sealed Mantle of Enigma, Kal Runestone x5, Fa Runestone x10, Ter Runestone x20 and also 800000G as fee." )
	Text( 11, "Unseal curse on Mantle of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1913, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1913, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 792, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "Researcher: To unseal the curse on Robe of Enigma, you must bring me: Ice Sealed Robe of Enigma, Kal Runestonex5, Fa Runestonex10, Ter Runestonex20 and also 800000G as fee." )
	Text( 12, "Unseal curse on Robe of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1897, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1897, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 776, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "Researcher: To unseal the curse on Blade of Enigma, you must bring me: Ice Sealed Blade of Enigma, Kal Runestonex5, Fa Runestonex10, Ter Runestonex20 and also 800000G as fee." )
	Text( 13, "Unseal curse on Blade of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1887, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1887, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 766, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "Researcher: To unseal the curse on Tattoo of Enigma, you must bring me: Ice Sealed Tattoo of Enigma, Kal Runestone x5, Fa Runestone x10, Ter Runestone x20 and also 800000G as fee." )
	Text( 14, "Unseal curse on Tattoo of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1890, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1890, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 769, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "Researcher: To unseal the curse on Armor of Enigma, you must bring me: Ice Sealed Armor of Enigma, Kal Runestone x5, Fa Runestone x10, Ter Runestone x20 and also 800000G as fee." )
	Text( 15, "Unseal curse on Armor of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1919, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1919, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 798, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "Researcher: To unseal the curse on Robe of the Sphinx, you must bring me: Ice Sealed Robe of the Sphinx, Kal Runestonex5, Fa Runestonex10, Ter Runestonex20 and also 800000G as fee." )
	Text( 16, "Unseal curse on Robe of the Sphinx", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1916, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1916, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 795, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "Researcher: To unseal the curse on Staff of the Sphinx, you must bring me: Ice Sealed Staff of the Sphinx, Kal Runestone x5, Fa Runestone x10, Ter Runestone x20 and also 800000G as fee." )
	Text( 17, "Unseal curse on Staff of the Sphinx", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "Researcher: Sorry, you did not give me the correct items. I cannot break the seal for you without them." )

end


------------------------------------------------------------
-- 阴暗沼泽-----考古学家队长
------------------------------------------------------------
function r_talk256()
	
	Talk( 1, "Researcher: Hi, I belonged to an organization of profession researchers. I am responsible for the research of Forsaken City. Is there anything I can help you?" )
	Text( 1, "Regarding Dark Swamp", JumpPage, 2)

	Talk( 2, "Researcher: I have done a research on Dark Swamp for a long time. To unseal the curse on those items, you must bring me some runestones. Also, if you found some Murky Oil, I can make some Fire Seed for you." )
	Text( 2, "Unseal curse", JumpPage, 3)
	Text( 2, "Regarding Fire Seed", JumpPage, 5)
	
	Talk( 3, "Researcher: In the Dark Swamp, there are many items being Earth sealed. After many years of research, I am able to break these seals by using some powerful runestones. Do you need to unseal anything?" )
	Text( 3, "Coat of Invocation", JumpPage, 6)
	Text( 3, "Tattoo of the Cursed Warrior", JumpPage, 7)
	Text( 3, "Mantle of the Cursed Flame", JumpPage, 8)
	Text( 3, "Staff of Incantation", JumpPage, 9)
	Text( 3, "Staff of Abraxas", JumpPage, 10)
	Text( 3, "Robe of Abraxas", JumpPage, 11)
	Text( 3, "Blade of Incantation", JumpPage, 12)
	Text( 3, "Next Page", JumpPage, 4)

	Talk( 4, "Researcher: In the Dark Swamp, there are many items being Earth sealed. After many years of research, I am able to break these seals by using some powerful runestones. Do you need to unseal anything?" )
	Text( 4, "Corset of Incantation", JumpPage, 13)
	Text( 4, "Greatsword of Incantation", JumpPage, 14)
	Text( 4, "Tooth of the Cursed", JumpPage, 15)
	Text( 4, "Platemail of the Cursed Soul", JumpPage, 16)
	Text( 4, "Kiss of the Cursed", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3930, 5 )
	TriggerCondition( 1, HasItem, 3931, 1 )
	TriggerCondition( 1, HasItem, 3932, 5 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3930, 5 )
	TriggerAction( 1, TakeItem, 3931, 1 )
	TriggerAction( 1, TakeItem, 3932, 5 )
	TriggerAction( 1, GiveItem, 3934, 1, 4 )
	TriggerFailure( 1, JumpPage, 31 )
	Talk( 5, "Researcher: To make a Fire Seed, you will need: Murky Oil x5, Fire Starter x1, Cloth Strip x5 and 200G." )
	Text( 5, "Make Fire Seed", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1911, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1911, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 790, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "Researcher: To unseal the curse on Coat of Invocation, you must bring me: Earth Sealed Coat of Invocation, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 6, "Unseal curse on Coat of Invocation", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1885, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1885, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 764, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "Researcher: To unseal the curse on Tattoo of the Cursed Warrior, you must bring me: Earth Sealed Tattoo of the Cursed Warrior, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 7, "Unseal curse on Tattoo of the Cursed Warrior", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1925, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1925, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 804, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "Researcher: To unseal the curse on Mantle of the Cursed Flame, you must bring me: Earth Sealed Mantle of the Cursed Flame, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 8, "Unseal curse on Mantle of the Cursed Flame", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1907, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1907, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 786, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "Researcher: To unseal the curse on Staff of Incantation, you must bring me: Earth Sealed Staff of Incantation, Lum Runestonex5, Sol Runestonex10, Cam Runestonex5 and also 400000G as fee." )
	Text( 9, "Unseal curse on Staff of Incantation", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1914, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1914, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 793, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "Researcher: To unseal the curse on Staff of Incantation, you must bring me: Earth Sealed Staff of Incantation, Lum Runestonex5, Sol Runestonex10, Cam Runestonex5 and also 400000G as fee." )
	Text( 10, "Unseal curse on Staff of Abraxas", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1917, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1917, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 796, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "Researcher: To unseal the curse on Robe of Abraxas, you must bring me: Earth Sealed Robe of Abraxas, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 11, "Unseal curse on Robe of Abraxas", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1895, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1895, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 774, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "Researcher: To unseal the curse on Blade of Incantation, you must bring me: Earth Sealed Blade of Incantation, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 12, "Unseal curse on Blade of Incantation", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1899, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1899, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 778, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "Researcher: To unseal the curse on Corset of Incantation, you must bring me: Earth Sealed Corset of Incantation, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 13, "Unseal curse on Corset of Incantation", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1892, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1892, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 771, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "Researcher: To unseal the curse on Greatsword of Incantation, you must bring me: Earth Sealed Greatsword of Incantation, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 14, "Unseal curse on Greatsword of Incantation", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1921, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1921, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 800, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "Researcher: To unseal the curse on Tooth of the Cursed, you must bring me: Earth Sealed Tooth of the Cursed, Lum Runestonex5, Sol Runestonex10, Cam Runestonex5 and also 400000G as fee." )
	Text( 15, "Unseal curse on Tooth of the Cursed", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1888, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1888, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 767, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "Researcher: To unseal the curse on Platemail of the Cursed Soul, you must bring me: Earth Sealed Platemail of the Cursed Soul, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 16, "Unseal curse on Platemail of the Cursed Soul", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1903, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1903, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 782, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "Researcher: To unseal the curse on Kiss of the Cursed, you must bring me: Earth Sealed Kiss of the Cursed, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 17, "Unseal curse on Kiss of the Cursed", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "Researcher: Sorry, you did not give me the correct items. I cannot break the seal for you without them." )

	Talk( 31, "Researcher: Sorry. You need to pass me Murky Oil x5, Fire Starter x1, Cloth Strip x5 and 200G to make a Fire Seed." )


end


------------------------------------------------------------
-- 白银城-----槟果
------------------------------------------------------------
function r_talk242()
	Talk( 14, "Bingo: Give me a Christmas Gem Voucher, and you will get a high quality gem." )
	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0860, 3, 101 )
	TriggerFailure( 1, JumpPage, 15 )
	Text( 14, "Exchanged 3 Gem of the Wind.",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0861, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14, "Redeem 3 Gem of Striking",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0862, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14, "Exchanged 3 Gem of Colossus",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0863, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14, "Exchanged 3 Gem of Rage",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 1012, 1,101 )
	TriggerFailure( 1, JumpPage, 15 )
        Text( 14, "Redeem 1 Gem of Soul",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 15, "Redemption failed. You do not seem to have any Christmas Gem Voucher or your inventory has been binded. " )
	Talk( 16, "Merry Christmas!" )

	Talk( 1, "Bingo: I have the latest news around here and it is reliable. Do you wish to hear a little?")
	--Text( 1, "Pirate Voucher", JumpPage, 17 )
	Text( 1, "Christmas Gem Voucher", JumpPage, 14 )
	Text( 1, "Unique Gem Voucher", JumpPage, 12 )
	Text( 1, "Redeem Lv 1 Refining Gem Voucher", JumpPage, 2 )
	Text( 1, "Redeem Lv 2 Refining Gem Voucher", JumpPage, 3 )
	Text( 1, "Refining Gem Voucher", JumpPage, 4 )
        Text( 1, "Gem Voucher", JumpPage, 5 )
        Text( 1, "Combine Wishing Stone", JumpPage, 6 )
	Text( 1, "The exchange of moon cake", JumpPage, 20 )		-------月饼兑换
	--Text( 1, "Obtained \"Fairy March\"", JumpPage, 10 )
      
	
	Talk( 2, "Bingo: Pass me one Lv 1 Refining Gem Voucher to exchange for a Lv 1 Refining Gem. Also, you might obtain an additional random Lv1 Attribute Gem.")
	Text( 2, "Confirm to redeem", TransferDiamond, 1)

	Talk( 3, "Bingo: Bring me a Lv 2 Refining Gem Voucher to exchange for a Lv 2 Refining Gem. You might also obtain an additional random Lv 2 Attribute Gem.")
	Text( 3, "Confirm to redeem", TransferDiamond, 2)

	Talk( 4, "Bingo: Pass me one Refining Gem Voucher to exchange for a Lv 1 Refining Gem")
	Text( 4, "Confirm to redeem", TransferDiamond, 3)

	Talk( 5, "Bingo: Bring me a Gem Voucher in exchange for a Lv 1 Gem.")
	Text( 5, "Confirm to redeem", TransferDiamond, 4)



	Talk( 17, "Bingo: Do you have Pirate Vouchers?")
	
	InitTrigger()--兑换"IPOD"兑换券
	TriggerCondition( 1, HasItem, 2238, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2238, 1 )
 	TriggerAction( 1, GiveItem, 2306, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "I have Pirate Voucher 8",MultiTrigger, GetMultiTrigger(), 1)


	--InitTrigger()--兑换摩力符石
	--TriggerCondition( 1, HasItem, 2240, 1 )
	--TriggerCondition( 1, HasLeaveBagGrid, 1 )
	--TriggerCondition( 1, KitbagLock, 0 )
	--TriggerAction( 1, TakeItem, 2240, 1 )
 	--TriggerAction( 1, GiveItem, 1028, 1 ,4)
	--TriggerAction( 1,JumpPage, 19 )------------------
	--TriggerFailure( 1, JumpPage, 18 )
	--Text( 17, "I have Pirate Voucher 6",MultiTrigger, GetMultiTrigger(), 1)

	Text( 17, "I have Pirate Voucher 6",JumpPage, 19)
	Talk(19,"Do you wish to exchange?")
	Text( 19, "Confirm to exchange",GetChaName_5, 1)

	InitTrigger()--兑换精灵硬币99个
	TriggerCondition( 1, HasItem, 2237, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2237, 1 )
 	TriggerAction( 1, GiveItem, 855, 99 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "I have Pirate Voucher 9",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()-- 兑换铸造图纸"Encrypted Blueprint"１张
	TriggerCondition( 1, HasItem, 2239, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2239, 1 )
 	TriggerAction( 1, GiveItem, 1001, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "I have Pirate Voucher 7",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()--兑换加速成长果1个
	TriggerCondition( 1, HasItem, 2241, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2241, 1 )
 	TriggerAction( 1, GiveItem, 0578, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "I have Pirate Voucher 5",MultiTrigger, GetMultiTrigger(), 1)
	Text( 17, "Total amount of other Pirate Voucher", GetChaName_4, 1)



	Talk( 18, "Bingo: You do not seem to have the suitable Pirate Voucher. Please check to see if your inventory is binded and that theres a least 1 empty slot.")

 	InitTrigger() --合成许愿石
	TriggerCondition( 1, HasItem, 3905, 5 )
	TriggerCondition( 1, HasItem, 3907, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3905, 5 )
	TriggerAction( 1, TakeItem, 3907, 1 )
 	TriggerAction( 1, GiveItem, 3906, 1 ,4)
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6, "Bingo: Bring me 5 Dark Wishing Stone and 1 Welding Catalyst, I will make 1 Sparkling Wishing Stone for you.")
	Text( 6, "Confirm to combine",MultiTrigger, GetMultiTrigger(), 1)        
 	
	Talk( 8, "Bingo: You seems to lack Wishing Stones and Welding Catalyst! Please make sure that your inventory is not binded and has at least 1 empty slot.")

	InitTrigger() --兑换三月精灵
	TriggerCondition( 1, HasItem, 3342, 2 )
	TriggerCondition( 1, HasItem, 3337, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3342, 2 )
	TriggerAction( 1, TakeItem, 3337, 1 )
	TriggerAction( 1, GiveItem, 3335, 1 ,4)
	TriggerFailure( 1, JumpPage, 11 ) 
	Talk( 10, "Bingo: Bring me 2 Lantern and 1 Fairy Soul to exchange for a Fairy March. Question regarding Fairy Soul? Go to \"Hafta Haven\" and look for \"Harbor Operator - Whitcombe\".")
	Text( 10, "Confirm trade",MultiTrigger, GetMultiTrigger(), 1) 
   
	Talk( 11, "Bingo: Fairy March requires 2 Lanterns and 1 Fairy Soul. Please make sure that your inventory is not binded and has at least 1 empty inventory slot.")
	
	Talk( 12, "Bingo: Give me 1 Unique Gem Voucher to exchange for 3 x 1 of the following four gems.")

	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0860, 3, 101 )
	TriggerFailure( 1, JumpPage, 13 ) 
	Text( 12, "Redeem Gem of the Wind",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3)
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0861, 3,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12, "Redeem Gem of Striking",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid,3 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0862, 3,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12, "Redeem Gem of Colossus",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --高级宝石兑换券
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0863, 3,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12, "Redeem Gem of Rage",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 13, "Bingo: You do not seem to have any Unique Gem Voucher. Please make sure that your inventory is not binded and has at least 3 empty inventory slots.")
	
	Talk( 20, "Bingo: Do you have many moon cakes? You can exchange much great stuff from me." )
	InitTrigger() --99个：迷之锁10个
	TriggerCondition( 1, HasItem,3915, 99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 99 )
	TriggerAction( 1, GiveItem, 2440, 10, 4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20, "Exchange 10 Locks of Mystic",MultiTrigger, GetMultiTrigger(), 1) 
	
	InitTrigger() --100个：财富1个
	TriggerCondition( 1, HasItem,3915, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 100 )
	TriggerAction( 1, GiveItem, 3096, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20, "Exchange one Amplifier of Luck",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --200个：藏宝图1个
	TriggerCondition( 1, HasItem,3915, 200 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 200 )
	TriggerAction( 1, GiveItem, 1092, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20, "Exchange one Treasure Map",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --300个：99包1个
	TriggerCondition( 1, HasItem,3915, 300 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 300 )
	TriggerAction( 1, GiveItem, 1095, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20, "Exchange one 99 Parcel",MultiTrigger, GetMultiTrigger(), 1) 
	
	InitTrigger() --2000个：加纳之神（精神加5）
	TriggerCondition( 1, HasItem,3915, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 2000 )
	TriggerAction( 1, GiveItem, 1012, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20, "Exchange one Gem of Soul",MultiTrigger, GetMultiTrigger(), 1) 

	Text( 20, "Next page", JumpPage, 22 )

	Talk( 22, "Bingo: Do you have many moon cakes? You can exchange much great stuff from me." )

	InitTrigger() --2000个：炎玉（力量加5）
	TriggerCondition( 1, HasItem,3915, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 2000 )
	TriggerAction( 1, GiveItem, 863, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 22, "Exchange one Gem of Rage",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --2000个：岩玉（体质加5）
	TriggerCondition( 1, HasItem,3915, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 2000 )
	TriggerAction( 1, GiveItem, 862, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 22, "Exchange one Gem of Colossus",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --2000个：鹰眼石（专注加5）
	TriggerCondition( 1, HasItem,3915, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 2000 )
	TriggerAction( 1, GiveItem, 861, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 22, "Exchange one Gem of Striking",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --2000个：风灵石（敏捷加5）
	TriggerCondition( 1, HasItem,3915, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 2000 )
	TriggerAction( 1, GiveItem, 860, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 22, "Exchange one Gem of Wind",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --3000个：65 BOSS衣服1件
	TriggerCondition( 1, HasItem,3915,3000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 3000)
	TriggerAction( 1, GiveItem, 241, 1, 4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 22, "Exchange one Lvl65 Boss armor",MultiTrigger, GetMultiTrigger(), 1) 

	Text( 22, "Last page", JumpPage, 20 )

	Talk( 21, "Exchange failed. It seems that you have not either enough moon cakes or any blank inventory slot!" )	
	----------------------------------------30个月饼
	--InitFuncList()
	--AddFuncList( GiveItem, 374, 1, 7 )
	--AddFuncList( GiveItem, 361, 1, 7 )
	--AddFuncList( GiveItem, 314, 1, 7 )
	--AddFuncList( GiveItem, 298, 1, 7 )
	--AddFuncList( GiveItem, 339, 1, 7 )
	--AddFuncList( GiveItem, 354, 1, 7 )

--	InitTrigger()
--	TriggerCondition( 1, HasItem, 3915, 30 )
--	TriggerAction( 1, TakeItem, 3915, 30 )
--	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
--	TriggerFailure( 1, JumpPage, 11 )
--	Talk( 3, "Bingo: 30 Mooncakes to exchange for a Lv 35 armor of your class. Confirm?")
--	Text( 3, "I am sure",MultiTrigger, GetMultiTrigger(), 1)
--	Text( 3, "Forget it then",CloseTalk )

end
------------------------------------------------------------
-- 白银城-----活动专员
------------------------------------------------------------
function mmm_talk01()
	Talk( 1, "You can learn all kinds of on-going events of Tales of Pirates from me. Select the topic you interested in from followed list, you will see the brief introduction of the event.Pay attention to the offical site http://top.igg.com/index.php for more detail.")
--	Text( 1, bganswer1_13, JumpPage, 13)
--	Text( 1, bganswer1_14, JumpPage, 14)
--	Text( 1, bganswer1_15, JumpPage, 15)
--	Text( 1, bganswer1_16, JumpPage, 16)
--	Text( 1, bganswer1_17, JumpPage, 17)
	Text( 1, "Lucky Alphabet Card Exchange" ,JumpPage, 18 )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1007 )
	TriggerAction( 1, ClearRecord, 1000 )
	TriggerAction( 1, ClearRecord, 1001 )
	TriggerAction( 1, ClearRecord, 1002 )
	TriggerAction( 1, ClearRecord, 1003 )
	TriggerAction( 1, ClearRecord, 1004 )
	TriggerAction( 1, ClearRecord, 1005 )
	TriggerAction( 1, ClearRecord, 1006 )
	TriggerAction( 1, ClearRecord, 1007 )
	TriggerAction( 1, JumpPage, 20)
	TriggerFailure( 1, JumpPage, 21)
	Text( 1, "Start challenge again" ,MultiTrigger, GetMultiTrigger(), 1)

	----------------11.20-11.26	
	InitTrigger()						----50W海盗币
	TriggerCondition( 1, CheckZMKTime )
	TriggerCondition( 1, HasItem, 3869, 1 )			----t
	TriggerCondition( 1, HasItem, 3864, 1 )			----0
	TriggerCondition( 1, HasItem, 3865, 1 )			----p

	TriggerAction( 1, TakeItem,   3869, 1 )
	TriggerAction( 1, TakeItem,   3864, 1 )
	TriggerAction( 1, TakeItem,   3865, 1 )
	TriggerAction( 1, AddMoney, 500000)
	TriggerFailure( 1, JumpPage, 19 )
	Talk( 18, "Pappa: This week's lucky combination is: top. Exchangable for 500000G.")
	Text(18, "Confirm to redeem", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 19, "Pappa: Do you have enough Cards on you? Please check if your inventory is binded!")
	Talk( 20, "You can take the challenge of Hexathlon again now!")
	Talk( 21, "you can do the challenge now.please don't joke with me.i'm busy now.")
	-----铁人六项
	AddNpcMission ( 6114 )


	----------------11.27-12.3
--	InitTrigger()					----10个神仙浆果
--	TriggerCondition( 1, CheckZMKTime )
--	TriggerCondition( 1, HasItem, 3858, 1 )			----i
--	TriggerCondition( 1, HasItem, 3856, 2 )			----g
--	TriggerCondition( 1, HasItem, 3869, 1 )			----t
--	TriggerCondition( 1, HasItem, 3864, 1 )			----0
--	TriggerCondition( 1, HasItem, 3865, 1 )			----p
--
--	TriggerAction( 1, TakeItem,   3858, 1 )
--	TriggerAction( 1, TakeItem,   3856, 2 )
--	TriggerAction( 1, TakeItem,   3869, 1 )
--	TriggerAction( 1, TakeItem,   3864, 1 )
--	TriggerAction( 1, TakeItem,   3865, 1 )
--	TriggerAction( 1, GiveItem, 3844, 10, 4)
--	TriggerFailure( 1, JumpPage, 19 )
--	Talk( 18, "Pappa: This week's lucky combination is: iggtop. Exchangable for 10 Heaven's Berry.")
--	Text(18, "Confirm to redeem", MultiTrigger, GetMultiTrigger(), 1)


	---------------12.4-12.10
--	InitTrigger()						----替身娃娃10个+5个神仙浆果
--	TriggerCondition( 1, CheckZMKTime )
--	TriggerCondition( 1, HasItem, 3857, 1 )			----h
--	TriggerCondition( 1, HasItem, 3864, 2 )			----0
--	TriggerCondition( 1, HasItem, 3869, 2 )			----t
--	TriggerCondition( 1, HasItem, 3865, 1 )			----p
--
--	TriggerAction( 1, TakeItem, 3857, 1 )			----h
--	TriggerAction( 1, TakeItem, 3864, 2 )			----0
--	TriggerAction( 1, TakeItem, 3869, 2 )			----t
--	TriggerAction( 1, TakeItem, 3865, 1 )			----p
--	TriggerAction( 1, GiveItem, 3844, 5, 4)
--	TriggerAction( 1, GiveItem, 3846, 10, 4)
--	TriggerFailure( 1, JumpPage, 19 )
--	Talk( 18, "Pappa: This week's lucky combination is: hottop. Exchangable for 10 Voodoo Doll and 5 Heaven's Berry.")
--	Text(18, "Confirm to redeem", MultiTrigger, GetMultiTrigger(), 1)

	---------------12.11-12.17
--	InitTrigger()						----黑龙
--	TriggerCondition( 1, CheckZMKTime )
--	TriggerCondition( 1, HasItem, 3869, 2 )			----t
--	TriggerCondition( 1, HasItem, 3850, 2 )			----a
--	TriggerCondition( 1, HasItem, 3861, 1 )			----l
--	TriggerCondition( 1, HasItem, 3854, 2 )			----e
--	TriggerCondition( 1, HasItem, 3868, 2 )			----s
--	TriggerCondition( 1, HasItem, 3864, 1 )			----o
--	TriggerCondition( 1, HasItem, 3855, 1 )			----f
--	TriggerCondition( 1, HasItem, 3865, 1 )			----p
--	TriggerCondition( 1, HasItem, 3858, 1 )			----i
--	TriggerCondition( 1, HasItem, 3867, 1 )			----r
--
--	TriggerAction( 1, TakeItem, 3869, 2 )			----t
--	TriggerAction( 1, TakeItem, 3850, 2 )			----a
--	TriggerAction( 1, TakeItem, 3861, 1 )			----l
--	TriggerAction( 1, TakeItem, 3854, 2 )			----e
--	TriggerAction( 1, TakeItem, 3868, 2 )			----s
--	TriggerAction( 1, TakeItem, 3864, 1 )			----o
--	TriggerAction( 1, TakeItem, 3855, 1 )			----f
--	TriggerAction( 1, TakeItem, 3865, 1 )			----p
--	TriggerAction( 1, TakeItem, 3858, 1 )			----i
--	TriggerAction( 1, TakeItem, 3867, 1 )			----r
--	TriggerAction( 1, GiveItem, 0845, 1, 4)
--	TriggerAction( 1, GiveItem, 0846, 1, 4)
--	TriggerAction( 1, GiveItem, 0847, 1, 4)
--	TriggerAction( 1, GiveItem, 0848, 1, 4)
--	Talk( 18, "Pappa: This week's lucky combination is: talesofpirates. Exchangable for A set of Black Dragon apparel.")
--	Text(18, "Confirm to redeem", MultiTrigger, GetMultiTrigger(), 1)

--	Talk( 13, bgtalk13)
--	Talk( 14, bgtalk14)
--	Talk( 15, bgtalk15)
--	Talk( 16, bgtalk16)
--	Talk( 17, bgtalk17)

end

------------------------------------------------------------
-- 白银城-----屈原
------------------------------------------------------------
function mmm_talk02()
	Talk( 1, "Qu Yuan: A long journey home...Sigh...")
	AddNpcMission ( 902 )
	AddNpcMission ( 903 )
	AddNpcMission ( 904 )
end
-----------------------------------------------------------
---沙岚城---宠物管理员·朗拿度
-----------------------------------------------------------
function e_talk01 ()
	Talk( 1, "Pet Assistant - Langa: Demonic fruit determines which type of fairy that will be conceived and the type of fairy determines what attributes the player will gain when the fairy possession skill is used. After marriage, the parent pet fairies will each drop by 4 levels. Do you wish to know more?" )
	Text( 1, "Features of new generation fairies" ,JumpPage, 2)
	Text( 1, "Conditions to concieve fairies", JumpPage, 3)
	Text( 1, "Fairies marriage", OpenEidolonMetempsychosis )
	Talk( 2, "Pet Assistant - Langa: New generation of pet fairies can learn Self Destruct and Possession. Fairy of Strength, Fairy of Constitution, Fairy of Accuracy, Fairy of Spirit and Fairy of Agility can all raise a character's attribute respectively. Fairy of Luck and Fairy of Evil can increases a character's drop rate and experience gain respectively and Mordo Junior has the ability of both Luck and Evil Fairy, and also other hidden ability.")	
	Talk( 3, "Pet Assistant - Langa: Level of normal fairies affects a baby fairy greatly. I have much information about fairies. Please do check them out.")
	Text( 3, "Conditions to conceieve a Fairy of Strength", JumpPage, 4  )
	Text( 3, "Conditions to conceieve a Fairy of Constitution", JumpPage, 5  )
	Text( 3, "Conditions to conceieve a Fairy of Accuracy", JumpPage, 6  )
	Text( 3, "Conditions to conceieve a Fairy of Spirit", JumpPage, 7  )
	Text( 3, "Conditions to conceieve a Fairy of Agility", JumpPage, 8  )
	Text( 3, "Conditions to conceieve a Fairy of Luck", JumpPage, 9 )
	Text( 3, "Conditions to conceieve a Fairy of Evil", JumpPage, 10 )
	Text( 3, "Conditions to conceieve a Mordo Junior", JumpPage, 11 )	
	Talk(  4, "Pet Assistant - Langa: To conceive a Fairy of Strength requires: Two Lv20 and above normal pet fairies, 1 Demonic Fruit of Strength, 10 Arabic Pearl Fragment, 10 Wailing Warrior Carcass and some gold")
	Talk(  5, "Pet Assistant - Langa: The conditions to grow Fairy of Constitution is: 2 fairy with Lv not lower than 20,  1 Demonic Fruit of Courage. Inventory must contain 10 Cracked Arabic Pearl, 10 Sorrow Archer Carcass and some Gold.")
	Talk(  6, "Pet Assistant - Langa: Conditions to grow Fairy of Accuracy: 2 fairys of Lv not lower than 20, 1 Demonic Fruit of Energy. Your inventory must have 10 Fish Spike, 10 Mud Chunk and some Gold.")
	Talk(  7, "Pet Assistant - Langa: To conceive a Fairy of Spirit requires: Two Lv20 and above normal pet fairies, 1 Demonic Fruit of Intellect, 10 Polliwog Tail, 10 Wailing Archer Carcass and some gold")
	Talk(  8, "Pet Assistant - Langa: To conceive a Fairy of Agility requires: Two Lv20 and above normal pet fairies, 1 Demonic Fruit of Aberrant, 10 Shark Fin, 10 Swamp Wood and some gold.")
	Talk(  9, "Pet Assistant - Langa: To conceive a Fairy of Luck requires:  Two Lv20 and above normal pet fairies, 1 Demonic Fruit of Acidity, 10 Tasty Squid Meat, 10 Sorrow Warrior Carcass and some gold")
	Talk(  10, "Pet Assistant - Langa: To conceive a Fairy of Evil requires: Two Lv20 and above normal pet fairies, 1 Demonic Fruit of Mystery, 10 Sparkling Arabic Pearl Fragments, 10 Mud Slice and some gold")
	Talk(  11, "Pet Assistant - Langa: Requirements to conceive Mordo Junior, A Mordo fairy who marry another Mordo will give birth to a Mordo Junior at 100% success rate and it has nothing to do with Demonic Fruit. The probability of giving birth to a Mordo Junior when a Mordo and other fairies marry will depend on their level.")

-----------eleven
	AddNpcMission ( 5019 )
	AddNpcMission ( 5032 )

	--------------------1.7
	AddNpcMission ( 5080	)
	AddNpcMission ( 5081	)
	AddNpcMission ( 5082	)
	AddNpcMission ( 5083	)
	AddNpcMission (5117 )
	AddNpcMission (5142 )
	AddNpcMission (5149 )
end 

------------------------------寻找遗失的爱情
function el_talk01()
	Talk( 1, "Little Fish: Be back fast! I can't handle it alone…..")	
	AddNpcMission ( 907 )
	AddNpcMission ( 911 )
	AddNpcMission ( 912 )
	AddNpcMission ( 917 )
end
function el_talk02()
	Talk( 1, "Butterfly: I am a close friend of Flower...")
	AddNpcMission ( 908 )
	AddNpcMission ( 909 )
	AddNpcMission ( 910 )
end
-----------------------------------------------------------
---白银---神秘婆婆
-----------------------------------------------------------
-------------------------------------爱情重生
function el_talk03()
	Talk( 1, "Mysterious Granny: I do not understand what is so mysterious about me…")	
	AddNpcMission ( 918 )
--------eleven
	AddNpcMission ( 5018 )
	AddNpcMission ( 5020 )
	AddNpcMission ( 5021)
	AddNpcMission ( 5022)
end
-----------------------------------------------------------
---春风镇---神秘的炉子
-----------------------------------------------------------
function star_talk02 ()
	Talk( 1, "Furnace: What are you looking at! Never seen such a beautiful furnace?" )
	Text( 1, "Function Introduction", JumpPage, 2 )
	Text( 1, "Special set upgrade", OpenItemTiChun )
	Text( 1, "Coral recharge", OpenItemEnergy )
	Text( 1, "Extract Gem", OpenGetStone )
	Text( 1, "Repair Lifeskill tools", OpenItemFix )
	Talk( 2, "Furnace of Immortality: I won't say anymore. Try it out yourself!" )
	Text( 2, "Upgrade introduction for kylin set, Black Dragon set and lvl 70 BOSS set.", JumpPage, 3)
	Text( 2, "Introduction to coral charging", JumpPage, 4 )
	Text( 2, "Introduction of gem extraction", JumpPage, 5 )
	Text( 2, "Repair Tools Introduction", JumpPage, 6)
	Talk( 3, "Furnace of Immortality: This function can upgrade Kylin set, Black Dragon set and also upgrade Lv 70 Boss equipment into Lv 75 Death equipment (Boss). You will required corresponding item to undergo upgrade. Apparel image will not be retained but gem forged into equipment will remain unchanged." )
	Talk( 4, "Furnace of Immortality: Use battery to recharge the energy of your corals. Rechargeable Battery can recharge 50 to 1000 points of energy while a Super Rechargeable Battery can recharge up to 1500 points of energy. Battery disappears upon usage!" )
	Talk( 5, "Furnace of Immortality: According to Gem position, extracting from top to bottom. Gem level extract will be the same as displayed in the socket and the level of gem will decrease by 1 upon extraction. Each extraction requires 1 Blacksmith's Pliers.")
	Text( 5, "Extract gem sample", JumpPage, 7 )
	Talk( 6, "Furnace of Immortality: Repair damaged Crystal Cauldron, Black Hole Crystal, Anti Matter Crystal and Particle Crystal. Require 1 fixing tool. Guaranteed to look like new!" )
	Talk( 7, "Furnace of Immortality: Taking a 3 sockets Wyrm Sword as an example, first socket forged with Lv3 Gem of Rage, second socket forged with Lv2 Furious Gem and third socket forged with Lv1 Eye of Black Dragon. During extraction, only Lv3 Gem of Rage will be extracted, and first socket will be reduced to Lv2 Gem of Rage. The other 2 sockets will not be affected. Note: Extraction starts from first socket in descending order." )
end 
-----------------------------------------------------------
---白银---碰碰乐
-----------------------------------------------------------
function star_talk03 ()
	Talk( 1, "Lucky Chance: Hi, I advised you to leave some empty slots in your inventory before playing. You might win something great!" )
	Text( 1, "Playing Lucky Chance", JumpPage, 2 )
	Text( 1, "Try your luck, play a round!", OpenTiger )
	Talk( 2, "Lucky Chance: Each try requires 5 Fairy Coins. You can try multiple times. The more you try, the higher your chance of winning!" )
end 
--------------------------------------血腥的高跟鞋
function el_talk04 ()
	
	Talk( 1, "Skinny Worker: Sigh...Sigh...Oh god, who can take revenge for me…" )-------------(2249,2705)
	AddNpcMission ( 919 )
end

-----------------------------------------------------------
---印第安纳·琼斯
-----------------------------------------------------------
function llleo_talk01()
	Talk( 1, "Indianna Jones: Through the Crescent Canyon till the Shrine, immortality in the name of the Goddess...I have found a secret of Demonic World. Do you wish to know?" )
	Text( 1, "The Other Secret", JumpPage, 2)

	Talk( 2, "Indianna Jones: Rumor has it that Demonic World is made up of 2 dimension, meaning that there will be 2 of you at each demension at the same moment. I found the other demension by chance and also a new way to unseal those uniques equipment from Demonic World. Those researchers do not know of this yet. If you wish to try my method, I might consider" )
	Text( 2, "Unseal", JumpPage, 3)
	
	Talk( 3, "Indianna Jones: To unseal a unique equipment requires great energy consumption. Only those useless researchers will use multiple runestones to draw on their energy. I only need 1 special runestone to unseal it. Bring me 1 Morph Runestone and I will help you to unseal your equipment." )
	Text( 3, "Staff of Enigma", JumpPage, 6)
	Text( 3, "Mantle of the Sphinx", JumpPage, 7)
	Text( 3, "Kris of the Sphinx", JumpPage, 8)
	Text( 3, "Judgment of Enigma", JumpPage, 9)
	Text( 3, "Rifle of Enigma", JumpPage, 10)
	Text( 3, "Mantle of Enigma", JumpPage, 11)
	Text( 3, "Robe of Enigma", JumpPage, 12)
	Text( 3, "Next Page", JumpPage, 4)

	Talk( 4, "Indianna Jones: To unseal a unique equipment requires great energy consumption. Only those useless researchers will use multiple runestones to draw on their energy. I only need 1 special runestone to unseal it. Bring me 1 Morph Runestone and I will help you to unseal your equipment." )
	Text( 4, "Blade of Enigma", JumpPage, 13)
	Text( 4, "Tattoo of Enigma", JumpPage, 14)
	Text( 4, "Armor of Enigma", JumpPage, 15)
	Text( 4, "Robe of the Sphinx", JumpPage, 16)
	Text( 4, "Staff of the Sphinx", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1909, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1909, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 788, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "Indianna Jones: To unseal the curse on Staff of Enigma, you must bring me: Ice Sealed Staff of Enigma, Morph Runestone x1 and also 800000G as fee." )
	Text( 6, "Unseal curse on Staff of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1927, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1927, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 806, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "Indianna Jones: To unseal the curse on Mantle of the Sphinx, you must bring me: Ice Sealed Mantle of the Sphinx, Morph Runestone x1 and also 800000G as fee" )
	Text( 7, "Unseal curse on Mantle of the Sphinx", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1923, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1923, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 802, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "Indianna Jones: To unseal the curse on Kris of the Sphinx, you must bring me: Ice Sealed Kris of the Sphinx, Morph Runestone x1 and also 800000G as fee." )
	Text( 8, "Unseal curse on Kris of the Sphinx", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1894, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1894, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 773, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "Indianna Jones: To unseal the curse on Judgment of Enigma, you must bring me: Ice Sealed Judgment of Enigma, Morph Runestone x1 and also 800000G as fee." )
	Text( 9, "Unseal curse on Judgment of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1905, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1905, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 784, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "Indianna Jones: To unseal the curse on Rifle of Enigma, you must bring me: Ice Sealed Rifle of Enigma, Morph Runestone x1 and also 800000G as fee" )
	Text( 10, "Unseal curse on Rifle of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1901, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1901, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 780, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "Indianna Jones: To unseal the curse on Mantle of Enigma, you must bring me: Ice Sealed Mantle of Enigma, Morph Runestone x1 and also 800000G as fee." )
	Text( 11, "Unseal curse on Mantle of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1913, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1913, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 792, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "Indianna Jones: To unseal the curse on Robe of Enigma, you must bring me: Ice Sealed Robe of Enigma, Morph Runestone x1 and also 800000G as fee." )
	Text( 12, "Unseal curse on Robe of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1897, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1897, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 776, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "Indianna Jones: To unseal the curse on Blade of Enigma, you must bring me: Ice Sealed Blade of Enigma, Morph Runestone x1 and also 800000G as fee." )
	Text( 13, "Unseal curse on Blade of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1887, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1887, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 766, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "Indianna Jones: To unseal the curse on Tattoo of Enigma, you must bring me: Ice Sealed Tattoo of Enigma, Morph Runestone x1 and also 800000G as fee." )
	Text( 14, "Unseal curse on Tattoo of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1890, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1890, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 769, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "Indianna Jones: To unseal the curse on Armor of Enigma, you must bring me: Ice Sealed Armor of Enigma, Morph Runestone x1 and also 800000G as fee." )
	Text( 15, "Unseal curse on Armor of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1919, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1919, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 798, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "Indianna Jones: To unseal the curse on Robe of the Sphinx, you must bring me: Ice Sealed Robe of the Sphinx, Morph Runestone x1 and also 800000G as fee." )
	Text( 16, "Unseal curse on Robe of the Sphinx", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1916, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1916, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 795, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "Indianna Jones: To unseal the curse on Staff of the Sphinx, you must bring me: Ice Sealed Staff of the Sphinx, Morph Runestone x1 and also 800000G as fee." )
	Text( 17, "Unseal curse on Staff of the Sphinx", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "Indianna Jones: Sorry, you do not have the required items. I cannot unseal it for you." )

end

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<乱斗管理员
function kk_talk01 ()
	
	Talk( 1, "Chaos Administrator: Only the strongest can survive in combat and only the strongest will be respected." )
	Text( 1, "Apply for redemption", JumpPage ,7)
	Text( 1, "Check Chaos ranking", Garner2GetWiner)
	Text( 1, "Apply to enter Ranking List", Garner2RequestReorder)
--	Text( 1, "You received Chaos Manual", Change_FightingBook)
--	Text( 1, "About Chaos manual", JumpPage ,2)
	Text( 1, "About Chaos ranking", JumpPage ,3)
	Text( 1, "Regarding Chaos Argent", JumpPage ,13)
	
	Talk( 2, "Chaos Administrator: If you do not have the Mark of Honor, this Chaos Manual will record all your Honor points. If you have the Mark of Honor, this book will replace your former Mark of Honor and record all your Honor. Your existing points will not vanish and will be recorded on this book." )
	Text(2,"Comfirm",Change_FightingBook)

	Talk( 3, "Chaos Administrator: All adventurers that have gone through combat in Chaos Argent will be ranked accordingly. However, only the top 5 with the highest Chaos points will be listed." )
	Text(3,"About Chaos points",JumpPage ,4)
	Text(3,"About Chaos equipment",JumpPage ,6)


	Talk( 4, "Chaos Administrator: You can gain Chaos points in Chaos Argent by defeating players around your level. It will be recorded in your Medal of Valor." )
	Talk( 6, "Chaos Administrator: Including of Chaos Framestone, Chaos Clawstone, Chaos Pawstone, this set of equipment has high attribute bonus and other hidden ability. These abilities will be activated according to your ranking on the list." )
	
	Talk( 7, "Chaos Administrator: Come to me if you want to exchange for good things." )
	Text(7,"Redeem Standard Chaos Voucher",JumpPage ,8)
	Text(7,"Redeem Chaos Chest",JumpPage ,9)
	Text(7,"Exchanged for King of the Ring Emblem",JumpPage ,10)
	Text(7,"Redeem Guide",SendExchangeXData)
	Text(7,"Redeem Symbol of Honor",JumpPage ,12)

	--兑换所需物品 ID,数量,兑换所得物品数量,赋予的值
	InitExchangeX()

	ExchangeDataX(	2608	,	100	,	2682	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2683	,	1	,	1)
	ExchangeDataX(	2609	,	1000	,	2684	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2692	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2693	,	1	,	1)
	ExchangeDataX(	2609	,	1000	,	2694	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2702	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2703	,	1	,	1)
	ExchangeDataX(	2609	,	1000	,	2704	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2712	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2713	,	1	,	1)
	ExchangeDataX(	2609	,	1000	,	2714	,	1	,	1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1031, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1031, 1 )
	TriggerAction( 1, GiveItem, 2609, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 8, "Chaos Administrator: 1 Saint of the Ring Emblem is enough" )
	Text( 8, "Confirm to exchange", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1032, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1032, 1 )
	TriggerAction( 1, GiveItem, 1134, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 9, "Chaos Arena Administrator: 1 King of the Ring Emblem will be enough." )
	Text( 9, "Confirm to exchange", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1031, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1031, 5 )
	TriggerAction( 1, GiveItem, 1032, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 10, "Chaos Administrator: I need 5 Saint of the Ring Emblem" )
	Text( 10, "Confirm to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "Chaos Administrator: Come and find me after assembling the necessary items. Your inventory must have 1 free slot and not binded." )
	
	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Talk( 12, "Chaos Administrator: The Symbols of Honor are Heart of Sparkle, Heart of Glory and Heart of Splendor. They required 200, 2000, 20000 reputation points respectively." )
	Text( 12, "Obtain Chaos Heart of Sparkle", Change_shanyao)
	Text( 12, "Received Chaos Heart of Honor.", Change_rongyao)
	Text( 12, "Obtained Chaos Heart of Splendor", Change_huihuang)

	Talk( 13, "Chaos Administrator: Chaos Argent will allow players to engage in combat and enjoy PvP battles! To enter, players need to be at least Lv 20, possess 20 Honor points, 30 Reputation points and some gold. It will be open PK upon entering the area. If level differences of two players are less than 15, the one defeated will lose 1 Honor and the winner will obtain 1 Chaos point. If the defeated player is 15 levels higher, he will lose 2 Honor instead and the winner will obtain 2 Chaos points. When the combat ends, the survivor will recieve gold as reward. If there are 5 or less survivors, each will obtain 1 Saint of the Ring Emblem. If there is only 1 survivor, he/she will obtain additional gold and a King of the Ring Emblem. Note: Please leave 1 empty inventory slot before participating." )
	
	
	
end 

function b_talk25 ()
	Popup( LifeSkillBegin , 3 )	

end 

function b_talk26 ()
	Popup( LifeSkillBegin , 2 )	

end 

function b_talk27 ()
	Popup( LifeSkillBegin , 0 )
end 

function b_talk28 ()
	Popup( LifeSkillBegin , 1 )	

end 

function leo_talkaa()
	Talk( 1, "Will accept all sort of project! Workmanship guarantee!" )
	Text( 1, "Have a look at your item.", SendExchangeXData)

	
	--兑换所需物品 ID,数量,兑换所得物品数量,赋予的值
	InitExchangeX()

	ExchangeDataX(	3989	,	99	,	3999	,	20	,	1)
	ExchangeDataX(	3990	,	99	,	4000	,	20	,	1)
	ExchangeDataX(	3991	,	99	,	4001	,	20	,	1)
	ExchangeDataX(	3992	,	99	,	4002	,	20	,	1)
	ExchangeDataX(	3993	,	99	,	4003	,	20	,	1)
	ExchangeDataX(	3994	,	99	,	4004	,	20	,	1)
	ExchangeDataX(	3995	,	99	,	4005	,	20	,	1)
	ExchangeDataX(	3996	,	99	,	4006	,	20	,	1)
	ExchangeDataX(	3997	,	99	,	4007	,	20	,	1)
	ExchangeDataX(	3998	,	99	,	4008	,	20	,	1)

end

function leo_talkbb()
	Talk( 1, "Selling stones! Do not come if you have no money!" )
	Text( 1, "I only have money.", SendExchangeXData)

	
	--兑换所需物品 ID,数量,兑换所得物品数量,赋予的值
	InitExchangeX()

	ExchangeDataX(	4029	,	99	,	4039	,	20	,	1)
	ExchangeDataX(	4030	,	99	,	4040	,	20	,	1)
	ExchangeDataX(	4031	,	99	,	4041	,	20	,	1)
	ExchangeDataX(	4032	,	99	,	4042	,	20	,	1)
	ExchangeDataX(	4033	,	99	,	4043	,	20	,	1)
	ExchangeDataX(	4034	,	99	,	4044	,	20	,	1)
	ExchangeDataX(	4035	,	99	,	4045	,	20	,	1)
	ExchangeDataX(	4036	,	99	,	4046	,	20	,	1)
	ExchangeDataX(	4037	,	99	,	4047	,	20	,	1)
	ExchangeDataX(	4038	,	99	,	4048	,	20	,	1)
	ExchangeDataX(	1670	,	99	,	1671	,	20	,	1)
	ExchangeDataX(	1668	,	99	,	3368	,	20	,	1)
	ExchangeDataX(	1667	,	99	,	3360	,	20	,	1)
	ExchangeDataX(	1642	,	99	,	1643	,	20	,	1)
	ExchangeDataX(	4825	,	99	,	1638	,	20	,	1)
	ExchangeDataX(	1633	,	99	,	1641	,	20	,	1)
	ExchangeDataX(	1782	,	99	,	1769	,	20	,	1)
	ExchangeDataX(	2815	,	99	,	1775	,	20	,	1)
	ExchangeDataX(	1674	,	99	,	1767	,	20	,	1)
	ExchangeDataX(	4832	,	99	,	2901	,	20	,	1)

end

function leo_talkcc()
	Talk( 1, "Never buy anything from the Black Market Merchant beside me, he will scam you of your money. Take a look at my things instead." )
	Text( 1, "Let me take a look at your item.", SendExchangeXData)
	
	InitExchangeX()
	ExchangeDataX(	855	,	60	,	2617	,	1	,	1)
	ExchangeDataX(	2588	,	3	,	2619	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2622	,	1	,	1)
	ExchangeDataX(	2589	,	5	,	2624	,	1	,	1)
	ExchangeDataX(	2588	,	3	,	2640	,	1	,	1)
	ExchangeDataX(	855	,	60	,	2641	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2642	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2643	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2644	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2649	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1055	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1056	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1058	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1059	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1061	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1062	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1064	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1065	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2680	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2681	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2682	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2683	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2684	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2685	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2690	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2691	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2692	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2693	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2694	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2695	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2700	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2701	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2702	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2703	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2704	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2705	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2710	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2711	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2712	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2713	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2714	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2715	,	1	,	1)

end
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<合成介绍员
-----介绍员-蓝
function max_talka1()
	Talk( 1, "Assistant - Blue: Hi, I am Assistant - Blue. I can help you with any problem encountered while using Substance Analyzation Tool. How may I help you?" )
	Text( 1, "What is Substance Analyzation Tool?", JumpPage ,2)
	Text( 1, "Can I use the Substance Analyzation Tool?", JumpPage ,7)
	Text( 1, "How do Substance Analyzation Tool work?", JumpPage ,3)
	Text( 1, "What can the Substance Analyzation Tool analyze?", JumpPage ,4)
	Text( 1, "I have no issue. I am only passing by!", JumpPage ,6)

	Talk( 2, "Assistant - Blue: Substance Analyzation Tool is a mysterious instrument of nature. It allows you to analyze and restore an item into its original state." )
	Text( 2, "I still have other questions", JumpPage ,1)
	Text( 2, "I see.. I don't have any more questions, thank you!", CloseTalk)

	Talk( 3, "Assistant - Blue: First you need to prepare the fairy, tools and catalyst for analyzation. Access the instrument and place the items into their respective slots. During the process, you can see a 5-digit number on the left side of the display. When the number on the right side of the display is lower than that number, your analyzation is successful." )
	Text( 3, "Will it be life-threatening if it fail?", JumpPage ,5)
	Text( 3, "You mentioned about tool just now?", JumpPage ,9)
	Text( 3, "I have other questions", JumpPage ,1)
	Text( 3, "I see.. I don't have any more questions, thank you!", CloseTalk)

	Talk( 4, "Assistant - Blue: Substance Analyzation Tool allows a weapon or equipment, with the correct catalyst, to breakdown into the original material. Addition of different catalyst might obtain different effect. You might be surprised!" )
	Text( 4, "How can I get Catalyst?", JumpPage ,8)
	Text( 4, "I still have other questions", JumpPage ,1)
	Text( 4, "I see.. I don't have any more questions, thank you!", CloseTalk)

	Talk( 5, "Assistant - Blue: Haha! Do not worry about our Substance Analyzation Tool. It is very safe and will not harm your pet. However, items and catalyst used will disppeared if Analyzation failed.")
	Text( 5, "I have other questions", JumpPage ,1)
	Text( 5, "I see.. I don't have any more questions, thank you!", CloseTalk)

	Talk( 6, "Assistant - Blue: Hope that you pass by here happily!")
	Text( 6, "Continute to walk pass!", CloseTalk)

	Talk( 7, "Assistant - Blue: Of course you can, But first you need to buy an Analyze Guide from the Grocer's. After reading through it, you will be able to start trying.")
	Text( 7, "I have other questions", JumpPage ,1)
	Text( 7, "I see.. I don't have any more questions, thank you!", CloseTalk)

	Talk( 8, "Assistant - Blue: You can purchase any catalyst from our Item Mall" )
	Text( 8, "I have other questions", JumpPage ,1)
	Text( 8, "I see.. I don't have any more questions, thank you!", CloseTalk)

	Talk( 9, "Assistant - Blue: Tools are item that increases success rate. Please note that manufacturing skill of pet fairy must be higher than the level of tools to be made." )
	Text( 9, "I have other questions", JumpPage ,1)
	Text( 9, "I see.. I don't have any more questions, thank you!", CloseTalk)

end

-----篝火婆婆
function max_talka2()
	Talk( 1, "Matchstick Granny: Hello young man, I'm matchstick Granny. When I was young, I was the most famous chef! Haha! What can I do for you?" )
	Text( 1, "I would like to know where I can cook", JumpPage ,2)
	Text( 1, "Can I learn cooking?", JumpPage ,3)
	Text( 1, "Can you teach me how to cook?", JumpPage ,4)
	Text( 1, "Are the things made that special?", JumpPage ,5)
	Text( 1, "I am only passing by…", JumpPage ,6)

	Talk( 2, "Matchstick Granny: We should treasure the world limited resource - Fire. It can allow us to cook tasty dishes." )
	Text( 2, "Enquire about other questions", JumpPage ,1)
	Text( 2, "Thank you Granny, I understand now.", CloseTalk)

	Talk( 3, "Matchstick Granny: Haha of course. But you need to go to the Grocers to buy a Cooking Guide that I have written. After you have understand the basic knowledge, you will be able to start." )
	Text( 3, "I would like to enquire about other questions", JumpPage ,1)
	Text( 3, "Thank you Granny, I understand now.", CloseTalk)

	Talk( 4, " Matchstick Granny: Cooking is a great skill. You should be thankful to our God for being able to use such powers. Firstly, you need to have a fairy, cooking recipe, cooking tools and lastly, ingredients for cooking. Next you need to place the things in their respective places. Remember not to place them wrongly. Once everything is ready, you can start cooking. The fire must be controlled nicely, or the things might get burnt. Wastage of food is a sin!" )
	Text( 4, "When will the fire be just nice?", JumpPage ,7)
	Text( 4, "I would like to enquire about other questions", JumpPage ,1)
	Text( 4, "Thank you Granny, I understand now.", CloseTalk)

	Talk( 5, "Matchstick Granny: If the boiling water is of the right temperature, the food you cooked will be delicious. Food can not only fill up your stomach, some of them have special effect as well. It is rumored that ancient warriors eat Codfish Steamboat to gain enormous strength!" )
	Text( 5, "I would like to enquire about other questions", JumpPage ,1)
	Text( 5, "Thank you Granny, I understand now.", CloseTalk)

	Talk( 6, "Matchstick Granny: Hope you will pass by happily! May God bless you!")
	Text( 6, "I'm really just passing by", CloseTalk)

	Talk( 7, "Matchstick Granny: It means the bottom line reaches 75%. You have no knowledge at all!")
	Text( 7, "I would like to enquire about other questions", JumpPage ,1)
	Text( 7, "Thank you Granny, I understand now.", CloseTalk)

end

-----熔炉技师·梅克
function max_talka3()
	Talk( 1, "Furnace Artificer - Mel: Hi! Looking for me?" )
	Text( 1, "Tell me what can the Furnace do", JumpPage ,2)
	Text( 1, "How to use the Furnace?", JumpPage ,3)
	Text( 1, "Can tell me the secret of the Furnace?", JumpPage ,4)
	Text( 1, "I'm just passing through.", JumpPage ,5)


	Talk( 2, "Furnace Artificer - Mel: Haha want to forge your own weapon and equipments? Then this is a must. Its an inheritance from my father. Its said that my father used this to forge a whole nation's army's equipment." )
	Text( 2, "I would like to enquire about other questions", JumpPage ,1)
	Text( 2, "So this is it. I understand now.", CloseTalk)

	Talk( 3, "Furnace Artificer - Mel: Hoho! Do you wish to use? If you can understand the \"Novice Manufacturing Guide\" sold by the Groceror, I will let you try for free! Do you understand at all? Hoho!" )
	Text( 3, "I would like to enquire about other questions", JumpPage ,1)
	Text( 3, "So this is it. I understand now.", CloseTalk)

	Talk( 4, "Furnace Artificer - Mel: You will need to have a pet fairy. After that, find a blueprint and place in the materials into the Furnace accordingly to start crafting. When you see the dices shake, you will need to guess big or small. Your guess determine the outcome of crafting." )
	Text( 4, "How do I craft better things?", JumpPage ,7)
	Text( 4, "So this is it. I understand now.", CloseTalk)

	Talk( 7, "Furnace Artificer - Mel: During the process of manufacturing, you can add in material with magical properties. It will enhanced the product greatly. However, your pet will have to be of higher level." )
	Text( 7, "I would like to enquire about other questions", JumpPage ,1)
	Text( 7, "So this is it. I understand now.", CloseTalk)

	Talk( 5, "Furnace Artificer - Mel: ...Are you Wolf? Passing by here?")
	Text( 5, "I am only passing by…", CloseTalk)

end

-----研究生
function max_talka4()
	Talk( 1, "Graduate: Hi, is there anything I can do for you?" )
	Text( 1, "What is it above you", JumpPage ,2)
	Text( 1, "Can I use Substance Generator?", JumpPage ,3)
	Text( 1, "How do Substance Generator work?", JumpPage ,4)
	Text( 1, "What item can it generate?", JumpPage ,5)
	Text( 1, "I'm just passing through.", JumpPage ,6)


	Talk( 2, "Graduate: This is our latest invention: Substance Generator. We can now refine metals with it!" )
	Text( 2, "I would like to enquire about other questions", JumpPage ,1)
	Text( 2, "So this is it. I understand now.", CloseTalk)

	Talk( 3, "Graduate: First, go to a Groceror to buy the Novice Manufacturing Guide. After you have read through the basics, you will be able to start trying on your own." )
	Text( 3, "I would like to enquire about other questions", JumpPage ,1)
	Text( 3, "So this is it. I understand now.", CloseTalk)

	Talk( 4, "Graduate: To ensure that the power of Substance Generator comes under control, you will need to have a pet fairy. Place the Manufacturing Blueprint and Material into the Substance Generator accordingly and click the button to process." )
	Text( 4, "Are there different results?", JumpPage ,7)
	Text( 4, "I would like to enquire about other questions", JumpPage ,1)
	Text( 4, "So this is it. I understand now.", CloseTalk)

	Talk( 5, "Graduate: As it is a copy of the original smelting technique, it is not as wondrous. But if you follow strictly to the formulas, you will not be disappointed." )
	Text( 5, "I would like to enquire about other questions", JumpPage ,1)
	Text( 5, "So this is it. I understand now.", CloseTalk)

	Talk( 6, "Graduate: Looks like you are…")
	Text( 6, "I am really only passing by…", CloseTalk)

	Talk( 7, "Graduate: As we are not the Almighty, what we create are not perfect. To distinguish the quality of the product we have seperate it accordingly in ascending order:                  Thank you     Abysmal                            Terrible                           Bad                                  Poor                            Mediocre                          Fair                              Good                                Great                              Superb                            Perfect .")
	Text( 7, "I would like to enquire about other questions", JumpPage ,1)
	Text( 7, "So this is it. I understand now.", CloseTalk)
end

---------------------圣诞树
function el_talk05 ()
	
	Talk( 1, "Christmas Tree: Merry Christmas to you! Each blessing that comes from the heart will hold true" )
	Text( 1, "Select blessing",JumpPage, 2  )
	
	Talk ( 2, "Christmas Tree: Do you want to dedicate your blessing? Every dedication requires a Christmas Card and 1000G." )
	Text( 2, "I want to dedicate my blessings",JumpPage, 3  )
	
	Talk( 3, "May God bless you on this Christmas season! The Goddess of Mercy protect you! God of Fortune hugs you! Cupid shoots you! God of Cookery bites you!")
	Text(3,"Confirm to broadcast this blessing",  GetChaName_0, 1)
	Text( 3, "Next Line",JumpPage, 6  )

	Talk( 6, "Due to consideration of the upcoming world event…")
	Text(6,"Confirm to broadcast this blessing",  GetChaName_1, 1)
	Text( 6, "Next Line",JumpPage, 7  )
	Text( 6, "Previous Line",JumpPage, 3  )

	Talk( 7, "I have a beautiful wish: That is to ring the bell that signify the coming of Christmas as I hold your hands on Christmas Eve and begin our romantic journey...Will you help me fulfil this wish?")
	Text(7,"Confirm to broadcast this blessing",  GetChaName_2, 1)
	Text( 7, "Next Line",JumpPage, 8  )
	Text( 7, "Previous Line",JumpPage, 6  )

	Talk( 8, "After a year has past, now we have return to this meaningful night. Let this moment be full of joy and happiness...Merry Christmas!")
	Text(8,"Confirm to broadcast this blessing",  GetChaName_3, 1)
	Text( 8, "Previous Line",JumpPage, 7  )
---------------------------------------------------------------------------------------------------------------	
end

----------------------------------------霍金斯-------------------------
--------------------------------寂寞之塔6层(51300,26900)
--------------------------------------eleven------------------------------------------
function el_talk07 ()

	InitTrigger()
	TriggerCondition( 1, HasMission, 1300 )
	TriggerCondition( 1, LvCheck, ">", 74 )
	TriggerCondition( 1, HasCredit,9999 )
	TriggerCondition( 1, NoRecord, 1300 )
	TriggerCondition( 1, NoRecord, 1301 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, CloseTalk  )

	Talk( 1, "Huckinson: I am a killing machine! Spare nobody! I do gossip sometimes. Do not talk to me if you are below Lv 75 and lower than 9999 reputation points!" )
	Text( 1, "Hi!",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Huckinson: To get the fragments you must answer a few questions. Which of the story quest below is connected to the missing boy quest?" )
	Text( 2, "Food Poisoning",JumpPage, 3  )
	Text( 2, "The Lost Tool",JumpPage, 4  )
	Text( 2, "A Crazy Reason",JumpPage, 3  )---------
	Text( 2, "Kill the Shrooms",JumpPage, 32  )

	Talk( 3, "Huckinson: Do not be too arrogant. I ask you about some gossip instead. Who is the lover of Andrew?" )
	Text( 3, "Coddy",JumpPage, 4  )
	Text( 3, "Zhou",JumpPage, 32  )
	Text( 3, "Little Fish",JumpPage,5  )
	Text( 3, "Yuan Bin",JumpPage, 2  )
	Text( 3, "Hami",JumpPage, 4  )--------------
	Text( 3, "Li Zhang Zhong",JumpPage, 4  )

	Talk( 4, "Huckinson: Which of these below are material for manufacturing" )
	Text( 4, "Murky Polliwog Blood and Pure Water",JumpPage, 5  )
	Text( 4, "Blood Red Polliwog skin and Energetic Tea",JumpPage, 5  )
	Text( 4, "Evil Polliwog Blood and Incitant",JumpPage, 2  )
	Text( 4, "Transparent Polliwog Blood and Pure Water",JumpPage, 32 )
	Text( 4, "Thick Transparent Polliwog Tail",JumpPage, 6  )
	Text( 4, "Energetic Tea and Incitant",JumpPage, 19  )-----------
	Text( 4, "Evil Polliwog Blood",JumpPage, 5  )


	Talk( 5, "Huckinson: The love keepsake of the myterious granny is...?" )
	Text( 5, "Crystal Tears",JumpPage, 32  )
	Text( 5, "Tear Soothstone",JumpPage, 6  )
	Text( 5, "Stone of Langa",JumpPage, 3  )
	Text( 5, "Amber Tear",JumpPage, 22  )----------
	Text( 5, "Garden of Eve stone",JumpPage, 7  )
	Text( 5, "Tears of Kara",JumpPage, 7  )
	Text( 5, "Stone of First Love",JumpPage, 32  )

	Talk( 6, "Huckinson: What is the relationship between the Richies and Anubis?" )
	Text( 6, "Father and Son Relationship",JumpPage, 4  )
	Text( 6, "grandparents and grandchildren relationship",JumpPage, 8  )
	Text( 6, "brothers",JumpPage, 7  )
	Text( 6, "Lover",JumpPage, 32  )
	Text( 6, "No relation",JumpPage, 32  )
	Text( 6, "Distance relative",JumpPage, 32  )
	Text( 6, "Cousin Relationship",JumpPage, 7  )-----------------
	Text( 6, "Sisters",JumpPage, 7  )

	Talk( 7, "Huckinson: Demonic Fruit will change into what?" )
	Text( 7, "Fairy Baby",JumpPage, 32  )
	Text( 7, "Normal Apple",JumpPage, 8  )----------
	Text( 7, "Devil",JumpPage, 9  )
	Text( 7, "Running Demonic Fruit",JumpPage, 5  )
	Text( 7, "harden",JumpPage, 32  )

	Talk( 8, "Huckinson: What is Goldie now working as?" )
	Text( 8, "butcher",JumpPage, 3  )
	Text( 8, "Movie star",JumpPage, 32  )
	Text( 8, "Face dot teacher",JumpPage, 32  )
	Text( 8, "Body Art Model",JumpPage, 9  )--------
	Text( 8, "GM",JumpPage, 7  )
	Text( 8, "Company Boss",JumpPage, 9  )

	Talk( 9, "Huckinson: Which of the option below is correct?" )
	Text( 9, "You will regret choosing me.",JumpPage, 4  )
	Text( 9, "Hami is the illegitimate son of Sang Di",JumpPage, 10 )-----------
	Text( 9, "Beldi do not know how to make cakes",JumpPage, 32  )
	Text( 9, "Sang Di will live longer than Mysterious Granny",JumpPage, 23 )
	Text( 9, "The High Priest was once a pirate",JumpPage, 6  )

	Talk( 10, "Huckinson: Black Market merchant used to be common. That was " )
	Text( 10, "10 years ago",JumpPage, 5  )
	Text( 10, "Half a year ago",JumpPage, 5  )
	Text( 10, "While he is trading in antique",JumpPage, 32 )
	Text( 10, "When he just arrived at Icicle City",JumpPage, 8  )
	Text( 10, "Before he fell in love with Donna.",JumpPage, 11  )-----------
	Text( 10, "After he has been ditched by Donna",JumpPage, 32  )
	Text( 10, "When he is studying in Black Market University",JumpPage, 8  )


	Talk( 11, "Huckinson: NPC secrets revealed! What sort of person do you think NPC Pappa is?" )
	Text( 11, "25 years old handsome guy",JumpPage, 32 )
	Text( 11, "gentle lady",JumpPage, 30  )
	Text( 11, "Fierce tom-boy",JumpPage, 13  )
	Text( 11, "Scary Marriage Whacko",JumpPage, 2  )
	Text( 11, "Happy Pretty Girl",JumpPage, 13  )---------------
	Text( 11, "Charming Idol",JumpPage, 32  )
	Text( 11, "No correct option",JumpPage, 28  )

	Talk( 30, "Huckinson: You have a deep misunderstanding of her"  )
	Text( 30, "Next",JumpPage, 32  )
	Talk( 31, "Huckinson: Don't let her know that you have chosen this answer" )
	Text( 31, "Next",JumpPage, 32  )



	--Talk( 12, "Huckinson: Which of the below description is wrong?" )
	--Text( 12, "Minelli is the High Priest's secretary",JumpPage, 32 )
	--Text( 12, "You can win Black Dragon equipment from Lucky Chance",JumpPage, 3 )
	--Text( 12, "Ditto knows how to concort the Reverse Love Potion.",JumpPage,8 )
	--Text( 12, "Roland is the most desired lover",JumpPage, 10 )
	--Text( 12, "Kentaro feels that Mas is a very clever person",JumpPage, 13 )---------------
	--Text( 12, "Horrific Cursed Corpse is near Ascaron at (360, 1340)",JumpPage, 5 )
	--Text( 12, "Merman Prince used to be just a frog",JumpPage, 13 )
	--Text( 12, "Minelli used to be Carsise's lover",JumpPage, 13 )

	Talk( 13, "Huckinson: Regarding gem extraction, which of these stated below is wrong?" )
	Text( 13, "Blacksmith's Plier is the tool for extraction",JumpPage, 5 )
	Text( 13, "Each piece of equipment will follow a sequence to extract",JumpPage, 3 )
	Text( 13, "Socket number will not change after extraction but Plier will disappear after usage",JumpPage, 32 )
	Text( 13, "Collection Fee= Equipment refining level * 1000G",JumpPage, 14 )
	Text( 13, "You can only extract one from each socket",JumpPage, 10 )
	Text( 13, "Level of gem extracted is 1 level lower than original gem forged into socket",JumpPage, 14 )-----------------
	Text( 13, "The 3rd option is correct",JumpPage, 8 )

	Talk( 14, "Huckinson: Who knows the secret of the Brimstone?" )
	Text( 14, "Houston",JumpPage, 4 )
	Text( 14, "Langa and the Mysterious Granny",JumpPage, 32 )
	Text( 14, "Merman Prince and Azure Siren",JumpPage, 7 )
	Text( 14, "Ditto and Mystery Granny",JumpPage, 15 )
	Text( 14, "Ditto and Langa",JumpPage, 15 )-----------------
	Text( 14, "Mysterious Granny and the Merman Prince",JumpPage, 8 )
	Text( 14, "Houston and the Merman Prince",JumpPage, 12 )


	Talk( 15, "Huckinson: Which herbs stated below has side effect?" )
	Text( 15, "Restoration Potion",JumpPage,13 )
	Text( 15, "Revival Clover",JumpPage, 32 )
	Text( 15, "Memory Capsule",JumpPage, 16 )--------------
	Text( 15, "Reverse Love Potion",JumpPage, 5 )
	Text( 15, "Memory Soup",JumpPage, 4 )
	Text( 15, "Sorcerer's bone powder.",JumpPage, 16 )
	Text( 15, "Preservative",JumpPage, 9 )

	Talk( 16, "Huckinson: Whos lying?" )
	Text( 16, "Mysterious Granny: I love Langa.",JumpPage, 32 )
	Text( 16, "General William: Mask of Zorro is not with me",JumpPage, 17 )-----------
	Text( 16, "Langa: Mysterious Granny is not the one in my heart",JumpPage, 17 )
	Text( 16, "Pappe: I am a beautiful woman before I turned into a penguin!",JumpPage, 5 )
	Text( 16, "Sang Di: I know how to speak the language that humans don't understand.",JumpPage, 10 )
	Text( 16, "Mordo Junior: My parents aren't all Mordos",JumpPage, 15 )

	Talk( 17, "Huckinson: Do you like to play Tales of Pirates?" )
	Text( 17, "I like it",JumpPage, 32 )
	Text( 17, "I like it very much",JumpPage, 32 )
	Text( 17, "I like it very much",JumpPage, 32 )
	Text( 17, "I like it!",JumpPage, 32 )
	Text( 17, "I like it!",JumpPage, 18 )-----------------
	Text( 17, "I like it!!!",JumpPage, 5 )
	Text( 17, "I still likes it.",JumpPage, 15 )

	Talk( 18, "Huckinson: The High Priest has what bad habit?" )
	Text( 18, "Tear footskin",JumpPage, 5 )
	Text( 18, "Dig Nose",JumpPage, 14 )
	Text( 18, "Peep",JumpPage, 2 )
	Text( 18, "Drunkyard",JumpPage, 9 )
	Text( 18, "Smoke Addict",JumpPage, 12 )
	Text( 18, "Gamble Addict",JumpPage, 10 )
	Text( 18, "Squat in toilet",JumpPage, 12 )------------------
	Text( 18, "Wash hand",JumpPage, 4 )


	Talk( 19, "Huckinson: Are you sure about your option?" )
	Text( 19, "I am sure",JumpPage, 21  )
	Text( 19, "I chose wrongly just now.",JumpPage, 20  )
	Text( 19, "I need to consider",JumpPage, 32  )

	Talk( 20, "Huckinson: Please be steady…" )
	Text( 20, "Next",JumpPage, 3  )

	Talk( 21, "Huckinson: Confidence is important to a pirate!" )
	Text( 21, "Comfirm",JumpPage, 5  )

	Talk( 22, "Huckinson: Are you sure about your option?" )
	Text( 22, "I am sure",JumpPage, 24  )
	Text( 22, "I chose wrongly just now.",JumpPage, 20  )
	Text( 22, "I need to consider",JumpPage, 32  )


	Talk( 23, "Huckinson: Are you sure about your option?" )
	Text( 23, "I am sure",JumpPage, 25  )
	Text( 23, "I chose wrongly just now.",JumpPage, 8  )
	Text( 23, "I need to consider",JumpPage, 32  )

	Talk( 24, "Huckinson: Confidence is the basic requirement to be a pirate!")
	Text( 24, "Next",JumpPage, 6   )
	Talk( 25, "Huckinson: Please use your brain. Don't always choose the same answer. Who told you that you must believe me? I'm talking about having confidence!")
	Text( 25, "Next",JumpPage, 32  )

	Talk( 26, "Huckinson: Are you sure about your option?" )
	Text( 26, "I am sure",JumpPage, 28  )
	Text( 26, "I chose wrongly just now.",JumpPage, 27  )
	Text( 26, "I need to consider",JumpPage, 32  )

	Talk( 27, "Huckinson: This move allow you to save lots of time"   )
	Text( 27, "Next",JumpPage, 12  )

	Talk( 28, "Huckinson: You are too over-confident. That's not a pirate's virtue."  )
	Text( 28, "Next",JumpPage, 32  )



	InitTrigger()
	TriggerCondition( 1, HasMission, 1300 )
	TriggerCondition( 1, NoRecord, 1300 )
	TriggerAction( 1, SetRecord, 1301 )
	TriggerAction( 1, JumpPage, 29 )
	
	Talk( 12, "Huckinson: I believe that these riddles are interesting. Do you wish to try?"  )
	Text( 12, "want",MultiTrigger, GetMultiTrigger(), 1  )
	Text( 12, "No",JumpPage, 2  )

	Talk( 29, "Huckinson: Congratulations! Your wisdom has enabled you to join the quest for the fragments. Now go and prove your strength!" )

	Talk(32, "Huckinson: Are you stupid?" )
	Text( 32, "Not me. I want to try again.",JumpPage, 2  )
	Text( 32, "I'm stupid, I quit!",CloseTalk  )
	AddNpcMission	(6001)
	AddNpcMission	(6002)
	
		
end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<霍金斯



----------------------------------------托马斯·图图-------------------------
--------------------------------魔方世界二层(26600,25900)
--------------------------------------eleven------------------------------------------

function el_talk08 ()


	Talk( 1, "Tomas Tutu: Organising tour! 3 days 2 night at Icy Devil Cave! Discount for members!" )
	 
	 AddNpcMission	(6010)
	AddNpcMission	(6011)
	AddNpcMission	(6012)
	AddNpcMission	(6013)
	AddNpcMission	(6014)

	end
	-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<托马斯·图图
	
	--神使
	
function Leo_talkQ()
	Talk(1,"Representative of order, protector of love and justice! I am the Online GM, maning my post to help those in need...")
	Text(1,"Regarding Online GM",JumpPage,2)
	Text(1,"Submit question" , OpenGMSend)
	Text(1,"Check on reply" , OpenGMRecv)
	
	Talk(2," I'm the online GM. Here, I relay the questions of the players to the GM in real life. At the same time, I'll relay the replies back to the players. When asking questions, please take note of the following:                                    1) Every player can only ask 1 question and have to wait for the reply before asking another.                                                                                        2)The questions cannot infringe upon the rules and regulations of the game     3)Content should be within 16-256 letters or 8-128 words.                                  4)Please do not ask questions not related to the game. Thank You!")
	Text(2,"I understand" , CloseTalk)
end


-------------------------bargi-----------------------------
function smzh_talk ()

	Talk( 1, "Mystery Grocer: Young man, do not be fooled so easily by illusions!!!" )
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

function leo_talkzz()
	Talk(1,"Hi, I am an online support NPC. I will help players clear some of their query or issue. Please select the following options")
	Text( 1,"Event of Chaos points abnormality",JumpPage,2)
--	Text( 1,"Rebirth card event",JumpPage,3)
	 
	Talk(3, "Hi, did your Rebirth Card changed to a rock? I guess that happens when it is exposed to radiation. Do you wish to restore your Rebirth Card here")
	Text( 3, "Confirm to reset",GetChaName_25, 1) 
	
	Talk(2,"If you encounter abnormality in your Chaos points, please reset it to zero")
	Text(2,"My Chaos points are abnormal. I wish to reset",PKPointToZero)
	Text(2,"Don't know what are you talking about",CloseTalk)
end
	
function r_HeSToP()	
	Talk( 1, "橡钿噔弼 囗耔腩�: 橡桠弪!� 戾�� 恹 祛驽蝈 牦镨螯 囗耔臌..." )
	Text( 1, "项赅骅 黩� � 蝈�� 羼螯!", BuyPage )

	InitTrade()
	Defence(	4282	)
	Defence(	4281	)
	Defence(	4280	)
	Defence(	4279	)
	Defence(	4278	)
	Defence(	4277	)
	Defence(	4276	)
	Defence(	4275	)
	Defence(	4274	)
	Weapon(	2941	)
	Weapon(	2988	)
	Weapon(	5955	)
	Weapon(	5954	)
	Weapon(	5953	)
	Weapon(	5952	)
	Weapon(	5951	)
	Weapon(	5950	)
	Weapon(	5949	)
	Weapon(	5948	)
	Weapon(	5947	)
	Weapon(	5946	)
	Weapon(	5945	)
	Weapon(	5944	)
	Weapon(	5943	)
	Weapon(	5942	)
	Weapon(	5941	)
	Weapon(	5940	)
	Weapon(	5939	)
	Weapon(	5938	)
	Weapon(	5937	)
	Weapon(	5936	)
	Weapon(	5935	)
	Weapon(	5934	)
	Weapon(	5933	)
	Weapon(	5932	)
	Weapon(	5931	)
	Weapon(	5930	)
	Weapon(	5929	)
	Weapon(	5928	)


	AddNpcMission ( 72 )

end

function r_HeSToP2()
	Talk( 1, "螓赈�: � 戾�� 恹 祛驽蝈 牦镨螯 翦� � � 镳桧噤脲骓铖蜩 潆� 龛�..." )
	Text( 1, "项赅骅 黩� � 蝈�� 羼螯!", BuyPage )
	InitTrade()
	Weapon(	222	)
	Weapon(	225	)
	Weapon(	226	)
	Weapon(	224	)
	Weapon(	223	)
	Weapon(	280	)
	Weapon(	277	)
	Weapon(	279	)
	Weapon(	278	)
	Weapon(	276	)
	Weapon(	245	)
	Weapon(	251	)
	Weapon(	261	)
	Weapon(	254	)
	Weapon(	248	)
	Weapon( 	680	)
	Weapon(	3918	)
	Weapon(	3919	)
	Weapon(	3920	)
	Weapon(	3921	)
	Weapon(	3922	)
	Weapon(	3925	)
	Weapon( 227	)
	Weapon( 234	)
	Weapon( 236	)
	Weapon( 232	)
	Weapon( 233	)
	Weapon( 235	)
	Weapon( 237	)
	Weapon( 609	)
	Defence( 4540	)
	Defence( 3443	)
	Defence( 4533	)
	Defence( 3437	)
	Defence( 4530	)
	Defence( 3436	)
	Defence( 3434	)
	Defence( 1196	)
	Defence( 3436	)
	Defence( 3442	)
	Defence( 1253	)
	Defence( 4537	)
	Defence( 3444	)
	Text( 1, "� 躅黧 镱驽龛螯 疋铊� 翦�!", OpenEidolonMetempsychosis )
          Text( 1, "娱蜩", CloseTalk )
end

function r_HeSToP3()

	--软溴犟(�)
	local CurMapName1 = "hell"


	--泪噤漕�05
	local GoTo01X = 110
	local GoTo01Y = 230
	local GoTo01M = CurMapName1

	--泪噤漕�06
	local GoTo02X = 230
	local GoTo02Y = 30
	local GoTo02M = CurMapName1

	--泪噤漕�07
	local GoTo03X = 110
	local GoTo03Y = 150
	local GoTo03M = CurMapName1

	--泪噤漕�08
	local GoTo04X = 230
	local GoTo04Y = 150
	local GoTo04M = CurMapName1

	Talk( 1, "项痱嚯桕 噌噤漕磬: 橡桠弪! 棋豚屮� 铗镳噔栩� � 噌噤漕�?" )
	Text( 1, "悟镳噔栩� � 噌噤漕� 05", JumpPage, 2 )
	Text( 1, "悟镳噔栩� � 噌噤漕� 06", JumpPage, 3 )
	Text( 1, "悟镳噔栩� � 噌噤漕� 07", JumpPage, 4 )
	Text( 1, "悟镳噔栩� � 噌噤漕� 08", JumpPage, 5 )
	Text( 1, "娱蜩", CloseTalk )

	--泪噤漕�05
	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, " 泪噤漕� 05? 湾� 镳钺脲�!" )
	Text( 2, " 义脲镱痱",MultiTrigger, GetMultiTrigger(), 2)

	--泪噤漕�06
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo02X, GoTo01Y, GoTo02M )
	Talk( 3, " 泪噤漕� 06? 湾� 镳钺脲�!" )
	Text( 3, " 义脲镱痱",MultiTrigger, GetMultiTrigger(), 2 )

	--泪噤漕�07
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	Talk( 4, " 泪噤漕� 07? 湾� 镳钺脲�!" )
	Text( 4, "Teleport",MultiTrigger, GetMultiTrigger(), 2 )

	--泪噤漕�08
	InitTrigger()
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 5, " 泪噤漕� 08? 湾� 镳钺脲�!" )
	Text( 5, " 义脲镱痱",MultiTrigger, GetMultiTrigger(), 2)
end

function r_HeSToP30()

	--软溴犟(�)
	local CurMapName1 = "eastgoaf"


	--泪噤漕�05
	local GoTo01X = 771
	local GoTo01Y = 658
	local GoTo01M = CurMapName1

	Talk( 1, "\207\238\240\242\224\235\252\249\232\234 \226 \225\228 \235\238\227\238\226\238: \207\240\232\226\229\242! \198\229\235\224\229\248\252 \238\242\239\240\224\226\232\242\252\241\255 \226 \226 \235\238\227\238\226\238 \247\191\240\237\238\227\238 \228\240\224\234\238\237\224?" )
	Text( 1, "\206\242\239\240\224\226\232\242\252\241\255 \226 \226 \235\238\227\238\226\238", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, "\237\229\242 \239\238\225\235\229\236" )
	Text( 2, "\210\229\235\229\239\238\240\242",MultiTrigger, GetMultiTrigger(), 2)
end

function r_HeSToP31()

	--软溴犟(�)
	local CurMapName1 = "hell"
	local CurMapName2 = "abandonedcity"
	local CurMapName3 = "eastgoaf"

	--泪噤漕�05
	local GoTo01X = 27
	local GoTo01Y = 26
	local GoTo01M = CurMapName1

	--泪噤漕�06
	local GoTo02X = 220
	local GoTo02Y = 26
	local GoTo02M = CurMapName1

	--泪噤漕�07
	local GoTo03X = 230
	local GoTo03Y = 150
	local GoTo03M = CurMapName1

	--泪噤漕�08
	local GoTo04X = 110
	local GoTo04Y = 230
	local GoTo04M = CurMapName1

	--匝
	local GoTo05X = 309
	local GoTo05Y = 311
	local GoTo05M = CurMapName2

	local GoTo07X = 110
	local GoTo07Y = 289
	local GoTo07M = CurMapName2

	local GoTo08X = 244
	local GoTo08Y = 163
	local GoTo08M = CurMapName2

	local GoTo09X = 179
	local GoTo09Y = 163
	local GoTo09M = CurMapName2

	--聊
	local GoTo06X = 771
	local GoTo06Y = 658
	local GoTo06M = CurMapName3

	Talk( 1, " 项痱嚯桕: 橡桠弪! 棋豚屮� 铗镳噔栩� � 泥礞�? " )
	Text( 1, " 悟镳噔栩� � 噌噤漕� ", JumpPage, 2 )
	Text( 1, " 悟镳噔栩� � 匝 ", JumpPage, 3 )
	Text( 1, " 悟镳噔栩� � 聊 ", JumpPage, 4 )

	Talk( 2, " 项痱嚯桕: � 噌噤漕�? " )
	Text( 2, " 悟镳噔栩� � 噌噤漕� 05 ", JumpPage, 5 )
	Text( 2, " 悟镳噔栩� � 噌噤漕� 06 ", JumpPage, 6 )
	Text( 2, " 悟镳噔栩� � 噌噤漕� 07 ", JumpPage, 7 )
	Text( 2, " 悟镳噔栩� � 噌噤漕� 08 ", JumpPage, 8 )
	
	Text( 1, " 娱蜩 ", CloseTalk )

	--匝
	InitTrigger()
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	Talk( 3, " 项痱嚯桕: 匝? 湾� 镳钺脲�! " )
	Text( 3, " 铗镳噔栩� � 徜 豚眈囔 ",MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	Text( 3, " 铗镳噔栩� � 徜 鬣祜囔 ",MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	Text( 3, " 铗镳噔栩� � 徜 翳腓� ",MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo09X, GoTo09Y, GoTo09M )
	Text( 3, " 铗镳噔栩� � 徜 囔� ",MultiTrigger, GetMultiTrigger(), 2)

	--聊
	InitTrigger()
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	Talk( 4, " 项痱嚯桕: 聊? 湾� 镳钺脲�! " )
	Text( 4, " 义脲镱痱 ",MultiTrigger, GetMultiTrigger(), 2)
	
	--泪噤漕�05
	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 5, " 项痱嚯桕: 泪噤漕� 05? 湾� 镳钺脲�! " )
	Text( 5, " 义脲镱痱 ",MultiTrigger, GetMultiTrigger(), 2)

	--泪噤漕�06
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo02X, GoTo01Y, GoTo02M )
	Talk( 6, " 项痱嚯桕: 泪噤漕� 06? 湾� 镳钺脲�! " )
	Text( 6, " 义脲镱痱 ",MultiTrigger, GetMultiTrigger(), 2 )

	--泪噤漕�07
	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	Talk( 7, " 项痱嚯桕: 泪噤漕� 07? 湾� 镳钺脲�! " )
	Text( 7, " 义脲镱痱 ",MultiTrigger, GetMultiTrigger(), 2 )

	--泪噤漕�08
	InitTrigger()
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 8, " 项痱嚯桕: 泪噤漕� 08? 湾� 镳钺脲�! " )
	Text( 8, " 义脲镱痱 ",MultiTrigger, GetMultiTrigger(), 2)

end

function r_milkovay5()

	--软溴犟(�)
	local CurMapName1 = "hell3"


	--绵忄睃 泪徉漕磬
	local GoTo01X = 146
	local GoTo01Y = 228
	local GoTo01M = CurMapName1

	Talk( 1, "\207\240\232\226\229\242, \242\229\235\229\239\238\240\242\232\240\238\226\224\242\252 \242\229\225\255 \226 \195\224\226\224\237\252 \192\225\225\224\228\238\237\224?" )
	Text( 1, "\206\242\239\240\224\226\232\242\241\255 \226 \195\224\226\224\237\252 \192\225\225\224\228\238\237\224", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, "\237\229\242 \239\238\225\235\229\236" )
	Text( 2, "\210\229\235\229\239\238\240\242",MultiTrigger, GetMultiTrigger(), 2)
end

function welcome()
	Text( 1, "鼠镨螯 85", BuyPage )
	InitTrade()
	Defence(	4274 )
	Defence(	4282 )
	Defence(	2822 )
	Defence(	2821 )
	Defence(	2820 )
	Defence(	2332 )

	AddNpcMission ( 701 )
end




	function BT_NpcSale333 ()

	Talk( 1, " � 镳钼邃� 蝈�� 麇疱� 蜞桧耱忄 镥疱痤驿屙�� � 螓 狍溴 忸珥嚆疣驿屙 忮腓觇扈 珥囗��扈.青 � � 镱镳铠� 麒耱� 耔焘铍梓羼牦� 镫囹� 耱 赍脲� 玎 1 箴钼屙� 镥疱痤驿屙�� � 聊 觌 玎 2 箴钼屙�.翌朦觐 黩钺� 螓 耢钽 镥疱痤滂螯�� 螓 钺�玎� 猁螯 眍汨� 赅觇� � 镳桫咫 � 铗 扈� " ) --央钼� 拖�
	Talk( 2, " 饮 礤 漕耱囹铟眍 祗漯 潆� 钽�. " ) --硒栳赅.
	

	InitTrigger()
	TriggerCondition( 1, HasItem,3457,99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3457,99 )
	TriggerAction( 1, GiveItem, 2235,1,4 )
	TriggerFailure( 1, JumpPage, 2)
	Text( 1," � 泐蝾� 镥疱轵� 磬 1 箴钼屙� ",MultiTrigger,GetMultiTrigger(),1 )

	InitTrigger()
	TriggerCondition( 3, HasItem, 0182,1 )
	TriggerCondition( 3, HasLeaveBagGrid, 1 )
	TriggerCondition( 3, KitbagLock, 0 )
	TriggerAction( 3, TakeItem, 0182,1 )
	TriggerAction( 3, GiveItem, 5853,1,4 )
	TriggerFailure( 1, JumpPage, 2)
	Text( 1," � 泐蝾� 镥疱轵� 磬 2 箴钼屙� ",MultiTrigger,GetMultiTrigger(),3 )

end
