tag @s add sweep_summoner
scoreboard players remove @s motion_tick 1
execute if entity @s[scores={motion_tick=1}] at @s run function potty.combat:sweeping/slash/style_1
execute if entity @s[scores={motion_tick=2}] at @s run function potty.combat:sweeping/slash/style_1
execute if entity @s[scores={motion_tick=3}] at @s run function potty.combat:sweeping/slash/style_1
execute if entity @s[scores={motion_tick=4}] at @s run function potty.combat:sweeping/slash/style_1
execute if entity @s[scores={motion_tick=5}] at @s run function potty.combat:sweeping/slash/style_1

tag @s remove sweep_summoner

execute if entity @a[scores={motion_tick=1..}] run schedule function potty.combat:sweeping/slash/continue 1t
scoreboard players reset @s[scores={motion_tick=..0}] motion_tick