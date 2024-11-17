scoreboard players set @s sword_ability_timer 50
scoreboard players remove @s sword_ability_stack 1
scoreboard players operation @s sword_ability_stack > #ZERO var
execute if score @s sword_ability_stack matches ..0 run scoreboard players remove @s cleave_charge 1
# execute if score @s sword_ability_stack matches 0 run scoreboard players set @s cleave_charge 0
scoreboard players operation @s cleave_charge > #0 var 
