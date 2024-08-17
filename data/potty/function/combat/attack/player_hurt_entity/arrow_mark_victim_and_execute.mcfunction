
tag @s add combat.victim

execute unless entity @s[tag=combat.included] run function potty:combat/mobs/setup

execute on attacker run function potty:combat/attack/player_hurt_entity/apply_player_damage

execute on attacker on passengers on target if score @s ranged_hit_combo_power matches 1.. run function potty:combat/combo/gain_ranged_stack

execute on attacker on passengers run kill @s
execute on attacker run kill @s

tag @s remove combat.victim

