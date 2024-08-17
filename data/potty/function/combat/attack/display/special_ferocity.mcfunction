tag @s add combat.victim
execute at @s positioned ~ ~1.2 ~ summon text_display run function potty:combat/attack/display/special_ferocity_entity
tag @s remove combat.victim
