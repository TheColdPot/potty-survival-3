execute store result score @s npc_count run data get entity @s Rotation[0]
execute on vehicle store result score WorldEntity npc_count run data get entity @s Rotation[0]

execute store result score output npc_count run scoreboard players operation @s npc_count -= WorldEntity npc_count

execute unless score output npc_count matches ..180 run scoreboard players remove output npc_count 360
execute unless score output npc_count matches -180.. run scoreboard players add output npc_count 360

#以玩家为执行者的指向与点击处理
tag @s add selector
function potty.npc:selector/handler
tag @s remove selector

#骑乘者交互实体的交互数据清除
execute on vehicle on passengers if data entity @s[type=interaction] attack run data remove entity @s attack