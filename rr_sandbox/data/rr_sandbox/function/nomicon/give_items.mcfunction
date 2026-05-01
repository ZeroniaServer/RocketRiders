execute if score @s nomicon matches 2 run return run function items:give_count/missile/ant with storage rocketriders:main nomicon
execute if score @s nomicon matches 3 run return run function items:give_count/missile/blade with storage rocketriders:main nomicon
execute if score @s nomicon matches 4 run return run function items:give_count/missile/catapult with storage rocketriders:main nomicon
execute if score @s nomicon matches 5 run return run function items:give_count/missile/slasher with storage rocketriders:main nomicon
execute if score @s nomicon matches 6 run return run function items:give_count/missile/lifter with storage rocketriders:main nomicon
execute if score @s nomicon matches 7 run return run function items:give_count/missile/chronullifier with storage rocketriders:main nomicon
execute if score @s nomicon matches 8 run return run function items:give_count/missile/elder_guardian with storage rocketriders:main nomicon
execute if score @s nomicon matches 9 run return run function items:give_count/missile/citadel with storage rocketriders:main nomicon
execute if score @s nomicon matches 10 run return run function items:give_count/missile/gemini with storage rocketriders:main nomicon
execute if score @s nomicon matches 11 run return run function items:give_count/missile/thunderbolt with storage rocketriders:main nomicon
execute if score @s nomicon matches 12 run return run function items:give_count/missile/hurricane with storage rocketriders:main nomicon
execute if score @s nomicon matches 13 run return run function items:give_count/missile/auxiliary with storage rocketriders:main nomicon
execute if score @s nomicon matches 14 run return run function items:give_count/missile/warhead with storage rocketriders:main nomicon
execute if score @s nomicon matches 15 run return run function items:give_count/missile/rifter with storage rocketriders:main nomicon
execute if score @s nomicon matches 16 run return run function items:give_count/missile/juggerbuster with storage rocketriders:main nomicon
execute if score @s nomicon matches 17 run return run function items:give_count/missile/hypersonic with storage rocketriders:main nomicon
execute if score @s nomicon matches 18 run return run function items:give_count/missile/bullet with storage rocketriders:main nomicon
execute if score @s nomicon matches 19 run return run function items:give_count/missile/duplex with storage rocketriders:main nomicon
execute if score @s nomicon matches 20 run return run function items:give_count/missile/broadsword with storage rocketriders:main nomicon
execute if score @s nomicon matches 21 run return run function items:give_count/arrow with storage rocketriders:main nomicon
execute if score @s nomicon matches 22 run return run function items:give_count/canopy with storage rocketriders:main nomicon
execute if score @s nomicon matches 23 run return run function items:give_count/fireball with storage rocketriders:main nomicon
execute if score @s nomicon matches 24 run return run function items:give_count/cluster_fireball with storage rocketriders:main nomicon
execute if score @s nomicon matches 25 run return run function items:give_count/nova_rocket with storage rocketriders:main nomicon
execute if score @s nomicon matches 26 run return run function items:give_count/shield with storage rocketriders:main nomicon
execute if score @s nomicon matches 27 run return run function items:give_count/obsidian_shield with storage rocketriders:main nomicon
execute if score @s nomicon matches 28 run return run function items:give_count/splash with storage rocketriders:main nomicon
execute if score @s nomicon matches 29 run return run function items:give_count/vortex with storage rocketriders:main nomicon
execute if score @s nomicon matches 30 run return run function items:give_count/icbm with storage rocketriders:main nomicon
execute if score @s nomicon matches 31 run return run function items:give_count/stinging_shield with storage rocketriders:main nomicon
execute if score @s nomicon matches 32 run return run function items:give_count/lava_splash with storage rocketriders:main nomicon
execute if score @s nomicon matches 33 run return run function items:give_count/slap_fish with storage rocketriders:main nomicon
execute if score @s nomicon matches 34 run return run function items:give_count/totem_of_undying with storage rocketriders:main nomicon

execute if score @s nomicon matches 35 unless predicate items:can_activate_elytra run return run tellraw @s {color:"red",text:"Elytra cannot be equipped at the enemy's base"}
execute if score @s nomicon matches 35 run return run function items:effects/elytra/set_normal

execute if score @s nomicon matches 36 run return run function items:give_count/trident with storage rocketriders:main nomicon

execute if score @s nomicon matches 37 run function items:effects/infinity_saber/set_30_seconds
execute if score @s nomicon matches 37 run return run execute unless predicate custom:player/has_shooting_saber_in_inventory run function items:give_count/shooting_saber with storage rocketriders:main nomicon

