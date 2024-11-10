data modify storage potty.items:constructor current_attachment set from entity @n[distance=..2,tag=anvil_attachable] item.components."minecraft:custom_data".attachment

# copy the item on the table
data modify storage potty.items:constructor attachment_list set value []
data modify storage potty.items:constructor attachment_list set from entity @n[distance=..2,tag=anvil_item] item.components.minecraft:custom_data.attachments

function potty.items:anvil/attach/apply.macro with storage potty.items:constructor current_attachment

execute store result score #occupied_attachment_slots var run data get entity @n[distance=..2,tag=anvil_item] item.components."minecraft:custom_data".occupied_attachment_slots
scoreboard players add #occupied_attachment_slots var 1
execute store result entity @n[distance=..2,tag=anvil_item] item.components."minecraft:custom_data".occupied_attachment_slots int 1 run scoreboard players get #occupied_attachment_slots var
scoreboard players reset #occupied_attachment_slots var

data modify entity @n[distance=..2,tag=anvil_item] item.components.minecraft:custom_data.attachments set from storage potty.items:constructor attachment_list
item modify entity @n[distance=..2,tag=anvil_item] container.0 potty.items:reset_lore
item modify entity @n[distance=..2,tag=anvil_item] container.0 {function:set_components,components:{enchantment_glint_override:true}}