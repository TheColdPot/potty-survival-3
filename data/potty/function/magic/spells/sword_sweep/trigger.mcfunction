execute store result entity @s Rotation[0] float 1 run random value -180..180
execute store result entity @s Rotation[1] float 1 run random value -90..90

tag @s add sweep_summoner
scoreboard players add @s motion_tick 1
execute if entity @s[scores={motion_tick=1}] at @s run function potty:magic/spells/sword_sweep/style_1
execute if entity @s[scores={motion_tick=2}] at @s run function potty:magic/spells/sword_sweep/style_2
#execute if entity @s[scores={motion_tick=3}] at @s run function potty:magic/spells/sword_sweep/style_3

tag @s remove sweep_summoner

scoreboard players reset @s[scores={motion_tick=2..}] motion_tick