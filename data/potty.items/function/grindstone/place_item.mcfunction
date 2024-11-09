
execute on target unless function potty.items:grindstone/place_item.check run return fail
execute if score @s animation_frame matches 0.. run return fail

item replace entity @n[tag=grindstone_item,distance=..1.5] container.0 from entity @a[limit=1,tag=grindstone_player] weapon.mainhand
item replace entity @a[limit=1,tag=grindstone_player] weapon.mainhand with air

data modify entity @n[tag=grindstone_item,distance=..1.5] Rotation[0] set from entity @a[limit=1,tag=grindstone_player] Rotation[0]

# data merge entity @n[tag=grindstone_tooltip,distance=..1.5] {transformation:{translation:[0f,.2f,0f]},text:'{"text":"Disattach by Left Click\\nTake by Right Click"}'}

tag @s add grindstone_has_item

playsound block.stone.step block @a