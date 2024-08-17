tag @s add close_target
execute as @a[tag=opening_menu] if score @s uibase.uid = @n[type=block_display,tag=close_target] uibase.uid run tag @s add closer

playsound minecraft:block.beacon.deactivate player @n[type=player,tag=closer,distance=..5] ~ ~ ~ 1 1

execute on passengers unless entity @s[type=player] run kill @s
kill @s

tag @n[type=player,tag=closer] remove opening_menu
tag @n[type=player,tag=closer] remove closer