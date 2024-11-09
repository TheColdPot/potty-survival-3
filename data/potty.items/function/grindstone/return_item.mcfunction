execute if score @s animation_frame matches 0.. run return fail
execute as @a[limit=1,tag=grindstone_player] if items entity @s weapon.mainhand * run return run tellraw @a[limit=1,tag=grindstone_player] {"text":"Pick this up with an empty slot!"}

execute as @n[tag=grindstone_item,distance=..1.5] run item replace entity @a[limit=1,tag=grindstone_player] weapon.mainhand from entity @s container.0
execute as @n[tag=grindstone_item,distance=..1.5] run item replace entity @s container.0 with air

playsound entity.item.pickup block @a

# data merge entity @n[tag=grindstone_tooltip,distance=..1.5] {transformation:{translation:[0f,-.1f,0f]},text:'["ɢʀɪɴᴅsᴛᴏɴᴇ","\\n",{"translate":"","fallback":"Place by %s","with": [{"keybind": "key.use", "color": "yellow"}]}]'}


tag @s remove grindstone_has_item
tag @s add grindstone_busy