execute if score @s nomicon matches 2 run return run function items:give/missile/ant with storage rocketriders:main nomicon
execute if score @s nomicon matches 3 run return run function items:give/missile/blade with storage rocketriders:main nomicon
execute if score @s nomicon matches 4 run return run function items:give/missile/catapult with storage rocketriders:main nomicon
execute if score @s nomicon matches 5 run return run function items:give/missile/slasher with storage rocketriders:main nomicon
execute if score @s nomicon matches 6 run return run function items:give/missile/lifter with storage rocketriders:main nomicon
execute if score @s nomicon matches 7 run return run function items:give/missile/chronullifier with storage rocketriders:main nomicon
execute if score @s nomicon matches 8 run return run function items:give/missile/elder_guardian with storage rocketriders:main nomicon
execute if score @s nomicon matches 9 run return run function items:give/missile/citadel with storage rocketriders:main nomicon
execute if score @s nomicon matches 10 run return run function items:give/missile/gemini with storage rocketriders:main nomicon
execute if score @s nomicon matches 11 run return run function items:give/missile/thunderbolt with storage rocketriders:main nomicon
execute if score @s nomicon matches 12 run return run function items:give/missile/hurricane with storage rocketriders:main nomicon
execute if score @s nomicon matches 13 run return run function items:give/missile/auxiliary with storage rocketriders:main nomicon
execute if score @s nomicon matches 14 run return run function items:give/missile/warhead with storage rocketriders:main nomicon
execute if score @s nomicon matches 15 run return run function items:give/missile/rifter with storage rocketriders:main nomicon
execute if score @s nomicon matches 16 run return run function items:give/missile/juggerbuster with storage rocketriders:main nomicon
execute if score @s nomicon matches 17 run return run function items:give/missile/hypersonic with storage rocketriders:main nomicon
execute if score @s nomicon matches 18 run return run function items:give/missile/bullet with storage rocketriders:main nomicon
execute if score @s nomicon matches 19 run return run function items:give/missile/duplex with storage rocketriders:main nomicon
execute if score @s nomicon matches 20 run return run function items:give/missile/broadsword with storage rocketriders:main nomicon
execute if score @s nomicon matches 21 run return run function items:give/arrow with storage rocketriders:main nomicon
execute if score @s nomicon matches 22 run return run function items:give/canopy with storage rocketriders:main nomicon
execute if score @s nomicon matches 23 run return run function items:give/fireball with storage rocketriders:main nomicon
execute if score @s nomicon matches 24 run return run function items:give/cluster_fireball with storage rocketriders:main nomicon
execute if score @s nomicon matches 25 run return run function items:give/nova_rocket with storage rocketriders:main nomicon
execute if score @s nomicon matches 26 run return run function items:give/shield with storage rocketriders:main nomicon
execute if score @s nomicon matches 27 run return run function items:give/obsidian_shield with storage rocketriders:main nomicon
execute if score @s nomicon matches 28 run return run function items:give/splash with storage rocketriders:main nomicon
execute if score @s nomicon matches 29 run return run function items:give/vortex with storage rocketriders:main nomicon
execute if score @s nomicon matches 30 run return run function items:give/icbm with storage rocketriders:main nomicon
execute if score @s nomicon matches 31 run return run function items:give/stinging_shield with storage rocketriders:main nomicon
execute if score @s nomicon matches 32 run return run function items:give/lava_splash with storage rocketriders:main nomicon
execute if score @s nomicon matches 33 run return run function items:give/slap_fish with storage rocketriders:main nomicon
execute if score @s nomicon matches 34 run return run function items:give/totem_of_undying with storage rocketriders:main nomicon

execute if score @s nomicon matches 35 if entity @s[predicate=custom:break_elytra] run return run tellraw @s {color:"red",text:"Elytra cannot be equipped at the enemy's base"}
execute if score @s nomicon matches 35 if items entity @s[tag=!elytra.unbreakable] armor.chest elytra[damage=0] run return run tellraw @s {color:"red",text:"You already have elytra equipped"}
execute if score @s nomicon matches 35 run tag @s remove elytra.unbreakable
execute if score @s nomicon matches 35 run return run function rr_powerups:items/powerup/giveelytra

execute if score @s nomicon matches 36 run return run function items:give/trident with storage rocketriders:main nomicon

