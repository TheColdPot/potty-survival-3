data modify storage potty.items:constructor target set from entity @n[tag=grindstone_item,distance=..1.5] item


# Now remove the first attachment, then SHOOT it!
data modify storage potty.items:constructor current_attachment set from storage potty.items:constructor target.components.minecraft:custom_data.attachments[0]
data remove storage potty.items:constructor target.components.minecraft:custom_data.attachments[0]
execute as @n[tag=grindstone_item,distance=..1.5] run function potty.items:grindstone/disattach/remove_first

# very cool effects
particle minecraft:end_rod ~ ~2 ~ 0 0 0 0.07 50
playsound entity.firework_rocket.blast block @a ~ ~2 ~

# get the attachable out
function potty.items:grindstone/disattach/process_attachable

