execute store result score object.0 entity_pos run data get entity @n[tag=bezier_summoner] Pos[0] 1000
execute store result score object.1 entity_pos run data get entity @n[tag=bezier_summoner] Pos[1] 1000
execute store result score object.2 entity_pos run data get entity @n[tag=bezier_summoner] Pos[2] 1000

execute store result score target.0 entity_pos run data get entity @n[tag=track_target] Pos[0] 1000
execute store result score target.1 entity_pos run data get entity @n[tag=track_target] Pos[1] 1000
execute store result score target.2 entity_pos run data get entity @n[tag=track_target] Pos[2] 1000


tag @n[tag=bezier_summoner] remove bezier_summoner
tag @n[tag=track_target] remove track_target

