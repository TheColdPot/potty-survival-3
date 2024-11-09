advancement revoke @s only potty.items:interact_anvil

tag @s add anvil_player

execute as @e[distance=..8,tag=anvil_interaction,limit=1] if function potty.items:anvil/interact.check_target at @s run function potty.items:anvil/interact.interaction

tag @s remove anvil_player
