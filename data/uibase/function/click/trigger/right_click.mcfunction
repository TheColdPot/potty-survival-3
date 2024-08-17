advancement revoke @s only uibase:interaction

execute if items entity @s weapon.mainhand minecraft:nether_star[minecraft:custom_data={menu:1b}] run function uibase:trigger/close
