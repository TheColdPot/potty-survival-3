scoreboard players set @s final_magic_damage 4000
scoreboard players set intelligence_scaling __number 2
function potty:magic/common/calculate_final_damage

scoreboard players operation @e[distance=..2,type=!player,type=!#potty:ignore_combat] received_magic_damage = @s final_magic_damage

execute at @e[distance=..2,type=!player,type=!#potty:ignore_combat] run damage @e[sort=nearest,limit=1] 0 potty:magic by @s

scoreboard players set @s __time_period -10
scoreboard players remove @s __time_since_spawn 5

# function potty:magic/spells/pursuer/destroy

