# 

execute if score received_damage var matches ..0 run return fail
scoreboard players operation received_damage#part_o var = received_damage var
scoreboard players operation received_damage#part_k var = received_damage var
scoreboard players operation received_damage#part_m var = received_damage var
scoreboard players operation received_damage#part_b var = received_damage var
scoreboard players operation received_damage#part_o var %= UNIT_K var
scoreboard players operation received_damage#part_k var /= UNIT_K var
scoreboard players operation received_damage#part_k var %= UNIT_K var
scoreboard players operation received_damage#part_m var /= UNIT_M var
scoreboard players operation received_damage#part_m var %= UNIT_K var
scoreboard players operation received_damage#part_b var /= UNIT_B var
execute if score received_damage var matches 1000000000.. run data merge entity @s {text: '[{"text":"♦","color":"#850000"},{"score":{"name":"received_damage#part_b","objective":"var"},"color":"red"},",",{"score":{"name":"received_damage#part_m","objective":"var"},"color":"red"},",",{"score":{"name":"received_damage#part_k","objective":"var"},"color":"red"},",",{"score":{"name":"received_damage#part_o","objective":"var"},"color":"red"},{"text":"♦","color":"#850000"}]',billboard:"center",shadow:true,Tags:[combat.damage_splash]}
execute if score received_damage var matches 1000000..999999999 run data merge entity @s {text: '[{"text":"♦","color":"#850000"},{"score":{"name":"received_damage#part_m","objective":"var"},"color":"red"},",",{"score":{"name":"received_damage#part_k","objective":"var"},"color":"red"},",",{"score":{"name":"received_damage#part_o","objective":"var"},"color":"red"},{"text":"♦","color":"#850000"}]',billboard:"center",shadow:true,Tags:[combat.damage_splash]}
execute if score received_damage var matches 1000..999999 run data merge entity @s {text: '[{"text":"♦","color":"#850000"},{"score":{"name":"received_damage#part_k","objective":"var"},"color":"red"},",",{"score":{"name":"received_damage#part_o","objective":"var"},"color":"red"},"♦"]',billboard:"center",shadow:true,Tags:[combat.damage_splash]}
execute if score received_damage var matches ..999 run data merge entity @s {text: '[{"text":"♦","color":"#850000"},{"score":{"name":"received_damage#part_o","objective":"var"},"color":"red"},{"text":"♦","color":"#850000"}]',billboard:"center",shadow:true,Tags:[combat.damage_splash]}

tag @s add combat.tick
function potty.combat:damage_splash/randomly_translate
