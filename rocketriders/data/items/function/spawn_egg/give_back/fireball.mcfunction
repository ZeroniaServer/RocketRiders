execute store success score $mainhand_free var unless items entity @s weapon.mainhand *
execute store success score $offhand_free var unless items entity @s weapon.mainhand *
execute if score $mainhand_free var matches 1 as @a[limit=1,tag=spawn_egg.placer] run loot replace entity @s weapon.mainhand loot items:item/fireball
execute if score $mainhand_free var matches 0 if score $offhand_free var matches 1 as @a[limit=1,tag=spawn_egg.placer] run loot replace entity @s weapon.offhand loot items:item/fireball
execute if score $mainhand_free var matches 0 if score $offhand_free var matches 0 as @a[limit=1,tag=spawn_egg.placer] run loot give @s loot items:item/fireball

return 1
