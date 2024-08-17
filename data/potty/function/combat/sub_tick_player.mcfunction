execute if score @s next_attack_cooldown matches ..0 run attribute @s generic.attack_damage modifier remove potty:attack_cooldown
scoreboard players remove @s[scores={next_attack_cooldown=1..}] next_attack_cooldown 1

# say 1

attribute @s generic.attack_damage modifier add potty:remove_vanilla_damage -0.9999999999999 add_multiplied_total

execute unless items entity @s weapon.mainhand #swords run attribute @s generic.attack_speed base set 40
# execute if items entity @s weapon.mainhand #swords run attribute @s generic.attack_speed base set 0


execute if score @s melee_kill_combo matches 1.. at @s run function potty:combat/combo/melee_test
execute if score @s ranged_hit_combo matches 1.. at @s run function potty:combat/combo/ranged_test