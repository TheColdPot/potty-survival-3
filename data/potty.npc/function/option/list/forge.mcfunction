function potty.npc:option/list/text_merge_template
data modify entity @s text set value '[{"text":"▪ ","color":"gold","bold":false},{"text":"锻造","color":"gold","bold":true,"underlined":false},{"text":"          "}]'
tag @s add npc_select_enable
tag @s add entity.forge
ride @s mount @n[type=block_display,tag=summon_mid]

scoreboard players set incre npc_rotation -40
    # 物品的朝向实际上需要和玩家的朝向相反，才能将正面面朝玩家
execute store result score rotation_res npc_rotation run function potty.npc:utils/cal_horizon_rotation
execute store result entity @s Rotation[0] float 1 run scoreboard players get rotation_res npc_rotation


data modify entity @s transformation.translation[2] set value -1.5f


scoreboard players operation @s npc_interact_uid = @n[type=interaction,tag=target] npc_interact_uid