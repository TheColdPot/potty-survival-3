tag @s add ui.forge.list
tag @s add summon_forge

execute on passengers if entity @s[type=player] run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5

#重置UID排序
scoreboard players reset WorldEntity npc_select_uid_2

#复制备份并分配
data modify storage potty.npc:forge_storage Copy set from storage potty.npc:forge_storage List[].Sword
function potty.npc:forge/type/sword/handler


tag @s remove summon_forge
