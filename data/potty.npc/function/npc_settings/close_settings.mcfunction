tag @s remove clicker_trigger
data modify entity @s CustomName set value '[""]'

execute as @e[type=#potty.npc:ui,distance=..4] if score @s npc_interact_uid = @n[type=interaction,tag=target,distance=..4] npc_interact_uid on passengers if entity @s[type=!player] run kill @s
execute as @e[type=#potty.npc:ui,distance=..4] if score @s npc_interact_uid = @n[type=interaction,tag=target,distance=..4] npc_interact_uid run kill @s