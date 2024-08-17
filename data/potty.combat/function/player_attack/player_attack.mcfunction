# tag @s add combat.current_tick_attacked

## marker attacker
tag @s add combat.current_tick_attacked
advancement revoke @s only potty.combat:melee_attack

## apply cooldown
scoreboard players operation @s attack_countdown = @s attack_cooldown
attribute @s generic.attack_damage modifier add potty.combat:attack_cooldown -1145141919810 add_value


