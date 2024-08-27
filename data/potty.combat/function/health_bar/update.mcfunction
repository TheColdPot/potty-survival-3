data remove entity @s background
data merge entity @s {default_background:true,transformation:[1f,0f,0f,0f, 0f,1f,0f,.25f, 0f,0f,1f,0f, 0f,0f,0f,1f]}

execute if score #current_max_health var matches ..10000 run \ 
  return run function potty.combat:health_bar/update.no_unit

execute if score #current_max_health var matches 1000.. run data merge storage potty:combat {max_health_unit:"k"}
execute if score #current_max_health var matches 1000.. run scoreboard players set #max_health_unit var 100
execute if score #current_max_health var matches 1000000.. run scoreboard players set #max_health_unit var 100000
execute if score #current_max_health var matches 1000000.. run data merge storage potty:combat {max_health_unit:"M"}
execute if score #current_max_health var matches 1000000000.. run scoreboard players set #max_health_unit var 100000000
execute if score #current_max_health var matches 1000000000.. run data merge storage potty:combat {max_health_unit:"B"}

# scoreboard players operation #health_after_point var = #current_health var
scoreboard players operation #max_health_after_point var = #current_max_health var
scoreboard players operation #max_health_after_point var /= #max_health_unit var
scoreboard players operation #max_health_before_point var = #max_health_after_point var
scoreboard players operation #max_health_before_point var /= #TEN var
scoreboard players operation #max_health_after_point var %= #TEN var

execute if score #current_health var matches ..10000 run \
  return run data merge entity @s {text:'[{"nbt":"CustomName","entity":"@s","interpret":true}," ",[{"score":{"name":"#current_health","objective":"var"},"color":"red"},"/",{"score":{"name":"#max_health_before_point","objective":"var"}},".",{"score":{"name":"#max_health_after_point","objective":"var"}},{"nbt":"max_health_unit","storage":"potty:combat"}]]'}


execute if score #current_health var matches 1000.. run data merge storage potty:combat {health_unit:"k"}
execute if score #current_health var matches 1000.. run scoreboard players set health_unit var 100
execute if score #current_health var matches 1000000.. run scoreboard players set health_unit var 100000
execute if score #current_health var matches 1000000.. run data merge storage potty:combat {health_unit:"M"}
execute if score #current_health var matches 1000000000.. run scoreboard players set health_unit var 100000000
execute if score #current_health var matches 1000000000.. run data merge storage potty:combat {health_unit:"B"}

# scoreboard players operation #health_after_point var = #current_health var
scoreboard players operation #health_after_point var = #current_health var
scoreboard players operation #health_after_point var /= health_unit var
scoreboard players operation #health_after_point var = #health_after_point var
scoreboard players operation #health_after_point var /= #TEN var
scoreboard players operation #health_after_point var %= #TEN var

data merge entity @s {text:'[{"nbt":"CustomName","entity":"@s","interpret":true}," ",[{"score":{"name":"#health_after_point","objective":"var"},"color":"red"},".",{"score":{"name":"#health_after_point","objective":"var"}},{"nbt":"health_unit","storage":"potty:combat"},"/",{"score":{"name":"#max_health_before_point","objective":"var"}},".",{"score":{"name":"#max_health_after_point","objective":"var"}},{"nbt":"max_health_unit","storage":"potty:combat"}]]'}
