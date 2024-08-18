# tellraw @a {"score":{"name": "@s", "objective": "combat_timer"}}

effect give @s saturation 1 100 true

scoreboard players set @s combat_timer 0

scoreboard players set regen_health var 0
scoreboard players operation regen_health var = @s max_health
scoreboard players operation regen_health var /= #HUNDRED var
scoreboard players add regen_health var 2
scoreboard players operation @s health += regen_health var
scoreboard players operation @s health < @s max_health

function potty.combat:player_health/handle_change
# say 1