advancement revoke @s only custom:event/player_becomes_invisible

function custom:update_armor
tag @s add was_invisible

execute unless items entity @s weapon.offhand * run return fail
execute if items entity @s weapon.offhand *[death_protection|custom_data~{id:"invisibility_potion"}] run return fail
loot replace block 0 184 -16 container.0 27 loot custom:empty
item replace block 0 184 -16 container.0 from entity @s weapon.offhand
item modify block 0 184 -16 container.0 {function:"minecraft:set_custom_data",tag:{moved_from_offhand_by_invisibility:true}}
item replace entity @s weapon.offhand with air
loot give @s mine 0 184 -16 stick[custom_data={drop_contents:true}]
