# returns the weapon as an item entity, if they have all their attachments removed.


# summon an item
summon item ~ ~1 ~ {Tags:[grindstone_attachable,new_summon],Item:{id:"iron_nugget"}, Motion:[0d, .1d, 0d],PickupDelay:20s}

data modify entity @e[type=item,distance=..2,tag=grindstone_attachable,tag=new_summon,limit=1] Item set from entity @n[tag=grindstone_item,distance=..1.5] item

tag @e[type=item,distance=..1,tag=grindstone_attachable,tag=new_summon,limit=1] remove new_summon

execute as @n[tag=grindstone_item,distance=..1.5] run item replace entity @s container.0 with air

playsound entity.firework_rocket.blast block @a

tag @s remove grindstone_has_item
