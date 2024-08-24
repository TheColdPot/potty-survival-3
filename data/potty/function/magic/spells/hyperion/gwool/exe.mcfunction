execute unless block ~ ~ ~ air run kill @s
execute as @s[tag=n_Ro] positioned ~ ~ ~-1 if entity @a[gamemode=!spectator,distance=..0.8] run kill @s
execute as @s[tag=s_Ro] positioned ~ ~ ~1 if entity @a[gamemode=!spectator,distance=..0.8] run kill @s
execute as @s[tag=w_Ro] positioned ~-1 ~ ~ if entity @a[gamemode=!spectator,distance=..0.8] run kill @s
execute as @s[tag=e_Ro] positioned ~1 ~ ~ if entity @a[gamemode=!spectator,distance=..0.8] run kill @s
execute as @s[tag=n_Ro] positioned ~ ~-1 ~-1 if entity @a[gamemode=!spectator,distance=..0.8] run kill @s
execute as @s[tag=s_Ro] positioned ~ ~-1 ~1 if entity @a[gamemode=!spectator,distance=..0.8] run kill @s
execute as @s[tag=w_Ro] positioned ~-1 ~-1 ~ if entity @a[gamemode=!spectator,distance=..0.8] run kill @s
execute as @s[tag=e_Ro] positioned ~1 ~-1 ~ if entity @a[gamemode=!spectator,distance=..0.8] run kill @s

execute as @s[tag=u_Ro] positioned ~ ~1 ~ if entity @a[gamemode=!spectator,distance=..0.8] run kill @s
execute as @s[tag=d_Ro] positioned ~ ~-2 ~ if entity @a[gamemode=!spectator,distance=..0.8] run kill @s


execute positioned as @e[type=minecraft:armor_stand,tag=teamitem] positioned ~-4 ~-5 ~-4 if entity @s[dx=7,dy=6,dz=7] run kill @s
execute positioned as @e[type=minecraft:armor_stand,tag=map_main] positioned ~-99 50 ~-99 unless entity @s[dx=197,dy=60,dz=197] run kill @s
execute positioned as @e[type=minecraft:armor_stand,tag=teamspawn] positioned ~-5 ~-1 ~-5 if entity @s[dx=11,dy=5,dz=11] run kill @s

execute if entity @a[distance=..6] as @a[distance=..6] run playsound minecraft:block.wool.place block @a[distance=..6] ~ ~ ~ 1 1 1
execute run setblock ~ ~ ~ white_wool keep

execute if block ~ ~ ~ white_wool run scoreboard players add @s SpeedUse 1
kill @s[scores={SpeedUse=6..}]

execute if block ~ ~ ~ white_wool run tp @s ^ ^ ^1

data modify entity @s PortalCooldown set value 3