#todo: check if the gear is available (has slot?)
data merge entity @e[distance=..2,tag=anvil_attachable,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,-1f,0f,0f],scale:[0f,0f,0f],translation:[0f,.8f,0f]},interpolation_duration:0}
# say 1
item replace entity @e[limit=1,distance=..2,tag=anvil_attachable] container.0 from entity @a[tag=anvil_player,limit=1] weapon.mainhand
item modify entity @a[tag=anvil_player,limit=1] weapon.mainhand {function:"set_count",count:-1,add:true}


scoreboard players set @s animation_frame 0
