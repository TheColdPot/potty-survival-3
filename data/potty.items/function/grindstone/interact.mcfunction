advancement revoke @s only potty.items:interact_grindstone



tag @s add grindstone_player

execute as @e[distance=..8,tag=grindstone_interaction,limit=1] if function potty.items:grindstone/interact.check_target at @s run function potty.items:grindstone/interact.interaction

tag @s remove grindstone_player
