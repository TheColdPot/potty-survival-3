execute if items entity @s container.* *[custom_data~{request_lore:true}] run function potty.items:inventory/test

scoreboard players operation #old_selected_slot var = @s selected_slot
execute store result score @s selected_slot run data get entity @s SelectedItemSlot
execute unless score #old_selected_slot var = @s selected_slot run function potty.items:stats/add_mainhand
