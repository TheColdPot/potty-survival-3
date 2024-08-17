tag @e[tag=combat.victim,limit=1] add combat.was_victim
tag @e[tag=combat.victim,limit=1] remove combat.victim
# particle sweep_attack ~ ~1 ~
$execute as @e[distance=..$(sweep_range),type=!player,type=!#potty:ignore_combat] run damage @s 0 potty:max_combo_bonus by @p
$execute as @e[distance=..$(sweep_range),type=!player,type=!#potty:ignore_combat] run function potty:combat/attack/player_hurt_entity/full_combo_mark_victim_and_execute
# playsound minecraft:entity.player.attack.sweep player @a

tag @e[tag=combat.was_victim,limit=1] add combat.victim
tag @e[tag=combat.was_victim,limit=1] remove combat.was_victim

