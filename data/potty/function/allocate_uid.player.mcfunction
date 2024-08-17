scoreboard players add player_uid var 1
scoreboard players operation @s uid = player_uid var
execute if score player_uid var matches 0 run tellraw @a ["", {"text":"SEVERE WARNING! ","color":"red","bold":true}, "Too many players ",{"text":"(4,294,967,295)","color":"gray"},"!",{"text":" Severe problems may take place.","italic":true}]
