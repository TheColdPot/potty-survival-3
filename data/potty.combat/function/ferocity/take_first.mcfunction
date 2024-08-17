# say take first
data modify storage potty:combat ferocity_stash set from storage potty:combat ferocity_list[0]
execute store result score crit_chance var run data get storage potty:combat ferocity_stash.crit_chance
execute store result score final_crit var run data get storage potty:combat ferocity_stash.crit
execute store result score final_uncrit var run data get storage potty:combat ferocity_stash.uncrit

# data modify entity 706f7474-7973-4872-0-3 Owner set from storage potty:combat ferocity_stash.attacker
# execute as 706f7474-7973-4872-0-3 on origin run tag @s add combat.attacker

execute store result score attacker_uid var run data get storage potty:combat ferocity_stash.attacker_uid
execute as @a if score @s uid = attacker_uid var run tag @s add combat.attacker
execute as @a[limit=1,tag=combat.attacker] at @s run tp 706f7474-7973-4872-0-3 @s

    # say @a[tag=combat.attacker]
    # tellraw @a {"nbt":"ferocity_stash","storage":"potty:combat"}

data modify entity 706f7474-7973-4872-0-3 Owner set from storage potty:combat ferocity_stash.victim

execute as 706f7474-7973-4872-0-3 on origin run damage @s 0.0 potty.combat:ferocity by @a[tag=combat.attacker,limit=1]
tag @a remove combat.attacker

# If the entity dies, the functions returns 1, instead of fail.
execute as 706f7474-7973-4872-0-3 on origin at @s if function potty.combat:ferocity/apply_damage run return fail
# For all count < 100, this works. I think this is enough!
execute if data storage potty:combat {ferocity_stash:{count:1}} run return fail
execute if data storage potty:combat {ferocity_stash:{count:0}} run return fail
execute store result storage potty:combat ferocity_stash.count int 1 run data get storage potty:combat ferocity_stash.count 0.99
return 1
