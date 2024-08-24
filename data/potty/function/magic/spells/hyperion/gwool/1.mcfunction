execute as @a[advancements={example_pack:place_wool=true}] at @s anchored eyes run function example_pack:setup/canset/gwool/2
execute as @e[tag=speeduse] at @s run fill ~ ~ ~ ~ ~ ~ white_wool replace air
kill @e[tag=speeduse]
kill @e[tag=speeduse2]