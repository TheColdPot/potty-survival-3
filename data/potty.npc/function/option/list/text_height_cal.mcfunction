execute if score WorldEntity npc_count matches 1.. store result entity @s transformation.translation[1] float 0.001 run scoreboard players operation @s npc_count -= height_minus npc_count
scoreboard players remove WorldEntity npc_count 1
execute unless score WorldEntity npc_count matches 1.. run scoreboard players reset WorldEntity npc_count

execute if score WorldEntity npc_count matches 1.. run function potty.npc:option/list/text_height_cal