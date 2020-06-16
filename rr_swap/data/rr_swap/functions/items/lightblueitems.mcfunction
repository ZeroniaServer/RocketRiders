#dark
execute as @s[tag=rngBull] as @a[team=Yellow] run function items:missile/special/givebull
execute as @s[tag=rngDuplex] as @a[team=Yellow] run function items:missile/special/giveduplex
execute as @s[tag=rngAux] as @a[team=Yellow] run function items:missile/heavy/giveaux
execute as @s[tag=rngWar] as @a[team=Yellow] run function items:missile/heavy/givewar
execute as @s[tag=rngICBM] as @a[team=Yellow] run function rr_swap:items/util/giveicbm
execute as @s[tag=rngShield] as @a[team=Yellow] run function items:util/giveshield

#light
execute as @s[tag=rngHyper] as @a[team=Blue] run function items:missile/special/givehyper
execute as @s[tag=rngBroad] as @a[team=Blue] run function items:missile/special/givebroad
execute as @s[tag=rngHur] as @a[team=Blue] run function items:missile/lightning/givehur
execute as @s[tag=rngThun] as @a[team=Blue] run function items:missile/lightning/givethun
execute as @s[tag=rngFireball] as @a[team=Blue] run function rr_swap:items/util/givefireball
execute as @s[tag=rngObshield] as @a[team=Blue] run function items:util/giveobshield