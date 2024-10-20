function potty.npc:selector/icon_highlight

execute on vehicle on passengers if entity @s[tag=npc_icon_text_display] run function potty.npc:selector/icon_text_highlight
#执行者为座椅的功能前置图标设置
execute on vehicle on passengers if entity @s[type=interaction,tag=npc_player_click_trigger] on attacker if entity @s[type=player,tag=selector] on vehicle unless entity @s[tag=ui.forge.list] run function potty.npc:selector/icon_rotate/further_select

tag @s remove npc_player_select_target
tag @s add npc_display_remove_target