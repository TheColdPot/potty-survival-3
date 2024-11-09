playsound minecraft:block.trial_spawner.about_to_spawn_item block @a
playsound block.grindstone.use block @a

execute store result score #pos_y var run data get entity @s Pos[1]
scoreboard players add #pos_y var 2
data modify storage potty:effects trail_target set from entity @s Pos
execute store result storage potty:effects trail_target[1] double 1 run scoreboard players get #pos_y var

function potty.items:grindstone/disattach/particle.macro with storage potty:effects
