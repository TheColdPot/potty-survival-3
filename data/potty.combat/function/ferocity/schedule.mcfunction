# function potty.combat:ferocity/count

data modify storage potty:combat ferocity_stash set value {}
execute store result storage potty:combat ferocity_stash.crit int 1 run scoreboard players get final_crit var
execute store result storage potty:combat ferocity_stash.uncrit int 1 run scoreboard players get final_uncrit var
execute store result storage potty:combat ferocity_stash.crit_chance int 1 run scoreboard players get crit_chance var
execute store result storage potty:combat ferocity_stash.count int 1 run scoreboard players get #extra_hit_count var
execute store result storage potty:combat ferocity_stash.attacker_uid int 1 run scoreboard players get @a[tag=combat.attacker,limit=1] uid
data modify storage potty:combat ferocity_stash.victim set from entity @s UUID

data modify storage potty:combat ferocity_list append from storage potty:combat ferocity_stash
