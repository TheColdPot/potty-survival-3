scoreboard players remove @s combo_progress 10
scoreboard players operation @s combo_progress > #ZERO var

execute if score @s combo_progress matches ..0 if score @s melee_charge_stacks matches ..0 run scoreboard players set @s melee_charge_timer -1
execute if score @s combo_progress matches ..0 if score @s melee_charge_stacks matches ..0 run return fail

execute if score @s combo_progress matches ..0 run function potty.combat:sweeping/decrease_stack.natural

scoreboard players set @s melee_charge_timer 60