advancement revoke @s only potty.combat:fall
tag @s add combat.fell
#todo: rewrite this

scoreboard players remove @s combat.distance_fallen 300
execute if score @s combat.distance_fallen matches ..0 run return run scoreboard players reset @s combat.distance_fallen

scoreboard players operation #received_damage var = @s max_health
scoreboard players operation #received_damage var *= @s combat.distance_fallen
scoreboard players operation #received_damage var /= #TWENTY var
scoreboard players operation #received_damage var /= #HUNDRED var
scoreboard players reset @s combat.distance_fallen

damage @s 0.01 fall at ~ ~ ~
 
# scoreboard players reset var

# tellraw @a {"nbt":"Health","entity": "@s"}

function potty.combat:damage_splash/plain

scoreboard players operation @s health -= #received_damage var

function potty.combat:player_health/handle_change


# say 1

