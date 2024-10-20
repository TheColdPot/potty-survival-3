#UID
scoreboard objectives add npc_interact_uid dummy
scoreboard objectives add npc_select_uid dummy
scoreboard objectives add npc_select_uid_2 dummy

#披挂品质
scoreboard objectives add npc_gear_quality dummy

#通用计数
scoreboard objectives add npc_count dummy
scoreboard objectives add npc_rotation dummy

scoreboard players set height_minus npc_count 200
scoreboard players set item_height_minus npc_count 300

#文本展示前置
data modify storage potty.npc:g_text char.LINE_BREAK_WITH_PADDING set value '"\\n"'
data modify storage potty.npc:g_text char.SEPERATOR_WITH_PADDING set value {"storage":"potty.npc:g_text","nbt":"char.LINE_BREAK_WITH_PADDING","interpret":1}
data merge storage potty.npc:g_text {Line:'[{"text":"                                ","strikethrough":true}]'}



















data remove storage potty.npc:forge_storage List
data merge storage potty.npc:forge_storage {List:[{Sword:[\
{Slot:1,Empty:1b,Deviation:-78f},\
\
{Slot:2,Chain:1b,Deviation:-78f,Facing:{"north":"true","east":"true"}},\
\
{Slot:3,Item:1b,Deviation:-78f,Quality:4,data:{id:"golden_sword",count:1b,components:{item_name:'[{"text":"精","color":"#c003ff","italic":false},{"text":"金","color":"#ca1dff","italic":false},{"text":"黄","color":"#d537ff","italic":false},{"text":"龙","color":"#df51ff","italic":false},{"text":"剑","color":"#e96bff","italic":false}]',lore:['[""]','[{"text":"🗡 攻击 ","color":"gray","italic":false},{"text":"[72]","color":"white","italic":false}]','[{"text":"⚔ 暴击伤害 ","color":"gray","italic":false},{"text":"[15]","color":"white","italic":false}]','[{"text":"💣 暴击率 ","color":"gray","italic":false},{"text":"[5]","color":"white","italic":false}]','[""]','[{"text":"独","color":"#fda900","italic":false},{"text":"门","color":"#feb71a","italic":false},{"text":"妙","color":"#fec435","italic":false},{"text":"用","color":"#ffd24f","italic":false}]','[{"text":"携带此武器时可加快行走速度。","color":"gray","italic":false}]']}}},\
\
{Slot:4,Chain:1b,Deviation:-78f,Facing:{"north":"true","south":"true"}},\
\
{Slot:5,Item:1b,Deviation:-78f,Quality:4,data:{id:"golden_sword",count:1b,components:{item_name:'[{"text":"鳞剑·炙金","color":"dark_purple","italic":false}]'}}},\
\
{Slot:6,Chain:1b,Deviation:-78f,Facing:{"north":"true","south":"true"}},\
\
{Slot:7,Item:1b,Deviation:-78f,Quality:5,data:{id:"netherite_sword",count:1b,components:{item_name:'[{"text":"黑金斩龙刀","color":"gold","italic":false}]'}}},\
\
{Slot:8,Empty:1b,Deviation:-78f,Line_break:1b},\
\
{Slot:9,Item:1b,Deviation:-90f,Quality:1,data:{id:"wooden_sword",count:1,components:{item_name:'[{"text":"珠帘桃木剑","color":"gray","italic":false}]',lore:['[""]','[{"text":"🗡 攻击 ","color":"gray","italic":false},{"text":"[10]","color":"white","italic":false}]','[{"text":"⚔ 暴击伤害 ","color":"gray","italic":false},{"text":"[5]","color":"white","italic":false}]','[""]','[{"text":"独","color":"#fda900","italic":false},{"text":"门","color":"#feb71a","italic":false},{"text":"妙","color":"#fec435","italic":false},{"text":"用","color":"#ffd24f","italic":false}]','[{"text":"连续击中敌人可少许增加暴击率。","color":"gray","italic":false}]']}}},\
\
{Slot:10,Chain:1b,Deviation:-90f,Facing:{"north":"true","south":"true","west":"true","east":"true"}},\
\
{Slot:11,Chain:1b,Deviation:-90f,Facing:{"north":"true","south":"true"}},\
{Slot:12,Item:1b,Deviation:-90f,Quality:3,data:{id:"iron_sword",count:1,components:{item_name:'[{"text":"赤","color":"#0901ff","italic":false},{"text":"铁","color":"#251eff","italic":false},{"text":"涟","color":"#413aff","italic":false},{"text":"漪","color":"#5c57ff","italic":false},{"text":"剑","color":"#7873ff","italic":false}]',lore:['[""]','[{"text":"🗡 攻击 ","color":"gray","italic":false},{"text":"[42]","color":"white","italic":false}]','[{"text":"💣 暴击率 ","color":"gray","italic":false},{"text":"[10]","color":"white","italic":false}]','[""]','[{"text":"独","color":"#fda900","italic":false},{"text":"门","color":"#feb71a","italic":false},{"text":"妙","color":"#fec435","italic":false},{"text":"用","color":"#ffd24f","italic":false}]','[{"text":"重击敌人时将附上灼伤效果。","color":"gray","italic":false}]']}}},\
\
{Slot:13,Chain:1b,Deviation:-90f,Facing:{"north":"true","south":"true"}},\
\
{Slot:14,Item:1b,Deviation:-90f,Quality:4,data:{id:"iron_sword",count:1,components:{item_name:'[{"text":"鳞剑·狂铁","color":"dark_purple","italic":false}]'}}},\
\
{Slot:15,Empty:1b,Deviation:-90f},\
\
{Slot:16,Empty:1b,Deviation:-90f,Line_break:1b},\
\
{Slot:17,Empty:1b,Deviation:-101f},\
\
{Slot:18,Item:1b,Deviation:-101f,Quality:2,data:{id:"stone_sword",count:1,components:{item_name:'[{"text":"砾","color":"#38cd00","italic":false},{"text":"石","color":"#51da1d","italic":false},{"text":"碎","color":"#6ae63a","italic":false},{"text":"骨","color":"#82f356","italic":false},{"text":"剑","color":"#9bff73","italic":false}]',lore:['[""]','[{"text":"🗡 攻击 ","color":"gray","italic":false},{"text":"[25]","color":"white","italic":false}]','[{"text":"💣 暴击率 ","color":"gray","italic":false},{"text":"[8]","color":"white","italic":false}]','[""]','[{"text":"独","color":"#fda900","italic":false},{"text":"门","color":"#feb71a","italic":false},{"text":"妙","color":"#fec435","italic":false},{"text":"用","color":"#ffd24f","italic":false}]','[{"text":"重击敌人时有些许机会造成双倍","color":"gray","italic":false}]','[{"text":"伤害。","color":"gray","italic":false}]']}}},\
\
{Slot:19,Chain:1b,Deviation:-101f,Facing:{"north":"true","south":"true"}},\
\
{Slot:20,Item:1b,Deviation:-101f,Quality:3,data:{id:"diamond_sword",count:1,components:{item_name:'[{"text":"琉璃千齿剑","color":"blue","italic":false}]'}}},\
\
{Slot:21,Chain:1b,Deviation:-101f,Facing:{"north":"true","south":"true"}},\
\
{Slot:22,Item:1b,Deviation:-101f,Quality:4,data:{id:"diamond_sword",count:1,components:{item_name:'[{"text":"淬剑·天诛","color":"dark_purple","italic":false}]'}}},\
\
{Slot:23,Chain:1b,Deviation:-101f,Facing:{"north":"true","south":"true"}},\
\
{Slot:24,Item:1b,Deviation:-101f,Quality:5,data:{id:"netherite_sword",count:1,components:{item_name:'[{"text":"血屠莲蓉剑","color":"gold","italic":false}]'}}},\
]}]}
