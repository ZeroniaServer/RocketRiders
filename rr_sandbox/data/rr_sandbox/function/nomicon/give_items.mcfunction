execute if score @s nomicon matches 2 run function items:give/missile/ant {count:1}
execute if score @s nomicon matches 3 run function items:give/missile/blade {count:1}
execute if score @s nomicon matches 4 run function items:give/missile/catapult {count:1}
execute if score @s nomicon matches 5 run function items:give/missile/slasher {count:1}
execute if score @s nomicon matches 6 run function items:give/missile/lifter {count:1}
execute if score @s nomicon matches 7 run function items:give/missile/chronullifier {count:1}
execute if score @s nomicon matches 8 run function items:give/missile/elder_guardian {count:1}
execute if score @s nomicon matches 9 run function items:give/missile/citadel {count:1}
execute if score @s nomicon matches 10 run function items:give/missile/gemini {count:1}
execute if score @s nomicon matches 11 run function items:give/missile/thunderbolt {count:1}
execute if score @s nomicon matches 12 run function items:give/missile/hurricane {count:1}
execute if score @s nomicon matches 13 run function items:give/missile/auxiliary {count:1}
execute if score @s nomicon matches 14 run function items:give/missile/warhead {count:1}
execute if score @s nomicon matches 15 run function items:give/missile/rifter {count:1}
execute if score @s nomicon matches 16 run function items:give/missile/juggerbuster {count:1}
execute if score @s nomicon matches 17 run function items:give/missile/hypersonic {count:1}
execute if score @s nomicon matches 18 run function items:give/missile/bullet {count:1}
execute if score @s nomicon matches 19 run function items:give/missile/duplex {count:1}
execute if score @s nomicon matches 20 run function items:give/missile/broadsword {count:1}

execute if score @s nomicon matches 21 run function items:give/arrow {count:1}
execute if score @s nomicon matches 22 run function items:give/canopy {count:1}
execute if score @s nomicon matches 23 run function items:give/fireball {count:1}
execute if score @s nomicon matches 24 run function items:give/cluster_fireball {count:1}
execute if score @s nomicon matches 25 run function items:give/nova_rocket {count:1}
execute if score @s nomicon matches 26 run function items:give/shield {count:1}
execute if score @s nomicon matches 27 run function items:give/obsidian_shield {count:1}
execute if score @s nomicon matches 28 run function items:give/splash {count:1}
execute if score @s nomicon matches 29 run function items:give/vortex {count:1}
execute if score @s nomicon matches 30 run function items:give/icbm {count:1}

execute if score @s nomicon matches 31 run function items:give/stinging_shield {count:1}
execute if score @s nomicon matches 32 run function items:give/lava_splash {count:1}
execute if score @s nomicon matches 33 run function items:give/slap_fish {count:1}
execute if score @s nomicon matches 34 run function items:give/totem_of_undying {count:1}
execute if score @s nomicon matches 35 run function rr_powerups:items/powerup/giveelytra
execute if score @s nomicon matches 36 run function items:give/trident {count:1}
execute if score @s nomicon matches 37 run function items:shooting_saber/infinity_30_seconds
execute if score @s nomicon matches 37 unless predicate custom:has_shooting_saber_in_inventory run function items:give/shooting_saber {count:1}
execute if score @s nomicon matches 37 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 37 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 38 run function items:give/tipped_arrow_blindness {count:1}
execute if score @s nomicon matches 39 run function items:give/tipped_arrow_levitation {count:1}
execute if score @s nomicon matches 40 run function items:give/tipped_arrow_slowness {count:1}
execute if score @s nomicon matches 41 run function items:give/tipped_arrow_wither {count:1}

execute if score @s nomicon matches 42 run clear @s *[custom_data~{id:"shooting_saber"}]
execute if score @s nomicon matches 42 run function items:give/shooting_saber {count:1}
execute if score @s nomicon matches 42 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 42 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 43 run clear @s *[custom_data~{id:"piercing_pickaxe"}]
execute if score @s nomicon matches 43 run function items:give/piercing_pickaxe {count:1}
execute if score @s nomicon matches 43 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 43 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 44 run clear @s *[custom_data~{id:"knight_sword"}]
execute if score @s nomicon matches 44 run function items:give/knight_sword {count:1}
execute if score @s nomicon matches 44 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 44 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 45 run function items:give/knight_shield {count:1}
execute if score @s nomicon matches 46 run clear @s *[custom_data~{id:"spell_wand"}]
execute if score @s nomicon matches 46 run function items:give/spell_wand {count:1}
execute if score @s nomicon matches 46 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 46 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 47 run function items:give/spell_book {count:1}

# 48 maps to tomatwo (used to be 1)
execute if score @s nomicon matches 48 run function items:give/missile/tomatwo {count:1}

execute if score @s nomicon matches 49 run function items:give/surprise_missile/all {count:1}

execute if score @s nomicon matches 50 run function items:give/invisibility_potion {count:1}
execute if score @s nomicon matches 51 run function items:give/jump_boost_potion {count:1}
execute if score @s nomicon matches 52 run function items:give/spectral_arrow {count:1}
execute if score @s nomicon matches 53 run function items:shooting_saber/multishot_30_seconds
execute if score @s nomicon matches 53 unless predicate custom:has_shooting_saber_in_inventory run function items:give/shooting_saber {count:1}
execute if score @s nomicon matches 53 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 53 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 54 run function items:give/building_block {count:1}

execute if score @s nomicon matches 55 run function items:shooting_saber/infinity_permanent
execute if score @s nomicon matches 55 unless predicate custom:has_shooting_saber_in_inventory run function items:give/shooting_saber {count:1}
execute if score @s nomicon matches 55 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 55 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 56 if predicate items:shooting_saber/infinity run function items:shooting_saber/infinity_deactivate
execute if score @s nomicon matches 56 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 56 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 57 run function items:shooting_saber/multishot_permanent
execute if score @s nomicon matches 57 unless predicate custom:has_shooting_saber_in_inventory run function items:give/shooting_saber {count:1}
execute if score @s nomicon matches 57 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 57 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 58 if predicate items:shooting_saber/multishot run function items:shooting_saber/multishot_deactivate
execute if score @s nomicon matches 58 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 58 run return run scoreboard players set $rolls var 0


scoreboard players remove $rolls var 1
execute if score $rolls var matches 1.. run function rr_sandbox:nomicon/give_items
