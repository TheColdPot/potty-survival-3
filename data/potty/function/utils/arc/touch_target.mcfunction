tag @s add touch_target
particle minecraft:enchanted_hit ~ ~0.8 ~ 0.3 0.3 0.3 0.8 10

attribute @s minecraft:knockback_resistance modifier add kbre 0.6 add_value
damage @s 10 player_attack by @n[tag=sweep_summoner]
attribute @s minecraft:knockback_resistance modifier remove kbre
