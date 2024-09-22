execute unless entity @s[distance=..4.001] run particle minecraft:dust_color_transition{from_color:[1.0,0.0,0.0],scale:0.8,to_color:[1.0,1.0,1.0]} ~ ~ ~ 0 0 0 0 1 force

execute positioned ~-.05 ~-.05 ~-.05 if entity @e[tag=!touch_target,tag=!sweep_summoner,type=!#potty:ignore_combat,dx=0,dy=0,dz=0,distance=..10] positioned ~-.9 ~-.9 ~-.9 as @e[tag=!sweep_summoner,type=!#potty:ignore_combat,dx=0,dy=0,dz=0,limit=1,distance=..10] at @s run function potty:utils/arc/touch_target

execute as @s[distance=..4] positioned ^ ^ ^0.5 run function potty:utils/arc/rotation_beam
