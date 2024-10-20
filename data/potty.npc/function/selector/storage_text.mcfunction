
data remove storage potty.npc:g_text Lore

data modify storage potty.npc:g_text Custom_name set from entity @n[type=#potty.npc:ui,tag=npc_player_select_target] item.components."minecraft:item_name"
data modify storage potty.npc:g_text Lore set from entity @n[type=#potty.npc:ui,tag=npc_player_select_target] item.components."minecraft:lore"

#data modify storage potty.npc:g_text Text set value \
{"text":"111111111111111111","extra":[\
{"storage":"potty.npc:g_text","nbt":"Line","interpret":1},\
{"storage":"potty.npc:g_text","nbt":"char.LINE_BREAK_WITH_PADDING","interpret":1}\
]}

#data merge entity @s {text:'{"storage":"potty.npc:g_text","nbt":"Text","interpret":true}'}

data merge entity @s \
{text:'{"text":"","extra":[\
{"storage":"potty.npc:g_text","nbt":"Line","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"char.LINE_BREAK_WITH_PADDING","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"Custom_name","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"char.LINE_BREAK_WITH_PADDING","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"Lore[0]","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"char.LINE_BREAK_WITH_PADDING","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"Lore[1]","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"char.LINE_BREAK_WITH_PADDING","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"Lore[2]","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"char.LINE_BREAK_WITH_PADDING","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"Lore[3]","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"char.LINE_BREAK_WITH_PADDING","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"Lore[4]","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"char.LINE_BREAK_WITH_PADDING","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"Lore[5]","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"char.LINE_BREAK_WITH_PADDING","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"Lore[6]","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"char.LINE_BREAK_WITH_PADDING","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"Lore[7]","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"char.LINE_BREAK_WITH_PADDING","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"Lore[8]","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"char.LINE_BREAK_WITH_PADDING","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"Lore[9]","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"char.LINE_BREAK_WITH_PADDING","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"Lore[10]","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"char.LINE_BREAK_WITH_PADDING","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"Lore[11]","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"char.LINE_BREAK_WITH_PADDING","interpret":true},\
{"storage":"potty.npc:g_text","nbt":"Line","interpret":true}\
]}'}