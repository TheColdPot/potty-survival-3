tag @s add combat.processing_mob

execute unless score @s max_health matches 0.. store result score @s max_health run attribute @s generic.max_health get 500
execute unless score @s final_damage matches 0.. store result score @s final_damage run attribute @s generic.attack_damage get 5

scoreboard players operation @s health = @s max_health

effect give @s resistance infinite 5 true
effect give @s fire_resistance infinite 0 true
# data merge entity @s {HasVisualFire:false}

execute at @s summon text_display run function potty:combat/mobs/health_indicator

tag @s add combat.included
tag @s remove combat.processing_mob

