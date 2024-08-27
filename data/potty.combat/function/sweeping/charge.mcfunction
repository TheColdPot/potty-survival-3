scoreboard players set @s combo_max 150
scoreboard players add @s combo_progress 10



#boop!

execute if score @s combo_progress > @s combo_max if score @s combo_stacks matches ..2 run function potty.combat:sweeping/stage

scoreboard players operation @s combo_progress < @s combo_max

scoreboard players set @s combo_uncharge_timer 60