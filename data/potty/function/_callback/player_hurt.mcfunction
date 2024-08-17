advancement revoke @s only potty:trigger/hurt_by_entity
execute if score @s wand_cast_time matches 1.. run function potty:magic/end_click_casting
execute if score @s[tag=magic.is_hold_sneak] wand_sneak_time matches 1.. run function potty:magic/interrupt_sneaking_hurt



