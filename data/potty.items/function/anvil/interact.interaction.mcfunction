execute if entity @s[tag=anvil_has_item] unless items entity @a[limit=1,tag=anvil_player] weapon.mainhand * run function potty.items:anvil/return_item


execute if entity @s[tag=anvil_has_item] if data entity @a[limit=1,tag=anvil_player] SelectedItem.components."minecraft:custom_data".is_attachable run function potty.items:anvil/attach/copy_and_start



execute unless entity @s[tag=anvil_has_item] unless entity @s[tag=anvil_busy] run function potty.items:anvil/place_item

tag @s remove anvil_busy
