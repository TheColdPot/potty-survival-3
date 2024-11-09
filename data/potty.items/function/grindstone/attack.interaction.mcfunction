execute unless entity @s[tag=grindstone_has_item] run \
  return run tellraw @a[tag=grindstone_player,limit=1] {"text":"Place an item first!"}

execute as @n[tag=grindstone_item,distance=..1.5] run data modify storage potty.items:constructor target set from entity @s item

execute store result score #attachment_count var run data get storage potty.items:constructor target.components.minecraft:custom_data.attachments

execute if score #attachment_count var matches ..0 run \
  return run tellraw @a[tag=grindstone_player,limit=1] {"text":"No more attachments!"}

# If the function runs to this place, it's asserted that there IS an attachment to be removed.
execute unless score @s animation_frame matches 0.. at @s run scoreboard players set @s animation_frame 0