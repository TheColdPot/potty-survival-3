scoreboard players operation @s health -= #received_damage var

execute store result score reflect_health var run attribute @s minecraft:max_health get 1
scoreboard players operation reflect_health var *= @s health
scoreboard players operation reflect_health var /= @s max_health
execute if score reflect_health var matches ..1 unless score @s health matches ..0 run scoreboard players set reflect_health var 1
execute store result entity @s Health float 1 run scoreboard players get reflect_health var
execute if score @s health matches ..-1 run scoreboard players set @s health 0
# say 1
# do not schedule ferocity here


function potty.combat:player_attack/post_attack
execute on attacker run function potty.combat:sweeping/charge

execute if score @s health matches 0 run function potty.combat:player_attack/handle_death
# say 1