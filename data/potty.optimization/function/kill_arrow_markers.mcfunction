execute as @e[type=marker,tag=combat.arrow_marker] unless function potty.combat:health_bar/has_vehicle run kill @s

tellraw @a ["", [{"text":"OPTIMIZATION!","bold":true,"color":"green"},{"text":" >>> ","color":"white"}], {"text":"Manually killed all useless arrow markers.","color":"white"}]
