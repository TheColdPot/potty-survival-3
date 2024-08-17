execute store result score g_baseRotation uibase_common run data get entity @s Rotation[0]

execute on passengers if entity @s[type=player] run scoreboard players set @s current_interface 0
execute on passengers if entity @s[type=player] run playsound minecraft:ui.loom.select_pattern player @s ~ ~ ~ 1 1

execute on passengers if entity @s[type=!player,scores={uibase_order=10..}] run kill @s

execute on passengers if entity @s[type=!player,scores={uibase_order=1..99}] if function uibase:ui/main/storager_test run function uibase:ui/main/kill_text_storager
execute on passengers if entity @s[type=!player,scores={uibase_order=3}] run function uibase:ui/main/text_storager