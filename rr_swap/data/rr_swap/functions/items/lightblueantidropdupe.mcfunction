#> Kill items to prevent duplication glitches
execute if entity @s[tag=rngBull] as @e[type=item] if data entity @s {Item:{id:"minecraft:skeleton_horse_spawn_egg"}} run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngDuplex] as @e[type=item] if data entity @s {Item:{id:"minecraft:parrot_spawn_egg"}} run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngAux] as @e[type=item] if data entity @s {Item:{id:"minecraft:mooshroom_spawn_egg"}} run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngWar] as @e[type=item] if data entity @s {Item:{id:"minecraft:silverfish_spawn_egg"}} run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngICBM] as @e[type=item] if data entity @s {Item:{id:"minecraft:egg"}} run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngShield] as @e[type=item] if data entity @s {Item:{id:"minecraft:snowball"}} run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngHyper] as @e[type=item] if data entity @s {Item:{id:"minecraft:turtle_spawn_egg"}} run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngBroad] as @e[type=item] if data entity @s {Item:{id:"minecraft:magma_cube_spawn_egg"}} run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngHur] as @e[type=item] if data entity @s {Item:{id:"minecraft:drowned_spawn_egg"}} run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngThun] as @e[type=item] if data entity @s {Item:{id:"minecraft:vex_spawn_egg"}} run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngFireball] as @e[type=item] if data entity @s {Item:{id:"minecraft:blaze_spawn_egg"}} run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngObshield] as @e[type=item] if data entity @s {Item:{id:"minecraft:enderman_spawn_egg"}} run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngArrows] as @e[type=item] if data entity @s {Item:{id:"minecraft:arrow"}} run function items:deduct
function items:full_hotbar