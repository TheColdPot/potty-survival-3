scoreboard players add @s melee_charge_stacks 1
# scoreboard players set @s combo_progress 0
scoreboard players operation @s combo_progress -= #melee_charge_max var
playsound block.note_block.pling player @s ~ ~ ~ 1 2
playsound minecraft:block.amethyst_block.break player @s ~ ~ ~ 1 1.5