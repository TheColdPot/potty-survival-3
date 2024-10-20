#检测有效指向与后执行

execute if entity @s[x_rotation=-20..-14] on vehicle on passengers if score @s[tag=npc_forge_text,tag=npc_select_enable] npc_select_uid matches 1 run tag @s add npc_player_select_target
execute if entity @s[x_rotation=-13..-6.7] on vehicle on passengers if score @s[tag=npc_forge_text,tag=npc_select_enable] npc_select_uid matches 2 run tag @s add npc_player_select_target
execute if entity @s[x_rotation=-5.3..1.0] on vehicle on passengers if score @s[tag=npc_forge_text,tag=npc_select_enable] npc_select_uid matches 3 run tag @s add npc_player_select_target
execute if entity @s[x_rotation=2.3..8.5] on vehicle on passengers if score @s[tag=npc_forge_text,tag=npc_select_enable] npc_select_uid matches 4 run tag @s add npc_player_select_target

#执行者为指向文本的功能筛选
execute on vehicle on passengers if entity @s[tag=npc_player_select_target] run function potty.npc:selector/text_rotate/function_select
