#execute at @s[distance=..4] positioned ^ ^ ^1 if block ~ ~ ~ #minecraft:replaceable anchored feet align xyz positioned ~0.5 ~ ~0.5 run tp ~ ~ ~
#execute at @s[distance=..4] positioned ^ ^ ^1 if block ~ ~ ~ #minecraft:replaceable positioned ^ ^ ^2 if block ~ ~ ~ #minecraft:replaceable anchored feet align xyz positioned ~0.5 ~ ~0.5 run tp ~ ~ ~
#execute at @s[distance=..4] positioned ^ ^ ^1 if block ~ ~ ~ #minecraft:replaceable positioned ^ ^ ^2 if block ~ ~ ~ #minecraft:replaceable positioned ^ ^ ^3 if block ~ ~ ~ #minecraft:replaceable anchored feet align xyz positioned ~0.5 ~ ~0.5 run tp ~ ~ ~
#execute at @s[distance=..4] positioned ^ ^ ^1 if block ~ ~ ~ #minecraft:replaceable positioned ^ ^ ^2 if block ~ ~ ~ #minecraft:replaceable positioned ^ ^ ^3 if block ~ ~ ~ #minecraft:replaceable positioned ^ ^ ^4 if block ~ ~ ~ #minecraft:replaceable anchored feet align xyz positioned ~0.5 ~ ~0.5 run tp ~ ~ ~

tp @s ~ ~1000 ~

scoreboard players set @s gamemode 0
scoreboard players set @s[gamemode=creative] gamemode 1
scoreboard players set @s[gamemode=adventure] gamemode 2
scoreboard players set @s[gamemode=spectator] gamemode 3

gamemode creative
execute positioned ~ ~1000 ~ anchored eyes positioned ^ ^ ^-0.2 summon end_crystal run damage @s 1
execute positioned ~ ~1000 ~ anchored eyes positioned ^ ^ ^-0.2 summon end_crystal run damage @s 1

gamemode survival @s[scores={gamemode=0}]
gamemode adventure @s[scores={gamemode=2}]
gamemode spectator @s[scores={gamemode=3}]

tp @s ~ ~ ~


execute at @s run playsound minecraft:entity.generic.explode player @a ~ ~ ~
execute at @s run particle explosion ~ ~ ~ 0 0 0 5 2


# base damage
scoreboard players set @s final_magic_damage 10
scoreboard players set intelligence_scaling __number 2
# this is nothing related to position
# this is nothing related to position
# this is nothing related to position, PURE CALCULATION
function potty:magic/common/calculate_final_damage

execute at @s run scoreboard players operation @e[type=!player,type=!#potty:ignore_combat,distance=..5] received_magic_damage += @s final_magic_damage

execute at @s at @e[type=!player,type=!#potty:ignore_combat,distance=..5] run damage @e[limit=1,sort=nearest] 0 potty:magic