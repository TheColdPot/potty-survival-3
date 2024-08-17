execute if entity @s[type=!#potty.combat:combat_exclusion,tag=combat.ready] run function potty.combat:mob_setup

execute if entity @s[tag=combat.health_bar] run \
  return run function potty.combat:health_bar/tick.health_bar

execute if entity @s[tag=combat.damage_splash] run \
  return run function potty.combat:damage_splash/tick.damage_splash

execute if data entity @s {HurtTime:10s} run function potty.combat:player_attack/mob_hurt

# tag @s add combat.current_tick_executed
