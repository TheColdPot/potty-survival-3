# @by_trigger @as_player
data remove storage potty:player head_stats
data remove storage potty:player chest_stats
data remove storage potty:player legs_stats
data remove storage potty:player feet_stats
data remove storage potty:player mainhand_stats
data modify storage potty:player head_stats set from entity @s Inventory[{Slot:103b}].components.minecraft:custom_data.stats
data modify storage potty:player chest_stats set from entity @s Inventory[{Slot:102b}].components.minecraft:custom_data.stats
data modify storage potty:player legs_stats set from entity @s Inventory[{Slot:101b}].components.minecraft:custom_data.stats
data modify storage potty:player feet_stats set from entity @s Inventory[{Slot:100b}].components.minecraft:custom_data.stats
data modify storage potty:player mainhand_stats set from entity @s SelectedItem.components.minecraft:custom_data.stats

scoreboard players set @s max_health 100
execute store result score @s __gear_piece_stat run data get storage potty:player head_stats.health
scoreboard players operation @s max_health += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player chest_stats.health
scoreboard players operation @s max_health += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player legs_stats.health
scoreboard players operation @s max_health += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player feet_stats.health
scoreboard players operation @s max_health += @s __gear_piece_stat
# function potty:combat/health_change

scoreboard players set @s strength 100
execute store result score @s __gear_piece_stat run data get storage potty:player mainhand_stats.strength
scoreboard players operation @s strength += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player head_stats.strength
scoreboard players operation @s strength += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player chest_stats.strength
scoreboard players operation @s strength += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player legs_stats.strength
scoreboard players operation @s strength += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player feet_stats.strength
scoreboard players operation @s strength += @s __gear_piece_stat
scoreboard players operation @s strength += @s permanent_strength_buff

scoreboard players set @s defense 0
execute store result score @s __gear_piece_stat run data get storage potty:player mainhand_stats.defense
scoreboard players operation @s defense += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player head_stats.defense
scoreboard players operation @s defense += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player chest_stats.defense
scoreboard players operation @s defense += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player legs_stats.defense
scoreboard players operation @s defense += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player feet_stats.defense
scoreboard players operation @s defense += @s __gear_piece_stat
scoreboard players operation @s defense += @s permanent_defense_buff

scoreboard players set @s crit_damage 0
execute store result score @s __gear_piece_stat run data get storage potty:player mainhand_stats.crit_damage
scoreboard players operation @s crit_damage += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player head_stats.crit_damage
scoreboard players operation @s crit_damage += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player chest_stats.crit_damage
scoreboard players operation @s crit_damage += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player legs_stats.crit_damage
scoreboard players operation @s crit_damage += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player feet_stats.crit_damage
scoreboard players operation @s crit_damage += @s __gear_piece_stat
scoreboard players operation @s crit_damage += @s permanent_crit_damage_buff

scoreboard players set @s crit_chance 0
execute store result score @s __gear_piece_stat run data get storage potty:player mainhand_stats.crit_chance
scoreboard players operation @s crit_chance += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player head_stats.crit_chance
scoreboard players operation @s crit_chance += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player chest_stats.crit_chance
scoreboard players operation @s crit_chance += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player legs_stats.crit_chance
scoreboard players operation @s crit_chance += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player feet_stats.crit_chance
scoreboard players operation @s crit_chance += @s __gear_piece_stat

scoreboard players set @s ferocity 0
execute store result score @s __gear_piece_stat run data get storage potty:player mainhand_stats.ferocity
scoreboard players operation @s ferocity += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player head_stats.ferocity
scoreboard players operation @s ferocity += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player chest_stats.ferocity
scoreboard players operation @s ferocity += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player legs_stats.ferocity
scoreboard players operation @s ferocity += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player feet_stats.ferocity
scoreboard players operation @s ferocity += @s __gear_piece_stat

scoreboard players set @s attack_speed 0
execute store result score @s __gear_piece_stat run data get storage potty:player mainhand_stats.attack_speed
scoreboard players operation @s attack_speed += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player head_stats.attack_speed
scoreboard players operation @s attack_speed += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player chest_stats.attack_speed
scoreboard players operation @s attack_speed += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player legs_stats.attack_speed
scoreboard players operation @s attack_speed += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player feet_stats.attack_speed
scoreboard players operation @s attack_speed += @s __gear_piece_stat

