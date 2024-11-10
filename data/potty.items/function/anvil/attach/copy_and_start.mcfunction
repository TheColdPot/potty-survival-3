scoreboard players set #attachment_slots var 0
execute store result score #attachment_slots var run data get entity @n[distance=..2,tag=anvil_item] item.components."minecraft:custom_data".attachment_slots
scoreboard players set #occupied_attachment_slots var 0
execute store result score #occupied_attachment_slots var run data get entity @n[distance=..2,tag=anvil_item] item.components."minecraft:custom_data".occupied_attachment_slots
execute unless score #attachment_slots var > #occupied_attachment_slots var run return run tellraw @a[tag=anvil_player,limit=1] "No slots!"
scoreboard players reset #occupied_attachment_slots var
scoreboard players reset #attachment_slots var

#todo: check if the gear is available (has slot?)
data merge entity @e[distance=..2,tag=anvil_attachable,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,-1f,0f,0f],scale:[0f,0f,0f],translation:[0f,.8f,0f]},interpolation_duration:0}
# say 1
item replace entity @n[distance=..2,tag=anvil_attachable] container.0 from entity @a[tag=anvil_player,limit=1] weapon.mainhand
item modify entity @a[tag=anvil_player,limit=1] weapon.mainhand {function:"set_count",count:-1,add:true}


scoreboard players set @s animation_frame 0
