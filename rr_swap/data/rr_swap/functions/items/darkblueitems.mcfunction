function rr_swap:items/antidropdupe

#dark
execute if entity @s[tag=rngBull] as @a[team=Blue] run function items:missile/special/givebull
execute if entity @s[tag=rngDuplex] as @a[team=Blue] run function items:missile/special/giveduplex
execute if entity @s[tag=rngAux] as @a[team=Blue] run function items:missile/heavy/giveaux
execute if entity @s[tag=rngWar] as @a[team=Blue] run function items:missile/heavy/givewar
execute if entity @s[tag=rngICBM] as @a[team=Blue] run function items:util/giveicbm
execute if entity @s[tag=rngShield] as @a[team=Blue] run function items:util/giveshield

#light
execute if entity @s[tag=rngHyper] as @a[team=Yellow] run function items:missile/special/givehyper
execute if entity @s[tag=rngBroad] as @a[team=Yellow] run function items:missile/special/givebroad
execute if entity @s[tag=rngHur] as @a[team=Yellow] run function items:missile/lightning/givehur
execute if entity @s[tag=rngThun] as @a[team=Yellow] run function items:missile/lightning/givethun
execute if entity @s[tag=rngFireball] as @a[team=Yellow] run function rr_swap:items/util/givefireball
execute if entity @s[tag=rngObshield] as @a[team=Yellow] run function items:util/giveobshield