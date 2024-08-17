scoreboard players operation @s __regen_amount = @s max_health
scoreboard players set divisor __number 100
scoreboard players operation @s __regen_amount /= divisor __number
scoreboard players add @s __regen_amount 2
scoreboard players operation @s health += @s __regen_amount
scoreboard players operation @s health < @s max_health
# function potty:combat/health_change

scoreboard players operation @s __regen_amount = @s max_mana
scoreboard players set divisor __number 50
scoreboard players operation @s __regen_amount /= divisor __number
scoreboard players operation @s mana += @s __regen_amount
scoreboard players operation @s mana < @s max_mana
