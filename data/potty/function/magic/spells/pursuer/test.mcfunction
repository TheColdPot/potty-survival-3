execute facing entity @e[limit=1,sort=nearest,type=!player,type=!#potty:ignore_combat,distance=..17.75] feet rotated ~ ~-10 run tp @s ~ ~ ~ ~ ~
execute if entity @e[type=!player,type=!#potty:ignore_combat,distance=..17.75] if score @s __time_period matches 0.. run tp @s ^ ^ ^0.75
execute unless entity @e[type=!player,type=!#potty:ignore_combat,distance=..17.75] run tp @s ~ ~ ~ ~6 0

execute if score @s __time_period matches 0.. if entity @e[type=!player,type=!#potty:ignore_combat,distance=..2] run function potty:magic/spells/pursuer/skull_damage

execute rotated as @s on passengers positioned as @s run tp @s ~ ~ ~ ~180 ~ 

particle flame ~ ~ ~ 0 0 0 0.01 2
scoreboard players add @s __time_period 1
scoreboard players add @s __time_since_spawn 1

execute if score @s __time_since_spawn matches 150.. run function potty:magic/spells/pursuer/destroy

