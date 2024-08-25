execute if entity @s[tag=!combat.ready] run function potty.combat:mob_setup

execute if score @s combat_timer = global combat_timer run \
  return fail
scoreboard players operation @s combat_timer = global combat_timer

# execute if data entity @s {HurtTime:10s} run function potty.combat:player_attack/mob_hurt


