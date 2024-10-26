scoreboard players set #attachment_count var 1
execute store result score #attachment_count var run data get storage potty.items:constructor current_attachment.count

data modify storage potty.items:database query set from storage potty.items:constructor current_attachment.id
function potty.items:database/query_attachment

execute if score #attachment_count var matches 1 run item modify entity @s container.0 potty.items:display/attachments/line
execute if score #attachment_count var matches 2.. run item modify entity @s container.0 potty.items:display/attachments/line_with_count