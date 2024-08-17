execute if entity @s[x_rotation=-25..-20.1] run scoreboard players set @s uibase_order 1
execute if entity @s[x_rotation=-20..-15.1] run scoreboard players set @s uibase_order 2
execute if entity @s[x_rotation=-15..-10.1] run scoreboard players set @s uibase_order 3
execute if entity @s[x_rotation=-10..-5.1] run scoreboard players set @s uibase_order 4
execute if entity @s[x_rotation=-5..-0.1] run scoreboard players set @s uibase_order 5
execute if entity @s[x_rotation=0..5] run scoreboard players set @s uibase_order 6
execute if entity @s[x_rotation=5.1..10] run scoreboard players set @s uibase_order 7

execute if score @s uibase_order matches 0.. unless score @s uibase_order = @s uibase_order_old run playsound ui.button.click player @s ~ ~ ~ .2 1
scoreboard players operation @s uibase_order_old = @s uibase_order
