scoreboard players operation #current_health var = @s health
scoreboard players operation #current_max_health var = @s max_health

execute on passengers if entity @s[type=text_display,tag=combat.health_bar] run function potty.combat:health_bar/update
