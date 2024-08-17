execute store result score @s uibase_common run data get entity @s Rotation[0] 1000
scoreboard players operation @s data_new = @s uibase_common
execute store result score @s uibase_common run data get entity @s Rotation[1] 1000
scoreboard players operation @s data_new += @s uibase_common

execute unless score @s data_new = @s data_old run function uibase:click/rotation/angle_diff

scoreboard players operation @s data_old = @s data_new