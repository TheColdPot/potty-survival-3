
execute positioned ~-.05 ~-.05 ~-.05 if entity @e[type=!#potty:ignore_combat,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 run tag @e[type=!#potty:ignore_combat,dx=0,dy=0,dz=0,limit=1] add soul_summoner

execute as @n[tag=soul_summoner] at @s run function potty:magic/spells/soul_release/trigger
execute if entity @e[tag=soul_summoner] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1


execute unless entity @n[tag=soul_summoner] as @s[distance=0.01..40] if block ~ ~ ~ #minecraft:replaceable positioned ^ ^ ^0.5 run function potty:magic/spells/soul_release/entity_test

tag @n[tag=soul_summoner] remove soul_summoner