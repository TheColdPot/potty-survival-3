scoreboard players operation @s final_crit *= #SIGN_NEGATIVE var
scoreboard players add @s final_crit 21474836
execute if score @s final_crit matches ..-1 run scoreboard players set @s final_crit 2147483647
