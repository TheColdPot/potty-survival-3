execute if score @s wand_cast_time matches 1.. run return fail



execute if entity @s[tag=magic.is_hold_sneak] store result score @s sneak_required_mana run data get entity @s SelectedItem.components.minecraft:custom_data.spells.hold_sneak.cost
execute if entity @s[tag=magic.is_sneak_click] store result score @s sneak_required_mana run data get entity @s SelectedItem.components.minecraft:custom_data.spells.sneak_click.cost


execute if score @s mana < @s sneak_required_mana run return run scoreboard players set @s wand_sneak_time 0

execute if entity @s[tag=!magic.is_hold_sneak,tag=!magic.is_sneak_click] run return fail

playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 2
scoreboard players add @s wand_sneak_time 1



