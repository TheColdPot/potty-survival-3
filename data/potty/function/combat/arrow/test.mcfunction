data merge entity @s {damage:0.000000001}

execute if data entity @s {HasBeenShot:0b} on target unless entity @s[type=player] run return fail
execute if data entity @s {HasBeenShot:0b} run function potty:combat/arrow/process

execute if data entity @s {inGround:1b,shake:1b} run function potty:combat/arrow/effects/disappear