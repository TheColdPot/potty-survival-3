data merge storage potty:effects {combat_damage:{right_rotation:[1f,0f,0f,0f],scale:[1f,1f,1f],left_rotation:[1f,0f,0f,0f],translation:[0f,0f,0f]}}
execute store result storage potty:effects combat_damage.translation[0] float 0.01 run random value -75..75
execute store result storage potty:effects combat_damage.translation[1] float 0.01 run random value -10..10
execute store result storage potty:effects combat_damage.translation[2] float 0.01 run random value -75..75
data modify entity @s transformation set from storage potty:effects combat_damage
