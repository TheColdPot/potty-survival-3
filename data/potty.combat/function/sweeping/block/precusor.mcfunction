data modify entity @s Rotation set from entity @a[tag=block.wave_shooter,limit=1] Rotation

execute at @s run tp @s ~ ~ ~ 0 0
execute as @s at @s run function potty.combat:sweeping/block/cycle


