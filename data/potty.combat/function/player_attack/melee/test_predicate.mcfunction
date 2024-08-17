# say 1
# execute on attacker if entity @s[tag=combat.current_tick_attacked] run say 1
execute on attacker if entity @s[tag=combat.current_tick_attacked] run return 1
return fail
