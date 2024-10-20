execute on target run function potty.npc:npc_settings/player_settings
execute summon block_display run function potty.npc:npc_settings/rider_settings

tag @s add clicker_trigger
data merge entity @s {CustomName:'["Trigger"]',CustomNameVisible:1b}

tag @p[tag=new_player_target] remove new_player_target