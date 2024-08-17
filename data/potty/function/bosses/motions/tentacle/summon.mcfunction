summon minecraft:block_display ~ ~ ~ {Tags:[boss.tentacle_part_1,new_summon],block_state:{Name:"minecraft:spruce_wood"},transformation:{scale:[2.0f,2.0f,2.0f],translation:[-0.5f,-0.5f,-0.5f],left_rotation:[1f,0f,0f,0f],right_rotation:[1f,0f,0f,0f]},teleport_duration:1}
summon minecraft:block_display ~ ~ ~ {Tags:[boss.tentacle_part_2,new_summon],block_state:{Name:"minecraft:spruce_wood"},transformation:{scale:[1.8f,1.8f,1.8f],translation:[-0.5f,-0.5f,-0.5f],left_rotation:[1f,0f,0f,0f],right_rotation:[1f,0f,0f,0f]},teleport_duration:2}
summon minecraft:block_display ~ ~ ~ {Tags:[boss.tentacle_part_3,new_summon],block_state:{Name:"minecraft:spruce_wood"},transformation:{scale:[1.6f,1.6f,1.6f],translation:[-0.5f,-0.5f,-0.5f],left_rotation:[1f,0f,0f,0f],right_rotation:[1f,0f,0f,0f]},teleport_duration:3}
summon minecraft:block_display ~ ~ ~ {Tags:[boss.tentacle_part_4,new_summon],block_state:{Name:"minecraft:spruce_wood"},transformation:{scale:[1.4f,1.4f,1.4f],translation:[-0.5f,-0.5f,-0.5f],left_rotation:[1f,0f,0f,0f],right_rotation:[1f,0f,0f,0f]},teleport_duration:4}
summon minecraft:block_display ~ ~ ~ {Tags:[boss.tentacle_part_5,new_summon],block_state:{Name:"minecraft:spruce_wood"},transformation:{scale:[1.2f,1.2f,1.2f],translation:[-0.5f,-0.5f,-0.5f],left_rotation:[1f,0f,0f,0f],right_rotation:[1f,0f,0f,0f]},teleport_duration:5}

summon minecraft:block_display ~ ~ ~ {Tags:[boss.tentacle_part_6,new_summon],block_state:{Name:"minecraft:spruce_wood"},transformation:{scale:[1.0f,1.0f,1.0f],translation:[-0.5f,-0.5f,-0.5f],left_rotation:[1f,0f,0f,0f],right_rotation:[1f,0f,0f,0f]},teleport_duration:6}
summon minecraft:block_display ~ ~ ~ {Tags:[boss.tentacle_part_7,new_summon],block_state:{Name:"minecraft:spruce_wood"},transformation:{scale:[0.8f,0.8f,0.8f],translation:[-0.5f,-0.5f,-0.5f],left_rotation:[1f,0f,0f,0f],right_rotation:[1f,0f,0f,0f]},teleport_duration:7}
summon minecraft:block_display ~ ~ ~ {Tags:[boss.tentacle_part_8,new_summon],block_state:{Name:"minecraft:spruce_wood"},transformation:{scale:[0.6f,0.6f,0.6f],translation:[-0.5f,-0.5f,-0.5f],left_rotation:[1f,0f,0f,0f],right_rotation:[1f,0f,0f,0f]},teleport_duration:8}
summon minecraft:block_display ~ ~ ~ {Tags:[boss.tentacle_part_9,new_summon],block_state:{Name:"minecraft:spruce_wood"},transformation:{scale:[0.4f,0.4f,0.4f],translation:[-0.5f,-0.5f,-0.5f],left_rotation:[1f,0f,0f,0f],right_rotation:[1f,0f,0f,0f]},teleport_duration:9}
summon minecraft:block_display ~ ~ ~ {Tags:[boss.tentacle_part_10,new_summon],block_state:{Name:"minecraft:spruce_wood"},transformation:{scale:[0.2f,0.2f,0.2f],translation:[-0.5f,-0.5f,-0.5f],left_rotation:[1f,0f,0f,0f],right_rotation:[1f,0f,0f,0f]},teleport_duration:10}

scoreboard players add overall __entity_group_id 1
execute as @e[tag=new_summon] run scoreboard players operation @s __entity_group_id = overall __entity_group_id

tag @e[tag=new_summon] remove new_summon

