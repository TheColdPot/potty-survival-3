# this function adds mainhand stats BASED ON armor

data remove storage potty:items mainhand_stats
data modify storage potty:item mainhand_stats set from entity @s SelectedItem.components.minecraft:custom_data.stats

execute store result score @s weapon_damage run data get storage potty:item mainhand_stats.damage


execute store result score #piece_stat var run data get storage potty:item mainhand_stats.strength
scoreboard players operation @s strength_stat = @s strength_armor
scoreboard players operation @s strength_stat += #piece_stat var


execute store result score #piece_stat var run data get storage potty:item mainhand_stats.crit_chance
scoreboard players operation @s crit_chance_stat = @s crit_chance_armor
scoreboard players operation @s crit_chance_stat += #piece_stat var


execute store result score #piece_stat var run data get storage potty:item mainhand_stats.crit_damage
scoreboard players operation @s crit_damage_stat = @s crit_damage_armor
scoreboard players operation @s crit_damage_stat += #piece_stat var


execute store result score #piece_stat var run data get storage potty:item mainhand_stats.ferocity
scoreboard players operation @s ferocity_stat = @s ferocity_armor
scoreboard players operation @s ferocity_stat += #piece_stat var


execute store result score #piece_stat var run data get storage potty:item mainhand_stats.attack_speed
scoreboard players operation @s attack_speed_stat = @s attack_speed_armor
scoreboard players operation @s attack_speed_stat += #piece_stat var


scoreboard players operation @s crit_chance = @s crit_chance_stat
# scoreboard players operation @s crit_damage = @s crit_damage_stat
scoreboard players operation @s ferocity = @s ferocity_stat
scoreboard players operation @s strength = @s strength_stat
scoreboard players operation @s attack_speed = @s attack_speed_stat

# say 1