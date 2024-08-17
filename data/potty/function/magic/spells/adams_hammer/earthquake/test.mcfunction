tag @s add magic.earthquake_shooter

execute at @s run playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 2 2
execute as @s at @s anchored feet positioned ~ ~ ~ summon minecraft:marker run function potty:magic/spells/adams_hammer/earthquake/precusor
