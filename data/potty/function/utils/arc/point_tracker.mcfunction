scoreboard players add @s motion_tick 100

execute store result score object.0 entity_pos run data get entity @s data.object[0]
execute store result score object.1 entity_pos run data get entity @s data.object[1]
execute store result score object.2 entity_pos run data get entity @s data.object[2]

execute store result score target.0 entity_pos run data get entity @s data.target[0]
execute store result score target.1 entity_pos run data get entity @s data.target[1]
execute store result score target.2 entity_pos run data get entity @s data.target[2]

#p1 deal
scoreboard players operation p.0 entity_pos = target.0 entity_pos
scoreboard players operation p.1 entity_pos = target.1 entity_pos
scoreboard players operation p.2 entity_pos = target.2 entity_pos

scoreboard players operation p.0 entity_pos -= object.0 entity_pos
scoreboard players operation p.1 entity_pos -= object.1 entity_pos
scoreboard players operation p.2 entity_pos -= object.2 entity_pos

scoreboard players operation p.0 entity_pos *= @s motion_tick
scoreboard players operation p.1 entity_pos *= @s motion_tick
scoreboard players operation p.2 entity_pos *= @s motion_tick

scoreboard players operation p.0 entity_pos /= 10000 motion_tick
scoreboard players operation p.1 entity_pos /= 10000 motion_tick
scoreboard players operation p.2 entity_pos /= 10000 motion_tick

scoreboard players operation p.0 entity_pos += object.0 entity_pos
scoreboard players operation p.1 entity_pos += object.1 entity_pos
scoreboard players operation p.2 entity_pos += object.2 entity_pos

execute store result entity @s Pos[0] double 0.001 run scoreboard players get p.0 entity_pos
execute store result entity @s Pos[1] double 0.001 run scoreboard players get p.1 entity_pos
execute store result entity @s Pos[2] double 0.001 run scoreboard players get p.2 entity_pos

execute as @n[type=marker,tag=arc_rotation_tracker] at @s facing entity @n[type=marker,tag=arc_point] feet anchored eyes positioned ^ ^ ^ run function potty:utils/arc/rotation_beam

tag @e[tag=particle_target,distance=..10] remove particle_target
#execute at @s run particle soul ~ ~ ~ 0 0 0 0 1 force

execute if score @s motion_tick matches 0..9999 run function potty:utils/arc/point_tracker
execute if score @s motion_tick matches 10000.. run kill @n[type=marker,tag=arc_rotation_tracker]
execute if score @s motion_tick matches 10000.. run kill @s
