tag @s add arc_point
scoreboard players set 10000 motion_tick 10000
data merge entity @s {data:{object:[0,0,0],target:[0,0,0]}}

execute store result entity @s data.object[0] int 1 run scoreboard players get object.0 entity_pos
execute store result entity @s data.object[1] int 1 run scoreboard players get object.1 entity_pos
execute store result entity @s data.object[2] int 1 run scoreboard players get object.2 entity_pos

execute store result entity @s data.target[0] int 1 run scoreboard players get target.0 entity_pos
execute store result entity @s data.target[1] int 1 run scoreboard players get target.1 entity_pos
execute store result entity @s data.target[2] int 1 run scoreboard players get target.2 entity_pos

summon marker ~ ~ ~ {Tags:[arc_rotation_tracker]}

function potty:utils/arc/point_tracker