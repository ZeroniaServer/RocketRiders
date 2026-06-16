kill @s

execute on origin unless items entity @s weapon.mainhand * run return run loot replace entity @s weapon.mainhand loot items:item/nova_rocket
execute on origin run loot give @s loot items:item/nova_rocket
