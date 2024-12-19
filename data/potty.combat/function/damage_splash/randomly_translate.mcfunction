# data modify storage potty:combat transformation set value {right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}
# execute store result storage potty:combat transformation.translation[0] float 0.001 run random value -1000..1000
# execute store result storage potty:combat transformation.translation[1] float 0.001 run random value -1000..1000
# execute store result storage potty:combat transformation.translation[2] float 0.001 run random value -400..400
# data modify entity @s transformation set from storage potty:combat transformation
data merge entity @s {background:0,view_range:.2f}

data modify storage potty:combat translation set value {x:0f, y:0f, z:0f}
execute store result storage potty:combat translation.x float .001 run random value -1000..1000
execute store result storage potty:combat translation.y float .001 run random value -400..400
execute store result storage potty:combat translation.z float .001 run random value -1000..1000

function potty.combat:damage_splash/randomly_translate.macro with storage potty:combat translation

tag @s add combat.tick
tag @s add combat.damage_splash