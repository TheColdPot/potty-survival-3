# say SNEAK worn off
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0.5

attribute @s generic.movement_speed modifier remove potty:magic_cast_movement_scale_1
attribute @s generic.movement_speed modifier remove potty:magic_cast_movement_scale_2

scoreboard players set @s wand_sneak_time 0
