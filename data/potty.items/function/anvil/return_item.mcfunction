execute if score @s animation_frame matches 0.. run return fail

execute as @n[tag=anvil_item,distance=..1.5] run item replace entity @a[limit=1,tag=anvil_player] weapon.mainhand from entity @s container.0
execute as @n[tag=anvil_item,distance=..1.5] run item replace entity @s container.0 with air

playsound entity.item.pickup block @a

tag @s remove anvil_has_item
tag @s add anvil_busy