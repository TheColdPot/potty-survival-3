item modify entity @s container.0 potty.items:display/attachments/header

data modify storage potty.items:constructor attachments set from entity @s item.components."minecraft:custom_data".attachments
execute store result score #attachments_list_length var run data get storage potty.items:constructor attachments

data modify storage potty.items:constructor current_attachment set from storage potty.items:constructor attachments[0]

function potty.items:process/attachments.line
