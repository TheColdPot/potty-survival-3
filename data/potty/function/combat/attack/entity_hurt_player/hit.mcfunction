execute on attacker if entity @s[tag=!combat.included,type=!player,type=!#potty:ignore_combat] run function potty:combat/mobs/setup
# execute on attacker if entity @s[] run function potty:combat/mobs/setup
execute on attacker run tag @s add combat.attacker
tag @s add combat.victim

execute at @s on attacker run function potty:combat/attack/entity_hurt_player/calculate_damage

function potty:combat/attack/display/normal_hit
scoreboard players operation @s health -= @e[tag=combat.attacker,limit=1] reduced_final_damage
scoreboard players set min_health __number 0
scoreboard players operation @s health > min_health __number

# function potty:combat/health_change

tag @s remove combat.victim
execute on attacker run tag @s remove combat.attacker

execute if score @s health matches ..0 run function potty:combat/attack/entity_hurt_player/kill_and_respawn