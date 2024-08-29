function potty.combat:sweeping/decrease_stack
playsound entity.ender_dragon.shoot player @a ~ ~ ~ 1 2

execute if score #gear_type var matches 104 run function potty.combat:sweeping/slash/initial
execute if score #gear_type var matches 103 run function potty.combat:sweeping/thrust/start
