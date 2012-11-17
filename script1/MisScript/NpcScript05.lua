-------------------------------------------------------------------
--									--
--									--
--NPCScript05.lua Created by knight.gong 2005.7.12.				--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript05.lua" )

function JoJo_01 () -- Pirate Chest

	Talk( 1, " Привет, я продаю честы и кольца! " )
	Text( 1, " Торг ", BuyPage)

	InitTrade()
	Other(	5853	)
	Other(	192	) -- Skeletar Chest of Swordsman
	Other(	2836	) -- Skeletar Chest of Swordsman
	Other(	2837	) -- Skeletar Chest of Swordsman
	Other(	2838	) -- Skeletar Chest of Swordsman
	Other(	2839	) -- Skeletar Chest of Swordsman
	Other(	2840	) -- Skeletar Chest of Swordsman
	Other(	2841	) -- Skeletar Chest of Swordsman
	Other(	2843	) -- Skeletar Chest of Swordsman
	Other(	0347	) -- Wings of Light
	Other(	0349	) -- Nature's Whisper
	Other(	0334	) -- Hammer of Thunder
	Other(	0346	) -- Eye of Lighting
	Other(	0348	) -- Morning Bell
	Other(	0415	) -- Ray's Fury
	Other(	0414	) -- Kiss of Nic
	Other(	0417	) -- Consecration of Priestess
	Other(	0387	) -- Peter's Call
	Other(	0416	) -- Daniel's Regret
	Other(	0462	) -- Nimble Venturer
	Other(	0495	) -- Soul Generator
	Other(	5916	) -- Soul Generator
	Other(	5917	) -- Soul Generator
	Other(	5918	) -- Soul Generator
	Other(	5919	) -- Soul Generator
	Other(	5920	) -- Soul Generator
	Other(	5921	) -- Soul Generator

end

function sky_01 ()
	
	
	Talk( 1, "Привет, я продаю аппарели на ланса. " )
	Text( 1, "Купить ", BuyPage )

	InitTrade()
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
	Weapon(	5037	)
	Weapon(	5038	)
	Weapon(	5039	)
	Weapon(	5040	)
	Weapon(	5041	)
	Weapon(	5042	)
	Weapon(	5043	)
	Weapon(	5044	)
	Weapon(	5045	)
	Weapon(	5046	)
	Weapon(	5047	)
	Weapon(	5048	)
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

----------------------------------------------------------Appereal Carsise

function sky_02 ()
	
	
	Talk( 1, "Привет, я продаю аппарели на карциза. " )
	Text( 1, "Купить ", BuyPage )

	InitTrade()
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
	Weapon(	5037	)
	Weapon(	5038	)
	Weapon(	5039	)
	Weapon(	5040	)
	Weapon(	5041	)
	Weapon(	5042	)
	Weapon(	5043	)
	Weapon(	5044	)
	Weapon(	5045	)
	Weapon(	5046	)
	Weapon(	5047	)
	Weapon(	5048	)
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

----------------------------------------------------------Appereal Phyllis

function sky_03 ()
	
	
	Talk( 1, "Привет, я продаю аппарели на филлис. " )
	Text( 1, "Купить", BuyPage )

	InitTrade()
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
	Weapon(	5037	)
	Weapon(	5038	)
	Weapon(	5039	)
	Weapon(	5040	)
	Weapon(	5041	)
	Weapon(	5042	)
	Weapon(	5043	)
	Weapon(	5044	)
	Weapon(	5045	)
	Weapon(	5046	)
	Weapon(	5047	)
	Weapon(	5048	)
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

----------------------------------------------------------Appereal Ami

function sky_04 ()
	
	
	Talk( 1, "Привет, я продаю аппарели на ами. " )
	Text( 1, "Trade Appereals", BuyPage )

	InitTrade()
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
	Weapon(	5037	)
	Weapon(	5038	)
	Weapon(	5039	)
	Weapon(	5040	)
	Weapon(	5041	)
	Weapon(	5042	)
	Weapon(	5043	)
	Weapon(	5044	)
	Weapon(	5045	)
	Weapon(	5046	)
	Weapon(	5047	)
	Weapon(	5048	)
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

function JoJo_02 () -- Newbie Shop

	Talk( 1, "Welcome To Newbie Shop" )
	Text( 1, "Trade", BuyPage)

	InitTrade()
	Other(	272	)--Dragon Set Chest
	Other(	192	)--Kylin Set Chest
