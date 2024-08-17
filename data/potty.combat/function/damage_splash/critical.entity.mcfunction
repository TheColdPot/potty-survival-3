#> potty.combat:damage_splash/critical.entity

execute store result storage potty:combat splash_text int 1 run scoreboard players get received_damage var
data modify storage potty:combat splash_text_split set value []
data modify storage potty:combat splash_text_split append string storage potty:combat splash_text 0 1
data modify storage potty:combat splash_text_split append string storage potty:combat splash_text 1 2
data modify storage potty:combat splash_text_split append string storage potty:combat splash_text 2 3
data modify storage potty:combat splash_text_split append string storage potty:combat splash_text 3 4
data modify storage potty:combat splash_text_split append string storage potty:combat splash_text 4 5
data modify storage potty:combat splash_text_split append string storage potty:combat splash_text 5 6
data modify storage potty:combat splash_text_split append string storage potty:combat splash_text 6 7
data modify storage potty:combat splash_text_split append string storage potty:combat splash_text 7 8
data modify storage potty:combat splash_text_split append string storage potty:combat splash_text 8 9
data modify storage potty:combat splash_text_split append string storage potty:combat splash_text 9 10
data modify storage potty:combat splash_text_split append string storage potty:combat splash_text 10 11
data modify storage potty:combat splash_text_split append string storage potty:combat splash_text 11 12
execute store result score splash_length var run data get storage potty:combat splash_text_split
execute if score splash_length var matches 11.. run data modify storage potty:combat splash_text_split insert -11 value ','
execute if score splash_length var matches 7.. run data modify storage potty:combat splash_text_split insert -7 value ','
execute if score splash_length var matches 4.. run data modify storage potty:combat splash_text_split insert -4 value ','


data merge entity @s {text: '[{"text":"✧","color":"yellow"},[{"nbt":"splash_text_split[0]","storage":"potty:combat","color":"#ffb400"},{"nbt":"splash_text_split[1]","storage":"potty:combat","color":"#ffa700"},{"nbt":"splash_text_split[2]","storage":"potty:combat","color":"#ff9a00"},{"nbt":"splash_text_split[3]","storage":"potty:combat","color":"#ff8d00"},{"nbt":"splash_text_split[4]","storage":"potty:combat","color":"#ff8100"},{"nbt":"splash_text_split[5]","storage":"potty:combat","color":"#ff7400"},{"nbt":"splash_text_split[6]","storage":"potty:combat","color":"#ff6700"},{"nbt":"splash_text_split[7]","storage":"potty:combat","color":"#ff5a00"},{"nbt":"splash_text_split[8]","storage":"potty:combat","color":"#ff4d00"},{"nbt":"splash_text_split[9]","storage":"potty:combat","color":"#ff4000"},{"nbt":"splash_text_split[10]","storage":"potty:combat","color":"#ff3300"},{"nbt":"splash_text_split[11]","storage":"potty:combat","color":"#ff2700"},{"nbt":"splash_text_split[12]","storage":"potty:combat","color":"#ff1a00"}],{"text":"✧","color":"yellow"}]',billboard:"center",shadow:true,Tags:[combat.damage_splash]}

function potty.combat:damage_splash/randomly_translate

