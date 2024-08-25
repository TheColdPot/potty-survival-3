## remove tags
tag @s remove combat.fell
tag @s remove combat.out_of_world


## applying ticks for other entities
execute as @e[distance=..96,type=!#potty.combat:combat_exclusion] at @s run function potty.combat:tick.mob
execute as @e[type=text_display,tag=combat.tick,distance=..32] at @s run function potty.combat:tick.text_display
execute as @e[type=arrow,distance=..10] at @s run function potty.combat:player_attack/arrow/tick.arrow
execute as @e[type=marker,distance=..5,tag=combat.arrow_marker] unless function potty.combat:health_bar/has_vehicle run kill

## next available attack countdown
execute if score @s attack_countdown matches 1.. run scoreboard players remove @s attack_countdown 1
attribute @s[scores={attack_countdown=..0}] generic.attack_damage modifier remove potty.combat:attack_cooldown

## fuck!
attribute @s generic.armor modifier add potty.combat:remove_armor -114514 add_value
attribute @s generic.armor_toughness modifier add potty.combat:remove_armor 114514 add_value
attribute @s generic.attack_damage modifier add potty.combat:remove_damage -0.9999 add_multiplied_total
attribute @s generic.attack_damage base set 0
attribute @s generic.attack_damage modifier remove minecraft:base_attack_damage
attribute @s generic.fall_damage_multiplier base set 0

# execute as @e[type=text_disptag=combat.damage_splash] run function potty.combat:damage_splash/tick.damage_splash
# execute as @e[type=text_disptag=combat.health_bar] run function potty.combat:health_bar/tick.health_bar

# tag @e[distance=..8] add combat.tick

# execute if entity @s[tag=combat.current_tick_attacked] run say 1
tag @s remove combat.current_tick_attacked

scoreboard players add @s combat_timer 1
execute if score @s combat_timer matches 20.. run function potty.combat:player_health/regenerate

