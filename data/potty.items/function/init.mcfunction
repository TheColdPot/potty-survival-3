scoreboard objectives add health_armor dummy
scoreboard objectives add defense_armor dummy
scoreboard objectives add crit_chance_armor dummy
scoreboard objectives add crit_damage_armor dummy
scoreboard objectives add ferocity_armor dummy
scoreboard objectives add strength_armor dummy
scoreboard objectives add attack_speed_armor dummy

scoreboard objectives add splash_radius_armor dummy
scoreboard objectives add splash_damage_armor dummy

scoreboard objectives add health_stat dummy
scoreboard objectives add defense_stat dummy
scoreboard objectives add crit_chance_stat dummy
scoreboard objectives add crit_damage_stat dummy
scoreboard objectives add ferocity_stat dummy
scoreboard objectives add strength_stat dummy
scoreboard objectives add attack_speed_stat dummy

scoreboard objectives add splash_radius_stat dummy
scoreboard objectives add splash_damage_stat dummy

scoreboard objectives add selected_slot dummy

scoreboard players set #max_splash_damage var 100

kill 706f7474-7973-4872-0000-adc200000001
summon item_display ~ ~ ~ {UUID:[I;1886352500,2037598322,44482,1],CustomName:'{"text":"Item Constructor Helper","color":"red","bold":true}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}

team add grindstone_entities "Grindstone Entites"
team add anvil_entities "Anvil Entites"