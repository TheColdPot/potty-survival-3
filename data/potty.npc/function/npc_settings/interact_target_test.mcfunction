
execute as @a if score @s npc_interact_uid = @n[type=interaction,tag=target] npc_interact_uid run tag @s add interact_player

#player ride
execute as @p[tag=interact_player] unless function potty.npc:npc_settings/has_vehicle as @n[type=interaction,tag=target] run function potty.npc:npc_settings/close_settings
execute as @p[tag=interact_player] at @s run function potty.npc:selector/angle_diff

#npc menu close
execute unless entity @a[tag=interact_player,distance=..4] run function potty.npc:npc_settings/close_settings
execute as @n[tag=interact_player] unless entity @s[distance=..4] run scoreboard players reset @s npc_interact_uid

tag @a[tag=interact_player] remove interact_player