
execute at @s run playsound minecraft:entity.generic.burn player @s ~ ~ ~ 1 0.1
function potty:magic/spells/soul_release/pre_deal
execute summon marker run function potty:magic/spells/soul_release/summon
execute summon marker run function potty:magic/spells/soul_release/tracker_base
