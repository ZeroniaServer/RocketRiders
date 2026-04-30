#dark
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(rr_swap:items/lightblueitems) Handing out DARK items..."]}
execute if entity @s[tag=rngBull] as @a[x=0,predicate=custom:team/yellow,tag=getItem] run function items:item/missile/givebull
execute if entity @s[tag=rngDuplex] as @a[x=0,predicate=custom:team/yellow,tag=getItem] run function items:item/missile/giveduplex
execute if entity @s[tag=rngAux] as @a[x=0,predicate=custom:team/yellow,tag=getItem] run function items:item/missile/giveaux
execute if entity @s[tag=rngWar] as @a[x=0,predicate=custom:team/yellow,tag=getItem] run function items:item/missile/givewar
execute if entity @s[tag=rngICBM] as @a[x=0,predicate=custom:team/yellow,tag=getItem] run function items:item/giveicbm
execute if entity @s[tag=rngShield] as @a[x=0,predicate=custom:team/yellow,tag=getItem] run function items:item/giveshield

#light
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(rr_swap:items/lightblueitems) Handing out LIGHT items..."]}
execute if entity @s[tag=rngHyper] as @a[x=0,predicate=custom:team/blue,tag=getItem] run function items:item/missile/givehyper
execute if entity @s[tag=rngBroad] as @a[x=0,predicate=custom:team/blue,tag=getItem] run function items:item/missile/givebroad
execute if entity @s[tag=rngHur] as @a[x=0,predicate=custom:team/blue,tag=getItem] run function items:item/missile/givehur
execute if entity @s[tag=rngThun] as @a[x=0,predicate=custom:team/blue,tag=getItem] run function items:item/missile/givethun
execute if entity @s[tag=rngFireball] as @a[x=0,predicate=custom:team/blue,tag=getItem] run function items:item/giveclusterfireball
execute if entity @s[tag=rngObshield] as @a[x=0,predicate=custom:team/blue,tag=getItem] run function items:item/giveobshield