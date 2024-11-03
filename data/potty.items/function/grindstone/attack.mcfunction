advancement revoke @s only potty.items:attack_grindstone
tag @s add grindstone_player

execute as @e[distance=..8,tag=grindstone_interaction,limit=1] if function potty.items:grindstone/interact.check_target at @s run function potty.items:grindstone/attack.interaction

tag @s remove grindstone_player