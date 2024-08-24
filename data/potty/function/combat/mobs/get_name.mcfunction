
# if has customname, set to customname and return
execute if data entity @s CustomName run return run data modify storage potty:effects mob_name set from entity @s CustomName

data merge storage potty:effects {mob_name: '"Some Name"'}

execute if entity @s[type=creeper] run data merge storage potty:effects {mob_name: '"Creeper"'}
execute if entity @s[type=warden] run data merge storage potty:effects {mob_name: '"Warden"'}
