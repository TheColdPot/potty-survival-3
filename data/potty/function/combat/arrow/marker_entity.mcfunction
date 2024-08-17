ride @s mount @e[tag=combat.processing_arrow,limit=1]
data merge entity @s {Marker:1b,Invisible:1b,NoGravity:1b}
# data modify entity @s interaction.player set from entity @e[tag=combat.processing_arrow,limit=1] Owner

summon interaction ~ ~ ~ {Tags:[combat.new_summon],width:0,height:0}
ride @e[tag=combat.new_summon,limit=1] mount @s

data merge entity @e[tag=combat.new_summon,limit=1] {interaction:{player:[I;0,0,0,0],timestamp:0L}}
data modify entity @e[tag=combat.new_summon,limit=1] interaction.player set from entity @e[tag=combat.processing_arrow,limit=1] Owner

data modify entity @s Owner set from entity @e[tag=combat.processing_arrow,limit=1] Owner
data modify entity @e[tag=combat.processing_arrow,limit=1] Owner set from entity @s UUID
tag @s add combat.arrow_marker
tag @e remove combat.new_summon
scoreboard players operation @s final_crit_damage = @e[tag=combat.processing_arrow,limit=1] final_crit_damage
scoreboard players operation @s final_damage = @e[tag=combat.processing_arrow,limit=1] final_damage
scoreboard players operation @s crit_chance = @e[tag=combat.processing_arrow,limit=1] crit_chance

# summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["tag"]}