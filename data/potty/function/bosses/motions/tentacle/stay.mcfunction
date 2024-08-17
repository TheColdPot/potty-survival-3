execute as @e[tag=boss.tentacle_part_1,tag=stay_1] at @s run tp @s ~ ~ ~ ~ ~2
execute as @e[tag=boss.tentacle_part_1,tag=stay_2] at @s run tp @s ~ ~ ~ ~ ~-2

execute as @e[tag=boss.tentacle_part_1,tag=stay_1,x_rotation=25..90] run tag @s add stay_2
execute as @e[tag=boss.tentacle_part_1,tag=stay_1,x_rotation=25..90] run tag @s remove stay_1

execute as @e[tag=boss.tentacle_part_1,tag=stay_2,x_rotation=-90..-25] run tag @s add stay_1
execute as @e[tag=boss.tentacle_part_1,tag=stay_2,x_rotation=-90..-25] run tag @s remove stay_2

execute as @e[tag=boss.tentacle_part_1,tag=!stay_1,tag=!stay_2] run tag @s add stay_1