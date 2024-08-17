data merge entity @s {Marker:1b,Invisible:1b}

summon item_display ~ ~ ~ {Tags:[magic.new_summon,magic.pursuer.skull_display],item:{id:"player_head",count:1,components:{"profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjkzZWMyODVmNWM2NzcwZTdkZmMxZjI3NzVkMGU5NTYzOTk3Mzc4Njk5OWJkZDM2Y2M4ZTk5OGIyNWU3NTNmYiJ9fX0="}]}}}}

ride @e[tag=magic.new_summon,limit=1] mount @s

tag @e remove magic.new_summon

tag @s add magic.pursuer.skull_marker
tag @s add magic.add_time_period

execute facing entity @e[limit=1,sort=nearest,type=!player,type=!#potty:ignore_combat] eyes run tp @s ~ ~ ~ ~ ~

tag @s add magic.to_copy_stats

# scoreboard players operation @s __time_since_spawn = @p wand_cast_time
# scoreboard players operation @s __time_since_spawn += @p wand_cast_time
# scoreboard players operation @s __time_since_spawn += @p wand_cast_time
# scoreboard players add @s __time_since_spawn 100
