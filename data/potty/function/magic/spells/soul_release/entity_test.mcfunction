
execute positioned ~-.05 ~-.05 ~-.05 if entity @e[type=!#potty:ignore_combat,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 run tag @e[type=!#potty:ignore_combat,dx=0,dy=0,dz=0,limit=1] add bezier_summoner

execute as @n[tag=bezier_summoner] at @s run function potty:utils/bezier/trigger
execute if entity @e[tag=bezier_summoner] at @s run function potty:magic/spells/soul_release/effect

execute unless entity @n[tag=bezier_summoner] as @s[distance=0.01..40] if block ~ ~ ~ #minecraft:replaceable positioned ^ ^ ^0.5 run function potty:magic/spells/soul_release/entity_test
