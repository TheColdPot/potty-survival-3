execute on origin if entity @s[type=!player] run return fail

tag @s add combat.processing_arrow

execute on origin if entity @s[type=player] run tag @e[type=arrow,tag=combat.processing_arrow,limit=1] add combat.player_projectile

execute on origin run function potty:combat/arrow/copy_shooter_stats
# A real marker CANNOT be an attacker.
execute summon armor_stand run function potty:combat/arrow/marker_entity

tag @s remove combat.processing_arrow

