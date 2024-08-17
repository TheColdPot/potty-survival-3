tag @s add magic.beam_entity
data modify entity @s Rotation set from entity @a[tag=magic.beam_shooter,limit=1] Rotation
tag @a remove magic.beam_shooter

execute at @s run tp @s ~ ~ ~ ~-90 ~90
execute as @s at @s run function potty:magic/spells/precursor_staff/beam/cycle


