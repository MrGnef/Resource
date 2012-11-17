-- Monsters in Ascaron Region

--示例
--SetCurMap("garner")
--cha = CreateCha(37, 50000, 30000)  --在指定位置(出生点)创建怪物
--SetChaPatrol(cha, 500300, 300200)  --指定怪物的巡逻点, 怪物会在出生点和巡逻点之间巡逻
--SetChaFaceAngle(cha, 90)           --设置创建出来的怪物面向角度

SetCurMap("garner")

--添加天气区域
--7个参数 : 
--地面状态编号
--随机产生的时间间隔(单位:秒)
--产生之后状态持续的时间(单位:秒)
--天气范围起始坐标x, y(单位:米)
--天气范围宽度,高度(单位:米)
AddWeatherRegion(9,  8, 40, 2434, 2800 , 80, 80)--白银
AddWeatherRegion(11, 8, 40, 2247, 2960 , 80, 80)


AddWeatherRegion(9,  8, 40, 1190, 1140 , 80, 80)--雷霆
AddWeatherRegion(11, 8, 40, 1160, 1400 , 80, 80)


--松树
CreateCha(827, 4512, 687, 145, 15)
CreateCha(827, 5075, 3800, 145, 15)
CreateCha(827, 1062, 650, 145, 15)
CreateCha(827, 887, 5412, 145, 15)
CreateCha(827, 4950, 4050, 145, 15)
CreateCha(827, 5850, 2100, 145, 15)
CreateCha(827, 1725, 5487, 145, 15)