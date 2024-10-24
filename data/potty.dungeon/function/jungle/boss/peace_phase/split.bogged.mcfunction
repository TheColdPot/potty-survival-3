scoreboard players set @s max_health 40000000
scoreboard players set @s mob_damage 3000
data merge entity @s {ArmorItems:[{},{},{},{id:"jack_o_lantern"}],ArmorDropChances:[0f,0f,0f,0f],HandItems:[{id:"stone_sword"},{}],HandDropChances:[0f,0f],DeathLootTable:"empty"}
tag @s remove new_summon
attribute @s movement_speed base set 0.39