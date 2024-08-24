data merge entity @s {Tags:[mandrake,dungeon_mob],IsBaby:1,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",components:{"minecraft:dyed_color":611340,"minecraft:unbreakable":{}}}],ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"empty"}
summon block_display ~ ~ ~ {Tags:[mandrake.leaf,new_summon],block_state:{Name:"minecraft:mangrove_propagule"},transformation:{scale:[1.0f,1.0f,1.0f],translation:[-0.5f,0.0f,-0.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}

ride @n[tag=mandrake.leaf,tag=new_summon] mount @s
tag @e[tag=new_summon] remove new_summon

# WAIT HOLD ON...
# data merge entity @s {CustomName:'"Mandrake"',DeathLootTable:"empty",sheared:true,Tags:[dungeon_mob]}
# scoreboard players set @s max_health 2000000
# scoreboard players set @s final_damage 2000
# function potty:combat/mobs/setup


