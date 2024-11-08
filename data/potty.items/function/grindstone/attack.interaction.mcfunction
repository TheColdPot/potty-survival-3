execute unless entity @s[tag=grindstone_has_item] run \
  return run tellraw @a[tag=grindstone_player,limit=1] {"text":"Place an item first!"}

execute as @n[tag=grindstone_item,distance=..1.5] run data modify storage potty.items:constructor target set from entity @s item

execute store result score #attachment_count var run data get storage potty.items:constructor target.components.minecraft:custom_data.attachments

execute if score #attachment_count var matches ..0 run \
  return run tellraw @a[tag=grindstone_player,limit=1] {"text":"No more attachments!"}

# If the function runs to this place, it's asserted that there IS an attachment to be removed.
# Now remove the first attachment, then SHOOT it!
data modify storage potty.items:constructor current_attachment set from storage potty.items:constructor target.components.minecraft:custom_data.attachments[0]
data remove storage potty.items:constructor target.components.minecraft:custom_data.attachments[0]
execute as @n[tag=grindstone_item,distance=..1.5] run function potty.items:grindstone/remove_first_attachment

# very cool effects
particle block{block_state:{Name:"smooth_stone"}} ~ ~1 ~ 0 0 0 0 100
playsound block.grindstone.use block @a ~ ~ ~

# get the attachable out
item replace entity 706f7474-7973-4872-0000-adc200000001 container.0 with iron_nugget[custom_data={is_attachable:1b,request_lore:1b,attachment:{id:""}}]
data modify entity 706f7474-7973-4872-0000-adc200000001 item.components."minecraft:custom_data".attachment.id set from storage potty.items:constructor current_attachment.id
data modify storage potty.items:constructor target set from entity 706f7474-7973-4872-0000-adc200000001 item
function potty.items:process/start
summon item ~ ~1 ~ {Tags:[grindstone_attachable,new_summon],Item:{id:"iron_nugget"}, Motion:[0d, .1d, 0d],PickupDelay:40s}
data modify entity 706f7474-7973-4872-0000-adc200000001 item.count set from storage potty.items:constructor current_attachment.count
data modify entity @e[type=item,distance=..2,tag=grindstone_attachable,tag=new_summon,limit=1] Item set from entity 706f7474-7973-4872-0000-adc200000001 item
tag @e[type=item,distance=..1,tag=grindstone_attachable,tag=new_summon,limit=1] remove new_summon
