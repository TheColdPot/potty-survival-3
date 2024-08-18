# execute as @a run function potty:stats/update_lore_filter
# execute as @a if items entity @s container.* *[!custom_data~{lore_up_to_date:1b}] run function potty:stats/update_lore_filter


# execute as @e[type=item,nbt=!{Item:{components:{"minecraft:custom_data":{lore_up_to_date:1b}}}}] at @s run function potty:stats/update_lore_for_items



execute as @a store result score @s selected_slot run data get entity @s SelectedItemSlot
execute as @a unless score @s __previous_selected_slot = @s selected_slot run function potty:stats/calculate
execute as @a run scoreboard players operation @s __previous_selected_slot = @s selected_slot



