execute if function potty.combat:ferocity/take_first run data modify storage potty:combat ferocity_list_backup append from storage potty:combat ferocity_stash
data remove storage potty:combat ferocity_list[0]
# say loop here!
execute if data storage potty:combat ferocity_list[0] run function potty.combat:ferocity/take_each
# say loop!
execute unless data storage potty:combat ferocity_list[0] run function potty.combat:ferocity/copy_back
# say end loop!