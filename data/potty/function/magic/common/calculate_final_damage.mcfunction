scoreboard players operation @s __shifted_stat_value = @s intelligence
scoreboard players add @s __shifted_stat_value 1000
scoreboard players operation @s final_magic_damage *= @s __shifted_stat_value
scoreboard players set divisor __number 1000
scoreboard players operation @s final_magic_damage *= intelligence_scaling __number
scoreboard players operation @s final_magic_damage /= divisor __number

scoreboard players operation @s __shifted_stat_value = @s magic_damage
scoreboard players add @s __shifted_stat_value 100
scoreboard players operation @s final_magic_damage *= @s __shifted_stat_value
scoreboard players set divisor __number 100
scoreboard players operation @s final_magic_damage /= divisor __number

execute if score @s final_magic_damage matches ..-1 run scoreboard players set @s final_magic_damage 2147483647
