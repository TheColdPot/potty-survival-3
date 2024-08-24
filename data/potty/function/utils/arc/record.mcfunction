execute store result score object.0 entity_pos run data get entity @n[tag=arc_starter] Pos[0] 1000
execute store result score object.1 entity_pos run data get entity @n[tag=arc_starter] Pos[1] 1000
execute store result score object.2 entity_pos run data get entity @n[tag=arc_starter] Pos[2] 1000

execute store result score target.0 entity_pos run data get entity @n[tag=arc_ender] Pos[0] 1000
execute store result score target.1 entity_pos run data get entity @n[tag=arc_ender] Pos[1] 1000
execute store result score target.2 entity_pos run data get entity @n[tag=arc_ender] Pos[2] 1000


kill @n[tag=arc_starter]
kill @n[tag=arc_ender]

