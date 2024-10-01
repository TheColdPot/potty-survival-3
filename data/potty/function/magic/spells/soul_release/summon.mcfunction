#mid entity pos setting
scoreboard players operation mid.0 entity_pos = object.0 entity_pos
scoreboard players operation mid.1 entity_pos = object.1 entity_pos
scoreboard players operation mid.2 entity_pos = object.2 entity_pos

scoreboard players operation mid.0 entity_pos += target.0 entity_pos
scoreboard players operation mid.1 entity_pos += target.1 entity_pos
scoreboard players operation mid.2 entity_pos += target.2 entity_pos

scoreboard players set 2 entity_pos 2
scoreboard players operation mid.0 entity_pos /= 2 entity_pos
scoreboard players operation mid.1 entity_pos /= 2 entity_pos
scoreboard players operation mid.2 entity_pos /= 2 entity_pos


#spread
execute store result score random entity_pos run random value -10000..10000
scoreboard players operation mid.0 entity_pos += random entity_pos
execute store result score random entity_pos run random value -10000..10000
scoreboard players operation mid.1 entity_pos += random entity_pos
execute store result score random entity_pos run random value -10000..10000
scoreboard players operation mid.2 entity_pos += random entity_pos

execute store result entity @s Pos[0] double 0.001 run scoreboard players get mid.0 entity_pos
execute store result entity @s Pos[1] double 0.001 run scoreboard players get mid.1 entity_pos
execute store result entity @s Pos[2] double 0.001 run scoreboard players get mid.2 entity_pos

execute store result score mid.0 entity_pos run data get entity @s Pos[0] 1000
execute store result score mid.1 entity_pos run data get entity @s Pos[1] 1000
execute store result score mid.2 entity_pos run data get entity @s Pos[2] 1000

kill @s