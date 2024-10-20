data merge entity @s {Tags:[npc_forge_item_modifier],item:{id:"white_stained_glass_pane",count:1},transformation:{scale:[0.28f,0.28f,0.18f],translation:[0.0f,2.2f,0.0f],left_rotation:{angle:0.0,axis:[1,0,0]},right_rotation:{angle:45.0,axis:[0,0,0]}},item_display:"gui",billboard:"fixed",brightness:{block:12,sky:12}}


data modify entity @s Rotation set from entity @n[type=item_display,tag=new_summon] Rotation
data modify entity @s transformation.translation set from entity @n[type=item_display,tag=new_summon] transformation.translation
scoreboard players operation @s npc_select_uid_2 = @n[type=item_display,tag=npc_item_new_summon] npc_select_uid_2

ride @s mount @n[type=block_display,tag=summon_forge]
