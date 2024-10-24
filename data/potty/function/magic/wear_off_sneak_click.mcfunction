playsound block.amethyst_block.break player @a ~ ~ ~ 1 1.3


scoreboard players set @s wand_sneak_time 0
advancement revoke @s only potty:trigger/right_click_wand

attribute @s movement_speed modifier remove potty:magic_cast_movement_scale_1
attribute @s movement_speed modifier remove potty:magic_cast_movement_scale_2

scoreboard players set @s wand_sneak_time 0

scoreboard players operation @s wand_sneak_time -= @s max_wand_sneak_time
