# $data modify storage potty:player inv set from entity @s Inventory[{components:{"minecraft:custom_data":{potty_id:"$(potty_id)"}}}]
# say 1

# tellraw TheColdPot {"nbt":"inv","storage":"potty:player"}

# execute if data storage potty:player inv.id run return run function potty:magic/charging/remove_charge_macro with storage potty:player inv
# function potty:magic/charging/remove_charge_macro with storage potty:player inv[]
# $function potty:magic/charging/remove_charge_macro with entity @s Inventory[{components:{"minecraft:custom_data":{potty_id:"$(potty_id)"}}}]

$execute if items entity @s container.0 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.0 potty:spells/copy_last_charge_time
$execute if items entity @s container.0 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.0 potty:spells/copy_charges
$execute if items entity @s container.1 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.1 potty:spells/copy_last_charge_time
$execute if items entity @s container.1 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.1 potty:spells/copy_charges
$execute if items entity @s container.2 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.2 potty:spells/copy_last_charge_time
$execute if items entity @s container.2 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.2 potty:spells/copy_charges
$execute if items entity @s container.3 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.3 potty:spells/copy_last_charge_time
$execute if items entity @s container.3 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.3 potty:spells/copy_charges
$execute if items entity @s container.4 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.4 potty:spells/copy_last_charge_time
$execute if items entity @s container.4 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.4 potty:spells/copy_charges
$execute if items entity @s container.5 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.5 potty:spells/copy_last_charge_time
$execute if items entity @s container.5 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.5 potty:spells/copy_charges
$execute if items entity @s container.6 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.6 potty:spells/copy_last_charge_time
$execute if items entity @s container.6 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.6 potty:spells/copy_charges
$execute if items entity @s container.7 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.7 potty:spells/copy_last_charge_time
$execute if items entity @s container.7 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.7 potty:spells/copy_charges
$execute if items entity @s container.8 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.8 potty:spells/copy_last_charge_time
$execute if items entity @s container.8 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.8 potty:spells/copy_charges
$execute if items entity @s container.9 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.9 potty:spells/copy_last_charge_time
$execute if items entity @s container.9 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.9 potty:spells/copy_charges
$execute if items entity @s container.10 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.10 potty:spells/copy_last_charge_time
$execute if items entity @s container.10 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.10 potty:spells/copy_charges
$execute if items entity @s container.11 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.11 potty:spells/copy_last_charge_time
$execute if items entity @s container.11 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.11 potty:spells/copy_charges
$execute if items entity @s container.12 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.12 potty:spells/copy_last_charge_time
$execute if items entity @s container.12 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.12 potty:spells/copy_charges
$execute if items entity @s container.13 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.13 potty:spells/copy_last_charge_time
$execute if items entity @s container.13 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.13 potty:spells/copy_charges
$execute if items entity @s container.14 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.14 potty:spells/copy_last_charge_time
$execute if items entity @s container.14 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.14 potty:spells/copy_charges
$execute if items entity @s container.15 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.15 potty:spells/copy_last_charge_time
$execute if items entity @s container.15 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.15 potty:spells/copy_charges
$execute if items entity @s container.16 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.16 potty:spells/copy_last_charge_time
$execute if items entity @s container.16 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.16 potty:spells/copy_charges
$execute if items entity @s container.17 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.17 potty:spells/copy_last_charge_time
$execute if items entity @s container.17 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.17 potty:spells/copy_charges
$execute if items entity @s container.18 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.18 potty:spells/copy_last_charge_time
$execute if items entity @s container.18 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.18 potty:spells/copy_charges
$execute if items entity @s container.19 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.19 potty:spells/copy_last_charge_time
$execute if items entity @s container.19 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.19 potty:spells/copy_charges
$execute if items entity @s container.20 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.20 potty:spells/copy_last_charge_time
$execute if items entity @s container.20 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.20 potty:spells/copy_charges
$execute if items entity @s container.21 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.21 potty:spells/copy_last_charge_time
$execute if items entity @s container.21 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.21 potty:spells/copy_charges
$execute if items entity @s container.22 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.22 potty:spells/copy_last_charge_time
$execute if items entity @s container.22 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.22 potty:spells/copy_charges
$execute if items entity @s container.23 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.23 potty:spells/copy_last_charge_time
$execute if items entity @s container.23 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.23 potty:spells/copy_charges
$execute if items entity @s container.24 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.24 potty:spells/copy_last_charge_time
$execute if items entity @s container.24 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.24 potty:spells/copy_charges
$execute if items entity @s container.25 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.25 potty:spells/copy_last_charge_time
$execute if items entity @s container.25 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.25 potty:spells/copy_charges
$execute if items entity @s container.26 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.26 potty:spells/copy_last_charge_time
$execute if items entity @s container.26 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.26 potty:spells/copy_charges
$execute if items entity @s container.27 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.27 potty:spells/copy_last_charge_time
$execute if items entity @s container.27 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.27 potty:spells/copy_charges
$execute if items entity @s container.28 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.28 potty:spells/copy_last_charge_time
$execute if items entity @s container.28 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.28 potty:spells/copy_charges
$execute if items entity @s container.29 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.29 potty:spells/copy_last_charge_time
$execute if items entity @s container.29 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.29 potty:spells/copy_charges
$execute if items entity @s container.30 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.30 potty:spells/copy_last_charge_time
$execute if items entity @s container.30 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.30 potty:spells/copy_charges
$execute if items entity @s container.31 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.31 potty:spells/copy_last_charge_time
$execute if items entity @s container.31 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.31 potty:spells/copy_charges
$execute if items entity @s container.32 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.32 potty:spells/copy_last_charge_time
$execute if items entity @s container.32 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.32 potty:spells/copy_charges
$execute if items entity @s container.33 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.33 potty:spells/copy_last_charge_time
$execute if items entity @s container.33 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.33 potty:spells/copy_charges
$execute if items entity @s container.34 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.34 potty:spells/copy_last_charge_time
$execute if items entity @s container.34 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.34 potty:spells/copy_charges
$execute if items entity @s container.35 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.35 potty:spells/copy_last_charge_time
$execute if items entity @s container.35 *[custom_data~{has_charge:1b,potty_id:"$(potty_id)"}] run item modify entity @s container.35 potty:spells/copy_charges
