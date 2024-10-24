scoreboard players add @s wand_sneak_time 1

attribute @s movement_speed modifier remove potty:magic_cast_movement_scale_1
attribute @s movement_speed modifier add potty:magic_cast_movement_scale_2 -0.6 add_multiplied_total

execute store result storage potty:effects cast_fov_zoom double -0.012 run scoreboard players get @s wand_sneak_time

function potty:magic/apply_fov_zoom with storage potty:effects

# particle enchant ~ ~1 ~ 0 0 0 1 1
