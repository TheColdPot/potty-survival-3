
execute at @s run particle minecraft:end_rod ^ ^ ^8 ^ ^ ^-20000000 0.0000001 0
tp @s ~ ~ ~ ~1 ~


execute if entity @s[y_rotation=0] run kill @s
execute unless entity @s[y_rotation=0] at @s run function potty:magic/spells/adams_hammer/earthquake/cycle
