
execute at @s run particle minecraft:dust{color:[1.0,1.0,1.0],scale:0.5} ^ ^ ^0.6 0 0 0 0 0
tp @s ~ ~ ~ ~ ~-1.5

execute if entity @s[x_rotation=-90,tag=magic.beam_entity] run tag @s add magic.beam_entity_2
execute if entity @s[tag=magic.beam_entity_2,tag=magic.beam_entity] run tp @s ~ ~ ~ ~180 90
execute if entity @s[tag=magic.beam_entity_2,tag=magic.beam_entity] run tag @s remove magic.beam_entity


execute if entity @s[x_rotation=-90,tag=magic.beam_entity_2] run kill @s
execute unless entity @s[x_rotation=-90] at @s run function potty:magic/spells/precursor_staff/beam/cycle
