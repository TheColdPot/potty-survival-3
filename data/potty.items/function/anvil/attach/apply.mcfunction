data modify storage potty.items:constructor current_attachment set from entity @n[distance=..2,tag=anvil_attachable] item.components."minecraft:custom_data".attachment

# copy the item on the table
data modify storage potty.items:constructor attachment_list set value []
data modify storage potty.items:constructor attachment_list set from entity @n[distance=..2,tag=anvil_item] item.components.minecraft:custom_data.attachments

function potty.items:anvil/attach/apply.macro with storage potty.items:constructor current_attachment

data modify entity @n[distance=..2,tag=anvil_item] item.components.minecraft:custom_data.attachments set from storage potty.items:constructor attachment_list
item modify entity @n[distance=..2,tag=anvil_item] container.0 potty.items:reset_lore
item modify entity @n[distance=..2,tag=anvil_item] container.0 {function:set_components,components:{enchantment_glint_override:true}}