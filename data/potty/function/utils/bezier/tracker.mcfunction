scoreboard players add @s motion_tick 400

execute store result score object.0 entity_pos run data get entity @s data.object[0]
execute store result score object.1 entity_pos run data get entity @s data.object[1]
execute store result score object.2 entity_pos run data get entity @s data.object[2]

execute store result score target.0 entity_pos run data get entity @s data.target[0]
execute store result score target.1 entity_pos run data get entity @s data.target[1]
execute store result score target.2 entity_pos run data get entity @s data.target[2]

execute store result score mid.0 entity_pos run data get entity @s data.mid[0]
execute store result score mid.1 entity_pos run data get entity @s data.mid[1]
execute store result score mid.2 entity_pos run data get entity @s data.mid[2]

#p1 deal
scoreboard players operation p1.0 entity_pos = mid.0 entity_pos
scoreboard players operation p1.1 entity_pos = mid.1 entity_pos
scoreboard players operation p1.2 entity_pos = mid.2 entity_pos

scoreboard players operation p1.0 entity_pos -= object.0 entity_pos
scoreboard players operation p1.1 entity_pos -= object.1 entity_pos
scoreboard players operation p1.2 entity_pos -= object.2 entity_pos

scoreboard players operation p1.0 entity_pos *= @s motion_tick
scoreboard players operation p1.1 entity_pos *= @s motion_tick
scoreboard players operation p1.2 entity_pos *= @s motion_tick

scoreboard players operation p1.0 entity_pos /= 10000 motion_tick
scoreboard players operation p1.1 entity_pos /= 10000 motion_tick
scoreboard players operation p1.2 entity_pos /= 10000 motion_tick

scoreboard players operation p1.0 entity_pos += object.0 entity_pos
scoreboard players operation p1.1 entity_pos += object.1 entity_pos
scoreboard players operation p1.2 entity_pos += object.2 entity_pos

#p2 deal
scoreboard players operation p2.0 entity_pos = target.0 entity_pos
scoreboard players operation p2.1 entity_pos = target.1 entity_pos
scoreboard players operation p2.2 entity_pos = target.2 entity_pos

scoreboard players operation p2.0 entity_pos -= mid.0 entity_pos
scoreboard players operation p2.1 entity_pos -= mid.1 entity_pos
scoreboard players operation p2.2 entity_pos -= mid.2 entity_pos

scoreboard players operation p2.0 entity_pos *= @s motion_tick
scoreboard players operation p2.1 entity_pos *= @s motion_tick
scoreboard players operation p2.2 entity_pos *= @s motion_tick

scoreboard players operation p2.0 entity_pos /= 10000 motion_tick
scoreboard players operation p2.1 entity_pos /= 10000 motion_tick
scoreboard players operation p2.2 entity_pos /= 10000 motion_tick

scoreboard players operation p2.0 entity_pos += mid.0 entity_pos
scoreboard players operation p2.1 entity_pos += mid.1 entity_pos
scoreboard players operation p2.2 entity_pos += mid.2 entity_pos

#p deal
scoreboard players operation p.0 entity_pos = p2.0 entity_pos
scoreboard players operation p.1 entity_pos = p2.1 entity_pos
scoreboard players operation p.2 entity_pos = p2.2 entity_pos

scoreboard players operation p.0 entity_pos -= p1.0 entity_pos
scoreboard players operation p.1 entity_pos -= p1.1 entity_pos
scoreboard players operation p.2 entity_pos -= p1.2 entity_pos

scoreboard players operation p.0 entity_pos *= @s motion_tick
scoreboard players operation p.1 entity_pos *= @s motion_tick
scoreboard players operation p.2 entity_pos *= @s motion_tick

scoreboard players operation p.0 entity_pos /= 10000 motion_tick
scoreboard players operation p.1 entity_pos /= 10000 motion_tick
scoreboard players operation p.2 entity_pos /= 10000 motion_tick

scoreboard players operation p.0 entity_pos += p1.0 entity_pos
scoreboard players operation p.1 entity_pos += p1.1 entity_pos
scoreboard players operation p.2 entity_pos += p1.2 entity_pos

execute store result entity @s Pos[0] double 0.001 run scoreboard players get p.0 entity_pos
execute store result entity @s Pos[1] double 0.001 run scoreboard players get p.1 entity_pos
execute store result entity @s Pos[2] double 0.001 run scoreboard players get p.2 entity_pos

execute at @s run playsound minecraft:entity.bee.pollinate player @a ~ ~ ~ 2 1
execute at @s run particle minecraft:dust{color:[1,0,1],scale:1} ~ ~ ~ 0 0 0 0 1 force
#execute at @s run particle soul ~ ~ ~ 0 0 0 0 1 force

execute if score @s motion_tick matches 0..9999 run schedule function potty:utils/bezier/sustain 1t
execute if score @s motion_tick matches 10000.. run playsound minecraft:entity.item.pickup player @a ~ ~ ~ 1 0.1
execute if score @s motion_tick matches 10000.. run particle minecraft:witch ~ ~ ~ 0 0 0 0.5 10
execute if score @s motion_tick matches 10000.. run kill @s
