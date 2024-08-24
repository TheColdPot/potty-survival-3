execute unless score @s melee_kill_combo matches 1.. run return fail

execute store result storage potty:player damage int 1 run scoreboard players get @s reduced_final_damage
scoreboard players operation @s final_damage_to_add = @s final_damage

execute if score @s melee_kill_combo matches 1 store result score @s final_damage_to_add run data get storage potty:player damage 0.005
execute if score @s melee_kill_combo matches 2 store result score @s final_damage_to_add run data get storage potty:player damage 0.01
execute if score @s melee_kill_combo matches 3 store result score @s final_damage_to_add run data get storage potty:player damage 0.015
execute if score @s melee_kill_combo matches 4 store result score @s final_damage_to_add run data get storage potty:player damage 0.02
execute if score @s melee_kill_combo matches 5 store result score @s final_damage_to_add run data get storage potty:player damage 0.025
execute if score @s melee_kill_combo matches 6 store result score @s final_damage_to_add run data get storage potty:player damage 0.03
execute if score @s melee_kill_combo matches 7 store result score @s final_damage_to_add run data get storage potty:player damage 0.035
execute if score @s melee_kill_combo matches 8 store result score @s final_damage_to_add run data get storage potty:player damage 0.04
execute if score @s melee_kill_combo matches 9 store result score @s final_damage_to_add run data get storage potty:player damage 0.045
execute if score @s melee_kill_combo matches 10 store result score @s final_damage_to_add run data get storage potty:player damage 0.05

scoreboard players operation @s __shifted_stat_value = @s melee_kill_combo_power
scoreboard players set multiplier __number 4
scoreboard players set divisor __number 95
scoreboard players operation @s __shifted_stat_value *= multiplier __number
scoreboard players add @s __shifted_stat_value 15
scoreboard players operation @s final_damage_to_add *= @s __shifted_stat_value
scoreboard players operation @s final_damage_to_add /= divisor __number
scoreboard players operation @s reduced_final_damage += @s final_damage_to_add
