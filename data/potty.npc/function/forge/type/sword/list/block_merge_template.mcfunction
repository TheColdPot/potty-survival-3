data merge entity @s {Tags:[npc_forge_item,npc_item_new_summon],block_state:{Name:"minecraft:iron_bars"},transformation:{scale:[0.32f,0.01f,0.32f],translation:[0.15f,2.34f,0.0f],left_rotation:[1f,1f,1f,1f],right_rotation:[0f,1f,0f,1f]},billboard:"fixed",brightness:{block:15,sky:15}}

#UID排序
scoreboard players add WorldEntity npc_select_uid_2 1
scoreboard players operation @s npc_select_uid_2 = WorldEntity npc_select_uid_2

#渲染高度修正
execute store result score WorldEntity npc_count if entity @e[type=#potty.npc:ui,tag=npc_item_new_summon]
execute store result score @s npc_count run data get entity @s transformation.translation[1] 1000
function potty.npc:forge/base_icon_settings/list/item_height_cal