scoreboard players set @s intelligence 0
execute store result score @s __gear_piece_stat run data get storage potty:player mainhand_stats.intelligence
scoreboard players operation @s intelligence += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player head_stats.intelligence
scoreboard players operation @s intelligence += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player chest_stats.intelligence
scoreboard players operation @s intelligence += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player legs_stats.intelligence
scoreboard players operation @s intelligence += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player feet_stats.intelligence
scoreboard players operation @s intelligence += @s __gear_piece_stat
scoreboard players operation @s intelligence += @s permanent_intelligence_buff


scoreboard players set @s attack_cooldown 600
scoreboard players operation @s __shifted_stat_value = @s attack_speed
scoreboard players add @s __shifted_stat_value 100
scoreboard players operation @s attack_cooldown /= @s __shifted_stat_value


scoreboard players set @s weapon_damage 10
execute store result score @s __gear_piece_stat run data get storage potty:player mainhand_stats.damage
scoreboard players operation @s weapon_damage += @s __gear_piece_stat

execute store result score @s max_wand_cast_time run data get entity @s SelectedItem.components.minecraft:custom_data.spells.right_click.max_cast_time
execute store result score @s required_wand_sneak_time run data get entity @s SelectedItem.components.minecraft:custom_data.spells.hold_sneak.max_cast_time
execute store result score @s max_wand_sneak_time run data get entity @s SelectedItem.components.minecraft:custom_data.spells.sneak_click.max_cast_time
execute store result score @s click_required_mana run data get entity @s SelectedItem.components.minecraft:custom_data.spells.right_click.cost


scoreboard players operation @s max_mana = @s intelligence
scoreboard players add @s max_mana 100


function potty:combat/calculate_damage



scoreboard players set @s base_sweeping_range 0
execute store result score @s __gear_piece_stat run data get storage potty:player mainhand_stats.sweeping_range
scoreboard players operation @s base_sweeping_range += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player head_stats.sweeping_range
scoreboard players operation @s base_sweeping_range += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player chest_stats.sweeping_range
scoreboard players operation @s base_sweeping_range += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player legs_stats.sweeping_range
scoreboard players operation @s base_sweeping_range += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player feet_stats.sweeping_range
scoreboard players operation @s base_sweeping_range += @s __gear_piece_stat





scoreboard players set @s melee_kill_combo_power 0
execute store result score @s __gear_piece_stat run data get storage potty:player mainhand_stats.melee_combo
scoreboard players operation @s melee_kill_combo_power += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player head_stats.melee_combo
scoreboard players operation @s melee_kill_combo_power += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player chest_stats.melee_combo
scoreboard players operation @s melee_kill_combo_power += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player legs_stats.melee_combo
scoreboard players operation @s melee_kill_combo_power += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player feet_stats.melee_combo
scoreboard players operation @s melee_kill_combo_power += @s __gear_piece_stat

scoreboard players set @s ranged_hit_combo_power 0
execute store result score @s __gear_piece_stat run data get storage potty:player mainhand_stats.melee_combo
scoreboard players operation @s ranged_hit_combo_power += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player head_stats.ranged_combo
scoreboard players operation @s ranged_hit_combo_power += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player chest_stats.ranged_combo
scoreboard players operation @s ranged_hit_combo_power += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player legs_stats.ranged_combo
scoreboard players operation @s ranged_hit_combo_power += @s __gear_piece_stat
execute store result score @s __gear_piece_stat run data get storage potty:player feet_stats.ranged_combo
scoreboard players operation @s ranged_hit_combo_power += @s __gear_piece_stat


scoreboard players set per_level __number 9
# 25 x 4
scoreboard players set base __number 20
scoreboard players operation @s lose_melee_kill_combo_time = @s melee_kill_combo_power
scoreboard players operation @s lose_melee_kill_combo_time *= per_level __number
scoreboard players operation @s lose_melee_kill_combo_time += base __number

scoreboard players operation @s lose_ranged_hit_combo_time = @s ranged_hit_combo_power
scoreboard players operation @s lose_ranged_hit_combo_time *= per_level __number
scoreboard players operation @s lose_ranged_hit_combo_time += base __number
