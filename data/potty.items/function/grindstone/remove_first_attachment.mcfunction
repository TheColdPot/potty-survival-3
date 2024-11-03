

execute store result score #attachment_count var run data get storage potty.items:constructor target.components.minecraft:custom_data.attachments
execute if score #attachment_count var matches ..0 run data remove storage potty.items:constructor target.minecraft:custom_data.attachments

data modify entity @s item set from storage potty.items:constructor target
item modify entity @s container.0 potty.items:request_lore
data remove entity @s item.components."minecraft:lore"

scoreboard players reset #attachment_count