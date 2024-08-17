scoreboard players operation received_damage var = final_uncrit var
execute if predicate potty.combat:is_critical.var run scoreboard players operation received_damage var = final_crit var
# say 12345
function potty.combat:damage_splash/ferocity
# say 12346


# tellraw @a {"score": {"name": "received_damage","objective": "var"}}
scoreboard players operation @s health -= received_damage var


execute store result score reflect_health var run attribute @s minecraft:generic.max_health get 1
scoreboard players operation reflect_health var *= @s health
scoreboard players operation reflect_health var /= @s max_health
execute if score reflect_health var matches ..1 unless score @s health matches ..0 run scoreboard players set reflect_health var 1
execute store result entity @s Health float 1 run scoreboard players get reflect_health var
execute if score @s health matches ..-1 run scoreboard players set @s health 0
# say 1234578
function potty.combat:health_bar/update.wrapper

# schedule ferocity here
# playsound minecraft:entity.player.hurt player @a ~ ~ ~ 1 2
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.2
# function potty.combat:player_attack/post_attack

execute if score @s health matches 0 run return run kill @s
return fail
# say 1
