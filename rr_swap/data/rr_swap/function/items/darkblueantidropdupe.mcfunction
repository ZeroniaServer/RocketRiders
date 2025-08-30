#> Kill items to prevent duplication glitches
execute if entity @s[tag=rngBull] as @e[x=0,type=item] if items entity @s contents #custom:missile[custom_data~{id:"missile/bullet"}] run function rr_swap:items/darkbluededuct
execute if entity @s[tag=rngDuplex] as @e[x=0,type=item] if items entity @s contents #custom:missile[custom_data~{id:"missile/duplex"}] run function rr_swap:items/darkbluededuct
execute if entity @s[tag=rngAux] as @e[x=0,type=item] if items entity @s contents #custom:missile[custom_data~{id:"missile/auxiliary"}] run function rr_swap:items/darkbluededuct
execute if entity @s[tag=rngWar] as @e[x=0,type=item] if items entity @s contents #custom:missile[custom_data~{id:"missile/warhead"}] run function rr_swap:items/darkbluededuct
execute if entity @s[tag=rngICBM] as @e[x=0,type=item] if items entity @s contents egg run function rr_swap:items/darkbluededuct
execute if entity @s[tag=rngShield] as @e[x=0,type=item] if items entity @s contents snowball[custom_data~{id:"shield"}] run function rr_swap:items/darkbluededuct
execute if entity @s[tag=rngHyper] as @e[x=0,type=item] if items entity @s contents #custom:missile[custom_data~{id:"missile/hypersonic"}] run function rr_swap:items/darkbluededuct
execute if entity @s[tag=rngBroad] as @e[x=0,type=item] if items entity @s contents #custom:missile[custom_data~{id:"missile/broadsword"}] run function rr_swap:items/darkbluededuct
execute if entity @s[tag=rngHur] as @e[x=0,type=item] if items entity @s contents #custom:missile[custom_data~{id:"missile/hurricane"}] run function rr_swap:items/darkbluededuct
execute if entity @s[tag=rngThun] as @e[x=0,type=item] if items entity @s contents #custom:missile[custom_data~{id:"missile/thunderbolt"}] run function rr_swap:items/darkbluededuct
execute if entity @s[tag=rngFireball] as @e[x=0,type=item] if items entity @s contents pig_spawn_egg[custom_data~{id:"cluster_fireball"}] run function rr_swap:items/darkbluededuct
execute if entity @s[tag=rngObshield] as @e[x=0,type=item] if items entity @s contents pig_spawn_egg[custom_data~{id:"obsidian_shield"}] run function rr_swap:items/darkbluededuct
execute if entity @s[tag=rngArrows] as @e[x=0,type=item] if items entity @s contents arrow run function items:deduct
function items:full_hotbar