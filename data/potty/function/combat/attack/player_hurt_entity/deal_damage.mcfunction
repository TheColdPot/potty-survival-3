scoreboard players operation @s health -= @e[tag=combat.attacker,limit=1] reduced_final_damage
scoreboard players set min_health __number 0
scoreboard players operation @s health > min_health __number

execute on passengers run scoreboard players operation @s[tag=combat.mob_health_text] health = @e[tag=combat.victim,limit=1] health
execute on passengers run scoreboard players operation @s[tag=combat.mob_health_text] max_health = @e[tag=combat.victim,limit=1] max_health
execute on passengers run function potty:combat/mobs/update_health_text

execute if score @s health matches ..0 as @e[tag=combat.attacker,limit=1] if score @s[type=player] melee_kill_combo_power matches 1.. run function potty:combat/combo/gain_stack
kill @s[scores={health=..0}]