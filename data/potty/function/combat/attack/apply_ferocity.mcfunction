execute store result score ferocity_random_number __number run random value 1..100
$execute if score ferocity_random_number __number matches ..$(crit_chance) run scoreboard players add @e[nbt={UUID:$(target)}] received_ferocity_damage $(crit_damage)
$execute unless score ferocity_random_number __number matches ..$(crit_chance) run scoreboard players add @e[nbt={UUID:$(target)}] received_ferocity_damage $(normal_damage)

$execute as @e[nbt={UUID:$(target)}] run function potty:combat/attack/ferocity/apply_damage
$execute as @e[nbt={UUID:$(target)}] run damage @s 0 potty:ferocity by @a[limit=1,nbt={UUID:$(attacker)}]

$execute store result storage potty:combat scheduled_ferocity[{identifier:$(identifier)}].count int 1 run data get storage potty:combat scheduled_ferocity[{identifier:$(identifier)}].count 0.99

