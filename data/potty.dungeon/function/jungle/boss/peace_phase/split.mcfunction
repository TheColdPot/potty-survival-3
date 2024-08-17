function potty.dungeon:jungle/dialog/split
execute store result entity @s attributes[{id:"minecraft:generic.scale"}].base float 0.75 run attribute @s generic.scale base get
summon minecraft:bogged ~ ~ ~ {Motion:[+1d,1d,0d],CustomName:'"Slime Skeleton"',sheared:1b,Tags:[new_summon]}
summon minecraft:bogged ~ ~ ~ {Motion:[-1d,1d,0d],CustomName:'"Slime Skeleton"',sheared:1b,Tags:[new_summon]}
summon minecraft:bogged ~ ~ ~ {Motion:[0d,1d,+1d],CustomName:'"Slime Skeleton"',sheared:1b,Tags:[new_summon]}
summon minecraft:bogged ~ ~ ~ {Motion:[0d,1d,-1d],CustomName:'"Slime Skeleton"',sheared:1b,Tags:[new_summon]}
summon minecraft:zombie ~ ~ ~ {Motion:[+.5d,1d,0d],CustomName:'"Slime Zombie"',Tags:[new_summon]}
summon minecraft:zombie ~ ~ ~ {Motion:[-.5d,1d,0d],CustomName:'"Slime Zombie"',Tags:[new_summon]}
summon minecraft:zombie ~ ~ ~ {Motion:[0d,1d,+.5d],CustomName:'"Slime Zombie"',Tags:[new_summon]}
summon minecraft:zombie ~ ~ ~ {Motion:[0d,1d,-.5d],CustomName:'"Slime Zombie"',Tags:[new_summon]}
execute as @e[type=bogged,limit=4,tag=new_summon,distance=..5] run function potty.dungeon:jungle/boss/peace_phase/split.bogged
execute as @e[type=zombie,limit=4,tag=new_summon,distance=..5] run function potty.dungeon:jungle/boss/peace_phase/split.bogged