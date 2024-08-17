#召唤我们亲爱的坐骑并给坐骑安排上和玩家对应的uid
playsound block.beacon.activate player @s ~ ~ ~ 2 1

summon block_display ~ ~0.6 ~ {Tags:[new_summon,menu_chair],block_state:{Name:"minecraft:honey_block"},transformation:{scale:[0.5f,0.5f,0.5f],translation:[-0.25f,-0.5f,-0.25f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},PortalCooldown:1}

summon interaction ~ ~ ~ {Tags:[new_summon,uibase_interation],height:1.2,width:0.6,response:true}


tag @s add opening_menu

scoreboard players operation @n[type=block_display,tag=new_summon,distance=..1] uibase.uid = @s uibase.uid


ride @s mount @n[type=block_display,tag=new_summon,distance=..1]
ride @n[type=interaction,tag=new_summon,distance=..1] mount @n[type=block_display,tag=new_summon,distance=..1]

data modify entity @n[type=block_display,tag=new_summon,distance=..1] Rotation[0] set from entity @s Rotation[0]

execute on vehicle run tag @s remove new_summon
execute on vehicle on passengers if entity @s[tag=new_summon] run tag @s remove new_summon


execute on vehicle run function uibase:ui/main/0
