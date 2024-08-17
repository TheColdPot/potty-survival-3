#why would container work for players??? SHOULD OF I KNOW?????
$data modify storage potty:item target set from entity @s Inventory[{Slot:$(Slot)b}]

function potty:stats/process_storage_item

$item modify entity @s container.$(Slot) potty:lore
