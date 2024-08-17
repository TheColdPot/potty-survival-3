# 

execute if score received_damage var matches ..0 run return fail

execute store result storage potty:combat splash_text int 1 run scoreboard players get received_damage var
data modify storage potty:combat splash_text_part.o set string storage potty:combat splash_text -3
data modify storage potty:combat splash_text_part.k set string storage potty:combat splash_text -6 -3
data modify storage potty:combat splash_text_part.m set string storage potty:combat splash_text -9 -6

execute if score received_damage var matches 1000000000.. run data merge entity @s {text: '[{"text":"♦","color":"#850000"},{"storage":"potty:combat","nbt":"splash_text_part.b","color":"red"},",",{"storage":"potty:combat","nbt":"splash_text_part.m","color":"red"},",",{"storage":"potty:combat","nbt":"splash_text_part.k","color":"red"},",",{"storage":"potty:combat","nbt":"splash_text_part.o","color":"red"},{"text":"♦","color":"#850000"}]',billboard:"center",shadow:true,Tags:[combat.damage_splash]}
execute if score received_damage var matches 1000000..999999999 run data merge entity @s {text: '[{"text":"♦","color":"#850000"},{"storage":"potty:combat","nbt":"splash_text_part.m","color":"red"},",",{"storage":"potty:combat","nbt":"splash_text_part.k","color":"red"},",",{"storage":"potty:combat","nbt":"splash_text_part.o","color":"red"},{"text":"♦","color":"#850000"}]',billboard:"center",shadow:true,Tags:[combat.damage_splash]}
execute if score received_damage var matches 1000..999999 run data merge entity @s {text: '[{"text":"♦","color":"#850000"},{"storage":"potty:combat","nbt":"splash_text_part.k","color":"red"},",",{"storage":"potty:combat","nbt":"splash_text_part.o","color":"red"},"♦"]',billboard:"center",shadow:true,Tags:[combat.damage_splash]}
execute if score received_damage var matches ..999 run data merge entity @s {text: '[{"text":"♦","color":"#850000"},{"storage":"potty:combat","nbt":"splash_text_part.o","color":"red"},{"text":"♦","color":"#850000"}]',billboard:"center",shadow:true,Tags:[combat.damage_splash]}

tag @s add combat.tick
function potty.combat:damage_splash/randomly_translate
