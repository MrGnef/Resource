------------------------------------------------------------
--TemplateSdk.lua Created by knight 2005.1.27.
--
--任务系统脚本模板函数
print( "loading charbornscript.lua" )
------------------------------------------------------------


function PCBorn ()
	--填写角色出生时初始化触发器信息


	InitTrigger()
	TriggerCondition( 1, IsSpawnPos, "Argent City" )
	TriggerAction( 1, ObligeAcceptMission, 1 )
	TriggerCondition( 2, IsSpawnPos, "Shaitan City" )
	TriggerAction( 2, ObligeAcceptMission, 2 )
	TriggerCondition( 3, IsSpawnPos, "Icicle City" )
	TriggerAction( 3, ObligeAcceptMission, 3 )
	local triggerlist = GetMultiTrigger()
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"Welcome. I will introduce you to basic operation functions. A single click on the \"Left Mouse Button\" to move, single click on the \"Left Mouse Button\" outside of town to attack monsters, holding on to \"Left Mouse Button\" to continue walking. During a dialogue with any NPC, you can use the \"Left Mouse Button\" to confirm. Single click on the \"Right Mouse Button\" on a player will open a selection table, you can \"Party, Add Friend, Trade, PM\" etc. Hold on to the \"Right Mouse Button\" to rotate camera angle. Scrolling of \"Mouse Wheel\" will enable zooming in or out and double click on \"Right Mouse Button\" will restore default camera angle." )
	TriggerAction( 1, AddTrigger, 60000, TE_LEVELUP, 2, 1 )
	TriggerAction( 1, AddTrigger, 60001, TE_LEVELUP, 5, 1 )
	TriggerAction( 1, AddTrigger, 60002, TE_LEVELUP, 9, 1 )
	TriggerAction( 1, AddTrigger, 60003, TE_LEVELUP, 10, 1 )
	TriggerAction( 1, MultiTrigger, triggerlist, 3 )
	TriggerAction( 1, SaveMissionData )

	--将该触发器注册到ID为88888的全局触发器表中，该ID触发器默认为角色出生触发器
	RegTrigger( 88888, 1 )
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    Congratulations! Now I will teach you _how to use the Radar. To use it, _click on the arrow button found in the _mini-map on the right of your screen. _It will open up your radar interface. _Select the map you wish to go to and _enter the X and Y coordinates. _An arrow will appear and point towards the _direction of your destination." )
	RegTrigger( 60000, 1 )
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    Real battle will start soon but first, _familiarize with the basic shortcut: _Press the \"Insert\" key to sit or stand, _as sitting down will increase HP/SP _recovery rate; Items dropped by monsters _killed by you will have a 30 secs countdown; _Press \"Ctrl+A\" key to pick all items in _your surrounding; _Click \"Alt+Left Click\" _on player to follow _them." )
	RegTrigger( 60001, 1 )
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    I believe that you have understand the _basic of the battle system. Now it is time _for you to select a class. Newbie Guide _will recommend you to the respective trainer. _Go to the Newbie Guide now and select the _class you wanted. You will need to undergo _some test to complete your advancement. _If you succeeded, you can advance at Lv 10." )
	RegTrigger( 60002, 1 )
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    Congratulations! You are now level 10. _You have received your first skill point. _Each level from now on will earn you one _skill point. You can start to learn skills _after you completed your basic class _advancement. Different skill books are _sold by different Grocer in any city. _Good luck!" )
	RegTrigger( 60003, 1 )

end
PCBorn()

