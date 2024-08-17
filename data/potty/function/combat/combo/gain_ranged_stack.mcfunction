scoreboard players add @s ranged_hit_combo 1
execute if score @s ranged_hit_combo matches 11.. run scoreboard players set @s ranged_hit_combo 10

scoreboard players operation @s lose_ranged_hit_combo_left_time = @s lose_ranged_hit_combo_time

# function potty:stats/calculate


# scoreboard players set @s display_combo_left_time 35