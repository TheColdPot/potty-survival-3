function uibase:ui/main/merge_template
data merge entity @s {alignment:"left",width:10,height:10,line_width:70,default_background:true}
# 编号
scoreboard players set @s uibase_order 10

# 骑 Menu
ride @s mount @n[type=minecraft:block_display,tag=menu_chair,distance=..1]

# 旋转，让物品显示在玩家前方
scoreboard players set incre uibase_common 30
    # 物品的朝向实际上需要和玩家的朝向相反，才能将正面面朝玩家
    scoreboard players add incre uibase_common 180
execute store result score rotation_res uibase_common run function uibase:utils/cal_horizon_rotation
execute store result entity @s Rotation[0] float 1 run scoreboard players get rotation_res uibase_common
execute on passengers store result entity @s Rotation[0] float 1 run scoreboard players get rotation_res uibase_common

data modify entity @s text set value '[{"text":"                                                                                                                                                                ","color":"gold"}]'
data modify entity @s transformation.translation[1] set value 1f
data modify entity @s transformation.translation[2] set value -0.1001f


# 物品展示实体和骑着的文本展示实体位置校准
#function uibase:ui/display_manager/summon_single_item/summon/adjust_pos_line_1

#function uibase:logic/item_display_entity/display_count