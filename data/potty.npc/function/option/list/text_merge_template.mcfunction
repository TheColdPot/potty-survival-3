data merge entity @s {Tags:[npc_forge_text,npc_text_new_summon],text:'[""]',transformation:{scale:[0.6f,0.6f,0.6f],translation:[0.0f,1.6f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},billboard:"fixed",alignment:"center",see_through:false,shadow:true,line_width:200,brightness:{block:15,sky:15},width:10.0f,height:10.0f}

#UID排序
scoreboard players add WorldEntity npc_select_uid 1
scoreboard players operation @s npc_select_uid = WorldEntity npc_select_uid

#渲染高度修正
execute store result score WorldEntity npc_count if entity @e[type=text_display,tag=npc_text_new_summon]
execute store result score @s npc_count run data get entity @s transformation.translation[1] 1000
function potty.npc:option/list/text_height_cal