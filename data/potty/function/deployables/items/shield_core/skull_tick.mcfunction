# tp @s ~ ~ ~ ~3 ~

scoreboard players add @s __time_since_spawn 1
execute if score @s __time_since_spawn matches 130.. run particle block{block_state:{Name:"sculk"}} ~ ~ ~ 0 0 0 0 20
execute if score @s __time_since_spawn matches 130.. run playsound item.shield.break player @a
execute if score @s __time_since_spawn matches 130.. run kill @s

# execute if score @s __time_since_spawn matches 1 run data merge entity @s {transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:{axis:[0f,1f,0f],angle:-3.13f},scale:[1.5f,1.5f,1.5f],translation:[0f,0f,0f]},start_interpolation:0,interpolation_duration:120}

