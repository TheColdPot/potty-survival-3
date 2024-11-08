execute unless entity @s[tag=grindstone_has_item] run \
  return run tellraw @a[tag=grindstone_player,limit=1] {"text":"Place an item first!"}

execute as @n[tag=grindstone_item,distance=..1.5] run data modify storage potty.items:constructor target set from entity @s item

execute store result score #attachment_list_length var run data get storage potty.items:constructor target.components.minecraft:custom_data.attachments

execute if score #attachment_list_length var matches ..0 run \
  return run tellraw @a[tag=grindstone_player,limit=1] {"text":"No more attachments!"}

# If the function runs to this place, it's asserted that there IS an attachment to be removed.
# Now remove the first attachment, then SHOOT it!
data modify storage potty.items:constructor current_attachment set from storage potty.items:constructor target.components.minecraft:custom_data.attachments[0]
data remove storage potty.items:constructor target.components.minecraft:custom_data.attachments[0]
execute as @n[tag=grindstone_item,distance=..1.5] run function potty.items:grindstone/disattach/remove_first

# very cool effects
particle block{block_state:{Name:"smooth_stone"}} ~ ~1 ~ 0 0 0 0 100
playsound block.grindstone.use block @a ~ ~ ~

# get the attachable out
function potty.items:grindstone/disattach/process_attachable


execute if score #attachment_list_length var matches 1 run function potty.items:grindstone/disattach/return_no_attachment

scoreboard players reset #attachment_list_length var