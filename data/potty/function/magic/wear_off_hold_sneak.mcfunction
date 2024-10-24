execute if entity @s[tag=magic.is_hold_sneak] store result score @s sneak_required_mana run data get entity @s SelectedItem.components.minecraft:custom_data.spells.hold_sneak.cost
execute if entity @s[tag=magic.is_sneak_click] store result score @s sneak_required_mana run data get entity @s SelectedItem.components.minecraft:custom_data.spells.sneak_click.cost

scoreboard players operation @s mana -= @s sneak_required_mana

execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{potty_id:"ice_wand"}}}} run function potty:magic/spells/ice_wand/shockwave
playsound block.amethyst_block.break player @a ~ ~ ~ 1 1.3

scoreboard players set @s wand_sneak_time 0
scoreboard players operation @s wand_sneak_time -= @s required_wand_sneak_time
scoreboard players operation @s wand_sneak_time -= @s required_wand_sneak_time

attribute @s movement_speed modifier remove potty:magic_cast_movement_scale_1
attribute @s movement_speed modifier remove potty:magic_cast_movement_scale_2
