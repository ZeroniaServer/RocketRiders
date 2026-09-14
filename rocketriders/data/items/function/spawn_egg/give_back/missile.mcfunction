execute store success score $mainhand_free var unless items entity @a[limit=1,tag=spawn_egg.placer] weapon.mainhand *
execute store success score $offhand_free var unless items entity @a[limit=1,tag=spawn_egg.placer] weapon.mainhand *
execute as @a[limit=1,tag=spawn_egg.placer] run function items:spawn_egg/give_back/__missile/with_type with storage rocketriders:main spawn_egg

return 1
