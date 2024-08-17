execute store result score @s uibase_common run data get entity @s Rotation[0]
execute on vehicle store result score temp uibase_common run data get entity @s Rotation[0]

execute store result score output uibase_common run scoreboard players operation @s uibase_common -= temp uibase_common

execute unless score output uibase_common matches ..180 run scoreboard players remove output uibase_common 360
execute unless score output uibase_common matches -180.. run scoreboard players add output uibase_common 360

#这里重置玩家看向文字的分数！
scoreboard players set @s uibase_order -1
function uibase:click/rotation/handler

tag @s add selector
execute on vehicle on passengers unless entity @s[type=player] run function uibase:click/rotation/y_rotation/aim
tag @s remove selector