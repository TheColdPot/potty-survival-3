attribute @s minecraft:generic.max_health modifier remove potty.combat:health_limit
function potty.combat:player_health/apply_limit
effect give @s minecraft:instant_health 1 28 true
advancement revoke @s only potty.combat:gain_instant_health
# say 2