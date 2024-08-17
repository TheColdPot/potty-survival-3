execute unless data storage potty:combat scheduled_ferocity run data merge storage potty:combat {scheduled_ferocity:[]}
data modify storage potty:combat temp set value {attacker:[I;0,0,0,0],target:[I;0,0,0,0],normal_damage:0,crit_damage:0,crit_chance:0,count:0,identifier:0}

execute store result storage potty:combat temp.normal_damage long 1 run scoreboard players get @s final_damage
execute store result storage potty:combat temp.crit_damage long 1 run scoreboard players get @s final_crit_damage
execute store result storage potty:combat temp.crit_chance long 1 run scoreboard players get @s crit_chance
execute store result storage potty:combat temp.identifier int 1 run random value -114514..1919810
execute store result storage potty:combat temp.count int 1 run scoreboard players get @s ferocity_count
data modify storage potty:combat temp.attacker set from entity @s UUID
data modify storage potty:combat temp.target set from entity @e[tag=combat.victim,limit=1] UUID
data modify storage potty:combat scheduled_ferocity append from storage potty:combat temp

# tellraw TheColdPot {"nbt":"scheduled_ferocity","storage":"potty:combat"}
# tellraw TheColdPot {"nbt":"temp","storage":"potty:combat"}
# scoreboard players operation @e[tag=combat.victim,limit=1] scheduled_ferocity_count += @s ferocity_count

data remove storage potty:combat temp

# say 1