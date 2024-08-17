playsound block.glass.place player @a ~ ~ ~ 1.5 1


scoreboard players set @s final_magic_damage 2700
scoreboard players set intelligence_scaling __number 1
function potty:magic/common/calculate_final_damage

scoreboard players operation @e[type=!player,type=!#potty:ignore_combat,distance=..1.5,tag=!ice_wand_shockwave_marked] received_magic_damage += @s final_magic_damage

execute at @e[type=!player,type=!#potty:ignore_combat,distance=..1.5,tag=!ice_wand_shockwave_marked] run damage @e[limit=1,sort=nearest] 0 potty:magic by @s
tag @e[type=!player,type=!#potty:ignore_combat,distance=..1.5] add magic.ice_wand_shockwave_marked



scoreboard players add @s __time_since_spawn 7
# kill






