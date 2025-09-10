execute if score @s nomicon matches 2 run function items:missile/normal/giveant
execute if score @s nomicon matches 3 run function items:missile/normal/giveblade
execute if score @s nomicon matches 4 run function items:missile/normal/givecata
execute if score @s nomicon matches 5 run function items:missile/normal/giveslash
execute if score @s nomicon matches 6 run function items:missile/normal/givelift
execute if score @s nomicon matches 7 run function items:missile/normal/givenull
execute if score @s nomicon matches 8 run function items:missile/normal/giveeguard
execute if score @s nomicon matches 9 run function items:missile/normal/givecitadel
execute if score @s nomicon matches 10 run function items:missile/normal/givegemi

execute if score @s nomicon matches 11 run function items:missile/lightning/givethun
execute if score @s nomicon matches 12 run function items:missile/lightning/givehur
execute if score @s nomicon matches 13 run function items:missile/heavy/giveaux
execute if score @s nomicon matches 14 run function items:missile/heavy/givewar
execute if score @s nomicon matches 15 run function items:missile/heavy/giverift
execute if score @s nomicon matches 16 run function items:missile/heavy/givejbuster
execute if score @s nomicon matches 17 run function items:missile/special/givehyper
execute if score @s nomicon matches 18 run function items:missile/special/givebull
execute if score @s nomicon matches 19 run function items:missile/special/giveduplex
execute if score @s nomicon matches 20 run function items:missile/special/givebroad

execute if score @s nomicon matches 21 run function items:give/arrow {count:1}
execute if score @s nomicon matches 22 run function items:util/givecanopy
execute if score @s nomicon matches 23 run function items:util/givefireball
execute if score @s nomicon matches 24 run function items:util/giveclusterfireball
execute if score @s nomicon matches 25 run function items:util/givenova
execute if score @s nomicon matches 26 run function items:util/giveshield
execute if score @s nomicon matches 27 run function items:util/giveobshield
execute if score @s nomicon matches 28 run function items:util/givesplash
execute if score @s nomicon matches 29 run function items:util/givevortex
execute if score @s nomicon matches 30 run function items:util/giveicbm

execute if score @s nomicon matches 31 run function rr_powerups:items/powerup/givebeeshield
execute if score @s nomicon matches 32 run function rr_powerups:items/powerup/givelavasplash
execute if score @s nomicon matches 33 run function rr_powerups:items/powerup/giveslapfish
execute if score @s nomicon matches 34 run function rr_powerups:items/powerup/givetotem
execute if score @s nomicon matches 35 run function rr_powerups:items/powerup/giveelytra
execute if score @s nomicon matches 36 run function rr_powerups:items/powerup/givetrident
execute if score @s nomicon matches 37 run function items:shooting_saber/infinity_30_seconds
execute if score @s nomicon matches 37 unless predicate custom:has_shooting_saber_in_inventory run function rr_sandbox:items/givesaber
execute if score @s nomicon matches 37 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 37 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 38 run function items:give/tipped_arrow_blindness {count:1}
execute if score @s nomicon matches 39 run function items:give/tipped_arrow_levitation {count:1}
execute if score @s nomicon matches 40 run function items:give/tipped_arrow_slowness {count:1}
execute if score @s nomicon matches 41 run function items:give/tipped_arrow_wither {count:1}

execute if score @s nomicon matches 42 run clear @s *[custom_data~{id:"shooting_saber"}]
execute if score @s nomicon matches 42 run function rr_sandbox:items/givesaber
execute if score @s nomicon matches 42 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 42 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 43 run clear @s *[custom_data~{id:"piercing_pickaxe"}]
execute if score @s nomicon matches 43 run function rr_sandbox:items/givepickaxe
execute if score @s nomicon matches 43 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 43 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 44 run clear @s *[custom_data~{id:"knight_sword"}]
execute if score @s nomicon matches 44 run function rr_sandbox:items/giveknightsword
execute if score @s nomicon matches 44 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 44 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 45 run function rr_sandbox:items/giveknightshield
execute if score @s nomicon matches 46 run clear @s *[custom_data~{id:"spell_wand"}]
execute if score @s nomicon matches 46 run function rr_sandbox:items/givespellwand
execute if score @s nomicon matches 46 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 46 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 47 run function rr_crusade:items/util/givespellbook

# 48 maps to tomatwo (used to be 1)
execute if score @s nomicon matches 48 run function items:missile/normal/givetoma

execute if score @s nomicon matches 49 if entity @s[team=Blue] run function items:surprise_blue/givesurpriseegg
execute if score @s nomicon matches 49 if entity @s[team=Yellow] run function items:surprise_yellow/givesurpriseegg

execute if score @s nomicon matches 50 run loot give @s loot items:experimental/invisibility_potion
execute if score @s nomicon matches 51 run loot give @s loot items:experimental/jump_boost_potion
execute if score @s nomicon matches 52 run function items:give/spectral_arrow {count:1}
execute if score @s nomicon matches 53 run function items:shooting_saber/multishot_30_seconds
execute if score @s nomicon matches 53 unless predicate custom:has_shooting_saber_in_inventory run function rr_sandbox:items/givesaber
execute if score @s nomicon matches 53 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 53 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 54 run loot give @s loot items:experimental/building_block

execute if score @s nomicon matches 55 run function items:shooting_saber/infinity_permanent
execute if score @s nomicon matches 55 unless predicate custom:has_shooting_saber_in_inventory run function rr_sandbox:items/givesaber
execute if score @s nomicon matches 55 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 55 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 56 if predicate items:shooting_saber/infinity run function items:shooting_saber/infinity_deactivate
execute if score @s nomicon matches 56 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 56 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 57 run function items:shooting_saber/multishot_permanent
execute if score @s nomicon matches 57 unless predicate custom:has_shooting_saber_in_inventory run function rr_sandbox:items/givesaber
execute if score @s nomicon matches 57 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 57 run return run scoreboard players set $rolls var 0
execute if score @s nomicon matches 58 if predicate items:shooting_saber/multishot run function items:shooting_saber/multishot_deactivate
execute if score @s nomicon matches 58 run scoreboard players set @s nomicon 0
execute if score @s nomicon matches 58 run return run scoreboard players set $rolls var 0


scoreboard players remove $rolls var 1
execute if score $rolls var matches 1.. run function rr_sandbox:nomicon/give_items
