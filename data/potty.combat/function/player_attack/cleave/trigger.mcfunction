
execute on attacker run playsound entity.player.attack.crit player @s

execute on attacker run scoreboard players reset @s cleave_charge


tag @s add self
execute on attacker run function potty.combat:damage_calculation/copy_splash_stats
execute store result storage potty:combat splash_radius float 0.01 run scoreboard players get #splash_radius var
# todo: make distance the right value (player's splash radius)
execute if score #splash_radius var matches 1.. run function potty.combat:player_attack/melee/splash.macro with storage potty:combat
tag @s remove self