effect give @a resistance infinite 127 true
effect give @a saturation infinite 127 true
# effect give @a weakness infinite 3 true
# execute as @a run function potty:combat/sub_tick_player

execute as @e[nbt={HurtTime:10s}] run function potty:combat/got_hurt


scoreboard players add @e[tag=combat.damage_indicator] __time_since_spawn 1
kill @e[tag=combat.damage_indicator,scores={__time_since_spawn=30..}]

execute as @e[type=arrow] at @s run function potty:combat/arrow/test

execute as @e[tag=combat.mob_health_text] on vehicle on passengers run tag @s[tag=combat.mob_health_text] add combat.mob_health_text_riding
kill @e[tag=!combat.mob_health_text_riding,tag=combat.mob_health_text]
tag @e remove combat.mob_health_text_riding

execute as @e[scores={received_magic_damage=1..}] run function potty:combat/external/apply_magic



# execute unless score attack_speed_set __number matches 1 run scoreboard players set attack_speed_set __number 1
# execute if score attack_speed_set __number matches 1 run scoreboard players set attack_speed_set __number 0