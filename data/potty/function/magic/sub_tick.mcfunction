tag @a remove magic.holding_wand
tag @a remove magic.is_sneak_click
tag @a remove magic.is_hold_sneak
tag @a remove magic.is_general_casting
tag @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{wand:1b}}}}] add magic.holding_wand
tag @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{spells:{sneak_click:{}}}}}}] add magic.is_sneak_click
tag @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{spells:{hold_sneak:{}}}}}}] add magic.is_hold_sneak

tag @a[scores={wand_cast_time=1..}] add magic.is_general_casting
tag @a[scores={wand_sneak_time=1..}] add magic.is_general_casting

execute as @a[scores={wand_sneak_time=1..}] unless entity @s[tag=sneaking,tag=magic.holding_wand] at @s run function potty:magic/end_sneaking
execute as @a[tag=sneaking,tag=magic.holding_wand] unless score @s wand_sneak_time matches ..0 at @s run function potty:magic/sneak_casting
execute as @a[tag=sneaking,tag=magic.holding_wand] unless score @s wand_sneak_time matches 1.. unless score @s wand_sneak_time matches ..-1 at @s run function potty:magic/check_ability_afford_sneak
execute as @a[tag=sneaking,tag=magic.holding_wand,tag=magic.is_hold_sneak] if score @s wand_sneak_time > @s required_wand_sneak_time at @s run function potty:magic/wear_off_hold_sneak
execute as @a[tag=magic.is_sneak_click] run scoreboard players operation @s wand_sneak_time < @s max_wand_sneak_time
execute as @a[tag=magic.is_sneak_click,scores={wand_sneak_time=1..},advancements={potty:trigger/right_click_wand=true}] at @s run function potty:magic/wear_off_sneak_click





execute as @a[advancements={potty:trigger/right_click_wand=false},scores={wand_cast_time=1..}] at @s run function potty:magic/end_click_casting
execute as @a[advancements={potty:trigger/right_click_wand=true}] unless score @s wand_cast_time matches 1.. unless entity @s[tag=sneaking] unless score @s wand_cast_time matches ..-1 at @s run function potty:magic/check_castable
# execute as @a[advancements={potty:trigger/right_click_wand=true}] unless score @s wand_cast_time matches ..0 unless entity @s[tag=sneaking] run function potty:magic/click_casting
execute as @a[advancements={potty:trigger/right_click_wand=true}] unless score @s wand_cast_time matches ..0 run function potty:magic/click_casting


advancement revoke @a only potty:trigger/right_click_wand

scoreboard players add @a[scores={wand_cast_time=..-1}] wand_cast_time 1
scoreboard players add @a[scores={wand_sneak_time=..-1}] wand_sneak_time 1




# magic-specific
execute as @e[tag=magic.ice_wand.ice_entity] at @s run function potty:magic/spells/ice_wand/ice_toss_test
execute as @e[tag=magic.ice_wand.spread_entity] at @s run function potty:magic/spells/ice_wand/shockwave_step



execute as @e[tag=magic.pursuer.skull_marker] at @s run function potty:magic/spells/pursuer/test

execute as @a run function potty:magic/charging/update_charges_filter