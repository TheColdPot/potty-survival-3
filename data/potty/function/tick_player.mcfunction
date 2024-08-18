
# say 1

execute if entity @s[scores={__sneak_trigger=..0},tag=sneaking] run function potty:_callback/end_sneaking
tag @s[scores={__sneak_trigger=1..}] add sneaking
scoreboard players set @s __sneak_trigger 0
execute if entity @s[tag=sneaking] run function potty:_callback/sneaking


execute unless score disable_actionbar debug.flags matches 1 run function potty:stats/actionbar/switch


execute unless score @s uid matches -2147483648..2147483647 run function potty:allocate_uid.player

function potty.items:tick.player