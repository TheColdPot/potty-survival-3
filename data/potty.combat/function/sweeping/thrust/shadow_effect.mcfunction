# particle minecraft:scrape ^ ^1 ^0.5 0.5 0.3 0.5 1 15
# particle minecraft:witch ^ ^1 ^0.5 0.5 0.3 0.5 1 15
particle minecraft:witch ^ ^1 ^0.5 0.5 0.3 0.5 0 15
scoreboard players add @s sweeping_timer 1
execute if score @s sweeping_timer matches 6.. run tag @s remove combat.sweeping.thrust
