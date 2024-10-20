#`100`        | Sword      |
#| `103`        | Dagger     |
#| `104`        | Katana     |
#| `105`


execute store result score #gear_type var run data get storage potty:item target.components.minecraft:custom_data.gear_type

data modify storage potty:item gear_type_name set value '["",{"translate":"potty.gear.sword.space","font":"potty:spaces","color":"#424242","fallback":""},{"translate":"potty.gear.sword","fallback":" sᴡᴏʀᴅ ","color":"gray"}]'
execute if score #gear_type var matches 100 run data modify storage potty:item gear_type_name set value '"sᴡᴏʀᴅ"'
execute if score #gear_type var matches 103 run data modify storage potty:item gear_type_name set value '"ᴅᴀɢɢᴇʀ"'
execute if score #gear_type var matches 104 run data modify storage potty:item gear_type_name set value '["",{"translate":"potty.gear.katana.space","font":"potty:spaces","color":"#424242","fallback":""},{"translate":"potty.gear.katana","fallback":" ᴋᴀᴛᴀɴᴀ ","color":"gray"}]'
execute if score #gear_type var matches 105 run data modify storage potty:item gear_type_name set value '["",{"translate":"potty.gear.claymore.space","font":"potty:spaces","color":"#424242","fallback":""},{"translate":"potty.gear.claymore","fallback":" ᴄʟᴀʏᴍᴏʀᴇ ","color":"gray"}]'

item modify entity @s container.0 potty.items:display/category/divine
