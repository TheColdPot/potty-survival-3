# data merge entity @s {HurtTime:1s}

execute if function potty:combat/attack/player_hurt_entity/check_if_player run function potty:combat/attack/player_hurt_entity/mark_victim_and_execute
execute if function potty:combat/attack/player_hurt_entity/check_if_player_arrow run function potty:combat/attack/player_hurt_entity/arrow_mark_victim_and_execute

execute store result score @s health_reflecting_back run attribute @s minecraft:generic.max_health get 10
scoreboard players operation @s health_reflecting_back *= @s health
scoreboard players operation @s health_reflecting_back /= @s max_health
execute if score @s health_reflecting_back matches ..1 unless score @s health matches ..0 run scoreboard players set @s health_reflecting_back 1
execute store result entity @s Health double 0.1 run scoreboard players get @s health_reflecting_back

# tellraw @a {"score":{"name":"@s","objective":"health_reflecting_back"}}
