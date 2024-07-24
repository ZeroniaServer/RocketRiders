#dark
execute if entity @s[tag=rngBull] as @a[x=0,team=Yellow,tag=getItem] run function items:missile/special/givebull
execute if entity @s[tag=rngDuplex] as @a[x=0,team=Yellow,tag=getItem] run function items:missile/special/giveduplex
execute if entity @s[tag=rngAux] as @a[x=0,team=Yellow,tag=getItem] run function items:missile/heavy/giveaux
execute if entity @s[tag=rngWar] as @a[x=0,team=Yellow,tag=getItem] run function items:missile/heavy/givewar
execute if entity @s[tag=rngICBM] as @a[x=0,team=Yellow,tag=getItem] run function items:util/giveicbm
execute if entity @s[tag=rngShield] as @a[x=0,team=Yellow,tag=getItem] run function items:util/giveshield

#light
execute if entity @s[tag=rngHyper] as @a[x=0,team=Blue,tag=getItem] run function items:missile/special/givehyper
execute if entity @s[tag=rngBroad] as @a[x=0,team=Blue,tag=getItem] run function items:missile/special/givebroad
execute if entity @s[tag=rngHur] as @a[x=0,team=Blue,tag=getItem] run function items:missile/lightning/givehur
execute if entity @s[tag=rngThun] as @a[x=0,team=Blue,tag=getItem] run function items:missile/lightning/givethun
execute if entity @s[tag=rngFireball] as @a[x=0,team=Blue,tag=getItem] run function items:util/giveclusterfireball
execute if entity @s[tag=rngObshield] as @a[x=0,team=Blue,tag=getItem] run function items:util/giveobshield