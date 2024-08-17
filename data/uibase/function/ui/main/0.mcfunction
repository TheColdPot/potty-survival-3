execute store result score g_baseRotation uibase_common run data get entity @s Rotation[0]

execute on passengers if entity @s[type=player] run scoreboard players set @s current_interface 0
execute on passengers if entity @s[type=player] run playsound minecraft:ui.loom.select_pattern player @s ~ ~ ~ 1 1

execute on passengers if entity @s[type=!player,scores={uibase_order=-2..}] run kill @s


execute summon text_display run function uibase:ui/main/summon/main_interface/0
execute summon text_display run function uibase:ui/main/summon/main_interface/1
execute summon text_display run function uibase:ui/main/summon/main_interface/2
execute summon text_display run function uibase:ui/main/summon/main_interface/3
execute summon text_display run function uibase:ui/main/summon/main_interface/4
execute summon text_display run function uibase:ui/main/summon/main_interface/5
execute summon text_display run function uibase:ui/main/summon/main_interface/6
execute summon text_display run function uibase:ui/main/summon/main_interface/7

schedule function uibase:ui/main/set_state/timer 4t

