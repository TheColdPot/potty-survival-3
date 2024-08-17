function potty:magic/end_sneaking
scoreboard players operation @s wand_sneak_time -= @s required_wand_sneak_time
scoreboard players operation @s wand_sneak_time -= @s required_wand_sneak_time
tellraw @s [{"text":"Getting hurt, your casting has been interrupted!","color":"red"}]
