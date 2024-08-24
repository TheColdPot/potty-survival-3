scoreboard players add @s motion_tick 1
execute if entity @s[scores={motion_tick=1}] at @s run function potty:magic/spells/sword_sweep/style_1
execute if entity @s[scores={motion_tick=2}] at @s run function potty:magic/spells/sword_sweep/style_2
#execute if entity @s[scores={motion_tick=3}] at @s run function potty:magic/spells/sword_sweep/style_3

scoreboard players reset @s[scores={motion_tick=2..}] motion_tick