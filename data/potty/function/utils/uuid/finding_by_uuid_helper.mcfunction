data merge entity @s {Age: -2147483648, Duration: -1, WaitTime: -2147483648}
# data merge entity @s {width:0,height:0,interaction:{player:[I;0,0,0,0],timestamp:0L}}

data modify entity @s Owner set from storage potty:player uuid_to_find

scoreboard players reset has_uuid_source __number
execute on origin run scoreboard players set has_uuid_source __number 1
execute on origin run tag @s add uuid_source


kill @s
