#检测有效指向与后执行
execute if entity @s[x_rotation=-41.3..-34.6] on vehicle on passengers if score @s[tag=entity.forge.item,tag=npc_select_enable] npc_select_uid_2 matches 17 run tag @s add npc_player_select_target
execute if entity @s[x_rotation=-34..-26] on vehicle on passengers if score @s[tag=entity.forge.item,tag=npc_select_enable] npc_select_uid_2 matches 18 run tag @s add npc_player_select_target
execute if entity @s[x_rotation=-25.5..-16] on vehicle on passengers if score @s[tag=entity.forge.item,tag=npc_select_enable] npc_select_uid_2 matches 19 run tag @s add npc_player_select_target
execute if entity @s[x_rotation=-15.5..-5] on vehicle on passengers if score @s[tag=entity.forge.item,tag=npc_select_enable] npc_select_uid_2 matches 20 run tag @s add npc_player_select_target
execute if entity @s[x_rotation=-4.5..6.4] on vehicle on passengers if score @s[tag=entity.forge.item,tag=npc_select_enable] npc_select_uid_2 matches 21 run tag @s add npc_player_select_target
execute if entity @s[x_rotation=7.0..17.2] on vehicle on passengers if score @s[tag=entity.forge.item,tag=npc_select_enable] npc_select_uid_2 matches 22 run tag @s add npc_player_select_target
execute if entity @s[x_rotation=18..27] on vehicle on passengers if score @s[tag=entity.forge.item,tag=npc_select_enable] npc_select_uid_2 matches 23 run tag @s add npc_player_select_target
execute if entity @s[x_rotation=27.7..35.5] on vehicle on passengers if score @s[tag=entity.forge.item,tag=npc_select_enable] npc_select_uid_2 matches 24 run tag @s add npc_player_select_target
#执行者为指向文本的功能筛选
execute on vehicle on passengers if entity @s[tag=npc_player_select_target] run function potty.npc:selector/gear_rotate/function_select