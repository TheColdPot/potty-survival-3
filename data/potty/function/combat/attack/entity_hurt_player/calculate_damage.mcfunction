scoreboard players operation @s reduced_final_damage = @s final_damage
scoreboard players operation @s __shifted_stat_value = @p[tag=combat.victim,limit=1] defense
scoreboard players operation @s reduced_final_damage *= divisor __number

scoreboard players add @s __shifted_stat_value 100
scoreboard players operation @s reduced_final_damage /= @s __shifted_stat_value
scoreboard players set divisor __number 100


