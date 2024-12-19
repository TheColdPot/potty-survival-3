execute if items entity @s armor.chest *[enchantments~[{enchantments:"potty.combat:trigger_passive"}]] run \
  return fail

item replace entity @s armor.chest with stone_button[equippable={slot:"chest"},enchantments={"potty.combat:trigger_passive":1}]
function potty.combat:player_attack/trigger
