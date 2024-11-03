# query info from database

data modify storage potty.items:database query set from storage potty.items:constructor target.components.minecraft:custom_data.attachment.id
function potty.items:database/query_attachment

item modify entity @s container.0 potty.items:display/attachments/attachable_name
item modify entity @s container.0 potty.items:display/attachments/attachable_inscription
item modify entity @s container.0 potty.items:display/attachments/header_ability
item modify entity @s container.0 potty.items:display/attachments/line

tellraw @a {"nbt":"output", "storage": "potty.items:database"}
