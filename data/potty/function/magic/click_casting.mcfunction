# execute at @s run particle enchant ~ ~1 ~ 0 0 0 1 1

scoreboard players add @s wand_cast_time 1
attribute @s generic.movement_speed modifier remove potty:magic_cast_movement_scale_1

execute store result storage potty:effects cast_fov_zoom double -0.016 run scoreboard players get @s wand_cast_time

function potty:magic/apply_fov_zoom with storage potty:effects
attribute @s generic.movement_speed modifier add potty:magic_cast_movement_scale_2 -0.6 add_multiplied_total


scoreboard players operation @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{wand:1b}}}}] wand_cast_time < @s max_wand_cast_time

execute if score @s wand_cast_time = @s max_wand_cast_time if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{spells:{right_click:{release_on_full_cast:1b}}}}}} run function potty:magic/end_click_casting

