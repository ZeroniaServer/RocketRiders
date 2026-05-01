#dark
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(rr_swap:items/lightblueitems) Handing out DARK items..."]}
execute if entity @s[tag=rngBull] as @a[x=0,predicate=custom:team/yellow,tag=getItem] run function items:give/missile/bullet
execute if entity @s[tag=rngDuplex] as @a[x=0,predicate=custom:team/yellow,tag=getItem] run function items:give/missile/duplex
execute if entity @s[tag=rngAux] as @a[x=0,predicate=custom:team/yellow,tag=getItem] run function items:give/missile/auxiliary
execute if entity @s[tag=rngWar] as @a[x=0,predicate=custom:team/yellow,tag=getItem] run function items:give/missile/warhead
execute if entity @s[tag=rngICBM] as @a[x=0,predicate=custom:team/yellow,tag=getItem] run function items:give/icbm
execute if entity @s[tag=rngShield] as @a[x=0,predicate=custom:team/yellow,tag=getItem] run function items:give/shield

#light
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(rr_swap:items/lightblueitems) Handing out LIGHT items..."]}
execute if entity @s[tag=rngHyper] as @a[x=0,predicate=custom:team/blue,tag=getItem] run function items:give/missile/hypersonic
execute if entity @s[tag=rngBroad] as @a[x=0,predicate=custom:team/blue,tag=getItem] run function items:give/missile/broadsword
execute if entity @s[tag=rngHur] as @a[x=0,predicate=custom:team/blue,tag=getItem] run function items:give/missile/hurricane
execute if entity @s[tag=rngThun] as @a[x=0,predicate=custom:team/blue,tag=getItem] run function items:give/missile/thunderbolt
execute if entity @s[tag=rngFireball] as @a[x=0,predicate=custom:team/blue,tag=getItem] run function items:give/cluster_fireball
execute if entity @s[tag=rngObshield] as @a[x=0,predicate=custom:team/blue,tag=getItem] run function items:give/obsidian_shield