execute store result score #pos_y var run data get entity @s Pos[1]
scoreboard players add #pos_y var 1
data modify storage potty:effects trail_target set from entity @s Pos
execute store result storage potty:effects trail_target[1] double 1 run scoreboard players get #pos_y var

function potty.items:anvil/attach/trial_particle.macro with storage potty:effects
