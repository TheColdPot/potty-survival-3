tag @s add self
playsound entity.wind_charge.wind_burst player @a[tag=!self] ~ ~ ~ 1 .5
playsound entity.wind_charge.wind_burst player @s ~ ~ ~ 1 .5 1
tag @s remove self

# particle witch ~ ~ ~ 0 0 0 1 50

scoreboard players set @s sweeping_timer 0
tag @s add combat.sweeping.thrust

execute at @s run function potty.combat:sweeping/thrust/motion
