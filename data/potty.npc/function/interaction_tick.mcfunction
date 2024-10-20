tag @s add target

execute if data entity @s interaction run function potty.npc:npc_settings/click
execute unless score @s npc_interact_uid matches 1.. run function potty.npc:npc_settings/uid_distribution
execute if entity @s[tag=clicker_trigger] run function potty.npc:npc_settings/interact_target_test


tag @s remove target
