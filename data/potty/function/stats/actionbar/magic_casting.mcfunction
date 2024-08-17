scoreboard players operation @s[scores={wand_cast_time=1..}] __wand_cast_progress = @s wand_cast_time
scoreboard players operation @s[scores={wand_sneak_time=1..}] __wand_cast_progress = @s wand_sneak_time
scoreboard players set total_chars __number 15
scoreboard players operation @s __wand_cast_progress *= total_chars __number

execute if score @s wand_cast_time matches 1.. run scoreboard players operation @s __wand_cast_progress /= @s max_wand_cast_time

execute if score @s wand_sneak_time matches 1.. run scoreboard players operation @s[tag=magic.is_hold_sneak] __wand_cast_progress /= @s required_wand_sneak_time
execute if score @s wand_sneak_time matches 1.. run scoreboard players operation @s[tag=magic.is_sneak_click] __wand_cast_progress /= @s max_wand_sneak_time

execute if score @s wand_cast_time matches 1.. run scoreboard players operation @s __spell_mana_cost = @s click_required_mana

execute if score @s wand_sneak_time matches 1.. run scoreboard players operation @s __spell_mana_cost = @s sneak_required_mana

data modify storage potty:effects actionbar.cast_progress set value []
data modify storage potty:effects actionbar.left_progress set value [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

execute if score @s wand_cast_time matches 1.. run data modify storage potty:effects actionbar.spell_name set value '{"nbt":"SelectedItem.components.minecraft:custom_data.spells.right_click.name","interpret":true,"entity":"@s","color":"gold"}'
execute if score @s[tag=magic.is_sneak_click] wand_sneak_time matches 1.. run data modify storage potty:effects actionbar.spell_name set value '{"nbt":"SelectedItem.components.minecraft:custom_data.spells.sneak_click.name","interpret":true,"entity":"@s","color":"gold"}'
execute if score @s[tag=magic.is_hold_sneak] wand_sneak_time matches 1.. run data modify storage potty:effects actionbar.spell_name set value '{"nbt":"SelectedItem.components.minecraft:custom_data.spells.hold_sneak.name","interpret":true,"entity":"@s","color":"gold"}'

tag @s remove magic.need_full_cast

execute if entity @s[tag=magic.is_hold_sneak,scores={wand_sneak_time=1..}] run tag @s add magic.need_full_cast

# execute if score @s __wand_cast_progress matches 15.. run return run title @s actionbar ["", [{"text":"sᴘᴇʟʟ  ","color":"yellow"},{"nbt":"actionbar.spell_name","interpret":true,"storage":"potty:effects","color":"gold"},"  ", [{"text":"               ","strikethrough":true,"color":"gold"}]], "      ",[{"score": {"name": "*", "objective": "mana"},"color":"aqua"}, "/", {"score": {"name": "*", "objective": "max_mana","color":"red"}}, {"text":" 🖊"}]]
execute if score @s __wand_cast_progress matches 15.. if entity @s[tag=!magic.need_full_cast] run return run title @s actionbar ["", [{"text":"ʙᴏᴏsᴛɪɴɢ  ","color":"yellow"},{"nbt":"actionbar.spell_name","interpret":true,"storage":"potty:effects","color":"gold"},"  ", [{"text":"               ","strikethrough":true,"color":"gold"}]],[{"text":"  (","color":"aqua"},{"score":{"name":"@s","objective":"__spell_mana_cost"}},{"text":" Mana)"}]]
execute if score @s __wand_cast_progress matches 15.. unless entity @s[tag=magic.need_full_cast] run return run title @s actionbar ["", [{"text":"ᴄʜᴀʀɢɪɴɢ  ","color":"yellow"},{"nbt":"actionbar.spell_name","interpret":true,"storage":"potty:effects","color":"gold"},"  ", [{"text":"               ","strikethrough":true,"color":"gold"}]],[{"text":"  (","color":"aqua"},{"score":{"name":"@s","objective":"__spell_mana_cost"}},{"text":" Mana)"}]]

execute if score @s __wand_cast_progress matches 1.. run function potty:stats/actionbar/magic_progress_string_modification
execute if score @s __wand_cast_progress matches 2.. run function potty:stats/actionbar/magic_progress_string_modification
execute if score @s __wand_cast_progress matches 3.. run function potty:stats/actionbar/magic_progress_string_modification
execute if score @s __wand_cast_progress matches 4.. run function potty:stats/actionbar/magic_progress_string_modification
execute if score @s __wand_cast_progress matches 5.. run function potty:stats/actionbar/magic_progress_string_modification
execute if score @s __wand_cast_progress matches 6.. run function potty:stats/actionbar/magic_progress_string_modification
execute if score @s __wand_cast_progress matches 7.. run function potty:stats/actionbar/magic_progress_string_modification
execute if score @s __wand_cast_progress matches 8.. run function potty:stats/actionbar/magic_progress_string_modification
execute if score @s __wand_cast_progress matches 9.. run function potty:stats/actionbar/magic_progress_string_modification
execute if score @s __wand_cast_progress matches 10.. run function potty:stats/actionbar/magic_progress_string_modification
execute if score @s __wand_cast_progress matches 11.. run function potty:stats/actionbar/magic_progress_string_modification
execute if score @s __wand_cast_progress matches 12.. run function potty:stats/actionbar/magic_progress_string_modification
execute if score @s __wand_cast_progress matches 13.. run function potty:stats/actionbar/magic_progress_string_modification
execute if score @s __wand_cast_progress matches 14.. run function potty:stats/actionbar/magic_progress_string_modification
execute if score @s __wand_cast_progress matches 15.. run function potty:stats/actionbar/magic_progress_string_modification







# title @s actionbar ["", [{"text":"sᴘᴇʟʟ  ","color":"yellow"}, {"nbt":"actionbar.spell_name","interpret":true,"storage":"potty:effects","color":"gold"},"  ", [{"nbt":"actionbar.cast_progress","storage":"potty:effects","interpret":true,"strikethrough":true,"color":"light_purple"},{"nbt":"actionbar.left_progress","storage":"potty:effects","interpret":true,"color":"gray"}]], "      ",[{"score": {"name": "*", "objective": "mana"},"color":"aqua"}, "/", {"score": {"name": "*", "objective": "max_mana","color":"red"}}, {"text":" 🖊"}]]
title @s[tag=magic.need_full_cast] actionbar ["", [{"text":"ᴄʜᴀʀɢɪɴɢ  ","color":"yellow"}, {"nbt":"actionbar.spell_name","interpret":true,"storage":"potty:effects","color":"gold"},"  ", [{"nbt":"actionbar.cast_progress","storage":"potty:effects","interpret":true,"strikethrough":true,"color":"light_purple"},{"nbt":"actionbar.left_progress","storage":"potty:effects","interpret":true,"color":"gray"}]],[{"text":"  (","color":"aqua"},{"score":{"name":"@s","objective":"__spell_mana_cost"}},{"text":" Mana)"}]]
title @s[tag=!magic.need_full_cast] actionbar ["", [{"text":"ʙᴏᴏsᴛɪɴɢ  ","color":"yellow"}, {"nbt":"actionbar.spell_name","interpret":true,"storage":"potty:effects","color":"gold"},"  ", [{"nbt":"actionbar.cast_progress","storage":"potty:effects","interpret":true,"strikethrough":true,"color":"light_purple"},{"nbt":"actionbar.left_progress","storage":"potty:effects","interpret":true,"color":"gray"}]],[{"text":"  (","color":"aqua"},{"score":{"name":"@s","objective":"__spell_mana_cost"}},{"text":" Mana)"}]]

tag @s remove magic.need_full_cast
