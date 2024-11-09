
scoreboard players add @s animation_frame 1

execute if score @s animation_frame matches 1 run function potty.items:grindstone/disattach/animation_prepare

execute if score @s animation_frame matches 40 run function potty.items:grindstone/disattach/disattach_first
# execute if score @s animation_frame matches 45 run function potty.items:grindstone/disattach/check_empty
execute if score @s animation_frame matches 45.. run scoreboard players reset @s animation_frame
