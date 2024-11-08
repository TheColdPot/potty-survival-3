
execute on target unless function potty.items:grindstone/place_item.check run return fail

# execute on passengers if entity @s[tag=grindstone_item] run item replace entity @s container.0 from entity @a[limit=1,tag=grindstone_player] weapon.mainhand
item replace entity @n[tag=grindstone_item,distance=..1.5] container.0 from entity @a[limit=1,tag=grindstone_player] weapon.mainhand
item replace entity @a[limit=1,tag=grindstone_player] weapon.mainhand with air

data modify entity @n[tag=grindstone_item,distance=..1.5] Rotation[0] set from entity @a[limit=1,tag=grindstone_player] Rotation[0]

tag @s add grindstone_has_item

playsound block.stone.step block @a