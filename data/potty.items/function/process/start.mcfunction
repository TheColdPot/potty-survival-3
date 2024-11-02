item modify entity @s container.0 potty.items:display/base
item modify entity @s container.0 potty.items:feature/make_unstackable

execute if items entity @s container.* iron_nugget[custom_data~{is_attachable: 1b}] run \
  return run function potty.items:process/attachable/attachable

function potty.items:process/gear


# data remove storage potty.items:constructor target