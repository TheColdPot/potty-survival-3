# execute unless entity @s[tag=combat.included] run function potty:combat/mobs/setup

# scoreboard players set max_int __number 2147483647
# execute if score @s received_magic_damage matches ..-1 run scoreboard players set @s received_magic_damage 2147483647
# scoreboard players operation @s received_ferocity_damage < max_int __number


scoreboard players operation @s health -= @s received_ferocity_damage
scoreboard players set min_health __number 0
scoreboard players operation @s health > min_health __number

function potty:combat/attack/display/special_ferocity

scoreboard players reset @s received_ferocity_damage

tag @s add combat.victim
execute on passengers run scoreboard players operation @s[tag=combat.mob_health_text] health = @e[tag=combat.victim,limit=1] health
execute on passengers run scoreboard players operation @s[tag=combat.mob_health_text] max_health = @e[tag=combat.victim,limit=1] max_health

execute if entity @s[type=!player] on passengers run function potty:combat/mobs/update_health_text
tag @s remove combat.victim

kill @s[scores={health=..0}]
