function potty.combat:tick
# function potty:stats/sub_tick
function potty:deployables/sub_tick



function potty:magic/sub_tick

execute as @a at @s run function potty:tick_player



scoreboard players add value global_time 1
scoreboard players add #global_time var 1