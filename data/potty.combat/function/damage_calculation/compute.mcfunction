# After EVERY STEP, check and do the overflow correction.
# scoreboard players operation @s final_uncrit = @s weapon_damage
# tellraw @a ["Base: ", {"score":{"name":"@s","objective":"final_uncrit"}}]

# scoreboard players operation @s final_uncrit *= @s strength
# tellraw @a ["* STR: ", {"score":{"name":"@s","objective":"final_uncrit"}}]

# scoreboard players operation @s final_uncrit /= #HUNDRED var
# tellraw @a ["/100: ", {"score":{"name":"@s","objective":"final_uncrit"}}]

# execute if score @s final_uncrit matches ..-1 run function potty.combat:damage_calculation/correct_overflow.uncrit

# scoreboard players operation @s final_crit = @s final_uncrit
# scoreboard players operation shifted_crit_damage var = @s crit_damage
# scoreboard players add shifted_crit_damage var 100
# scoreboard players operation @s final_crit *= shifted_crit_damage var
# scoreboard players operation @s final_crit /= #HUNDRED var
# execute if score @s final_crit matches ..-1 run function potty.combat:damage_calculation/correct_overflow.crit


# execute if score @s final_crit matches ..-1 run scoreboard players set @s final_crit 2147483647
# execute if score @s final_uncrit matches ..-1 run scoreboard players set @s final_uncrit 2147483647
# say 1
## so i finally gave up pure scoreboard, huh?
execute store result storage potty:combat final_damage int 1 run scoreboard players get @s weapon_damage

scoreboard players operation #shifted_strength var = @s strength_stat
scoreboard players add #shifted_strength var 100
execute store result storage potty:combat damage_amplifier float 0.01 run scoreboard players get #shifted_strength var
function potty.combat:damage_calculation/apply_amplifier with storage potty:combat
execute store result score @s final_uncrit run data get storage potty:combat final_damage

scoreboard players operation #shifted_crit_damage var = @s crit_damage_stat
scoreboard players add #shifted_crit_damage var 100
execute store result storage potty:combat damage_amplifier float 0.01 run scoreboard players get #shifted_crit_damage var
function potty.combat:damage_calculation/apply_amplifier with storage potty:combat
execute store result score @s final_crit run data get storage potty:combat final_damage

execute if score @s final_crit matches ..-1 run scoreboard players set @s final_crit 2147483647
execute if score @s final_uncrit matches ..-1 run scoreboard players set @s final_uncrit 2147483647