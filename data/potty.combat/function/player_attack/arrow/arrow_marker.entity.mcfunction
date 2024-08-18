scoreboard players operation @s var = arrow_uid var
scoreboard players operation @s crit_chance = #crit_chance var
scoreboard players operation @s final_crit = #final_crit var
scoreboard players operation @s final_uncrit = #final_uncrit var
# Still confusing... idc
scoreboard players operation @s ferocity = source_ferocity var
data modify entity @s data.origin set from entity @s UUID

ride @s mount @e[type=arrow,limit=1,distance=..1]

tag @s add combat.arrow_marker