tag @s add grindstone_entity
tag @s add grindstone_interaction
data merge entity @s {height:1.2}
summon item_display ~ ~ ~ {Tags:[new_summon,"grindstone_entity",grindstone_item], transformation:{left_rotation: [0f,0.3827f,0f,0.9239f],right_rotation:[0.7071f,0f,0f,0.7071f],scale:[1f,1f,1f],translation:[0f,-.1f,0f]}}
ride @e[tag=new_summon,distance=..1,limit=1] mount @s
tag @e[tag=new_summon,distance=..1] remove new_summon

# to identify the entity. How smart I am.
team join grindstone_entities
