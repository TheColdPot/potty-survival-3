scoreboard players add @s combo_progress 10



#boop!

execute if score @s combo_progress > #melee_charge_max var if score @s melee_charge_stacks matches ..2 run function potty.combat:sweeping/stage

scoreboard players operation @s combo_progress < #melee_charge_max var

scoreboard players set @s melee_charge_timer 60