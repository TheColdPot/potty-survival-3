execute store result storage potty:player last_charge_time int 1 run scoreboard players get value global_time
execute store result storage potty:player current_charges int 1 run data get storage potty:player previous_slot.components.minecraft:custom_data.current_charges 0.99
item modify entity @s weapon.mainhand potty:spells/copy_both_charges_and_charge_time

# data modify storage potty:player inv set from entity @s Inventory
# data modify storage potty:player expected_id set value {potty_id:""}
# data modify storage potty:player expected_id.potty_id set from storage potty:player previous_slot.components.minecraft:custom_data.potty_id

# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:0b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.0 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.0 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.0 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.1 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.1 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.1 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:2b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.2 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.2 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.2 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:3b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.3 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.3 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.3 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:4b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.4 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.4 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.4 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:5b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.5 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.5 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.5 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:6b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.6 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.6 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.6 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:7b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.7 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.7 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.7 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:8b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.8 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.8 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.8 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:9b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.9 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.9 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.9 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:10b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.10 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.10 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.10 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:11b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.11 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.11 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.11 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:12b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.12 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.12 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.12 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:13b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.13 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.13 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.13 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:14b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.14 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.14 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.14 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:15b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.15 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.15 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.15 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:16b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.16 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.16 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.16 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:17b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.17 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.17 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.17 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:18b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.18 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.18 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.18 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:19b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.19 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.19 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.19 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:20b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.20 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.20 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.20 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:21b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.21 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.21 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.21 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:22b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.22 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.22 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.22 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:23b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.23 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.23 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.23 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:24b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.24 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.24 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.24 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:25b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.25 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.25 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.25 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:26b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.26 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.26 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.26 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:27b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.27 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.27 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.27 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:28b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.28 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.28 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.28 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:29b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.29 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.29 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.29 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:30b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.30 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.30 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.30 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:31b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.31 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.31 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.31 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:32b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.32 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.32 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.32 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:33b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.33 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.33 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.33 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:34b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.34 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.34 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.34 potty:spells/copy_both_charges_and_charge_time
# data modify storage potty:player current_id set value {potty_id:""}
# data modify storage potty:player current_id set from entity @s Inventory[{Slot:35b}].components.minecraft:custom_data.potty_id
# scoreboard players set same_id __number 1
# execute if items entity @s container.35 *[custom_data~{has_charge:1b}] store success score same_id __number run data modify storage potty:player current_id merge from storage potty:player expected_id
# execute if items entity @s container.35 *[custom_data~{has_charge:1b}] unless score same_id __number matches 1.. run item modify entity @s container.35 potty:spells/copy_both_charges_and_charge_time