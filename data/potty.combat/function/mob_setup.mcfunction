execute unless score @s max_health matches 0.. store result score @s max_health run attribute @s generic.max_health get 50000000
execute unless score @s mob_damage matches 0.. store result score @s mob_damage run attribute @s generic.attack_damage get 5

scoreboard players operation @s health = @s max_health

effect give @s resistance infinite 54 true
effect give @s fire_resistance infinite 0 true

tag @s add processing
execute summon text_display run function potty.combat:health_bar/summon.entity
tag @s remove processing

attribute @s generic.attack_damage modifier add potty.combat:how_even_is_this_modifier_here -0.99999 add_multiplied_total


tag @s add combat.ready