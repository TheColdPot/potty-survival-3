tag @s add summon_mid

#重置UID排序
scoreboard players reset WorldEntity npc_select_uid

#生成文本
execute if entity @n[type=interaction,tag=target,tag=entity.talk] summon text_display run function potty.npc:option/list/talk
execute if entity @n[type=interaction,tag=target,tag=entity.forge] summon text_display run function potty.npc:option/list/forge
execute if entity @n[type=interaction,tag=target,tag=entity.fight] summon text_display run function potty.npc:option/list/fight
execute if entity @n[type=interaction,tag=target,tag=entity.leave] summon text_display run function potty.npc:option/list/leave


#后处理
tag @e[type=text_display,tag=npc_text_new_summon] remove npc_text_new_summon
tag @s remove summon_mid
