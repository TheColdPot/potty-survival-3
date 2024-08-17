advancement revoke @s only uibase:click_interaction

execute if entity @s[scores={uibase_order=1}] unless entity @s[scores={current_interface=0}] on vehicle run function uibase:ui/main/0_refresh
execute if entity @s[scores={uibase_order=2}] unless entity @s[scores={current_interface=1}] on vehicle run function uibase:ui/main/1
execute if entity @s[scores={uibase_order=3}] unless entity @s[scores={current_interface=2}] on vehicle run function uibase:ui/main/2
execute if entity @s[scores={uibase_order=4}] unless entity @s[scores={current_interface=3}] on vehicle run function uibase:ui/main/3
execute if entity @s[scores={uibase_order=5}] unless entity @s[scores={current_interface=4}] on vehicle run function uibase:ui/main/4
execute if entity @s[scores={uibase_order=6}] unless entity @s[scores={current_interface=5}] on vehicle run function uibase:ui/main/5
execute if entity @s[scores={uibase_order=7}] unless entity @s[scores={current_interface=6}] on vehicle run function uibase:ui/main/6