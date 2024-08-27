scoreboard players add @s combo_stacks 1
# scoreboard players set @s combo_progress 0
scoreboard players operation @s combo_progress -= @s combo_max
playsound block.note_block.pling player @s ~ ~ ~ 1 2