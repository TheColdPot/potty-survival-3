function potty.combat:sweeping/decrease_stage
playsound entity.ender_dragon.shoot player @a ~ ~ ~ 1 .7

execute if score #gear_type var matches 104 run function potty.combat:sweeping/slash/trigger
