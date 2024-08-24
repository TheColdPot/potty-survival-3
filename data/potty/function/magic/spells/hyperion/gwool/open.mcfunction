scoreboard players add @s setup_wool_open 1
execute if score @s setup_wool_open matches 2.. run scoreboard players set @s setup_wool_open 0

setblock ~ 255 ~ minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]} keep
execute if block ~ 255 ~ minecraft:shulker_box run data modify block ~ 255 ~ Items[{Slot:0b}].id set from entity @s Inventory[{Slot:-106b}].id
execute if block ~ 255 ~ minecraft:shulker_box run data modify block ~ 255 ~ Items[{Slot:0b}].Count set from entity @s Inventory[{Slot:-106b}].Count
execute if block ~ 255 ~ minecraft:shulker_box run data modify block ~ 255 ~ Items[{Slot:0b}].tag set from entity @s Inventory[{Slot:-106b}].tag
item replace entity @s weapon.offhand with air
execute if block ~ 255 ~ minecraft:shulker_box run loot give @s mine ~ 255 ~ minecraft:diamond_pickaxe{Replace:1b}
fill ~ 255 ~ ~ 255 ~ air replace minecraft:shulker_box

execute as @s[scores={setup_wool_open=1}] run title @s actionbar [{"text":"快速搭路已开启","color":"green","bold":true}]
execute as @s[scores={setup_wool_open=0}] run title @s actionbar [{"text":"快速搭路已关闭","color":"red","bold":true}]


