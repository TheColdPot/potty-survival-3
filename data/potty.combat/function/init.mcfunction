#> combat
scoreboard objectives add final_uncrit dummy
scoreboard objectives add final_crit dummy
scoreboard objectives add mob_damage dummy
scoreboard objectives add combat.timer dummy
scoreboard objectives add attack_countdown dummy
scoreboard objectives add attack_cooldown dummy
# This is what reflects to players themselves.
scoreboard objectives add display_health dummy
scoreboard objectives add combat.distance_fallen minecraft.custom:fall_one_cm

# scoreboard objectives add received_damage dummy
#declare storage potty:combat

gamerule naturalRegeneration false
gamerule showDeathMessages false
