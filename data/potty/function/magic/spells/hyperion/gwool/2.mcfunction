execute as @s[distance=..6] if block ~ ~ ~ white_wool align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=speeduse,distance=..0.5] run summon armor_stand ~ ~ ~ {Tags:[speeduse],Small:1,NoGravity:1,Invisible:1,Marker:1}


execute as @s[distance=..6] unless block ~ ~ ~ white_wool positioned ^ ^ ^0.05 anchored feet run function example_pack:setup/canset/gwool/2


execute as @s[distance=..6] if block ~ ~ ~ white_wool at @e[tag=speeduse] run function example_pack:setup/canset/gwool/3
