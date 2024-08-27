scoreboard players operation #combo_percentage var = @s combo_progress 
scoreboard players operation #combo_percentage var *= #FIFTEEN var 
scoreboard players operation #combo_percentage var /= @s combo_max

execute if score #combo_percentage var matches 0 run data merge storage potty:actionbar {bar_left: "", bar_right: "               "}
execute if score #combo_percentage var matches 1 run data merge storage potty:actionbar {bar_left: " ", bar_right: "              "}
execute if score #combo_percentage var matches 2 run data merge storage potty:actionbar {bar_left: "  ", bar_right: "             "}
execute if score #combo_percentage var matches 3 run data merge storage potty:actionbar {bar_left: "   ", bar_right: "            "}
execute if score #combo_percentage var matches 4 run data merge storage potty:actionbar {bar_left: "    ", bar_right: "           "}
execute if score #combo_percentage var matches 5 run data merge storage potty:actionbar {bar_left: "     ", bar_right: "          "}
execute if score #combo_percentage var matches 6 run data merge storage potty:actionbar {bar_left: "      ", bar_right: "         "}
execute if score #combo_percentage var matches 7 run data merge storage potty:actionbar {bar_left: "       ", bar_right: "        "}
execute if score #combo_percentage var matches 8 run data merge storage potty:actionbar {bar_left: "        ", bar_right: "       "}
execute if score #combo_percentage var matches 9 run data merge storage potty:actionbar {bar_left: "         ", bar_right: "      "}
execute if score #combo_percentage var matches 10 run data merge storage potty:actionbar {bar_left: "          ", bar_right: "     "}
execute if score #combo_percentage var matches 11 run data merge storage potty:actionbar {bar_left: "           ", bar_right: "    "}
execute if score #combo_percentage var matches 12 run data merge storage potty:actionbar {bar_left: "            ", bar_right: "   "}
execute if score #combo_percentage var matches 13 run data merge storage potty:actionbar {bar_left: "             ", bar_right: "  "}
execute if score #combo_percentage var matches 14 run data merge storage potty:actionbar {bar_left: "              ", bar_right: " "}
execute if score #combo_percentage var matches 15 run data merge storage potty:actionbar {bar_left: "               ", bar_right: ""}


execute if score @s combo_stacks matches 0 run title @s actionbar ["", [{"score": {"name": "*", "objective": "health"},"color":"red"}, "/", {"score": {"name": "*", "objective": "max_health"}}, {"text":" ❤"}], "   ", \
  \
  [{"text":"🄌","color":"gray"}, "", [{"storage":"potty:actionbar","nbt":"bar_left","strikethrough":true,"color":"gray"},{"storage":"potty:actionbar","nbt":"bar_right","color":"dark_gray"}]], \
  \
  "   ",[{"score": {"name": "*", "objective": "mana"},"color":"aqua"}, "/", {"score": {"name": "*", "objective": "max_mana"}}, {"text":" Mana"}]]

execute if score @s combo_stacks matches 1 run title @s actionbar ["", [{"score": {"name": "*", "objective": "health"},"color":"red"}, "/", {"score": {"name": "*", "objective": "max_health"}}, {"text":" ❤"}], "   ", \
  \
  [{"text":"➊","color":"yellow"}, "", [{"storage":"potty:actionbar","nbt":"bar_left","strikethrough":true,"color":"yellow"},{"storage":"potty:actionbar","nbt":"bar_right","color":"dark_gray"}]], \
  \
  "   ",[{"score": {"name": "*", "objective": "mana"},"color":"aqua"}, "/", {"score": {"name": "*", "objective": "max_mana"}}, {"text":" Mana"}]]

execute if score @s combo_stacks matches 2 run title @s actionbar ["", [{"score": {"name": "*", "objective": "health"},"color":"red"}, "/", {"score": {"name": "*", "objective": "max_health"}}, {"text":" ❤"}], "   ", \
  \
  [{"text":"➋","color":"gold"}, "", [{"storage":"potty:actionbar","nbt":"bar_left","strikethrough":true,"color":"gold"},{"storage":"potty:actionbar","nbt":"bar_right","color":"dark_gray"}]], \
  \
  "   ",[{"score": {"name": "*", "objective": "mana"},"color":"aqua"}, "/", {"score": {"name": "*", "objective": "max_mana"}}, {"text":" Mana"}]]

execute if score @s combo_stacks matches 3 if score @s combo_progress < @s combo_max run title @s actionbar ["", [{"score": {"name": "*", "objective": "health"},"color":"red"}, "/", {"score": {"name": "*", "objective": "max_health"}}, {"text":" ❤"}], "   ", \
  \
  [{"text":"➌","color":"red"}, "", [{"storage":"potty:actionbar","nbt":"bar_left","strikethrough":true,"color":"red"},{"storage":"potty:actionbar","nbt":"bar_right","color":"dark_gray"}]], \
  \
  "   ",[{"score": {"name": "*", "objective": "mana"},"color":"aqua"}, "/", {"score": {"name": "*", "objective": "max_mana"}}, {"text":" Mana"}]]

execute if score @s combo_stacks matches 3 unless score @s combo_progress < @s combo_max run title @s actionbar ["", [{"score": {"name": "*", "objective": "health"},"color":"red"}, "/", {"score": {"name": "*", "objective": "max_health"}}, {"text":" ❤"}], "   ", \
  \
  [{"text":"➌","color":"dark_red"}, "",{"text":"               ","strikethrough":true,"color":"dark_red"}], \
  \
  "   ",[{"score": {"name": "*", "objective": "mana"},"color":"aqua"}, "/", {"score": {"name": "*", "objective": "max_mana"}}, {"text":" Mana"}]]

