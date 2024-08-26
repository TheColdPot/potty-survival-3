

scoreboard players set #gamemode var 1
execute if entity @s[gamemode=survival] run scoreboard players set #gamemode var 0
execute if entity @s[gamemode=adventure] run scoreboard players set #gamemode var 2
# what the fuck?
# execute if entity @s[gamemode=spectator] run scoreboard players set #gamemode var 3


tp @s ~ ~200 ~

gamemode creative
execute positioned ~ ~200 ~ rotated ~ 0 anchored eyes positioned ^ ^ ^-0.2 summon end_crystal run damage @s 1
execute positioned ~ ~200 ~ rotated ~ 0 anchored eyes positioned ^ ^ ^-0.2 summon end_crystal run damage @s 1
execute positioned ~ ~200 ~ rotated ~ 0 anchored eyes positioned ^ ^ ^-0.2 summon end_crystal run damage @s 1
execute positioned ~ ~200 ~ rotated ~ 0 anchored eyes positioned ^ ^ ^-0.2 summon end_crystal run damage @s 1

tp @s ~ ~ ~

execute if score #gamemode var matches 0 run gamemode survival
execute if score #gamemode var matches 2 run gamemode adventure

scoreboard players set @s sweeping_timer 0
tag @s add combat.sweeping.thrust

