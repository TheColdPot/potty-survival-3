tag @s remove uibase_set_state

execute if entity @s[tag=0.03x] run data merge entity @s {transformation:{scale:[0.03f,0.03f,0.03f]},start_interpolation:0,interpolation_duration:2}
execute if entity @s[tag=0.02x] run data merge entity @s {transformation:{scale:[0.02f,0.02f,0.02f]},start_interpolation:0,interpolation_duration:2}
