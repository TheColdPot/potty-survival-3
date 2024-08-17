scoreboard players set deci __number 10

scoreboard players operation @s __health_ratio = @s health
scoreboard players operation @s __health_ratio += @s __health_ratio
scoreboard players operation @s __health_ratio += @s __health_ratio
scoreboard players operation @s __health_ratio /= @s max_health
scoreboard players operation @s __health_deci = @s health
scoreboard players operation @s __health_deci *= deci __number

scoreboard players set million __number 1000000
scoreboard players set kilo __number 1000
data merge storage potty:effects {mob_health_text:{health_suffix:"",max_health_suffix:"",idk_what_is_this:'""',idk_what_is_this_too:''}}
execute if score @s health matches 1000000.. run scoreboard players operation @s __health_deci /= million __number
execute if score @s health matches 1000000.. run scoreboard players operation @s __health_deci %= deci __number
execute if score @s health matches 1000000.. run data merge storage potty:effects {mob_health_text:{health_suffix:"M"}}
execute if score @s health matches 1000000.. run scoreboard players operation @s health /= million __number
execute if score @s health matches 1000.. run scoreboard players operation @s __health_deci /= kilo __number
execute if score @s health matches 1000.. run scoreboard players operation @s __health_deci %= deci __number
execute if score @s health matches 1000.. run data merge storage potty:effects {mob_health_text:{health_suffix:"k"}}
execute if score @s health matches 1000.. run scoreboard players operation @s health /= kilo __number

execute if score @s max_health matches 1000000.. run data merge storage potty:effects {mob_health_text:{max_health_suffix:"M"}}
execute if score @s max_health matches 1000000.. run scoreboard players operation @s max_health /= million __number
execute if score @s max_health matches 10000.. run data merge storage potty:effects {mob_health_text:{max_health_suffix:"k"}}
execute if score @s max_health matches 10000.. run scoreboard players operation @s max_health /= kilo __number

execute unless data storage potty:effects {mob_health_text:{health_suffix:""}} run data modify storage potty:effects mob_health_text.idk_what_is_this set value '[{"text":"."},{"score":{"name":"@s","objective":"__health_deci"}}]'

execute on vehicle run function potty:combat/mobs/get_name

execute if score @s __health_ratio matches ..0 run data merge entity @s {text:'[{"nbt":"mob_name","storage":"potty:effects","interpret":true}," ",[{"score":{"name":"@s","objective":"health"},"color":"red"}, {"nbt":"mob_health_text.idk_what_is_this","storage":"potty:effects","interpret":true},{"nbt":"mob_health_text.health_suffix","storage":"potty:effects"},"/",{"score":{"name":"@s","objective":"max_health"}},{"nbt":"mob_health_text.max_health_suffix","storage":"potty:effects"}]]'}
execute if score @s __health_ratio matches 1 run data merge entity @s {text:'[{"nbt":"mob_name","storage":"potty:effects","interpret":true}," ",[{"score":{"name":"@s","objective":"health"},"color":"yellow"}, {"nbt":"mob_health_text.idk_what_is_this","storage":"potty:effects","interpret":true},{"nbt":"mob_health_text.health_suffix","storage":"potty:effects"},"/",{"score":{"name":"@s","objective":"max_health"}},{"nbt":"mob_health_text.max_health_suffix","storage":"potty:effects"}]]'}
execute if score @s __health_ratio matches 2 run data merge entity @s {text:'[{"nbt":"mob_name","storage":"potty:effects","interpret":true}," ",[{"score":{"name":"@s","objective":"health"},"color":"green"}, {"nbt":"mob_health_text.idk_what_is_this","storage":"potty:effects","interpret":true},{"nbt":"mob_health_text.health_suffix","storage":"potty:effects"},"/",{"score":{"name":"@s","objective":"max_health"}},{"nbt":"mob_health_text.max_health_suffix","storage":"potty:effects"}]]'}
execute if score @s __health_ratio matches 3.. run data merge entity @s {text:'[{"nbt":"mob_name","storage":"potty:effects","interpret":true}," ",[{"score":{"name":"@s","objective":"health"},"color":"dark_green"}, {"nbt":"mob_health_text.idk_what_is_this","storage":"potty:effects","interpret":true},{"nbt":"mob_health_text.health_suffix","storage":"potty:effects"},"/",{"score":{"name":"@s","objective":"max_health"}},{"nbt":"mob_health_text.max_health_suffix","storage":"potty:effects"}]]'}

execute if score @s health matches ..0 run data merge entity @s {text:'[{"nbt":"mob_name","storage":"potty:effects","interpret":true}," ",[{"text":"0","color":"dark_gray"},"/",{"score":{"name":"@s","objective":"max_health"}},{"nbt":"mob_health_text.max_health_suffix","storage":"potty:effects"}]]'}

scoreboard players reset @s __health_deci
scoreboard players reset @s health
scoreboard players reset @s max_health
