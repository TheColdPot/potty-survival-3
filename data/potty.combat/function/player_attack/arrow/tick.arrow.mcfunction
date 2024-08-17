execute if data entity @s {HasBeenShot:0b} run function potty.combat:player_attack/arrow/setup
execute if data entity @s {inGround:1b} on passengers run kill @s
execute if data entity @s {shake:0b,inGround:1b} run function potty.combat:player_attack/arrow/vanish
