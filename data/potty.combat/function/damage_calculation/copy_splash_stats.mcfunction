function potty.combat:damage_calculation/compute

scoreboard players operation #received_damage var = #final_uncrit var

scoreboard players operation @s splash_radius = @s splash_radius_stat
scoreboard players operation #splash_radius var = @s splash_radius

scoreboard players operation @s splash_damage = @s splash_damage_stat
scoreboard players operation #splash_damage var = @s splash_damage

execute if score @s crit_chance matches 100.. run scoreboard players operation #received_damage var = @s final_crit
execute if score @s crit_chance matches ..99 run scoreboard players operation #received_damage var = @s final_uncrit

execute store result storage potty:combat splash_scale float 0.01 run scoreboard players get #splash_damage var
function potty.combat:player_attack/melee/get_splash_damage.macro with storage potty:combat
execute store result score #received_damage var run data get storage potty:combat splash_damage
