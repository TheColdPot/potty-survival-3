function potty.npc:selector/text_highlight

#执行者为座椅的功能前置图标设置
execute if entity @s[tag=entity.forge] on vehicle on passengers if entity @s[type=interaction,tag=npc_player_click_trigger] on attacker if entity @s[type=player,tag=selector] on vehicle unless entity @s[tag=ui.forge] run function potty.npc:forge/base_icon_settings/list

tag @s remove npc_player_select_target
tag @s add npc_display_remove_target