tag @s add anvil_entity
tag @s add anvil_interaction
data merge entity @s {height:1.2}
summon item_display ~ ~ ~ {Tags:[new_summon,"anvil_entity",anvil_item], transformation:{left_rotation: [0f,0.3827f,0f,0.9239f],right_rotation:[0.7071f,0f,0f,0.7071f],scale:[1f,1f,1f],translation:[0f,-.1f,0f]}}
ride @e[tag=new_summon,distance=..1,limit=1] mount @s
tag @e[tag=new_summon,distance=..1] remove new_summon

summon item_display ~ ~ ~ {Tags:[new_summon,"anvil_entity",anvil_attachable]}
ride @e[tag=new_summon,distance=..1,limit=1] mount @s
tag @e[tag=new_summon,distance=..1] remove new_summon

team join anvil_entities
