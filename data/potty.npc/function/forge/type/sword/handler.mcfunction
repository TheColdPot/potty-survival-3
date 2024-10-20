execute if data storage potty.npc:forge_storage Copy[0].Item summon item_display run function potty.npc:forge/type/sword/list/gear_display_summon
execute if data storage potty.npc:forge_storage Copy[0].Chain summon block_display run function potty.npc:forge/type/sword/list/chain_display_summon
execute if data storage potty.npc:forge_storage Copy[0].Empty summon item_display run function potty.npc:forge/type/sword/list/empty_display_summon

execute if data storage potty.npc:forge_storage Copy[0].Line_break run tag @e[type=#potty.npc:ui,tag=npc_item_new_summon] remove npc_item_new_summon

data remove storage potty.npc:forge_storage Copy[0]

execute if data storage potty.npc:forge_storage Copy[] run function potty.npc:forge/type/sword/handler
