scoreboard players set damage_divisor __number 100
scoreboard players set crit_damage_divisor __number 10000

scoreboard players operation @s final_damage = @s weapon_damage 
scoreboard players operation @s final_damage *= @s strength
scoreboard players operation @s final_crit_damage = @s final_damage
# Though this will cause precision loss, by not doing this number will overflow to negative ones.
scoreboard players operation @s final_crit_damage /= damage_divisor __number
scoreboard players operation @s __shifted_stat_value = @s crit_damage 
scoreboard players add @s __shifted_stat_value 100
scoreboard players operation @s final_crit_damage *= @s __shifted_stat_value

#After all other modifications
scoreboard players operation @s final_damage /= damage_divisor __number
scoreboard players operation @s final_crit_damage /= damage_divisor __number


