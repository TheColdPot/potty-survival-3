execute unless entity @s[distance=..4.001] run particle minecraft:dust{color:[1,0,1],scale:1.5} ~ ~ ~ 0 0 0 0 1 force

execute positioned ~-.05 ~-.05 ~-.05 if entity @e[tag=!sweep_summoner,type=!#potty:ignore_combat,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 run damage @e[tag=!sweep_summoner,type=!#potty:ignore_combat,dx=0,dy=0,dz=0,limit=1] 10 player_attack by @n[tag=sweep_summoner]


execute as @s[distance=..4] positioned ^ ^ ^0.5 run function potty:utils/arc/rotation_beam
