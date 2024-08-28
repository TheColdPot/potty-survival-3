function potty:utils/arc/record
execute at @s anchored eyes positioned ^ ^ ^0.001 summon marker run function potty:utils/arc/point_summon
# execute as @s at @s anchored eyes positioned ^ ^ ^0.001 summon marker run function potty:utils/arc/point_summon

tag @e[tag=touch_target,distance=..10] remove touch_target