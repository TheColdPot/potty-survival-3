#`100`        | Sword      |
#| `103`        | Dagger     |
#| `104`        | Katana     |
#| `105`


scoreboard players set #gear_type var 100
execute store result score #gear_type var run data get storage potty:item target.components.minecraft:custom_data.gear_type

execute if score #gear_type var matches 100 run data modify storage potty:item gear_type_name set value '["",{"translate":"potty.gear.sword.space","font":"potty:spaces","color":"#424242","fallback":""},{"translate":"potty.gear.sword","fallback":" sᴡᴏʀᴅ ","color":"gray"}]'
execute if score #gear_type var matches 103 run data modify storage potty:item gear_type_name set value '["",{"translate":"potty.gear.dagger.space","font":"potty:spaces","color":"#424242","fallback":""},{"translate":"potty.gear.dagger","fallback":" 🗡 ᴅᴀɢɢᴇʀ ","color":"gray"}]'
execute if score #gear_type var matches 104 run data modify storage potty:item gear_type_name set value '["",{"translate":"potty.gear.katana.space","font":"potty:spaces","color":"#424242","fallback":""},{"translate":"potty.gear.katana","fallback":" 🗡 ᴋᴀᴛᴀɴᴀ ","color":"gray"}]'
execute if score #gear_type var matches 105 run data modify storage potty:item gear_type_name set value '["",{"translate":"potty.gear.claymore.space","font":"potty:spaces","color":"#424242","fallback":""},{"translate":"potty.gear.claymore","fallback":" ᴄʟᴀʏᴍᴏʀᴇ ","color":"gray"}]'


scoreboard players set #gear_rarity var 1
execute store result score #gear_rarity var run data get storage potty:item target.components.minecraft:custom_data.rarity

execute if score #gear_rarity var matches 1 run item modify entity @s container.0 potty.items:display/category/common
execute if score #gear_rarity var matches 2 run item modify entity @s container.0 potty.items:display/category/rare
execute if score #gear_rarity var matches 3 run item modify entity @s container.0 potty.items:display/category/epic
execute if score #gear_rarity var matches 4 run item modify entity @s container.0 potty.items:display/category/unique
execute if score #gear_rarity var matches 5 run item modify entity @s container.0 potty.items:display/category/divine
