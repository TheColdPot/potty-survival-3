# say 1

execute on attacker if items entity @s weapon.mainhand bow run return fail
execute on attacker run function potty.combat:player_attack/start_cooldown

# count for cleave charge
execute on attacker run scoreboard players add @s cleave_charge 1
execute on attacker run scoreboard players operation @s cleave_charge < #3 var



tag @s add combat.victim
# assume setup
execute on attacker run tag @s add combat.attacker
execute on attacker run function potty.combat:damage_calculation/compute

scoreboard players operation @s crit_chance = @a[limit=1,tag=combat.attacker] crit_chance
# advancement revoke @a[tag=combat.attacker,limit=1] only potty.combat:melee_attack

execute if function potty.combat:ferocity/attacker_has_ferocity run function potty.combat:ferocity/schedule
# todo sweeping range

execute if predicate potty.combat:is_critical run \
  return run function potty.combat:player_attack/melee/critical


return run function potty.combat:player_attack/melee/uncritical