end

function JoJo_03 () -- Hairstylist - Shop

	Talk( 1, "Hi Welcome To Hairstylist - Shop" )
	Text( 1, "Hair Stuff", BuyPage)

	InitTrade()
	Other(	1797	) -- Red Colo
	Other(	1799	) -- yellow
	Other(	4607	) -- Red Colo
	Other(	1801	) -- Cyan
	Other(	1802	) -- Blue
	Other(	1800	) -- Green
	Other(	1798	) -- Ornange
	Other(	1803	) -- Pup
	Other(	1804	) -- Scissor
	Other(	1805	) -- Comb
	Other(	1807	) -- Hair
                Other(      1806         ) -- 5
	Other(	931	) -- 
	Other(	934	) -- 
	Other(	932	) -- 
	Other(	933	) -- 
	Other(      1811         )-- 1
	Other(      1808         )-- 2
	Other(      1809         )-- 3
	Other(      1810         )-- 4

end 

function JoJo_04 () -- Gem Exchanger 

	Talk( 1, "Hi! Welcome To Gem Exchanger Page 1/3" )
	Text( 1, "Gem of Wind", JumpPage, 2 )
	Text( 1, "Gem of Striking", JumpPage, 3 )
	Text( 1, "Gem of Colossus", JumpPage, 4 )
	Text( 1, "Gem of Rage", JumpPage, 5 )
	Text( 1, "Gem of Soul", JumpPage, 6 )
	Text( 1, "How to get them?", JumpPage, 7 )
	Text( 1, "Next Page -->", JumpPage, 8 )
	Text( 1, "Trade Page", BuyPage)

	Talk( 8, "Hi! Welcome To Gem Exchange Page 2/3" )
	Text( 8, "Eye of Black Dragon", JumpPage, 9 )
	Text( 8, "Heart of Black Dragon", JumpPage, 10 )
	Text( 8, "Next Page -->", JumpPage, 11 )
	Text( 8, "(Go Back)", JumpPage,1 )

	Talk( 11, "Hi! Welcome To Gem Exchange Page 3/3" )
	Text( 11, "Fiery Gem", JumpPage, 12 )
	Text( 11, "Furious Gem", JumpPage, 13)
	Text( 11, "Explosive Gem", JumpPage, 14 )
	Text( 11, "Lustrious Gem", JumpPage, 15 )
	Text( 11, "Glowing Gem", JumpPage, 16 )
	Text( 11, "Shining Gem", JumpPage, 17 )
	Text( 11, "Shadow Gem", JumpPage, 18 )
	Text( 11, "Spirit Gem", JumpPage, 19 )


	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,99 )
	TriggerAction( 1, TakeItem, 0452,99 )
	TriggerAction( 1, GiveItem, 0860, 1, 4 )
	Talk( 2, "Get Me 99x of Enchanting Card Chest From Mineing" )
	Text( 2, "Obtain Gem of the Wind", MultiTrigger, GetMultiTrigger(), 1)	

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,99 )
	TriggerAction( 1, TakeItem, 0452,99 )
	TriggerAction( 1, GiveItem, 0861, 1, 4 )
	Talk( 3, "Get Me 99x of Enchanting Card Chest From Mineing" )
	Text( 3, "Obtain Gem of Striking", MultiTrigger, GetMultiTrigger(), 1)	

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,99 )
	TriggerAction( 1, TakeItem, 0452,99 )
	TriggerAction( 1, GiveItem, 0862, 1, 4 )
	Talk( 4, "Get Me 99x of Enchanting Card Chest From Mineing" )
	Text( 4, "Obtain Gem of Colossus", MultiTrigger, GetMultiTrigger(), 1)	

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,99 )
	TriggerAction( 1, TakeItem, 0452,99 )
	TriggerAction( 1, GiveItem, 0863, 1, 4 )
	Talk( 5, "Get Me 99x of Enchanting Card Chest From Mineing" )
	Text( 5, "Obtain Gem of Rage", MultiTrigger, GetMultiTrigger(), 1)	

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,99 )
	TriggerAction( 1, TakeItem, 0452,99 )
	TriggerAction( 1, GiveItem, 1012, 1, 4 )
	Talk( 6, "Get Me 99x of Enchanting Card Chest From Mineing" )
	Text( 6, "Obtain Gem of Soul", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,320 )
	TriggerAction( 1, TakeItem, 0452,320 )
	TriggerAction( 1, GiveItem, 0864, 1, 4 )
	Talk( 9, "Get Me 320x of Enchanting Card Chest From Mineing" )
	Text( 9, "Obtain Eye of Black Dragon Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,320 )
	TriggerAction( 1, TakeItem, 0452,320 )
	TriggerAction( 1, GiveItem, 0866, 1, 4 )
	Talk( 10, "Get Me 320x of Enchanting Card Chest From Mineing" )
	Text( 10, "Obtain Heart of Black Dragon Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,50 )
	TriggerAction( 1, TakeItem, 0452,50 )
	TriggerAction( 1, GiveItem, 0878, 1, 4 )
	Talk( 12, "Get Me 50x of Enchanting Card Chest From Mineing" )
	Text( 12, "Obtain Fiery Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,50 )
	TriggerAction( 1, TakeItem, 0452,50 )
	TriggerAction( 1, GiveItem, 0879, 1, 4 )
	Talk( 13, "Get Me 50x of Enchanting Card Chest From Mineing" )
	Text( 13, "Obtain Furious Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,50 )
	TriggerAction( 1, TakeItem, 0452,50 )
	TriggerAction( 1, GiveItem, 0880, 1, 4 )
	Talk( 14, "Get Me 50x of Enchanting Card Chest From Mineing" )
	Text( 14, "Obtain Explosive Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,50 )
	TriggerAction( 1, TakeItem, 0452,50 )
	TriggerAction( 1, GiveItem, 0881, 1, 4 )
	Talk( 15, "Get Me 50x of Enchanting Card Chest From Mineing" )
	Text( 15, "Obtain Lustrious Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,50 )
	TriggerAction( 1, TakeItem, 0452,50 )
	TriggerAction( 1, GiveItem, 0882, 1, 4 )
	Talk( 16, "Get Me 50x of Enchanting Card Chest From Mineing" )
	Text( 16, "Obtain Glowing Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,50 )
	TriggerAction( 1, TakeItem, 0452,50 )
	TriggerAction( 1, GiveItem, 0883, 1, 4 )
	Talk( 17, "Get Me 50x of Enchanting Card Chest From Mineing" )
	Text( 17, "Obtain Shining Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,50 )
	TriggerAction( 1, TakeItem, 0452,50 )
	TriggerAction( 1, GiveItem, 0884, 1, 4 )
	Talk( 18, "Get Me 50x of Enchanting Card Chest From Mineing" )
	Text( 18, "Obtain Shadow Gem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 0452,50 )
	TriggerAction( 1, TakeItem, 0452,50 )
	TriggerAction( 1, GiveItem, 0887, 1, 4 )
	Talk( 19, "Get Me 50x of Enchanting Card Chest From Mineing" )
	Text( 19, "Obtain Spirit Gem", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "go out side of argent city and search     [Meterorite] at 2109,2766" )

	InitTrigger()
	Other(      3908         )--

end

function JoJo_06 () -- Newbie Quests

	Talk( 1, "Newbie Quest:welcome here for Newbie Quest" )
	Text( 1, "ID of Quest", JumpPage,2 )

	AddNpcMission(1122)
	AddNpcMission(1130)
	AddNpcMission(1135)

	Text( 2, "Newbie Quest", JumpPage,3 )
	Text( 2, "Newbie Quest 2", JumpPage,4 )
	Text( 2, "Newbie Quest 3", JumpPage,5 )

	Talk( 3, "1620 | 3116 | 3130" )

	Talk( 4, "855" )

	Talk( 5, "2588" )
end

function JoJo_07 () -- Equips Quest

	Talk( 1, "Equips Quests" )
	Text( 1, "ID of Quest", JumpPage,2 )

	AddNpcMission(9977)
	AddNpcMission(9966)
	AddNpcMission(9955)
	AddNpcMission(9944)
	AddNpcMission(9933)
	AddNpcMission(9922)
	AddNpcMission(9911)

	Talk( 2, "2476" )
end

function JoJo_08 () -- Higher level Quest

	Talk( 1, "Higher Level Quests:Hi! im Leveler Quest" )
	Text( 1, "ID of Quest", JumpPage,2 )

	AddNpcMission(1123)
	AddNpcMission(1124)

	Text( 2, "Lv80-90", JumpPage,3 )
	Text( 2, "Lv90-150", JumpPage,4 )

	Talk( 3, "2605 | 3085 | 4783" )
	Talk( 4, "3453 | 3826" )
end

function JoJo_09 () -- Newbie Helper
	--µШНјГыіЖРЕПў
	local CurMapName = "hell5" 

	--єЪБъіІСЁИэІгЧш±к
	local GoTo01X = 31
	local GoTo01Y = 177
	local GoTo01M = CurMapName


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 1, "Teleports to New Npc Land??? No problem! Please pay 500G. Free for players Lv 10 and below!" )
	Text( 1, "Teleport",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )

	Text( 1, "Trade", BuyPage)

	InitTrade()
	Other(	3901	)--Lance Wild West Hat
	Other(	0000	)--Lance Wild West Hat
	Other(	0000	)--Lance Wild West Hat

end

function JoJo_1000 () -- JoJo Exchanger Note:Note: some equips are not same ID's you have to change to your own ItemInfo


	Talk( 1, "\238\225\236\229\237\237\232\234 95 \224\237\241\238\226: \243 \236\229\237\255 \226\251 \236\238\230\232\242\229 \234\243\239\232\242\252 95 \224\237\241\251" )
	Text( 1, "\234\243\239\232\242\252 \248\224\239\234\243", JumpPage, 2)
	Text( 1, "\234\243\239\232\242\252 \242\229\235\238", JumpPage, 3)
	Text( 1, "\234\243\239\232\242\252 \239\229\240\247\232", JumpPage, 4)

	Talk( 2, "обменнник 95 ансов: обменять кели на шапку стоит 2,3 и 4 руны кель" )
	Text( 2, "Церемониальная Корона Короля(15 деф и 2 ко всему)за 2 кели", JumpPage, 5)
	Text( 2, "Судьба Артура(20 деф и 3 ко всему)за 3 кели", JumpPage, 6)
	Text( 2, "Искупление Эпической Доблести(40деф +4 ко всему,на шарпа)за 4 кели", JumpPage, 7)
	Text( 2, "Искупление Чести(40деф +4 ко всему,на круза)за 4 кели", JumpPage, 8)
	Text( 2, "Искупление Жертвы(40деф +4 ко всему,на чампа)за 4 кели", JumpPage, 9)
	Text( 2, "Искупление Правосудия(40деф +4 ко всему,на воя)за 4 кели", JumpPage,10)
	Text( 2, "Искупление Сочувствия(40деф +4 ко всему,на клера)за 4 кели", JumpPage,11)
	Text( 2, "Искупление вдохновления(40деф +4 ко всему,на см)за 4 кели", JumpPage,30)

	Talk( 3, "обменнник 95 ансов: обменять кели на тело стоит 12 рун кель" )
	Text( 3, "Страж Эпической Доблести(шарп)", JumpPage,12)
	Text( 3, "Страж Чести(круз)", JumpPage,13)
	Text( 3, "Страж Жертвы(чамп)", JumpPage,14)
	Text( 3, "Страж Правосудия(вой)", JumpPage,15)
	Text( 3, "Страж Сочувствия(клер)", JumpPage,16)
	Text( 3, "Страж Вдохновения(см)", JumpPage, 17)

	Talk( 4, "обменнник 95 ансов: обменять кели на перчи стоит 5 рун кель" )
	Text( 4, "Благославление Эпической Доблести(шарп)", JumpPage, 20)
	Text( 4, "Благославление Чести(круз)", JumpPage, 21)
	Text( 4, "Благославление Жертвы(чамп)", JumpPage, 22)
	Text( 4, "Благославление Правосудия(вой)", JumpPage, 23)
	Text( 4, "Благославление Сочувствия(клер)", JumpPage, 24)
	Text( 4, "Благославление Вдохновения(см)", JumpPage, 25)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 2 )	
	TriggerAction( 1, TakeItem, 3457, 2 )
	TriggerAction( 1, GiveItem, 5922, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(5,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 3 )	
	TriggerAction( 1, TakeItem, 3457, 3 )
	TriggerAction( 1, GiveItem, 5923, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(6,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 5924, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(7,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 5928, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(8,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 5932, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(9,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 5936, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(10,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 4 )	
	TriggerAction( 1, TakeItem, 3457, 4 )
	TriggerAction( 1, GiveItem, 5940, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(11,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 12 )	
	TriggerAction( 1, TakeItem, 3457, 12 )
	TriggerAction( 1, GiveItem, 5925, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(12,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 12 )	
	TriggerAction( 1, TakeItem, 3457, 12 )
	TriggerAction( 1, GiveItem, 5929, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(13,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 12 )	
	TriggerAction( 1, TakeItem, 3457, 12 )
	TriggerAction( 1, GiveItem, 5933, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(14,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 12 )	
	TriggerAction( 1, TakeItem, 3457, 12 )
	TriggerAction( 1, GiveItem, 5937, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(15,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 12 )	
	TriggerAction( 1, TakeItem, 3457, 12 )
	TriggerAction( 1, GiveItem, 5941, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(16,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 12 )	
	TriggerAction( 1, TakeItem, 3457, 12 )
	TriggerAction( 1, GiveItem, 5945, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(17,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)
	
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 5926, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(20,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 5930, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(21,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 5934, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(22,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 5938, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(23,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 5942, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(24,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 5946, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(25,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 3457, 5 )	
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 5944, 1, 4 )
	TriggerAction( 1, JumpPage, 27 )
	TriggerFailure( 1, JumpPage, 26 )
	Text(30,"Obtain Item" ,MultiTrigger,GetMultiTrigger(),1)

	Talk( 26, "You dont have enough required items!" )
	Talk( 27, "Woila, check your new weapon!" )

end

function JoJo_11 () -- Kals Exchanger

	Talk( 1, "Hi! Welcome To Kals Exchanger" )
	Text( 1, "Exchange", JumpPage, 2 )
	Text( 1, "Trade", BuyPage)
	Text( 1, "How get em??", JumpPage, 3 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3990,380 )
	TriggerAction( 1, TakeItem, 3990,380 )
	TriggerAction( 1, GiveItem, 3457, 1, 4 )
	Talk( 2, "Exchange 380x of Birch Wood Log For 1 Kal" )
	Text( 2, "Obtain Kal", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Go Search out side of Solace Heaven" )

	InitTrigger()
	Other(      0196         )--

end

function JoJo_12 ()

	Talk( 1, "Welcome To Shop Stones!!!!" )
	Text( 1, "Clike Me!!!", BuyPage)

	InitTrade()
	Other(	2226	)--Baby Rune
	Other(	2227	)--Roico Rune
	Other(	2228	)--Lance Wild West Gloves
	Other(	2229	)--Lance Wild West Boots
	Other(	2230	)--Phyllis Wild West Hat
	Other(	2231	)--Phyllis Wild West Coat
	Other(	2232	)--Phyllis Wild West Gloves
	Other(	2233	)--Phyllis Wild West Boots
                Other(      0000         )--
	
end 

function JoJo_13 ()

	Talk( 1, "Hello! Reputation Shop!!" )
	Text( 1, "Learn Navigation Skill", BuyPage )
	Text(1,"Exchange Money To Reputation!",JumpPage,2)
	Text( 1, "Thanks [Close]", CloseTalk)
   
	InitTrigger()
	TriggerCondition( 1, HasMoney, 4000000 )
	TriggerAction( 1, TakeMoney, 4000000 )
	TriggerAction( 1, DelRoleCredit, -9999 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "If You Want Get 9999 Reputation, Pay Me 4 Millions Gold! And Dont Forget Say Thanks!" )
	Text( 2, "Get 9999 Reputation",  MultiTrigger, GetMultiTrigger(), 1 )
	Text( 2, "I Will Get Money Later [Close]", CloseTalk)

	Talk(3, "I Hope You Know How Use So Much Reputation!")

	Talk(4, "Sorry, But You Dont Have 4 Million Gold! Come Back When You Have!.")
	end 


function JoJo_14 ()

	Talk( 1, "2nd Rebirth: Only the best and elite Navy or Pirates will have a chance to get rebirth!")
	Text( 1, "More about rebirth", JumpPage, 2)
	Text( 1, "I wish to rebirth", JumpPage, 6)
	
	
	Talk( 2, "2nd Rebirth: What do you need to know?")
	Text( 2, "Classes after rebirth", JumpPage, 3)
	Text( 2, "Regarding stats and skill points after rebirth", JumpPage, 4)
	Text( 2, "Regarding conditions of rebirth", JumpPage, 5)
	
	Talk( 3, "Players can reselect their class after rebirth: Lance can become Crusader, Voyager or Sharpshooter. Carsise can become Champion. Phyllis can become Cleric, Seal Master, Voyager or Sharpshooter. Ami can become Cleric, Seal Master or Voyager")
	Text( 3, "Thank you, I understand", CloseTalk)

	Talk( 4, "All attributes will be resetted upon rebirth and all additional stat points gained from Career Lot or Birthday Cake will remained for reallocation. Also, all skill will be resetted and skill points will be returned for reallocation.")
	Text( 4, "Thank you, I understand", CloseTalk)

	Talk( 5, "To be 2nd rebirth, you will need to complete quest 2nd Rebirth Quest  which can be activated at the Goddess. Look for me after you obtained the 2nd Rebirth Stone or you can come directly to me if you have the Rebirth Card.")
	Text( 5, "Thank you, I understand", CloseTalk)

	Talk( 6, "2ndd Rebirth Angel: So you have done the task? Select the best option for you." )
	Text( 6, "Become a Crusader to uphold justice and peace",  GetChaName1_born2, 1)
	Text( 6, "Become a Champion to protect companion",  GetChaName2_born2, 1)
	Text( 6, "Become a Cleric to heal and protect people",  GetChaName5_born2, 1)
	Text( 6, "Become a Voyager to be master of sea",  GetChaName3_born2, 1)
	Text( 6, "Become a Sharpshooter to have the ultimate range", GetChaName4_born2, 1)   
	Text( 6, "Become a Seal Master to have the best seals", GetChaName6_born2, 1)
	Text( 6, "I do not wish to do 2nd Rebirth right now", CloseTalk)

end

function JoJo_15 ()

	Talk( 1, "3rd Rebirth: Befour Rebithed make sure that ur move has moved to other character")
	Text( 1, "More about rebirth", JumpPage, 2)
	Text( 1, "I wish to rebirth", JumpPage, 6)
	
	
	Talk( 2, "3rd Rebirth: What do you need to know?")
	Text( 2, "Classes after rebirth", JumpPage, 3)
	Text( 2, "Regarding stats and skill points after rebirth", JumpPage, 4)
	Text( 2, "Regarding conditions of rebirth", JumpPage, 5)
	
	Talk( 3, "Players can reselect their class after rebirth: Lance can become Crusader, Voyager or Sharpshooter. Carsise can become Champion. Phyllis can become Cleric, Seal Master, Voyager or Sharpshooter. Ami can become Cleric, Seal Master or Voyager")
	Text( 3, "Thank you, I understand", CloseTalk)

	Talk( 4, "All attributes will be resetted upon rebirth and all additional stat points gained from Career Lot or Birthday Cake will remained for reallocation. Also, all skill will be resetted and skill points will be returned for reallocation.")
	Text( 4, "Thank you, I understand", CloseTalk)

	Talk( 5, "To be 3rd rebirth, you will need to complete quest 3rd Rebirth Quest  which can be activated at the Goddess. Look for me after you obtained the 3rd Rebirth Stone or you can come directly to me if you have the Rebirth Card.")
	Text( 5, "Thank you, I understand", CloseTalk)

	Talk( 6, "2ndd Rebirth Angel: So you have done the task? Select the best option for you." )
	Text( 6, "Become a Crusader to uphold justice and peace",  GetChaName1_born3, 1)
	Text( 6, "Become a Champion to protect companion",  GetChaName2_born3, 1)
	Text( 6, "Become a Cleric to heal and protect people",  GetChaName5_born3, 1)
	Text( 6, "Become a Voyager to be master of sea",  GetChaName3_born3, 1)
	Text( 6, "Become a Sharpshooter to have the ultimate range", GetChaName4_born3, 1)   
	Text( 6, "Become a Seal Master to have the best seals", GetChaName6_born3, 1)
	Text( 6, "I do not wish to do 3rd Rebirth right now", CloseTalk)

end

function sky_07 ()
	
	
	Talk( 1, "Биф - Какао: Привет, желаешь чтото купить? " )
	Text( 1, "Торг ", BuyPage )
	
	InitTrade()
	Weapon(	453	) 
	Weapon(	455	)
	Weapon(	3074	)
	Weapon(	3075	)
	Weapon(	891	)
	Weapon(	454	) 
	Weapon(	890	)
	Weapon(	456	)
	Weapon(	1020	)
	Defence(	3109	)
	Defence(	3110	)
	Defence(	3111	) 
	Defence(	3112	)
	Defence(	3113	)
	Defence(	3844	)
	Defence(	3845	)
	Defence(	849	)
	Defence(	3094	)
	Defence(	3096	)
	Defence(	3095	)
	Defence(	3097	)
	Defence(	3880	)
	Defence(	3882	)
	Defence(	3105	)
	Defence(	3099	)
	Defence(	3098	)
	Other(	3088	)
	Other(	3089	)
	Other(	3090	)
	Other(	3091	)
	Other(	3092	)
	Other(	3093	)
	Other(	207	)
	Other(	208	)
	Other(	3462	)
	Other(	3463	)
	Other(	1022	)
	Other(	1024	)
	Other(	3300	)
	Other(	3301	)
	Other(	5839	)
	Other(	5840	)
	Other(	1037	)
	Other(	1038	)
	Other(	1039	)
	Other(	1129	)
	Other(	1130	)
	Other(	1131	)
	Other(	1132	)
	Other(	1133	)
	Other(	2625	)
	Other(	2630	) 
	Other(	2634	)
	Other(	2635	)
	Other(	2636	)
	Other(	2637	)
	Other(	2638	)

end

function JoJo_16 ()
	--µШНјГыіЖРЕПў
	local CurMapName = "garner" 

	--єЪБъіІСЁИэІгЧш±к
	local GoTo01X = 2194
	local GoTo01Y = 2778
	local GoTo01M = CurMapName


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 1, "Teleports to Argent?? No problem! Please pay 500G. Free for players Lv 10 and below!" )
	Text( 1, "Teleport",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )

end

function JoJo_17 ()

	Talk( 1, "HaHa Not Really Chest xD!" )
	Text( 1, "Trade!!!", BuyPage)

	InitTrade()
	Other(	2791	)--Baby Rune
	Other(	2792	)--Roico Rune
	Other(	2793	)--Lance Wild West Gloves
	Other(	2794	)--Lance Wild West Boots
	Other(	2795	)--Phyllis Wild West Hat
	Other(	2796	)--Phyllis Wild West Coat
	Other(	2797	)--Phyllis Wild West Gloves
	Other(	2798	)--Phyllis Wild West Boots
	Other(      2799         )--
	Other(      2800         )--
	Other(      2802         )--
	Other(      2803        )--
	Other(      2804         )--
	Other(      2805         )--
	Other(      2806         )--
	Other(      2807         )--
	Other(      2808         )--
	Other(      2809         )--
	Other(      2810         )--
	Other(      2811         )--
	Other(      2812         )--
	Other(      2813         )--
	Other(      2814         )--

end 


function JoJo_18 ()

	Talk( 1, "Hi! Welcome Rings Man, Pls Look Around!" )
	Text( 1, "Trade", BuyPage)

	InitTrade()
	Other(	5961	)--Lance Wild West Hat
	Other(	5962	)--Lance Wild West Suit
	Other(	5963	)--Lance Wild West Gloves
	Other(	5964	)--Lance Wild West Boots
	Other(	5965	)--Phyllis Wild West Hat
	Other(	5966	)--Phyllis Wild West Coat
	Other(	5967	)--Phyllis Wild West Gloves
	Other(	5968	)--Phyllis Wild West Boots
	Other(	5969	)--Carsise Wild West Hat
	Other(	5970	)--Carsise Wild West Jacket
	Other(	5971	)--Carsise Wild West Gloves
	Other(	5972	)--Carsise Wild West Boots
	Other(	5973	)--Ami Wild West Hat
	Other(	5974	)--Ami Wild West Suit
	Other(	5975	)--Ami Wild West Gloves
	Other(	5976	)--Ami Wild West Boots
	Other(	5977	)--Lance Pirate Hat
	Other(	5978	)--Lance Pirate Suit
	Other(	5979	)--Lance Pirate Gloves
	Other(	5980	)--Lance Pirate Shoes
	Other(	5981	)--carsise Pirate Hat
	Other(	5982	)--Carsise Pirate Robe

end 

function sky_040 ()
	
	
	Talk( 1, "Привет, я продаю аппарели на ами. " )
	Text( 1, "Купить ", BuyPage )

	InitTrade()
	Defence(	5085	)
	Defence(	5086	)
	Defence(	5087	)
	Defence(	5088	)
	Defence(	5098	)
	Defence(	5099	)
	Defence(	5100	)
	Defence(	5101	)
	Defence(	5114	)
	Defence(	5115	)
	Defence(	5116	)
	Defence(	5117	)
	Defence(	5195	)
	Defence(	5196	)
	Defence(	5197	)
	Defence(	5198	)
	Defence(	5228	)
	Defence(	5229	)
	Defence(	5230	)
	Defence(	5243	)
	Defence(	5244	)
	Defence(	5245	)
	Defence(	5246	)
	Defence(	5258	)
	Defence(	5257	)
	Defence(	5256	)
	Defence(	5271	)
	Defence(	5272	)
	Defence(	5273	)
	Defence(	5274	)
	Defence(	5554	)
	Defence(	5555	)
	Defence(	5556	)
	Defence(	5582	)
	Defence(	5583	)
	Defence(	5584	)
	Defence(	5585	)
	Defence(	5709	)
	Defence(	5710	)
	Defence(	5711	)
	Defence(	5712	)
	Defence(	5725	)
	Defence(	5726	)
	Defence(	5727	)
	Defence(	5728	)
	Defence(	5741	)
	Defence(	5742	)
	Defence(	5743	)
	Defence(	5744	)
	Defence(	5757	)
	Defence(	5758	)
	Defence(	5759	)
	Defence(	5760	)
	Defence(	5786	)
	Defence(	5787	)
	Defence(	5788	)
	Defence(	5789	)
end

function sky_010 ()
	
	
	Talk( 1, "Привет, я продаю аппарели на ланса. " )
	Text( 1, "Купить ", BuyPage )

	InitTrade()
	Defence(	5076	)
	Defence(	5077	)
	Defence(	5078	)
	Defence(	5089	)
	Defence(	5090	)
	Defence(	5091	)
	Defence(	5102	)
	Defence(	5103	)
	Defence(	5104	)
	Defence(	5105	)
	Defence(	5133	)
	Defence(	5134	)
	Defence(	5135	)
	Defence(	5219	)
	Defence(	5220	)
	Defence(	5221	)
	Defence(	5231	)
	Defence(	5232	)
	Defence(	5233	)
	Defence(	5234	)
	Defence(	5247	)
	Defence(	5248	)
	Defence(	5249	)
	Defence(	5259	)
	Defence(	5260	)
	Defence(	5261	)
	Defence(	5262	)
	Defence(	5275	)
	Defence(	5276	)
	Defence(	5277	)
	Defence(	5548	)
	Defence(	5549	)
	Defence(	5550	)
	Defence(	5650	)
	Defence(	5651	)
	Defence(	5652	)
	Defence(	5700	)
	Defence(	5701	)
	Defence(	5702	)
	Defence(	5713	)
	Defence(	5714	)
	Defence(	5715	)
	Defence(	5716	)
	Defence(	5729	)
	Defence(	5730	)
	Defence(	5731	)
	Defence(	5732	)
	Defence(	5745	)
	Defence(	5746	)
	Defence(	5747	)
	Defence(	5748	)
	Defence(	5777	)
	Defence(	5778	)
	Defence(	5779	)
end

function JoJo_050 () 
Talk( 1, " Хочешь получить опыт? " )

InitTrigger()
TriggerCondition( 1, HasMoney, 0 )
TriggerAction( 1, TakeMoney, 0 )
TriggerAction( 1, AddExp, 9625000000, 9625000000 )

TriggerCondition( 2, LvCheck, ">", 11 )
TriggerCondition( 2, LvCheck, "<", 25 )
TriggerCondition( 2, HasMoney, 5000 )
TriggerAction( 2, TakeMoney, 5000 )
TriggerAction( 2, AddExp, 100, 200 )


TriggerFailure( 2, JumpPage, 2 )

Text( 1, " Да. Конечно! ", MultiTrigger, GetMultiTrigger(), 2)

Talk ( 2, " Что-то не так... ")

end

function JoJo_051 () 

Talk( 1, " дать тебе 99кк? " )

InitTrigger()
TriggerCondition( 1, HasMoney, 0 )
TriggerAction( 1, TakeMoney, 0 )
TriggerAction( 1, AddMoney, 99000000 )
Text( 1, " Давай ", MultiTrigger, GetMultiTrigger(), 1)

end