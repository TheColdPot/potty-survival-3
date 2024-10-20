tag @s add ui.forge
tag @s add summon_forge

execute on passengers if entity @s[type=player] run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5

#重置UID排序
scoreboard players reset WorldEntity npc_select_uid_2

#生成图标
execute summon item_display run function potty.npc:forge/base_icon_settings/list/sword
execute summon item_display run function potty.npc:forge/base_icon_settings/list/katana
execute summon item_display run function potty.npc:forge/base_icon_settings/list/dagger
execute summon item_display run function potty.npc:forge/base_icon_settings/list/claymore
execute summon item_display run function potty.npc:forge/base_icon_settings/list/axe
execute summon item_display run function potty.npc:forge/base_icon_settings/list/bow

#生成图标信息文本
execute summon text_display run function potty.npc:forge/base_icon_settings/list/icon_text_display

#后处理
tag @e[type=item_display,tag=npc_icon_new_summon] remove npc_icon_new_summon
tag @s remove summon_forge
