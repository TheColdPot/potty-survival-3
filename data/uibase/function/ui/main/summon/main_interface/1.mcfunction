function uibase:ui/main/text_merge_template

# 编号
scoreboard players set @s uibase_order 1

# 骑 Menu
ride @s mount @n[type=minecraft:block_display,tag=menu_chair,distance=..1]

# 旋转，让物品显示在玩家前方
scoreboard players set incre uibase_common 0
    # 物品的朝向实际上需要和玩家的朝向相反，才能将正面面朝玩家
    scoreboard players add incre uibase_common 180
execute store result score rotation_res uibase_common run function uibase:utils/cal_horizon_rotation
execute store result entity @s Rotation[0] float 1 run scoreboard players get rotation_res uibase_common
execute on passengers store result entity @s Rotation[0] float 1 run scoreboard players get rotation_res uibase_common

data modify entity @s text set value '[{"text":"       菜单       ","color":"gold","bold":true,"underlined":true}]'
data modify entity @s transformation.translation[1] set value 1.06f
data modify entity @s transformation.translation[2] set value -0.1f
