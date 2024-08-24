execute store result score original_display_health var run data get entity @s Health

scoreboard players operation @s display_health = @s health
scoreboard players operation @s display_health *= TWENTY var
scoreboard players operation @s display_health /= @s max_health
scoreboard players operation @s display_health > SIGN_POSITIVE var

# tellraw @a [{"score":{"name": "@s", "objective": "display_health"}}," ",{"score":{"name":"original_display_health","objective": "var"}}]

# attribute @s minecraft:generic.max_health modifier remove potty.combat:health_limit
# say 你好。
# execute if score original_display_health var = @s display_health run return 0
# execute if score original_display_health var < @s display_health run say 1

execute if score original_display_health var > @s display_health run function potty.combat:player_health/decrease
execute if score original_display_health var < @s display_health run function potty.combat:player_health/increase

# effect give @s instant_health 1 30 true
# advancement revoke @s only potty.combat:gain_instant_health
execute if score @s health matches ..0 run function potty.combat:player_health/death/handle_death
