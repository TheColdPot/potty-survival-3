function potty.npc:forge/type/sword/list/item_merge_template
data modify entity @s item set from storage potty.npc:forge_storage Copy[0].data
tag @s add npc_select_enable
tag @s add entity.forge.item
tag @s add entity.forge.sword
execute store result score @s npc_gear_quality run data get storage potty.npc:forge_storage Copy[0].Quality
execute if score @s npc_gear_quality matches 1 run data merge entity @s {glow_color_override:11053224}
execute if score @s npc_gear_quality matches 2 run data merge entity @s {glow_color_override:917374}
execute if score @s npc_gear_quality matches 3 run data merge entity @s {glow_color_override:6169081}
execute if score @s npc_gear_quality matches 4 run data merge entity @s {glow_color_override:11534543}
execute if score @s npc_gear_quality matches 5 run data merge entity @s {glow_color_override:16755459}
ride @s mount @n[type=block_display,tag=summon_forge]

execute store result score incre npc_rotation run data get storage potty.npc:forge_storage Copy[0].Deviation
    # 物品的朝向实际上需要和玩家的朝向相反，才能将正面面朝玩家
execute store result score rotation_res npc_rotation run function potty.npc:utils/cal_horizon_rotation
execute store result entity @s Rotation[0] float 1 run scoreboard players get rotation_res npc_rotation


data modify entity @s transformation.translation[2] set value -1.5f


scoreboard players operation @s npc_interact_uid = @n[type=interaction,tag=target] npc_interact_uid


#图标修饰
tag @s add new_summon
execute summon item_display run function potty.npc:forge/type/sword/list/item_entity_modifier
tag @s remove new_summon