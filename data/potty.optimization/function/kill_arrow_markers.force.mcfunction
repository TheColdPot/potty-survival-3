execute as @e[type=marker,tag=combat.arrow_marker] unless function potty.combat:health_bar/has_vehicle run kill @s

tellraw @a ["", [{"text":"FORCE OPTIMIZATION!","bold":true,"color":"red"},{"text":" >>> ","color":"white"}], {"text":"Manually killed ALL arrow markers.","color":"white"}]
