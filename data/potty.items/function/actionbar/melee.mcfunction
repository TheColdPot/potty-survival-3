scoreboard players operation #melee_charge_percentage var = @s combo_progress 
scoreboard players operation #melee_charge_percentage var *= #FIFTEEN var 
scoreboard players operation #melee_charge_percentage var /= #melee_charge_max var

execute if score #melee_charge_percentage var matches 0 run data merge storage potty:actionbar {bar_left: "", bar_right: "               "}
execute if score #melee_charge_percentage var matches 1 run data merge storage potty:actionbar {bar_left: " ", bar_right: "              "}
execute if score #melee_charge_percentage var matches 2 run data merge storage potty:actionbar {bar_left: "  ", bar_right: "             "}
execute if score #melee_charge_percentage var matches 3 run data merge storage potty:actionbar {bar_left: "   ", bar_right: "            "}
execute if score #melee_charge_percentage var matches 4 run data merge storage potty:actionbar {bar_left: "    ", bar_right: "           "}
execute if score #melee_charge_percentage var matches 5 run data merge storage potty:actionbar {bar_left: "     ", bar_right: "          "}
execute if score #melee_charge_percentage var matches 6 run data merge storage potty:actionbar {bar_left: "      ", bar_right: "         "}
execute if score #melee_charge_percentage var matches 7 run data merge storage potty:actionbar {bar_left: "       ", bar_right: "        "}
execute if score #melee_charge_percentage var matches 8 run data merge storage potty:actionbar {bar_left: "        ", bar_right: "       "}
execute if score #melee_charge_percentage var matches 9 run data merge storage potty:actionbar {bar_left: "         ", bar_right: "      "}
execute if score #melee_charge_percentage var matches 10 run data merge storage potty:actionbar {bar_left: "          ", bar_right: "     "}
execute if score #melee_charge_percentage var matches 11 run data merge storage potty:actionbar {bar_left: "           ", bar_right: "    "}
execute if score #melee_charge_percentage var matches 12 run data merge storage potty:actionbar {bar_left: "            ", bar_right: "   "}
execute if score #melee_charge_percentage var matches 13 run data merge storage potty:actionbar {bar_left: "             ", bar_right: "  "}
execute if score #melee_charge_percentage var matches 14 run data merge storage potty:actionbar {bar_left: "              ", bar_right: " "}
execute if score #melee_charge_percentage var matches 15 run data merge storage potty:actionbar {bar_left: "               ", bar_right: ""}


execute if score @s cleave_charge matches ..4 run title @s actionbar ["", [{"score": {"name": "*", "objective": "health"},"color":"red"}, "/", {"score": {"name": "*", "objective": "max_health"}}, {"text":" ❤"}], "   ", \
  \
  ["",{"text":"✦ ","color":"gray"}, "", [{"storage":"potty:actionbar","nbt":"bar_left","strikethrough":true,"color":"gold"},{"storage":"potty:actionbar","nbt":"bar_right","color":"dark_gray"}]], \
  \
  "   ",[{"score": {"name": "*", "objective": "mana"},"color":"aqua"}, "/", {"score": {"name": "*", "objective": "max_mana"}}, {"text":" Mana"}]]

execute if score @s cleave_charge matches 5.. run title @s actionbar ["", [{"score": {"name": "*", "objective": "health"},"color":"red"}, "/", {"score": {"name": "*", "objective": "max_health"}}, {"text":" ❤"}], "   ", \
  \
  ["",{"text":"✦ ","color":"gold"}, "", [{"storage":"potty:actionbar","nbt":"bar_left","strikethrough":true,"color":"gold"},{"storage":"potty:actionbar","nbt":"bar_right","color":"dark_gray"}]], \
  \
  "   ",[{"score": {"name": "*", "objective": "mana"},"color":"aqua"}, "/", {"score": {"name": "*", "objective": "max_mana"}}, {"text":" Mana"}]]
