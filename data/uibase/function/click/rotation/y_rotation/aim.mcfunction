
execute if score @s uibase_order = @n[type=player,tag=selector,distance=..1] uibase_order run function uibase:click/rotation/y_rotation/highlight
execute unless score @s uibase_order = @n[type=player,tag=selector,distance=..1] uibase_order run function uibase:click/rotation/y_rotation/highlight_cancel
