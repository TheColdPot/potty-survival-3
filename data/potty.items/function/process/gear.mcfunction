item modify entity @s container.0 potty.items:feature/mark_melee_weapon

function potty.items:process/category
function potty.items:process/stats

execute store result score #attachment_count var run data get storage potty.items:constructor target.components.minecraft:custom_data.attachments

execute if data storage potty.items:constructor target.components.minecraft:custom_data.attachments unless score #attachment_count var matches ..0 run function potty.items:process/attachments

execute if score #attachment_count var matches 1.. run item modify entity @s container.0 {function:"set_components",components:{enchantment_glint_override:true}}
execute unless score #attachment_count var matches 1.. run item modify entity @s container.0 {function:"set_components",components:{enchantment_glint_override:false}}

scoreboard players reset #attachment_count

