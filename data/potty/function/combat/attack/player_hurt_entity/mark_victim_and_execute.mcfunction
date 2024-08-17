

tag @s add combat.victim

execute unless entity @s[tag=combat.included] run function potty:combat/mobs/setup


execute on attacker run function potty:combat/attack/player_hurt_entity/apply_player_damage

tag @s remove combat.victim
