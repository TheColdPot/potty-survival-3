tp @s ~ ~ ~ ~.25 ~

# particle end_rod ^ ^ ^5
# particle end_rod ^ ^ ^-5

execute if score @s __time_since_spawn matches ..100 run function potty:deployables/items/shield_core/send_particle

# function potty:deployables/items/shield_core/send_particle
# execute rotated ~180 ~ run function potty:deployables/items/shield_core/send_particle

execute as @e[type=arrow,nbt={HasBeenShot:1b},distance=5..7,tag=!combat.player_projectile] at @s run function potty:deployables/items/shield_core/arrow_destroy

scoreboard players add @s __time_since_spawn 1
execute if score @s __time_since_spawn matches 130.. run kill @s