#检测有效指向与选中对象

execute if entity @s[x_rotation=-34..-26] on vehicle on passengers if score @s[tag=npc_forge_icon,tag=npc_select_enable] npc_select_uid_2 matches 1 run tag @s add npc_player_select_target
execute if entity @s[x_rotation=-25.5..-16] on vehicle on passengers if score @s[tag=npc_forge_icon,tag=npc_select_enable] npc_select_uid_2 matches 2 run tag @s add npc_player_select_target
execute if entity @s[x_rotation=-15.5..-5] on vehicle on passengers if score @s[tag=npc_forge_icon,tag=npc_select_enable] npc_select_uid_2 matches 3 run tag @s add npc_player_select_target
execute if entity @s[x_rotation=-4.5..6.4] on vehicle on passengers if score @s[tag=npc_forge_icon,tag=npc_select_enable] npc_select_uid_2 matches 4 run tag @s add npc_player_select_target
execute if entity @s[x_rotation=7.0..17.2] on vehicle on passengers if score @s[tag=npc_forge_icon,tag=npc_select_enable] npc_select_uid_2 matches 5 run tag @s add npc_player_select_target
execute if entity @s[x_rotation=18..27] on vehicle on passengers if score @s[tag=npc_forge_icon,tag=npc_select_enable] npc_select_uid_2 matches 6 run tag @s add npc_player_select_target

#执行者为指向文本的功能筛选
execute on vehicle on passengers if entity @s[tag=npc_player_select_target] run function potty.npc:selector/icon_rotate/function_select