execute if score @s nomicon matches 37 run function items:shooting_saber/infinity_30_seconds
execute if score @s nomicon matches 37 run return run execute unless predicate custom:has_shooting_saber_in_inventory run function items:give/shooting_saber with storage rocketriders:main nomicon

execute if score @s nomicon matches 38 run return run function items:give/tipped_arrow_blindness with storage rocketriders:main nomicon
execute if score @s nomicon matches 39 run return run function items:give/tipped_arrow_levitation with storage rocketriders:main nomicon
execute if score @s nomicon matches 40 run return run function items:give/tipped_arrow_slowness with storage rocketriders:main nomicon
execute if score @s nomicon matches 41 run return run function items:give/tipped_arrow_wither with storage rocketriders:main nomicon

execute if score @s nomicon matches 42 run clear @s *[custom_data~{id:"shooting_saber"}]
execute if score @s nomicon matches 42 run return run function items:give/shooting_saber with storage rocketriders:main nomicon

execute if score @s nomicon matches 43 run clear @s *[custom_data~{id:"piercing_pickaxe"}]
execute if score @s nomicon matches 43 run return run function items:give/piercing_pickaxe with storage rocketriders:main nomicon

execute if score @s nomicon matches 44 run clear @s *[custom_data~{id:"knight_sword"}]
execute if score @s nomicon matches 44 run return run function items:give/knight_sword with storage rocketriders:main nomicon

execute if score @s nomicon matches 45 run return run function items:give/knight_shield with storage rocketriders:main nomicon

execute if score @s nomicon matches 46 run clear @s *[custom_data~{id:"spell_wand"}]
execute if score @s nomicon matches 46 run return run function items:give/spell_wand with storage rocketriders:main nomicon

execute if score @s nomicon matches 47 run return run function items:give/spell_book with storage rocketriders:main nomicon
execute if score @s nomicon matches 48 run return run function items:give/missile/tomatwo with storage rocketriders:main nomicon
execute if score @s nomicon matches 49 run return run function items:give/surprise_missile/all with storage rocketriders:main nomicon
execute if score @s nomicon matches 50 run return run function items:give/invisibility_potion with storage rocketriders:main nomicon
execute if score @s nomicon matches 51 run return run function items:give/jump_boost_potion with storage rocketriders:main nomicon
execute if score @s nomicon matches 52 run return run function items:give/spectral_arrow with storage rocketriders:main nomicon

execute if score @s nomicon matches 53 run function items:shooting_saber/multishot_30_seconds
execute if score @s nomicon matches 53 run return run execute unless predicate custom:has_shooting_saber_in_inventory run function items:give/shooting_saber with storage rocketriders:main nomicon

execute if score @s nomicon matches 54 run return run function items:give/building_block with storage rocketriders:main nomicon

execute if score @s nomicon matches 55 run function items:shooting_saber/infinity_permanent
execute if score @s nomicon matches 55 run return run execute unless predicate custom:has_shooting_saber_in_inventory run function items:give/shooting_saber with storage rocketriders:main nomicon

execute if score @s nomicon matches 56 run return run execute if predicate items:shooting_saber/infinity run function items:shooting_saber/infinity_deactivate

execute if score @s nomicon matches 57 run function items:shooting_saber/multishot_permanent
execute if score @s nomicon matches 57 run return run execute unless predicate custom:has_shooting_saber_in_inventory run function items:give/shooting_saber with storage rocketriders:main nomicon

execute if score @s nomicon matches 58 run return run execute if predicate items:shooting_saber/multishot run function items:shooting_saber/multishot_deactivate
execute if score @s nomicon matches 59 run return run function items:give/booster_rocket with storage rocketriders:main nomicon

execute if score @s nomicon matches 35 if items entity @s[tag=elytra.unbreakable] armor.chest elytra[damage=0] run return run tellraw @s {color:"red",text:"You already have elytra equipped"}
execute if score @s nomicon matches 60 run tag @s add elytra.unbreakable
execute if score @s nomicon matches 60 run return run function rr_powerups:items/powerup/giveelytra

execute if score @s nomicon matches 61 unless score $no_lunging_spear global matches 1 run return run function items:give/lunging_spear with storage rocketriders:main nomicon
