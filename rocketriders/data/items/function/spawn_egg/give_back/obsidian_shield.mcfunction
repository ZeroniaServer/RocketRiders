execute store success score $mainhand_free var unless items entity @a[limit=1,tag=spawn_egg.placer] weapon.mainhand *
execute store success score $offhand_free var unless items entity @a[limit=1,tag=spawn_egg.placer] weapon.mainhand *
execute if score $mainhand_free var matches 1 as @a[limit=1,tag=spawn_egg.placer] run loot replace entity @s weapon.mainhand loot items:item/obsidian_shield
execute if score $mainhand_free var matches 0 if score $offhand_free var matches 1 as @a[limit=1,tag=spawn_egg.placer] run loot replace entity @s weapon.offhand loot items:item/obsidian_shield
execute if score $mainhand_free var matches 0 if score $offhand_free var matches 0 as @a[limit=1,tag=spawn_egg.placer] run loot give @s loot items:item/obsidian_shield

return 1
