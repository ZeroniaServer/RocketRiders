kill @s

execute on origin if items entity @s weapon.mainhand *[custom_data~{id:"vortex"}] run return run item modify entity @s weapon.mainhand custom:increment_count
execute on origin if items entity @s weapon.offhand *[custom_data~{id:"vortex"}] run return run item modify entity @s weapon.offhand custom:increment_count
execute on origin unless items entity @s weapon.mainhand * run return run loot replace entity @s weapon.mainhand loot items:util/vortex
execute on origin run loot give @s loot items:util/vortex
