kill @s

execute on origin if items entity @s weapon.mainhand *[custom_data~{id:"splash"},count~{max:63}] run return run item modify entity @s weapon.mainhand custom:increment_count
execute on origin unless items entity @s weapon.mainhand *[custom_data~{id:"splash"}] if items entity @s weapon.offhand *[custom_data~{id:"splash"},count~{max:63}] run return run item modify entity @s weapon.offhand custom:increment_count
execute on origin unless items entity @s weapon.mainhand * run return run loot replace entity @s weapon.mainhand loot items:util/splash
execute on origin run loot give @s loot items:util/splash
