tag @s add combat.attacker
scoreboard players operation @s reduced_final_damage = @s final_damage
function potty:combat/attack/player_hurt_entity/apply_combo_bonus

function potty:combat/attack/display/normal_hit

execute as @e[tag=combat.victim,limit=1] run function potty:combat/attack/player_hurt_entity/deal_damage

tag @s remove combat.attacker