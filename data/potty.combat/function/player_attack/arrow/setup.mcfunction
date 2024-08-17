data merge entity @s {pickup:2b}
execute on origin run function potty.combat:player_attack/arrow/setup.origin
execute if score arrow_uid var matches 120.. run scoreboard players set arrow_uid var -120
scoreboard players add arrow_uid var 1

data modify entity @s item.components."minecraft:potion_contents" set value {custom_effects:[{id:"darkness",amplifier:114,duration:114514,show_particles:false,show_icon:false}],custom_color:-1}
execute store result entity @s item.components.minecraft:potion_contents.custom_effects[0].amplifier byte 1 run scoreboard players get arrow_uid var

execute summon marker run function potty.combat:player_attack/arrow/arrow_marker.entity

# item modify entity @s a
# tag @s add combat.ready_arrow
#aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa