tag @s add magic.earthquake_entity
data modify entity @s Rotation set from entity @a[tag=magic.earthquake,limit=1] Rotation
tag @a remove magic.earthquake

execute at @s run tp @s ~ ~ ~ 0 0
execute as @s at @s run function potty:magic/spells/adams_hammer/earthquake/cycle


