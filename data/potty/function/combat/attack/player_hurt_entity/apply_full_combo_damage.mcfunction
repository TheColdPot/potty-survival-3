# check if crits
execute if predicate potty:crit_attack run return run function potty:combat/attack/player_hurt_entity/critical_hit
return run function potty:combat/attack/player_hurt_entity/normal_hit


