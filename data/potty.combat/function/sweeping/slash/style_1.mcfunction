playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 2

execute store result score p.0 entity_pos run random value -20000..20000
execute store result score p.1 entity_pos run random value -20000..20000
execute store result score p.2 entity_pos run random value -20000..20000

execute as @s at @s anchored eyes positioned ^40 ^ ^40 summon marker run function potty.combat:sweeping/slash/starter_deal
execute as @s at @s anchored eyes positioned ^-40 ^ ^40 summon marker run function potty.combat:sweeping/slash/ender_deal


function potty:utils/arc/trigger

# playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1