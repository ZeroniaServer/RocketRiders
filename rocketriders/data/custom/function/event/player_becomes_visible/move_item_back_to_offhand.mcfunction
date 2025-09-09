# arguments: slot

# Remove moved_from_offhand_by_invisibility tag
$item replace block 0 184 -16 container.0 from entity @s $(slot)
data remove block 0 184 -16 Items[0].components.minecraft:custom_data.moved_from_offhand_by_invisibility
execute if items block 0 184 -16 container.0 *[custom_data={}] run item modify block 0 184 -16 container.0 {function:"minecraft:set_components",components:{"!minecraft:custom_data":{}}}
$item replace entity @s $(slot) from block 0 184 -16 container.0

# Move to offhand (if possible)
execute if items entity @s weapon.offhand * run return fail
$item replace entity @s weapon.offhand from entity @s $(slot)
$item replace entity @s $(slot) with air
