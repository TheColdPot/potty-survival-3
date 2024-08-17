# @as_target
data modify storage potty:item target set from entity @s Item
summon item_display ~ ~ ~ {Tags:[item_lore_display_helper]}
data modify entity @e[tag=item_lore_display_helper,limit=1] item set from storage potty:item target
item modify entity @e[tag=item_lore_display_helper,limit=1] container.0 potty:lore
data modify entity @s Item set from entity @e[tag=item_lore_display_helper,limit=1] item
kill @e[tag=item_lore_display_helper,limit=1]

