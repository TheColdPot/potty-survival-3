advancement grant @s only potty.combat:gain_instant_health
attribute @s minecraft:generic.max_health modifier remove potty.combat:health_limit
function potty.combat:player_health/apply_limit
effect give @s minecraft:health_boost 1 0 true
effect clear @s minecraft:health_boost
effect clear @s minecraft:instant_health
attribute @s minecraft:generic.max_health modifier remove potty.combat:health_limit
# say 1