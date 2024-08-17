particle snowflake
tp ^ ^ ^1

execute positioned ~ ~-1 ~ if entity @e[type=!player,type=!#potty:ignore_combat,distance=..1.5,tag=!magic.ice_wand_shockwave_marked] run function potty:magic/spells/ice_wand/shockwave_impact

tag @e remove magic.ice_wand_shockwave_marked

scoreboard players add @s __time_since_spawn 1
kill @s[scores={__time_since_spawn=45..}]
