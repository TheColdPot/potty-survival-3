summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"ice",count:1}],Tags:[magic.ice_wand.new_summon,magic.to_copy_stats,magic.ice_wand.ice_entity],Invisible:1b,Invulnerable:1b,DisabledSlots:16191,Silent:1b,NoBasePlate:1b,Pose:{Head:[180f,0f,0f]}}
scoreboard players add @s wand_cast_time 35
execute store result storage potty:player magic.ice_toss_motion double 0.025 run scoreboard players get @s wand_cast_time
scoreboard players remove @s wand_cast_time 35

function potty:magic/spells/ice_wand/summon_motion_helper with storage potty:player magic

function potty:magic/common/copy_stats

tag @e remove magic.ice_wand.new_summon