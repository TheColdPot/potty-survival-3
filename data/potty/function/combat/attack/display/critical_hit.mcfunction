execute store result storage potty:effects crit_damage_number int 1 run scoreboard players get @e[tag=combat.attacker,limit=1] reduced_final_damage

data modify storage potty:effects crit_damage_digits set value ['','','','','','','','']
data modify storage potty:effects crit_damage_digits[0] set string storage potty:effects crit_damage_number 0 1
data modify storage potty:effects crit_damage_digits[1] set string storage potty:effects crit_damage_number 1 2
data modify storage potty:effects crit_damage_digits[2] set string storage potty:effects crit_damage_number 2 3
data modify storage potty:effects crit_damage_digits[3] set string storage potty:effects crit_damage_number 3 4
data modify storage potty:effects crit_damage_digits[4] set string storage potty:effects crit_damage_number 4 5
data modify storage potty:effects crit_damage_digits[5] set string storage potty:effects crit_damage_number 5 6
data modify storage potty:effects crit_damage_digits[6] set string storage potty:effects crit_damage_number 6 7
data modify storage potty:effects crit_damage_digits[7] set string storage potty:effects crit_damage_number 7 8

execute at @e[tag=combat.victim,limit=1] positioned ~ ~1.2 ~ summon text_display run function potty:combat/attack/display/critical_hit_entity
