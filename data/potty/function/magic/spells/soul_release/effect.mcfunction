tag @s add effect_remove_target
playsound minecraft:block.soul_sand.break player @s ~ ~ ~ 1 0.1
title @s title [{"text":"👁","color":"#BA0AF5","bold":true}]

attribute @s movement_speed modifier remove potty:magic_cast_movement_scale_2
attribute @s movement_speed modifier add potty:magic_cast_movement_scale_2 -0.6 add_multiplied_total

schedule function potty:magic/spells/soul_release/effect_clear 2t