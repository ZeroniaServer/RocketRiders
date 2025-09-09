# arguments: slot

$item replace entity @s weapon.offhand from entity @s $(slot)
$item replace entity @s $(slot) with air

item modify entity @s weapon.offhand {function:"minecraft:set_custom_data",tag:{moved_from_offhand_by_invisibility:false}}
