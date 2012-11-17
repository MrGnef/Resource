--------------------------------------------------------------------------
--						--
--						--
--		NPCScript10.lua 			--
--						--
--						--
--------------------------------------------------------------------------
print( "Loading NPCScript10.lua" )

function purejuice_life1 ()
	
	Talk( 1, "General of army PureJ: So I heard the life skill chick was rape, so she couldn't give you life skill point. Get me 10 elven fruit i exchange you 1 life skill fruit and don't overdoes it! [Made with weeb by PureJuice]")

	InitTrigger()
	TriggerCondition( 1, HasItem, 3116,10 )
	TriggerAction( 1, TakeItem,  3116,10 )
	TriggerAction( 1, GiveItem, 7512,1,1 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 1, "I want 1 Life Skill",MultiTrigger,GetMultiTrigger(),1)
	Text( 1, "Maybe not now", CloseTalk)
	Talk( 13, "Come back again after you have the required the needed amount|Weeds are not cheap this day kids")

	Talk( 11, "Come Again")

	Talk( 12, "There you go.Run Kids the cops are here")

end

function purej_1001 ()
	
	Talk( 1, "DeathMatch Coin Exchanger: wanna trade those coin for rare item?") --------you told me this
	Text( 1, "Crown of DeathMatch", JumpPage, 2 )   
	Text( 1, "Greater Gem of wind", JumpPage, 3 )       
	Text( 1, "Greater Gem of Striking", JumpPage, 4 )
	Text( 1, "Greater Gem of Colossus", JumpPage, 5 )
	Text( 1, "Greater Gem of Rage", JumpPage, 6 )
	Text( 1, "Greater Gem of Soul", JumpPage, 7 )
	Text( 1, "Next Page  ---->", JumpPage, 17 )
			
	Talk( 17, "DeathMatch Coin Exchanger: wanna trade those coin for rare item?" )
	Text( 17, "Great Gem of Rage", JumpPage, 8 )
	Text( 17, "Great Gem of Striking", JumpPage, 9 )
	Text( 17, "Great Gem of Colossus", JumpPage, 10 )
	Text( 17, "Great Gem of Soul", JumpPage, 11 )
	Text( 17, "Great Gem of Wind", JumpPage, 12 )
	Text( 17, "Previous Page  <----", JumpPage, 1 )


	Talk( 2, "To get the Crown of DeathMatch, You need 100 DeathMatch coin " )
	InitTrigger()
	InitTrigger()
	TriggerCondition( 1, HasItem, 7641,100 )
	TriggerAction( 1, TakeItem,  7641,100 )
	TriggerAction( 1, GiveItem, 7642,1,4 )
	TriggerAction( 1, JumpPage, 14 )
	Text( 2, "I want it B!tch",MultiTrigger,GetMultiTrigger(),1)
	TriggerFailure( 1, JumpPage, 13 )	

	Talk( 3, "To get 1 gem u need 20 DeathMatch Gem" )
	InitTrigger()
	InitTrigger()
	TriggerCondition( 1, HasItem, 7641,20 )
	TriggerAction( 1, TakeItem,  7641,20 )
	TriggerAction( 1, GiveItem, 3485,1,1 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 3, "I want it B!tch",MultiTrigger,GetMultiTrigger(),1)

	Talk( 4, "To get 1 gem u need 20 DeathMatch Gem " )
	InitTrigger()	
	InitTrigger()
	TriggerCondition( 1, HasItem, 7641,20 )
	TriggerAction( 1, TakeItem,  7641,20 )
	TriggerAction( 1, GiveItem, 3486,1,1 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 4, "I want it B!tch",MultiTrigger,GetMultiTrigger(),1)

	Talk( 5, "To get 1 gem u need 20 DeathMatch Gem  " )
	InitTrigger()	
	InitTrigger()
	TriggerCondition( 1, HasItem, 7641,20 )
	TriggerAction( 1, TakeItem,  7641,20 )
	TriggerAction( 1, GiveItem, 3487,1,1 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 5, "I want it B!tch",MultiTrigger,GetMultiTrigger(),1)

	Talk( 6, "To get 1 gem u need 20 DeathMatch Gem  " )
	InitTrigger()	
	InitTrigger()
	TriggerCondition( 1, HasItem, 7641,20 )
	TriggerAction( 1, TakeItem,  7641,20 )
	TriggerAction( 1, GiveItem, 3488,1,1 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "I want it B!tch",MultiTrigger,GetMultiTrigger(),1)

	Talk( 7, "To get 1 gem u need 20 DeathMatch Gem  " )
	InitTrigger()	
	InitTrigger()
	TriggerCondition( 1, HasItem, 7641,20 )
	TriggerAction( 1, TakeItem,  7641,20 )
	TriggerAction( 1, GiveItem, 3489,1,1 )
	TriggerAction( 1, JumpPage, 14 )
	Text( 7, "I want it B!tch",MultiTrigger,GetMultiTrigger(),1)

	Talk( 8, "To get 1 gem u need 10 DeathMatch Gem  " )
	InitTrigger()	
	InitTrigger()
	TriggerCondition( 1, HasItem, 7641,10 )
	TriggerAction( 1, TakeItem,  7641,10 )
	TriggerAction( 1, GiveItem, 3490,1,1 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 8, "I want it B!tch",MultiTrigger,GetMultiTrigger(),1)

	Talk( 9, "To get 1 gem u need 10 DeathMatch Gem  " )
	InitTrigger()	
	InitTrigger()
	TriggerCondition( 1, HasItem, 7641,10 )
	TriggerAction( 1, TakeItem,  7641,10 )
	TriggerAction( 1, GiveItem, 3491,1,1 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 9, "I want it B!tch",MultiTrigger,GetMultiTrigger(),1)

	Talk( 10, "To get 1 gem u need 10 DeathMatch Gem  " )
	InitTrigger()	
	InitTrigger()
	TriggerCondition( 1, HasItem, 7641,10 )
	TriggerAction( 1, TakeItem,  7641,10 )
	TriggerAction( 1, GiveItem, 3492,1,1 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 10, "I want it B!tch",MultiTrigger,GetMultiTrigger(),1)

	Talk( 11, "To get 1 gem u need 10 DeathMatch Gem  " )
	InitTrigger()	
	InitTrigger()
	TriggerCondition( 1, HasItem, 7641,10 )
	TriggerAction( 1, TakeItem,  7641,10 )
	TriggerAction( 1, GiveItem, 3493,1,1 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 11, "I want it B!tch",MultiTrigger,GetMultiTrigger(),1)

	Talk( 12, "To get 1 gem u need 10 DeathMatch Gem  " )
	InitTrigger()	
	InitTrigger()
	TriggerCondition( 1, HasItem, 7641,10 )
	TriggerAction( 1, TakeItem,  7641,10 )
	TriggerAction( 1, GiveItem, 3494,1,1 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 12, "I want it B!tch",MultiTrigger,GetMultiTrigger(),1)

	Talk( 13, "Come back again after you have the required the needed amount of coin")

	Talk( 15, "Come Again")

	Talk( 14, "Ok, Congratz u have ur item now b!tch")

end