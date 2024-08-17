execute if score @s wand_sneak_time matches 1.. run return fail

execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{has_charge:1b}}}} if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{current_charges:0}}}} run return fail
 
execute if score @s mana < @s click_required_mana run return run scoreboard players set @s wand_cast_time 0

execute unless data entity @s SelectedItem.components.minecraft:custom_data.spells.right_click.no_cast_sound run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 2

scoreboard players add @s wand_cast_time 1



