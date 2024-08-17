$data modify storage potty:player current_wand_item set from entity @s Inventory[{Slot:$(Slot)b}]

execute unless data storage potty:player current_wand_item.components.minecraft:custom_data.current_charges run data modify storage potty:player current_wand_item.minecraft:custom_data.current_charges set from storage potty:player current_wand_item.components.minecraft:custom_data.spells.right_click.max_charges

execute store result score max_charges __number run data get storage potty:player current_wand_item.components.minecraft:custom_data.spells.right_click.max_charges
execute store result score current_charges __number run data get storage potty:player current_wand_item.components.minecraft:custom_data.current_charges
scoreboard players set cent __number 100
scoreboard players set tps __number 20
scoreboard players set min_percent __number 5 
scoreboard players set max_percent __number 99
scoreboard players operation current_charges __number *= cent __number
scoreboard players operation current_charges __number /= max_charges __number
scoreboard players operation current_charges __number > min_percent __number
scoreboard players operation current_charges __number < max_percent __number


$item modify entity @s container.$(Slot) { "function": "set_damage", "damage": { "type": "score", "scale": 0.01, "target": { "type": "fixed", "name": "current_charges" }, "score": "__number" } }


execute store result score last_charge_time __number run data get storage potty:player current_wand_item.components.minecraft:custom_data.last_charge_time
scoreboard players operation wand_charge_time_copy global_time = value global_time
scoreboard players operation wand_charge_time_copy global_time -= last_charge_time __number
execute store result score charge_time __number run data get storage potty:player current_wand_item.components.minecraft:custom_data.spells.right_click.charge_time
scoreboard players operation charge_time __number *= tps __number

execute store result score max_charges __number run data get storage potty:player current_wand_item.components.minecraft:custom_data.spells.right_click.max_charges
execute store result score current_charges __number run data get storage potty:player current_wand_item.components.minecraft:custom_data.current_charges
scoreboard players add current_charges __number 1


## RETURN
execute if score current_charges __number > max_charges __number run return fail


## RETURN
execute unless score wand_charge_time_copy global_time >= charge_time __number run return fail
execute store result storage potty:player current_charges int 1 run scoreboard players get current_charges __number



$item modify entity @s container.$(Slot) potty:spells/copy_charges


execute store result storage potty:player last_charge_time int 1 run scoreboard players get value global_time
$item modify entity @s container.$(Slot) potty:spells/copy_last_charge_time








# say 1