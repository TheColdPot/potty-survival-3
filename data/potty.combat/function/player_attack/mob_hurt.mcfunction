# say 1
# execute on attacker run say 1
# execute if function potty.combat:player_attack/melee/test_predicate run say 1
execute if function potty.combat:player_attack/melee/test_predicate run function potty.combat:player_attack/melee/perform

# yes, i assure.
execute if data entity @s {active_effects:[{id:"minecraft:darkness"}]} run function potty.combat:player_attack/arrow/perform


function potty.combat:health_bar/update.wrapper

tag @s remove combat.victim
tag @a remove combat.attacker