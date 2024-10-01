tag @s add block.wave_shooter

execute as @s at @s anchored feet positioned ~ ~ ~ summon minecraft:marker run function potty.combat:sweeping/block/precusor
execute as @e[tag=!block.wave_shooter,type=!#potty:ignore_combat,distance=..4] run damage @s 1 player_attack by @n[tag=block.wave_shooter,distance=..1]
tag @s remove block.wave_shooter