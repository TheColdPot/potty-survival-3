
scoreboard players remove @s[scores={sword_ability_timer=1..}] sword_ability_timer 1
execute if score @s sword_ability_timer matches 0 run function potty.combat:sword_ability/uncharge
