data merge entity @s {NoGravity:1b,Tags:[arc_part,arc_starter]}

execute store result score mid.0 entity_pos run data get entity @s Pos[0] 1000
execute store result score mid.1 entity_pos run data get entity @s Pos[1] 1000
execute store result score mid.2 entity_pos run data get entity @s Pos[2] 1000

execute store result entity @s Pos[0] double 0.001 run scoreboard players operation mid.0 entity_pos += p.0 entity_pos
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation mid.1 entity_pos += p.1 entity_pos
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation mid.2 entity_pos += p.2 entity_pos

