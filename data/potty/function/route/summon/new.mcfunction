tag @s remove NewSummon

execute positioned ~1 ~ ~ align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air unless entity @e[tag=Marker,distance=..0.2] summon area_effect_cloud run function potty:route/summon/setup
execute positioned ~-1 ~ ~ align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air unless entity @e[tag=Marker,distance=..0.2] summon area_effect_cloud run function potty:route/summon/setup
execute positioned ~ ~ ~1 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air unless entity @e[tag=Marker,distance=..0.2] summon area_effect_cloud run function potty:route/summon/setup
execute positioned ~ ~ ~-1 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air unless entity @e[tag=Marker,distance=..0.2] summon area_effect_cloud run function potty:route/summon/setup

execute store result score EntityCount route.count if entity @e[tag=Marker]

execute as @e[tag=NewSummon] at @s if entity @e[tag=End,distance=..0.1] run tag @s add Getit
execute as @e[tag=Getit] run tellraw @a {"score":{"objective":"route.count","name":"EntityCount"}}

execute if score EntityCount route.count matches ..200 unless entity @e[tag=Getit] as @e[tag=NewSummon] at @s run function potty:route/summon/new
