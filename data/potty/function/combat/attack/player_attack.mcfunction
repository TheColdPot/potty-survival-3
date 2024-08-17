# function potty:combat/attack/attack_cooldown

tag @s add combat.attacked_recently


scoreboard players operation @s ferocity_count = @s ferocity
scoreboard players operation @s __shifted_stat_value = @s ferocity
scoreboard players set guaranteed_ferocity __number 100
scoreboard players operation @s ferocity_count /= guaranteed_ferocity __number
scoreboard players operation @s __shifted_stat_value %= guaranteed_ferocity __number
execute if predicate potty:another_ferocity run scoreboard players add @s ferocity_count 1

advancement revoke @s only potty:trigger/player_melee_attack
