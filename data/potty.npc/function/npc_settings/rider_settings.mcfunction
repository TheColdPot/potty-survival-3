#添加NBT
data merge entity @s {Tags:[new_summon,npc_interact_chair],block_state:{Name:"minecraft:spruce_slab"},transformation:{scale:[0.8f,0.8f,0.8f],translation:[-0.4f,-0.4f,-0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},PortalCooldown:1}
scoreboard players operation @s npc_interact_uid = @n[type=interaction,tag=target] npc_interact_uid

#位置，视角矫正
execute at @n[type=interaction,tag=target] run tp @s ^ ^ ^2
execute at @s facing entity @n[type=interaction,tag=target] feet run tp @s ~ ~ ~ ~ ~

#生成交互实体用于玩家点击检测
execute summon interaction run function potty.npc:npc_settings/interaction_for_click

#玩家骑乘
ride @p[tag=new_player_target] mount @s


#列表显示处理
function potty.npc:option/list

#后处理
tag @s remove new_summon