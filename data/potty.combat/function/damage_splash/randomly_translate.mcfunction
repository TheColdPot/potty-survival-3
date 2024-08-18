data modify storage potty:combat transformation set value {right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}
execute store result storage potty:combat transformation.translation[0] float 0.001 run random value -1000..1000
execute store result storage potty:combat transformation.translation[1] float 0.001 run random value -1000..1000
execute store result storage potty:combat transformation.translation[2] float 0.001 run random value -400..400
data modify entity @s transformation set from storage potty:combat transformation
data merge entity @s {background:0,view_range:.2f}

tag @s add combat.tick
tag @s add combat.damage_splash