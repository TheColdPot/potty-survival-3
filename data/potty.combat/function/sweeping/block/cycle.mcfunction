
execute at @s run particle poof ^ ^1 ^1 ^ ^ ^1000000 0.000001 0
tp @s ~ ~ ~ ~5 ~


execute if entity @s[y_rotation=0] run kill @s
execute unless entity @s[y_rotation=0] at @s run function potty.combat:sweeping/block/cycle
