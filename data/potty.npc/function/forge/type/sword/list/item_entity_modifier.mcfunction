data merge entity @s {Tags:[npc_forge_item_modifier],item:{id:"gray_stained_glass_pane",count:1},transformation:{scale:[0.28f,0.28f,0.18f],translation:[0.0f,2.5f,0.0f],left_rotation:{angle:0.0,axis:[1,0,0]},right_rotation:{angle:45.0,axis:[0,0,0]}},item_display:"gui",billboard:"fixed",brightness:{block:12,sky:12}}

#execute if score @n[type=item_display,tag=new_summon] npc_gear_quality matches 2 run data modify entity @s item.id set value "lime_stained_glass_pane"
#execute if score @n[type=item_display,tag=new_summon] npc_gear_quality matches 3 run data modify entity @s item.id set value "blue_stained_glass_pane"
#execute if score @n[type=item_display,tag=new_summon] npc_gear_quality matches 4 run data modify entity @s item.id set value "purple_stained_glass_pane"
#execute if score @n[type=item_display,tag=new_summon] npc_gear_quality matches 5 run data modify entity @s item.id set value "orange_stained_glass_pane"

data modify entity @s Rotation set from entity @n[type=item_display,tag=new_summon] Rotation
data modify entity @s transformation.translation set from entity @n[type=item_display,tag=new_summon] transformation.translation
scoreboard players operation @s npc_select_uid_2 = @n[type=item_display,tag=npc_item_new_summon] npc_select_uid_2

ride @s mount @n[type=block_display,tag=summon_forge]
