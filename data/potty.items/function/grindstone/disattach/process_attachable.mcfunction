data modify storage potty.items:constructor target set value {id:"iron_nugget",components:{"minecraft:custom_data":{is_attachable:1b,request_lore:1b,attachment:{id:""}}}}
data modify storage potty.items:constructor item.components."minecraft:custom_data".attachment.id set from storage potty.items:constructor current_attachment.id

function potty.items:process/from_storage

# summon an item
summon item ~ ~1 ~ {Tags:[grindstone_attachable,new_summon],Item:{id:"iron_nugget"}, Motion:[0d, .1d, 0d],PickupDelay:20s}
data modify storage potty.items:constructor target.count set from storage potty.items:constructor current_attachment.count
data modify entity @e[type=item,distance=..2,tag=grindstone_attachable,tag=new_summon,limit=1] Item set from storage potty.items:constructor target

tag @e[type=item,distance=..1,tag=grindstone_attachable,tag=new_summon,limit=1] remove new_summon