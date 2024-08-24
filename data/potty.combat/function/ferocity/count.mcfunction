scoreboard players set extra_hit_count var 0
execute if score @s ferocity matches 0 run \
  return 0
scoreboard players operation ferocity_copy var = @s ferocity
scoreboard players operation extra_hit_count var = @s ferocity
scoreboard players operation extra_hit_count var /= HUNDRED var
scoreboard players operation ferocity_copy var %= HUNDRED var
execute if predicate {condition:"random_chance",chance:{type:"score",target:{type:"fixed",name:"ferocity_copy"},score:"var",scale:0.01}} run scoreboard players add extra_hit_count var 1
execute if score extra_hit_count var matches 0 run \
  return 0
