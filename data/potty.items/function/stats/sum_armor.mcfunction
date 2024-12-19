data remove storage potty.items:stats head_stats
data remove storage potty.items:stats chest_stats
data remove storage potty.items:stats legs_stats
data remove storage potty.items:stats feet_stats

data modify storage potty.items:stats head_stats set from entity @s Inventory[{Slot:103b}].components.minecraft:custom_data.stats
data modify storage potty.items:stats chest_stats set from entity @s Inventory[{Slot:102b}].components.minecraft:custom_data.stats
data modify storage potty.items:stats legs_stats set from entity @s Inventory[{Slot:101b}].components.minecraft:custom_data.stats
data modify storage potty.items:stats feet_stats set from entity @s Inventory[{Slot:100b}].components.minecraft:custom_data.stats

scoreboard players set @s health_armor 100
execute store result score #piece_stat var run data get storage potty.items:stats head_stats.health
scoreboard players operation @s health_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats chest_stats.health
scoreboard players operation @s health_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats legs_stats.health
scoreboard players operation @s health_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats feet_stats.health
scoreboard players operation @s health_armor += #piece_stat var

scoreboard players set @s defense_armor 0
execute store result score #piece_stat var run data get storage potty.items:stats head_stats.defense
scoreboard players operation @s defense_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats chest_stats.defense
scoreboard players operation @s defense_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats legs_stats.defense
scoreboard players operation @s defense_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats feet_stats.defense
scoreboard players operation @s defense_armor += #piece_stat var

scoreboard players set @s strength_armor 0
execute store result score #piece_stat var run data get storage potty.items:stats head_stats.strength
scoreboard players operation @s strength_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats chest_stats.strength
scoreboard players operation @s strength_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats legs_stats.strength
scoreboard players operation @s strength_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats feet_stats.strength
scoreboard players operation @s strength_armor += #piece_stat var

scoreboard players set @s crit_chance_armor 10
execute store result score #piece_stat var run data get storage potty.items:stats head_stats.crit_chance
scoreboard players operation @s crit_chance_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats chest_stats.crit_chance
scoreboard players operation @s crit_chance_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats legs_stats.crit_chance
scoreboard players operation @s crit_chance_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats feet_stats.crit_chance
scoreboard players operation @s crit_chance_armor += #piece_stat var

scoreboard players set @s crit_damage_armor 30
execute store result score #piece_stat var run data get storage potty.items:stats head_stats.crit_damage
scoreboard players operation @s crit_damage_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats chest_stats.crit_damage
scoreboard players operation @s crit_damage_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats legs_stats.crit_damage
scoreboard players operation @s crit_damage_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats feet_stats.crit_damage
scoreboard players operation @s crit_damage_armor += #piece_stat var

scoreboard players set @s ferocity_armor 0
execute store result score #piece_stat var run data get storage potty.items:stats head_stats.ferocity
scoreboard players operation @s ferocity_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats chest_stats.ferocity
scoreboard players operation @s ferocity_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats legs_stats.ferocity
scoreboard players operation @s ferocity_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats feet_stats.ferocity
scoreboard players operation @s ferocity_armor += #piece_stat var

scoreboard players set @s attack_speed_armor 0
execute store result score #piece_stat var run data get storage potty.items:stats head_stats.attack_speed
scoreboard players operation @s attack_speed_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats chest_stats.attack_speed
scoreboard players operation @s attack_speed_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats legs_stats.attack_speed
scoreboard players operation @s attack_speed_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats feet_stats.attack_speed
scoreboard players operation @s attack_speed_armor += #piece_stat var

scoreboard players set @s splash_radius_armor 50
execute store result score #piece_stat var run data get storage potty.items:stats head_stats.splash_radius
scoreboard players operation @s splash_radius_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats chest_stats.splash_radius
scoreboard players operation @s splash_radius_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats legs_stats.splash_radius
scoreboard players operation @s splash_radius_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats feet_stats.splash_radius
scoreboard players operation @s splash_radius_armor += #piece_stat var

scoreboard players set @s splash_damage_armor 10
execute store result score #piece_stat var run data get storage potty.items:stats head_stats.splash_damage
scoreboard players operation @s splash_damage_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats chest_stats.splash_damage
scoreboard players operation @s splash_damage_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats legs_stats.splash_damage
scoreboard players operation @s splash_damage_armor += #piece_stat var
execute store result score #piece_stat var run data get storage potty.items:stats feet_stats.splash_damage
scoreboard players operation @s splash_damage_armor += #piece_stat var

scoreboard players reset #piece_stat var
