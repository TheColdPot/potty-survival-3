scoreboard players add @s animation_frame 1

# execute if score @s animation_frame matches 1..10 run particle block{block_state:{Name:"iron_block"}} ~ ~2 ~ 0.0 0.0 0.0 0 10
execute if score @s animation_frame matches 5 run function potty.items:anvil/attach/trail_particle

# execute if score @s animation_frame matches 1 run playsound block.anvil.place block @a
execute if score @s animation_frame matches 1 run playsound block.beacon.activate block @a
execute if score @s animation_frame matches 2 run data merge entity @e[distance=..2,tag=anvil_attachable,limit=1] {transformation:{right_rotation:[0f,0f,0f,1f],scale:[.8f,.8f,.8f]},interpolation_duration:5,start_interpolation:0}
execute if score @s animation_frame matches 15 run data merge entity @e[distance=..2,tag=anvil_attachable,limit=1] {transformation:{right_rotation:[0f,1f,0f,0f],scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[-.7071f,0f,0f,-.7071f]},interpolation_duration:25,start_interpolation:0}

execute if score @s animation_frame matches 40 run particle block{block_state:{Name:"iron_block"}} ~ ~1 ~ 0 0 0 0 20
execute if score @s animation_frame matches 40 run playsound entity.ender_eye.death block @a
# execute if score @s animation_frame matches 40 run playsound minecraft:block.anvil.use block @a


execute if score @s animation_frame matches 45.. run scoreboard players reset @s animation_frame