execute store result score g_baseRotation uibase_common run data get entity @s Rotation[0]

execute on passengers if entity @s[type=player] run scoreboard players set @s current_interface 3
execute on passengers if entity @s[type=player] run playsound minecraft:ui.loom.select_pattern player @s ~ ~ ~ 1 1

execute on passengers if entity @s[type=!player,scores={uibase_order=10..399}] run kill @s
execute on passengers if entity @s[type=!player,scores={uibase_order=500..}] run kill @s

execute on passengers if entity @s[type=!player,scores={uibase_order=400..499}] if function uibase:ui/main/storager_test run function uibase:ui/main/kill_text_storager
execute on passengers if entity @s[type=!player,scores={uibase_order=6}] run function uibase:ui/main/text_storager
execute on passengers if entity @s[type=!player,scores={uibase_order=6}] run data modify entity @s text set value '[{"text":"❖ 未知                ➜","color":"gold"}]'

execute summon text_display run function uibase:ui/main/summon/warp/0
execute summon text_display run function uibase:ui/main/summon/warp/1


schedule function uibase:ui/main/set_state/timer 4t