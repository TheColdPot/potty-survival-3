scoreboard players operation @s splash_radius = @s splash_radius_stat
scoreboard players operation @s splash_radius += #temp_splash_radius_bonus var
scoreboard players operation #splash_radius var = @s splash_radius

scoreboard players operation @s splash_damage = @s splash_damage_stat
scoreboard players operation @s splash_damage += #temp_splash_damage_bonus var
scoreboard players operation #splash_damage var = @s splash_damage

scoreboard players reset #temp_splash_radius_bonus var
scoreboard players reset #temp_splash_damage_bonus var


execute store result storage potty:combat splash_scale float 0.01 run scoreboard players get #splash_damage var
function potty.combat:player_attack/melee/get_splash_damage.macro with storage potty:combat
execute store result score #received_damage var run data get storage potty:combat splash_damage
