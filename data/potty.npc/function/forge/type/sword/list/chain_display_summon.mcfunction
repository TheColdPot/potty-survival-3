function potty.npc:forge/type/sword/list/block_merge_template
data modify entity @s block_state.Properties set from storage potty.npc:forge_storage Copy[0].Facing
#tag @s add npc_select_enable
tag @s add entity.forge.item
tag @s add entity.forge.sword
ride @s mount @n[type=block_display,tag=summon_forge]


execute store result score incre npc_rotation run data get storage potty.npc:forge_storage Copy[0].Deviation
    # 物品的朝向实际上需要和玩家的朝向相反，才能将正面面朝玩家
execute store result score rotation_res npc_rotation run function potty.npc:utils/cal_horizon_rotation
execute store result entity @s Rotation[0] float 1 run scoreboard players get rotation_res npc_rotation


data modify entity @s transformation.translation[2] set value -1.5f


scoreboard players operation @s npc_interact_uid = @n[type=interaction,tag=target] npc_interact_uid


#图标修饰
#tag @s add new_summon
#execute summon item_display run function potty.npc:forge/type/sword/list/item_entity_modifier
#tag @s remove new_summon