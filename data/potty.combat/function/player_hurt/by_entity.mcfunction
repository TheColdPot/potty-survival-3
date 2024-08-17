advancement revoke @s only potty.combat:player_hurt

execute on attacker run scoreboard players operation received_damage var = @s mob_damage
scoreboard players operation received_damage var *= HUNDRED var
scoreboard players operation shifted_defense var = @s defense 
scoreboard players add shifted_defense var 100 
scoreboard players operation received_damage var /= shifted_defense var

function potty.combat:damage_splash/plain

scoreboard players operation @s health -= received_damage var

function potty.combat:player_health/handle_change