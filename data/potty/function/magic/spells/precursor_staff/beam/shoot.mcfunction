execute as @s[distance=..40] if block ~ ~ ~ #minecraft:replaceable positioned ^ ^ ^0.5 run function potty:magic/spells/precursor_staff/beam/shoot

execute positioned ~-.05 ~-.05 ~-.05 if entity @e[type=!player,type=!#potty:ignore_combat,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 run tag @e[type=!player,type=!#potty:ignore_combat,dx=0,dy=0,dz=0,limit=1] add magic.attack_target

execute if entity @e[tag=magic.attack_target] run function potty:magic/spells/precursor_staff/beam/hit

tag @e remove magic.attack_target

particle minecraft:dust{color:[1.0,0.8,0.8],scale:1} ~ ~ ~ 0 0 0 0 1 force