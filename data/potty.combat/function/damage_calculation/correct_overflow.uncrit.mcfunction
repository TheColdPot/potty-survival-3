# scoreboard players operation @s final_uncrit *= SIGN_NEGATIVE var
# tellraw @a ["* -1: ", {"score":{"name":"@s","objective":"final_uncrit"}}]

scoreboard players add @s final_uncrit 42949673
tellraw @a ["CORRECT: ", {"score":{"name":"@s","objective":"final_uncrit"}}]
execute if score @s final_uncrit matches ..-1 run scoreboard players set @s final_uncrit 2147483647
tellraw @a ["STILL. ", {"score":{"name":"@s","objective":"final_uncrit"}}]

