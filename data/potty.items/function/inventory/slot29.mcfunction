
######################################################
# This file is auto-generated. Do NOT edit manually. #
######################################################

item replace entity 706f7474-7973-4872-0000-adc200000001 container.0 from entity @s container.29
    data modify storage potty:item target set from entity 706f7474-7973-4872-0000-adc200000001 item
    execute at @s as 706f7474-7973-4872-0000-adc200000001 run function potty.items:process/start
    item replace entity @s container.29 from entity 706f7474-7973-4872-0000-adc200000001 container.0