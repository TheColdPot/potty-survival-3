# check if empty hand
execute if data entity @s SelectedItem.components.minecraft:custom_data.attachments[0] run return 1

return fail