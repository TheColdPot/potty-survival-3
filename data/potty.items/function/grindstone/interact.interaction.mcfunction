execute if entity @s[tag=grindstone_has_item] run function potty.items:grindstone/return_item

# The condition is (!grindstone_has_item && !grindstone_busy)
# Do not combine the selectors to become !(grindstone_has_item && grindstone_busy) <==> !grindstone_has_item || !grindstone_busy
execute unless entity @s[tag=grindstone_has_item] unless entity @s[tag=grindstone_busy] run function potty.items:grindstone/place_item

tag @s remove grindstone_busy

