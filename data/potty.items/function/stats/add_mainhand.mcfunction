# this function adds mainhand stats BASED ON armor

data remove storage potty.items:stats mainhand_stats
data modify storage potty.items:constructor mainhand_stats set from entity @s SelectedItem.components.minecraft:custom_data.stats

execute store result score @s weapon_damage run data get storage potty.items:constructor mainhand_stats.damage


execute store result score #piece_stat var run data get storage potty.items:constructor mainhand_stats.health
scoreboard players operation @s health_stat = @s health_armor
scoreboard players operation @s health_stat += #piece_stat var


execute store result score #piece_stat var run data get storage potty.items:constructor mainhand_stats.defense
scoreboard players operation @s defense_stat = @s defense_armor
scoreboard players operation @s defense_stat += #piece_stat var


execute store result score #piece_stat var run data get storage potty.items:constructor mainhand_stats.strength
scoreboard players operation @s strength_stat = @s strength_armor
scoreboard players operation @s strength_stat += #piece_stat var


execute store result score #piece_stat var run data get storage potty.items:constructor mainhand_stats.crit_chance
scoreboard players operation @s crit_chance_stat = @s crit_chance_armor
scoreboard players operation @s crit_chance_stat += #piece_stat var


execute store result score #piece_stat var run data get storage potty.items:constructor mainhand_stats.crit_damage
scoreboard players operation @s crit_damage_stat = @s crit_damage_armor
scoreboard players operation @s crit_damage_stat += #piece_stat var


execute store result score #piece_stat var run data get storage potty.items:constructor mainhand_stats.ferocity
scoreboard players operation @s ferocity_stat = @s ferocity_armor
scoreboard players operation @s ferocity_stat += #piece_stat var


execute store result score #piece_stat var run data get storage potty.items:constructor mainhand_stats.attack_speed
scoreboard players operation @s attack_speed_stat = @s attack_speed_armor
scoreboard players operation @s attack_speed_stat += #piece_stat var

execute store result score #piece_stat var run data get storage potty.items:constructor mainhand_stats.splash_damage
scoreboard players operation @s splash_damage_stat = @s splash_damage_armor
scoreboard players operation @s splash_damage_stat += #piece_stat var
scoreboard players operation @s splash_damage_stat < #max_splash_damage var

execute store result score #piece_stat var run data get storage potty.items:constructor mainhand_stats.splash_radius
scoreboard players operation @s splash_radius_stat = @s splash_radius_armor
scoreboard players operation @s splash_radius_stat += #piece_stat var


scoreboard players set @s attack_cooldown 600
scoreboard players operation #shifted_attack_speed var = @s attack_speed_stat
scoreboard players add #shifted_attack_speed var 100
scoreboard players operation @s attack_cooldown /= #shifted_attack_speed var


scoreboard players operation @s crit_chance = @s crit_chance_stat
# scoreboard players operation @s crit_damage = @s crit_damage_stat
scoreboard players operation @s ferocity = @s ferocity_stat
scoreboard players operation @s strength = @s strength_stat
# scoreboard players operation @s attack_speed = @s attack_speed_stat
scoreboard players operation @s max_health = @s health_stat
scoreboard players operation @s defense = @s defense_stat

