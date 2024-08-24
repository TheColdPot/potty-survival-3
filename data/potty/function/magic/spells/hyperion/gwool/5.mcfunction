execute as @e[tag=speeduse,tag=!speed_exe] at @s run function example_pack:setup/canset/gwool/set

execute if entity @e[tag=speed_exe] run function example_pack:setup/canset/gwool/exe_test
