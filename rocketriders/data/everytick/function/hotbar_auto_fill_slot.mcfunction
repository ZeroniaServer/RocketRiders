# arguments: slot

$item replace block 0 184 -16 container.0 from entity @s $(slot)
$item replace entity @s $(slot) with air
loot give @s mine 0 184 -16 stick[custom_data={drop_contents:true}]
