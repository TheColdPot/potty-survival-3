execute as @s[distance=..6] unless block ~ ~ ~ air align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=speeduse2,distance=..0.5] run summon armor_stand ~ ~ ~ {Tags:[speeduse2],Small:1,NoGravity:1,Invisible:1,Marker:1}

execute as @s[distance=..6] unless block ~ ~ ~ air run function example_pack:setup/canset/gwool/5

execute as @s[distance=..6] if block ~ ~ ~ air positioned ^ ^ ^0.005 anchored feet run function example_pack:setup/canset/gwool/4