# item modify entity @s container.0 potty.items:gear/gear
item modify entity @s container.0 potty.items:feature/mark_melee_weapon
item modify entity @s container.0 potty.items:display/base

function potty.items:process/category
function potty.items:process/stats

execute if data storage potty.items:constructor target.components.minecraft:custom_data.attachments run function potty.items:process/attachments

data remove storage potty.items:constructor target