execute if score @s nomicon matches 38 run return run function items:give_count/tipped_arrow_blindness with storage rocketriders:main nomicon
execute if score @s nomicon matches 39 run return run function items:give_count/tipped_arrow_levitation with storage rocketriders:main nomicon
execute if score @s nomicon matches 40 run return run function items:give_count/tipped_arrow_slowness with storage rocketriders:main nomicon
execute if score @s nomicon matches 41 run return run function items:give_count/tipped_arrow_wither with storage rocketriders:main nomicon

execute if score @s nomicon matches 42 run clear @s *[custom_data~{id:"shooting_saber"}]
execute if score @s nomicon matches 42 run return run function items:give_count/shooting_saber with storage rocketriders:main nomicon

execute if score @s nomicon matches 43 run clear @s *[custom_data~{id:"piercing_pickaxe"}]
execute if score @s nomicon matches 43 run return run function items:give_count/piercing_pickaxe with storage rocketriders:main nomicon

execute if score @s nomicon matches 44 run clear @s *[custom_data~{id:"knight_sword"}]
execute if score @s nomicon matches 44 run return run function items:give_count/knight_sword with storage rocketriders:main nomicon

execute if score @s nomicon matches 45 run return run function items:give_count/knight_shield with storage rocketriders:main nomicon

execute if score @s nomicon matches 46 run clear @s *[custom_data~{id:"spell_wand"}]
execute if score @s nomicon matches 46 run return run function items:give_count/spell_wand with storage rocketriders:main nomicon

execute if score @s nomicon matches 47 run return run function items:give_count/spell_book/fire with storage rocketriders:main nomicon
execute if score @s nomicon matches 48 run return run function items:give_count/missile/tomatwo with storage rocketriders:main nomicon
execute if score @s nomicon matches 49 run return run function items:give_count/surprise_egg with storage rocketriders:main nomicon
execute if score @s nomicon matches 50 run return run function items:give_count/invisibility_potion with storage rocketriders:main nomicon
execute if score @s nomicon matches 51 run return run function items:give_count/jump_boost_potion with storage rocketriders:main nomicon
execute if score @s nomicon matches 52 run return run function items:give_count/spectral_arrow with storage rocketriders:main nomicon

execute if score @s nomicon matches 53 run function items:effects/multishot_saber/set_30_seconds
execute if score @s nomicon matches 53 run return run execute unless predicate custom:player/has_shooting_saber_in_inventory run function items:give_count/shooting_saber with storage rocketriders:main nomicon

execute if score @s nomicon matches 54 run return run function items:give_count/building_block with storage rocketriders:main nomicon

execute if score @s nomicon matches 55 run function items:effects/infinity_saber/set_infinite
execute if score @s nomicon matches 55 run return run execute unless predicate custom:player/has_shooting_saber_in_inventory run function items:give_count/shooting_saber with storage rocketriders:main nomicon

execute if score @s nomicon matches 56 run return run execute if predicate items:effects/infinity_saber/on run function items:effects/infinity_saber/remove

execute if score @s nomicon matches 57 run function items:effects/multishot_saber/set_infinite
execute if score @s nomicon matches 57 run return run execute unless predicate custom:player/has_shooting_saber_in_inventory run function items:give_count/shooting_saber with storage rocketriders:main nomicon

execute if score @s nomicon matches 58 run return run execute if predicate items:effects/multishot_saber/on run function items:effects/multishot_saber/remove
execute if score @s nomicon matches 59 run return run function items:give_count/booster_rocket with storage rocketriders:main nomicon

execute if score @s nomicon matches 60 if items entity @s armor.chest elytra[unbreakable] run return run tellraw @s {color:"red",text:"You already have an unbreakable elytra equipped"}
execute if score @s nomicon matches 60 run return run function items:effects/elytra/set_unbreakable

execute if score @s nomicon matches 61 unless score $no_lunging_spear global matches 1 run return run function items:give_count/lunging_spear with storage rocketriders:main nomicon

execute if score @s nomicon matches 62 run return run execute if predicate items:effects/elytra/on run function items:effects/elytra/remove

execute if score @s nomicon matches 63 run return run function items:give_count/spell_book/health with storage rocketriders:main nomicon
execute if score @s nomicon matches 64 run return run function items:give_count/spell_book/damage with storage rocketriders:main nomicon
execute if score @s nomicon matches 65 run return run function items:give_count/spell_book/wind with storage rocketriders:main nomicon
