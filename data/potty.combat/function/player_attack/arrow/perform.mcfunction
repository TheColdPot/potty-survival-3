execute store result score source_arrow_uid var run data get entity @s active_effects[{id:"minecraft:darkness"}].amplifier

data remove entity @s active_effects[{id:"minecraft:darkness"}]
# yee
effect clear @s darkness

# tellraw @a [{"score": {"name": "source_arrow_uid", "objective": "var"}}, " | ",{"score": {"name": "@e[type=marker,limit=1,sort=nearest]", "objective": "var"}}]
# schedule ferocity in HERE!
execute as @e[type=marker,tag=combat.arrow_marker,distance=..32] if score @s var = source_arrow_uid var run function potty.combat:player_attack/arrow/perform.arrow_marker

function potty.combat:player_attack/arrow/apply_damage


