tag @a[distance=..5] add magic.healing_handle.target
tag @s add magic.healing_handle.healer

scoreboard players operation @s __shifted_stat_value = @s max_health
scoreboard players set divisor __number 25
scoreboard players set half __number 2
scoreboard players operation @s wand_cast_time /= half __number


scoreboard players operation divisor __number -= @s wand_cast_time
scoreboard players operation @s __shifted_stat_value /= divisor __number
scoreboard players add @s __shifted_stat_value 70

scoreboard players operation @a[tag=magic.healing_handle.target] health += @s __shifted_stat_value
tellraw @s [{"translate":"","fallback":"You healed your self for %s health!","with": [{"score":{"name":"@s","objective": "__shifted_stat_value"}}],"color":"yellow"}]
tellraw @a[tag=magic.healing_handle.target,tag=!magic.healing_handle.healer] [{"translate":"","fallback":"%s healed your self for %s health!","with": [{"selector":"@p"}, {"score":{"name":"@p","objective": "__shifted_stat_value"}}],"color":"yellow"}]
execute at @a[tag=magic.healing_handle.target] run particle instant_effect ~ ~ ~ 0 1 0 2 20
execute as @a[tag=magic.healing_handle.target] run function potty:combat/health_change
tag @a remove magic.healing_handle.target
tag @s remove magic.healing_handle.healer