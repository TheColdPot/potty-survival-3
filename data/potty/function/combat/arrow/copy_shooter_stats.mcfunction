 #alias entity pr @e[tag=combat.processing_arrow,limit=1]

scoreboard players operation @e[tag=combat.processing_arrow,limit=1] final_crit_damage = @s final_crit_damage
scoreboard players operation @e[tag=combat.processing_arrow,limit=1] final_damage = @s final_damage
scoreboard players operation @e[tag=combat.processing_arrow,limit=1] crit_chance = @s crit_chance
# scoreboard players operation @e[tag=combat.processing_arrow,limit=1] ferocity_count = @s ferocity_count
