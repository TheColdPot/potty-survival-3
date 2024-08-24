scoreboard players add @s melee_kill_combo 1
execute if score @s melee_kill_combo matches 11.. run scoreboard players set @s melee_kill_combo 10

scoreboard players operation @s lose_melee_kill_combo_left_time = @s lose_melee_kill_combo_time

# execute anchored eyes rotated ~ 0 run particle sweep_attack ^ ^ ^1

# function potty:stats/calculate


# scoreboard players set @s display_combo_left_time 35