#> Kill items to prevent duplication glitches
execute if entity @s[tag=rngBull] as @e[x=0,type=item] if items entity @s contents skeleton_horse_spawn_egg run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngDuplex] as @e[x=0,type=item] if items entity @s contents parrot_spawn_egg run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngAux] as @e[x=0,type=item] if items entity @s contents mooshroom_spawn_egg run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngWar] as @e[x=0,type=item] if items entity @s contents silverfish_spawn_egg run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngICBM] as @e[x=0,type=item] if items entity @s contents egg run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngShield] as @e[x=0,type=item] if items entity @s contents snowball run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngHyper] as @e[x=0,type=item] if items entity @s contents turtle_spawn_egg run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngBroad] as @e[x=0,type=item] if items entity @s contents magma_cube_spawn_egg run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngHur] as @e[x=0,type=item] if items entity @s contents drowned_spawn_egg run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngThun] as @e[x=0,type=item] if items entity @s contents vex_spawn_egg run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngFireball] as @e[x=0,type=item] if items entity @s contents blaze_spawn_egg run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngObshield] as @e[x=0,type=item] if items entity @s contents enderman_spawn_egg run function rr_swap:items/lightbluededuct
execute if entity @s[tag=rngArrows] as @e[x=0,type=item] if items entity @s contents arrow run function items:deduct
function items:full_hotbar