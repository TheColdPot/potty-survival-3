tag @s add combat.attacker

scoreboard players operation @s reduced_final_damage = @s final_crit_damage
function potty:combat/attack/player_hurt_entity/apply_combo_bonus
#* (1+(stack / 2000))za

function potty:combat/attack/display/critical_hit

execute as @e[tag=combat.victim,limit=1] run function potty:combat/attack/player_hurt_entity/deal_damage

tag @s remove combat.attacker