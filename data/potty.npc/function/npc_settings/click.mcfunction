execute unless entity @s[tag=clicker_trigger] on target at @n[type=interaction,tag=target] if entity @s[distance=..4] as @n[type=interaction,tag=target] run function potty.npc:npc_settings/click_success
data remove entity @s interaction
