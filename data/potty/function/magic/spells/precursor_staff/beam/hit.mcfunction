scoreboard players set @s final_magic_damage 8750
scoreboard players set intelligence_scaling __number 1
function potty:magic/common/calculate_final_damage
scoreboard players operation @s final_magic_damage *= @s wand_cast_time

scoreboard players add @s wand_cast_time 40
scoreboard players set max_cast __number 40
scoreboard players operation @s final_magic_damage /= max_cast __number
scoreboard players operation @e[tag=magic.attack_target] received_magic_damage = @s final_magic_damage
execute at @e[tag=magic.attack_target] run damage @e[sort=nearest,limit=1] 0 potty:magic by @s
