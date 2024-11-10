
data modify storage potty.items:constructor attachments set from entity @s item.components."minecraft:custom_data".attachments
execute store result score #attachments_list_length var run data get storage potty.items:constructor attachments


## sum counts

scoreboard players set #total_attachment_count var 0
scoreboard players set #slot_attachment_count var 0
execute store result score #slot_attachment_count var run data get storage potty.items:constructor attachments[0].count
scoreboard players operation #total_attachment_count var += #slot_attachment_count var
scoreboard players set #slot_attachment_count var 0
execute store result score #slot_attachment_count var run data get storage potty.items:constructor attachments[1].count
scoreboard players operation #total_attachment_count var += #slot_attachment_count var
scoreboard players set #slot_attachment_count var 0
execute store result score #slot_attachment_count var run data get storage potty.items:constructor attachments[2].count
scoreboard players operation #total_attachment_count var += #slot_attachment_count var
scoreboard players set #slot_attachment_count var 0
execute store result score #slot_attachment_count var run data get storage potty.items:constructor attachments[3].count
scoreboard players operation #total_attachment_count var += #slot_attachment_count var
scoreboard players set #slot_attachment_count var 0
execute store result score #slot_attachment_count var run data get storage potty.items:constructor attachments[4].count
scoreboard players operation #total_attachment_count var += #slot_attachment_count var

item modify entity @s container.0 potty.items:display/attachments/header
execute store result entity @s item.components."minecraft:custom_data".occupied_attachment_slots int 1 run scoreboard players get #total_attachment_count var

scoreboard players reset #total_attachment_count
scoreboard players reset #slot_attachment_count

## add each line

data modify storage potty.items:constructor current_attachment set from storage potty.items:constructor attachments[0]
function potty.items:process/attachments.line

execute if score #attachments_list_length var matches 2.. run data modify storage potty.items:constructor current_attachment set from storage potty.items:constructor attachments[1]
execute if score #attachments_list_length var matches 2.. run function potty.items:process/attachments.line

execute if score #attachments_list_length var matches 3.. run data modify storage potty.items:constructor current_attachment set from storage potty.items:constructor attachments[2]
execute if score #attachments_list_length var matches 3.. run function potty.items:process/attachments.line

execute if score #attachments_list_length var matches 4.. run data modify storage potty.items:constructor current_attachment set from storage potty.items:constructor attachments[3]
execute if score #attachments_list_length var matches 4.. run function potty.items:process/attachments.line

execute if score #attachments_list_length var matches 5.. run data modify storage potty.items:constructor current_attachment set from storage potty.items:constructor attachments[4]
execute if score #attachments_list_length var matches 5.. run function potty.items:process/attachments.line
