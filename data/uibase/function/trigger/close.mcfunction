#杀死可怜的小坐骑并让玩家回到关闭菜单的状态; ;
playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 1 1

execute on vehicle on passengers unless entity @s[type=player] run kill @s
execute on vehicle run kill @s

tag @s remove opening_menu