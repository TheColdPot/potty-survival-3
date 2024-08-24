# @as_player
scoreboard players set health_multiplier __number 20
scoreboard players operation @s __health_ratio = @s health
scoreboard players operation @s __health_ratio *= health_multiplier __number
scoreboard players operation @s __health_ratio /= @s max_health
scoreboard players operation @s health < @s max_health
# say 1
# execute if score @s __health_ratio matches 20 run attribute @s generic.max_health base set 20
# execute if score @s __health_ratio matches 19 run attribute @s generic.max_health base set 19
# execute if score @s __health_ratio matches 18 run attribute @s generic.max_health base set 18
# execute if score @s __health_ratio matches 17 run attribute @s generic.max_health base set 17
# execute if score @s __health_ratio matches 16 run attribute @s generic.max_health base set 16
# execute if score @s __health_ratio matches 15 run attribute @s generic.max_health base set 15
# execute if score @s __health_ratio matches 14 run attribute @s generic.max_health base set 14
# execute if score @s __health_ratio matches 13 run attribute @s generic.max_health base set 13
# execute if score @s __health_ratio matches 12 run attribute @s generic.max_health base set 12
# execute if score @s __health_ratio matches 11 run attribute @s generic.max_health base set 11
# execute if score @s __health_ratio matches 10 run attribute @s generic.max_health base set 10
# execute if score @s __health_ratio matches 9 run attribute @s generic.max_health base set 9
# execute if score @s __health_ratio matches 8 run attribute @s generic.max_health base set 8
# execute if score @s __health_ratio matches 7 run attribute @s generic.max_health base set 7
# execute if score @s __health_ratio matches 6 run attribute @s generic.max_health base set 6
# execute if score @s __health_ratio matches 5 run attribute @s generic.max_health base set 5
# execute if score @s __health_ratio matches 4 run attribute @s generic.max_health base set 4
# execute if score @s __health_ratio matches 3 run attribute @s generic.max_health base set 3
# execute if score @s __health_ratio matches 2 run attribute @s generic.max_health base set 2
# execute if score @s __health_ratio matches 1 run attribute @s generic.max_health base set 1
# effect give @s instant_health 1 120 true
#attribute @s generic.max_health base set 20


