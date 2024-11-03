execute as @a[limit=1,tag=grindstone_player] if items entity @s weapon.mainhand * run return run tellraw @a[limit=1,tag=grindstone_player] {"text":"Pick this up with an empty slot!"}

execute on passengers if entity @s[tag=grindstone_item] run item replace entity @a[limit=1,tag=grindstone_player] weapon.mainhand from entity @s container.0
execute on passengers if entity @s[tag=grindstone_item] run item replace entity @s container.0 with air

playsound entity.item.pickup block @a

tag @s remove grindstone_has_item
tag @s add grindstone_busy