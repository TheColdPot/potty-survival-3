# execute if items entity @s inventory.* *[!custom_data~{lore_up_to_date:1b}] run return 1
# execute if items entity @s hotbar.* *[!custom_data~{lore_up_to_date:1b}] run return 1
# execute if items entity @s armor.* *[!custom_data~{lore_up_to_date:1b}] run return 1
# return 0



data modify storage potty:player inv set from entity @s Inventory
data remove storage potty:player inv[{components:{"minecraft:custom_data":{lore_up_to_date:1b}}}]
function potty:stats/update_lore_for_player with storage potty:player inv[0]

