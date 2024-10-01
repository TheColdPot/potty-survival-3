
function potty.combat:sweeping/block/test

stopsound @s

particle enchanted_hit ~ ~1 ~ 0.3 0.4 0.3 0.6 40
particle crit ~ ~1 ~ 0.3 0.4 0.3 0.6 40
particle small_flame ~ ~ ~ 0 0 0 1 100
playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
playsound minecraft:item.trident.return player @s ~ ~ ~ 2 1.5
playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~ 0.5 2

attribute @s generic.movement_speed modifier add block_success -0.05 add_value
scoreboard players set @s attack_countdown 4
