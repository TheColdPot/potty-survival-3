data merge storage potty:item {target_has_name:0b}
execute if data storage potty:item target.components.minecraft:item_name run data merge storage potty:item {target_has_name:1b}
execute if data storage potty:item target.components.minecraft:item_name run data modify storage potty:item target.components.minecraft:custom_data.name set from storage potty:item target.components.minecraft:item_name



