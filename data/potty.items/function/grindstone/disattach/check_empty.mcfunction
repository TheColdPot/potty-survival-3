execute store result score #attachment_count var run data get entity @n[tag=grindstone_item,distance=..1.5] item.components.minecraft:custom_data.attachments

execute if score #attachment_count var matches 0 run function potty.items:grindstone/disattach/return_no_attachment

scoreboard players reset #attachment_count var