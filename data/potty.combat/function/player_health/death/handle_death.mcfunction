scoreboard players set @s health 100
# say 1
scoreboard players operation @s health = @s max_health
tag @s add combat.death
function potty.combat:player_health/death/choose_message
tag @s remove combat.death
kill @s
