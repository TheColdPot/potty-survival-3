

#原指向物品实体恢复
execute on vehicle on passengers if entity @s[type=item_display,tag=npc_display_remove_target] run function potty.npc:selector/highlight_remove

#title @a title [{"score": {"name": "output","objective": "npc_count"}}]
#原指向文本恢复与玩家指向判定
execute on vehicle on passengers if entity @s[type=text_display,tag=npc_select_enable] run data merge entity @s {background:-1435011209}
execute if score output npc_count matches -59..-23 run function potty.npc:selector/text_rotate/select
execute if score output npc_count matches -71..-61 run function potty.npc:selector/icon_rotate/select
execute if score output npc_count matches -106..-74 run function potty.npc:selector/gear_rotate/further_select

#give @p minecraft:wooden_sword[minecraft:custom_name='[{"text":"珠帘桃木剑","color":"gray","italic":false}]',minecraft:lore=['[""]','[{"text":"🗡 攻击 ","color":"gray","italic":false},{"text":"[10]","color":"white","italic":false}]','[{"text":"⚔ 暴击伤害 ","color":"gray","italic":false},{"text":"[5]","color":"white","italic":false}]','[""]','[{"text":"独","color":"#fda900","italic":false},{"text":"门","color":"#feb71a","italic":false},{"text":"妙","color":"#fec435","italic":false},{"text":"用","color":"#ffd24f","italic":false}]','[{"text":"连续击中敌人可少许增加暴击率。","color":"gray","italic":false}]']]