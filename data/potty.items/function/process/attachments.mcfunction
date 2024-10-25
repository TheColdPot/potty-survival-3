item modify entity @s container.0 potty.items:display/attachments/header

data modify storage potty:item attachments set from entity @s item.components."minecraft:custom_data".attachments
execute store result score #attachments_list_length var run data get storage potty:item attachments

data modify storage potty:item current_attachment set from storage potty:item attachments[0]

function potty.items:process/attachments.line
