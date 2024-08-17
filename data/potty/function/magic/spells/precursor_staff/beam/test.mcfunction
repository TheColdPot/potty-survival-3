tag @s add magic.beam_shooter

playsound entity.guardian.hurt player @a ~ ~ ~ 2 2
# execute as @s at @s anchored eyes positioned ^ ^ ^1 summon minecraft:marker run function potty:magic/spells/precursor_staff/beam/precusor
execute at @s anchored eyes positioned ^ ^ ^1 run function potty:magic/spells/precursor_staff/beam/aura_particle
execute as @s at @s anchored eyes positioned ^ ^ ^1 run function potty:magic/spells/precursor_staff/beam/shoot
