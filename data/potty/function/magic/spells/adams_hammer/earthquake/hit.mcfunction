scoreboard players set @s final_magic_damage 10000
scoreboard players set intelligence_scaling __number 1
function potty:magic/common/calculate_final_damage
scoreboard players operation @e[tag=magic.attack_target] received_magic_damage = @s final_magic_damage
execute at @e[tag=magic.attack_target] run damage @e[sort=nearest,limit=1] 0 potty:magic by @s
