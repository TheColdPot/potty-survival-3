advancement revoke @s only potty.combat:trigger_sweep
execute if score @s latest_sweep_time = #global_time var run return run function potty.combat:sweeping/sync_time

function potty.combat:sweeping/sync_time

execute store result score #gear_type var run data get entity @s SelectedItem.components."minecraft:custom_data".gear_type


execute unless score @s melee_charge_stacks matches 1.. run function potty.combat:sweeping/unusable
execute if score @s melee_charge_stacks matches 1.. run function potty.combat:sweeping/switch_sweep
