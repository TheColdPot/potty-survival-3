advancement revoke @s only uibase:right_click_menu

#接受来自delay的神经信号，并检查uid的分配，随机触发菜单开关
execute unless score @s uibase.uid matches 1.. run function uibase:trigger/uid_distribute

execute if entity @s[tag=opening_menu] if function uibase:trigger/cooldown run return run function uibase:trigger/close
execute if entity @s[nbt={OnGround:1b},tag=!opening_menu] run function uibase:trigger/summon

