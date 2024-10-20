function potty.npc:forge/base_icon_settings/list/item_merge_template
data modify entity @s item set value {id:"diamond_sword",count:1,components:{item_name:\
'[{"text":"            "},{"text":"武士刀","color":"#fcc92f","bold":true,"italic":false}]'\
,lore:[\
'[""]',\
'[{"text":"专","color":"#fda900","italic":false},{"text":"属","color":"#feb71a","italic":false},{"text":"特","color":"#fec435","italic":false},{"text":"技","color":"#ffd24f","italic":false},{"text":" 居合斩","color":"#ff1212","bold":true,"italic":false}]',\
'[{"text":"积攒蓄力后可向敌人连续发出","color":"gray","italic":false}]',\
'[{"text":"斩击，段数越高斩击数越多","color":"gray","italic":false}]',\
'[""]',\
'[""]',\
'[""]',\
'[""]',\
'[""]',\
'[""]',\
'[""]',\
'[{"text":"       "},{"text":"[","color":"#fda900","italic":false},{"text":"左","color":"#feb71a","italic":false},{"text":"键","color":"#fec435","italic":false},{"text":"]","color":"#ffd24f","italic":false},{"text":"查看武器谱","color":"gray","italic":false}]'\
]}}
tag @s add npc_select_enable
tag @s add entity.forge
tag @s add target.forge_katana
ride @s mount @n[type=block_display,tag=summon_forge]

scoreboard players set incre npc_rotation -65
    # 物品的朝向实际上需要和玩家的朝向相反，才能将正面面朝玩家
execute store result score rotation_res npc_rotation run function potty.npc:utils/cal_horizon_rotation
execute store result entity @s Rotation[0] float 1 run scoreboard players get rotation_res npc_rotation


data modify entity @s transformation.translation[2] set value -1.5f


scoreboard players operation @s npc_interact_uid = @n[type=interaction,tag=target] npc_interact_uid


#图标修饰
tag @s add new_summon
execute summon item_display run function potty.npc:forge/base_icon_settings/list/item_entity_modifier
tag @s remove new_summon