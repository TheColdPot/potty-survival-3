execute on vehicle on passengers if entity @s[type=text_display,tag=npc_icon_text_display] run data modify entity @s text set value '[""]'
data modify entity @s transformation.scale set value [0.2f,0.2f,0.2f]
data remove entity @s Glowing

tag @s remove npc_display_remove_target