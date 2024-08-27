execute if entity @s[tag=combat.sweeping.thrust] run function potty.combat:sweeping/thrust/shadow_effect

# execute if score @s combo_stacks matches 0.. run scoreboard players remove @s combo_progress 1
# execute if score @s combo_progress matches ..0 run function potty.combat:sweeping/back_stage

scoreboard players remove @s[scores={combo_uncharge_timer=1..}] combo_uncharge_timer 1
execute if score @s combo_uncharge_timer matches 0 run function potty.combat:sweeping/uncharge
