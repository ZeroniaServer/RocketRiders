kill @s

execute on origin if items entity @s weapon.mainhand *[custom_data~{id:"stinging_shield"}] run return run item modify entity @s weapon.mainhand custom:increment_count
execute on origin if items entity @s weapon.offhand *[custom_data~{id:"stinging_shield"}] run return run item modify entity @s weapon.offhand custom:increment_count
execute on origin unless items entity @s weapon.mainhand * run return run loot replace entity @s weapon.mainhand loot items:util/stinging_shield
execute on origin run loot give @s loot items:util/stinging_shield
