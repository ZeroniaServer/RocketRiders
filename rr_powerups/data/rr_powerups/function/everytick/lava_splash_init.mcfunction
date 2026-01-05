kill @s

execute on origin if items entity @s weapon.mainhand *[custom_data~{id:"lava_splash"}] run return run item modify entity @s weapon.mainhand custom:increment_count
execute on origin if items entity @s weapon.offhand *[custom_data~{id:"lava_splash"}] run return run item modify entity @s weapon.offhand custom:increment_count
execute on origin unless items entity @s weapon.mainhand * run return run loot replace entity @s weapon.mainhand loot items:util/lava_splash
execute on origin run loot give @s loot items:util/lava_splash
