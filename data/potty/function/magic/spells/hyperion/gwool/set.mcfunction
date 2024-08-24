execute if entity @s[x=81,y=63,z=-4,dx=10,dy=5,dz=8] run kill @s
execute if entity @s[x=-4,y=63,z=81,dx=8,dy=5,dz=10] run kill @s
execute if entity @s[x=-91,y=63,z=-4,dx=10,dy=5,dz=8] run kill @s
execute if entity @s[x=-4,y=63,z=-91,dx=8,dy=5,dz=10] run kill @s
execute if entity @s[x=-100,y=112,z=-100,dx=200,dy=6,dz=200] run kill @s
execute if entity @s[x=-100,y=0,z=-100,dx=200,dy=49,dz=200] run kill @s

execute run tp @s ~ ~ ~ facing entity @e[tag=speeduse2,sort=nearest,limit=1]

execute run kill @e[tag=speeduse2,sort=nearest,distance=..2]

execute if entity @s[x_rotation=-1..1,y_rotation=-46..45,tag=!n_Ro,tag=!e_Ro,tag=!s_Ro,tag=!w_Ro,tag=!u_Ro,tag=!d_Ro] run tag @s add n_Ro

execute if entity @s[x_rotation=-1..1,y_rotation=46..135,tag=!n_Ro,tag=!e_Ro,tag=!s_Ro,tag=!w_Ro,tag=!u_Ro,tag=!d_Ro] run tag @s add e_Ro

execute if entity @s[x_rotation=-1..1,y_rotation=136..-135,tag=!n_Ro,tag=!e_Ro,tag=!s_Ro,tag=!w_Ro,tag=!u_Ro,tag=!d_Ro] run tag @s add s_Ro

execute if entity @s[x_rotation=-1..1,y_rotation=-136..-45,tag=!n_Ro,tag=!e_Ro,tag=!s_Ro,tag=!w_Ro,tag=!u_Ro,tag=!d_Ro] run tag @s add w_Ro

execute if entity @s[x_rotation=80..90,y_rotation=-90,tag=!n_Ro,tag=!e_Ro,tag=!s_Ro,tag=!w_Ro,tag=!u_Ro,tag=!d_Ro] run tag @s add u_Ro

execute if entity @s[x_rotation=-90..-80,y_rotation=-90,tag=!n_Ro,tag=!e_Ro,tag=!s_Ro,tag=!w_Ro,tag=!u_Ro,tag=!d_Ro] run tag @s add d_Ro

execute if entity @s[tag=n_Ro] run data modify entity @s Rotation set value [180.0f,0.0f]

execute if entity @s[tag=e_Ro] run data modify entity @s Rotation set value [-90.0f,0.0f]

execute if entity @s[tag=s_Ro] run data modify entity @s Rotation set value [0.0f,0.0f]

execute if entity @s[tag=w_Ro] run data modify entity @s Rotation set value [90.0f,0.0f]


execute if entity @s[x_rotation=80..90,y_rotation=-90] run data modify entity @s Rotation set value [90.0f,-90.0f]
execute if entity @s[x_rotation=-90..-80,y_rotation=-90] run data modify entity @s Rotation set value [90.0f,90.0f]

tag @s add speed_exe
tag @s remove speeduse