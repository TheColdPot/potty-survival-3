
execute if score @s sword_ability_stack matches 0 run data merge storage potty:actionbar { bar_left: "", bar_right: "          ",bar_emph:""}
execute if score @s sword_ability_stack matches 1 run data merge storage potty:actionbar { bar_left: " ", bar_right: "         ",bar_emph:""}
execute if score @s sword_ability_stack matches 2 run data merge storage potty:actionbar { bar_left: "  ", bar_right: "        ",bar_emph:""}
execute if score @s sword_ability_stack matches 3 run data merge storage potty:actionbar { bar_left: "   ", bar_right: "       ",bar_emph:""}
execute if score @s sword_ability_stack matches 4 run data merge storage potty:actionbar { bar_left: "    ", bar_right: "      ",bar_emph:""}
execute if score @s sword_ability_stack matches 5 run data merge storage potty:actionbar { bar_left: "     ", bar_right: "     ",bar_emph:""}
execute if score @s sword_ability_stack matches 6 run data merge storage potty:actionbar { bar_left: "      ", bar_right: "    ",bar_emph:""}
execute if score @s sword_ability_stack matches 7 run data merge storage potty:actionbar { bar_left: "       ", bar_right: "   ",bar_emph:""}
execute if score @s sword_ability_stack matches 8 run data merge storage potty:actionbar { bar_left: "        ", bar_right: "  ",bar_emph:""}
execute if score @s sword_ability_stack matches 9 run data merge storage potty:actionbar { bar_left: "         ", bar_right: " ",bar_emph:""}
execute if score @s sword_ability_stack matches 10 run data merge storage potty:actionbar {bar_left: "", bar_right: "",bar_emph:"          "}


execute if score @s cleave_charge matches ..4 run title @s actionbar ["", [{"score": {"name": "*", "objective": "health"},"color":"red"}, "/", {"score": {"name": "*", "objective": "max_health"}}, {"text":" ❤"}], "   ", \
  \
  ["",{"text":"⚔ ","color":"gray"}, "", [{"storage":"potty:actionbar","nbt":"bar_left","strikethrough":true,"color":"yellow"},{"storage":"potty:actionbar","nbt":"bar_emph","strikethrough":true,"color":"gold"},{"storage":"potty:actionbar","nbt":"bar_right","color":"dark_gray"}]], \
  \
  "   ",[{"score": {"name": "*", "objective": "mana"},"color":"aqua"}, "/", {"score": {"name": "*", "objective": "max_mana"}}, {"text":" Mana"}]]

execute if score @s cleave_charge matches 5.. run title @s actionbar ["", [{"score": {"name": "*", "objective": "health"},"color":"red"}, "/", {"score": {"name": "*", "objective": "max_health"}}, {"text":" ❤"}], "   ", \
  \
  ["",{"text":"⚔ ","color":"gold"}, "", [{"storage":"potty:actionbar","nbt":"bar_left","strikethrough":true,"color":"yellow"},{"storage":"potty:actionbar","nbt":"bar_emph","strikethrough":true,"color":"gold"},{"storage":"potty:actionbar","nbt":"bar_right","color":"dark_gray"}]], \
  \
  "   ",[{"score": {"name": "*", "objective": "mana"},"color":"aqua"}, "/", {"score": {"name": "*", "objective": "max_mana"}}, {"text":" Mana"}]]
