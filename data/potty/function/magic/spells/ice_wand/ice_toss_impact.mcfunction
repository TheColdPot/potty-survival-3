particle minecraft:snowflake ~ ~0.6 ~ 0 0 0 0.2 454
playsound block.glass.break player @a ~ ~ ~


scoreboard players set @s final_magic_damage 3000

scoreboard players add @s wand_cast_time 60
scoreboard players set intelligence_scaling __number 3
function potty:magic/common/calculate_final_damage
scoreboard players operation @s final_magic_damage *= @s wand_cast_time
scoreboard players set max_cast __number 60
scoreboard players operation @s final_magic_damage /= max_cast __number


scoreboard players operation @e[type=!player,type=!#potty:ignore_combat,distance=..2.75] received_magic_damage = @s final_magic_damage

execute at @e[type=!player,type=!#potty:ignore_combat,distance=..2.75] run damage @e[limit=1,sort=nearest] 0 potty:magic by @s

kill @s