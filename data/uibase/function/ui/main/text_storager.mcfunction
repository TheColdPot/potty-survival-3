summon marker ~ ~ ~ {Tags:[new_summon,text_storager]}
ride @n[type=marker,tag=new_summon,distance=..1] mount @s
data modify storage uibase:mid text set from entity @s text
execute on passengers run data modify entity @s data.text set from storage uibase:mid text
execute on passengers run tag @s remove new_summon