tp @s ~ ~1000 ~

scoreboard players set @s gamemode 0
scoreboard players set @s[gamemode=creative] gamemode 1
scoreboard players set @s[gamemode=adventure] gamemode 2
scoreboard players set @s[gamemode=spectator] gamemode 3

gamemode creative
execute positioned ~ ~1000 ~ anchored eyes positioned ^ ^ ^-0.2 summon end_crystal run damage @s 1
execute positioned ~ ~1000 ~ anchored eyes positioned ^ ^ ^-0.2 summon end_crystal run damage @s 1
execute positioned ~ ~1000 ~ anchored eyes positioned ^ ^ ^-0.2 summon end_crystal run damage @s 1

gamemode survival @s[scores={gamemode=0}]
gamemode adventure @s[scores={gamemode=2}]
gamemode spectator @s[scores={gamemode=3}]

tp @s ~ ~ ~

execute anchored eyes run particle flash ^ ^ ^3 0 0 0 0 1
playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1