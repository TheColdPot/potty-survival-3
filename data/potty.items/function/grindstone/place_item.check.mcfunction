# check if empty hand
execute unless items entity @s weapon.mainhand * run return fail

# check if this is a sword
scoreboard players set #gear_type var 0
execute store result score #gear_type var run data get entity @s SelectedItem.components."minecraft:custom_data".gear_type

execute unless score #gear_type var matches 100..199 unless items entity @s weapon.mainhand *[custom_data~{is_sword:1b}] run \
  return fail
scoreboard players reset #gear_type var

return 1