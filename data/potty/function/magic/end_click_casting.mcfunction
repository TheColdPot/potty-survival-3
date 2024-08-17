scoreboard players operation @s mana -= @s click_required_mana


attribute @s generic.movement_speed modifier remove potty:magic_cast_movement_scale_1
attribute @s generic.movement_speed modifier remove potty:magic_cast_movement_scale_2


data modify storage potty:player previous_slot set value {}
execute if score @s __previous_selected_slot matches 0 run data modify storage potty:player previous_slot set from entity @s Inventory[{Slot:0b}]
execute if score @s __previous_selected_slot matches 1 run data modify storage potty:player previous_slot set from entity @s Inventory[{Slot:1b}]
execute if score @s __previous_selected_slot matches 2 run data modify storage potty:player previous_slot set from entity @s Inventory[{Slot:2b}]
execute if score @s __previous_selected_slot matches 3 run data modify storage potty:player previous_slot set from entity @s Inventory[{Slot:3b}]
execute if score @s __previous_selected_slot matches 4 run data modify storage potty:player previous_slot set from entity @s Inventory[{Slot:4b}]
execute if score @s __previous_selected_slot matches 5 run data modify storage potty:player previous_slot set from entity @s Inventory[{Slot:5b}]
execute if score @s __previous_selected_slot matches 6 run data modify storage potty:player previous_slot set from entity @s Inventory[{Slot:6b}]
execute if score @s __previous_selected_slot matches 7 run data modify storage potty:player previous_slot set from entity @s Inventory[{Slot:7b}]
execute if score @s __previous_selected_slot matches 8 run data modify storage potty:player previous_slot set from entity @s Inventory[{Slot:8b}]


playsound block.amethyst_block.break player @a ~ ~ ~ 1 1.3

# IM SICK OF FOLLOWING STANDARDS.
# LATER IT SETS CAST TIME.
# SO I CAN MODIFY IT IN SPELLS.
# I DONT GIVE A FUCK.
execute if data storage potty:player {previous_slot:{components:{"minecraft:custom_data":{potty_id:"ice_wand"}}}} run function potty:magic/spells/ice_wand/ice_toss
execute if data storage potty:player {previous_slot:{components:{"minecraft:custom_data":{potty_id:"hyperion"}}}} run function potty:magic/spells/hyperion/wither_impact/test
execute if data storage potty:player {previous_slot:{components:{"minecraft:custom_data":{potty_id:"precursor_staff"}}}} run function potty:magic/spells/precursor_staff/beam/test
execute if data storage potty:player {previous_slot:{components:{"minecraft:custom_data":{potty_id:"adams_hammer"}}}} run function potty:magic/spells/adams_hammer/earthquake/test
execute if data storage potty:player {previous_slot:{components:{"minecraft:custom_data":{potty_id:"pursuer"}}}} run function potty:magic/spells/pursuer/summon_skull
execute if data storage potty:player {previous_slot:{components:{"minecraft:custom_data":{potty_id:"healing_handle_t4"}}}} run function potty:magic/spells/healing_handle/heal_t4

execute store result score @s wand_cast_time run data get storage potty:player previous_slot.components.minecraft:custom_data.spells.right_click.cooldown

execute if data storage potty:player {previous_slot:{components:{"minecraft:custom_data":{has_charge:1b}}}} run function potty:magic/charging/remove_charge


