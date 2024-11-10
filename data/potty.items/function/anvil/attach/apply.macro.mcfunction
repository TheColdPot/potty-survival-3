# If the attachment does not exist, prepend it.
$execute unless data storage potty.items:constructor attachment_list[{id:"$(id)"}] run return run data modify storage potty.items:constructor attachment_list prepend value {id:"$(id)",count:1}

# If it does exist, add the stack count, then write back.
$execute store result score #slot_attachment_count var run data get storage potty.items:constructor attachment_list[{id:"$(id)"}].count
scoreboard players add #slot_attachment_count var 1
$execute store result storage potty.items:constructor attachment_list[{id:"$(id)"}].count int 1 run scoreboard players get #slot_attachment_count var
scoreboard players reset #slot_attachment_count var
