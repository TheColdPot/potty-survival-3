execute if data entity @s {OnGround:1b} run scoreboard players add @s __time_since_spawn 1
execute if score @s __time_since_spawn matches 3.. run function potty:magic/spells/ice_wand/ice_toss_impact

particle block{block_state:{Name:"ice"}} ~ ~1.2 ~ 0 0 0 0 20


execute if data entity @s {Fire:300s} run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.05 50
execute if data entity @s {Fire:300s} run playsound block.fire.extinguish player @a
execute if data entity @s {Fire:300s} run kill @s
