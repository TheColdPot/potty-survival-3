#alias entity victim @e[tag=combat.victim,limit=1]
tag @s remove combat.attacked_recently
# say 1
execute if entity @e[tag=combat.victim,tag=invulnerable] run return run function potty:combat/attack/display/uneffective_hit
execute if items entity @s weapon.mainhand bow run return run function potty:combat/attack/display/uneffective_hit

execute if score @s ferocity_count matches 1.. run function potty:combat/attack/schedule_ferocity

scoreboard players operation @s sweeping_range = @s base_sweeping_range 

execute if score @s melee_kill_combo matches 10 run function potty:combat/attack/player_hurt_entity/full_combo_bonus

execute if score @s sweeping_range matches 1.. at @e[tag=combat.victim,limit=1] run function potty:combat/attack/player_hurt_entity/prepare_sweep_around

# check if crits
execute if predicate potty:crit_attack run return run function potty:combat/attack/player_hurt_entity/critical_hit
return run function potty:combat/attack/player_hurt_entity/normal_hit


