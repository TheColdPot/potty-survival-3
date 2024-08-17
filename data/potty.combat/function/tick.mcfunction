# advancement revoke @a only potty.combat:melee_attack



execute as @a at @s run function potty.combat:tick.player

# tag @e[type=!player,type=!#potty.combat:combat_exclusion,tag=combat.current_tick_executed] remove combat.current_tick_executed

# execute as @e[tag=combat.tick] at @s run function potty.combat:tick.entity

scoreboard players add global combat.timer 1
 
execute if data storage potty:combat ferocity_list[0] run function potty.combat:ferocity/take_each


# FINAL
