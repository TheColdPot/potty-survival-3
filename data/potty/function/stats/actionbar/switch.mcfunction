data modify storage potty:effects actionbar set value {}

execute if entity @s[tag=magic.is_general_casting] run return run function potty:stats/actionbar/magic_casting
# CASTING (example)

execute if score @s melee_kill_combo matches 1.. if score @s ranged_hit_combo matches 1.. run return run title @s actionbar ["", [{"score": {"name": "*", "objective": "health"},"color":"red"}, "/", {"score": {"name": "*", "objective": "max_health","color":"red"}}, {"text":" ❤"}], "   ", [{"text":"🌀 ","color":"gold"}, {"score":{"name":"*","objective":"melee_kill_combo"}}], "  ", [{"text":"🌟 ","color":"gold"}, {"score":{"name":"*","objective":"ranged_hit_combo"}}], "   ",[{"score": {"name": "*", "objective": "mana"},"color":"aqua"}, "/", {"score": {"name": "*", "objective": "max_mana","color":"red"}}, {"text":" 🖊"}]]
execute if score @s melee_kill_combo matches 1.. run return run title @s actionbar ["", [{"score": {"name": "*", "objective": "health"},"color":"red"}, "/", {"score": {"name": "*", "objective": "max_health","color":"red"}}, {"text":" ❤"}], "   ", [{"text":"Cyclone 🌀 ","color":"gold"}, {"score":{"name":"*","objective":"melee_kill_combo"}}], "   ",[{"score": {"name": "*", "objective": "mana"},"color":"aqua"}, "/", {"score": {"name": "*", "objective": "max_mana","color":"red"}}, {"text":" 🖊"}]]
execute if score @s ranged_hit_combo matches 1.. run return run title @s actionbar ["", [{"score": {"name": "*", "objective": "health"},"color":"red"}, "/", {"score": {"name": "*", "objective": "max_health","color":"red"}}, {"text":" ❤"}], "   ", [{"text":"Nova Strike 🌟 ","color":"gold"}, {"score":{"name":"*","objective":"ranged_hit_combo"}}], "   ",[{"score": {"name": "*", "objective": "mana"},"color":"aqua"}, "/", {"score": {"name": "*", "objective": "max_mana","color":"red"}}, {"text":" 🖊"}]]


# IDLE
title @s actionbar ["", [{"score": {"name": "@s", "objective": "health"},"color":"red"}, "/", {"score": {"name": "@s", "objective": "max_health","color":"red"}}, {"text":" ❤"}], "   ",[{"score": {"name": "@s", "objective": "mana"},"color":"aqua"}, "/", {"score": {"name": "@s", "objective": "max_mana","color":"red"}}, {"text":" 🖊"}]]

# DDDd
# scoreboard players remove @a[scores={display_combo_left_time=1..}] display_combo_left_time 1



