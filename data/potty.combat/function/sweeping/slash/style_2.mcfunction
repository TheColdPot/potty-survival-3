function potty.combat:sweeping/slash/motion

execute as @s at @s anchored eyes positioned ^2 ^-2 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Tags:[arc_starter]}
execute as @s at @s anchored eyes positioned ^-2 ^2 ^2 run summon marker ~ ~ ~ {NoGravity:1b,Tags:[arc_ender]}



function potty:utils/arc/trigger

# playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1