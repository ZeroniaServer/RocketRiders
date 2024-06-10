## Gives first item to players who join late
tag @a[x=0,tag=JoinBlue] add Late
tag @a[x=0,tag=JoinYellow] add Late

#Knight
execute if entity @s[tag=rngAux,tag=givenAux] as @a[x=0,tag=Late,scores={crusadekit=1}] run function items:missile/heavy/giveaux
execute if entity @s[tag=rngBlade,tag=givenBlade] as @a[x=0,tag=Late,scores={crusadekit=1}] run function items:missile/normal/giveblade
execute if entity @s[tag=rngCitadel,tag=givenCita] as @a[x=0,tag=Late,scores={crusadekit=1}] run function items:missile/normal/givecitadel
execute if entity @s[tag=rngJbuster,tag=givenJbust] as @a[x=0,tag=Late,scores={crusadekit=1}] run function items:missile/heavy/givejbuster
execute if entity @s[tag=rngWar,tag=givenWar] as @a[x=0,tag=Late,scores={crusadekit=1}] run function items:missile/heavy/givewar
execute if entity @s[tag=!givenAux,tag=!givenBlade,tag=!givenCita,tag=!givenJbust,tag=!givenWar] run function rr_crusade:items/givefirstknight

#Archer
execute if entity @s[tag=rngBroad,tag=givenBroad] as @a[x=0,tag=Late,scores={crusadekit=2}] run function items:missile/special/givebroad
execute if entity @s[tag=rngGemi,tag=givenGemi] as @a[x=0,tag=Late,scores={crusadekit=2}] run function items:missile/normal/givegemi
execute if entity @s[tag=rngHur,tag=givenHur] as @a[x=0,tag=Late,scores={crusadekit=2}] run function items:missile/lightning/givehur
execute if entity @s[tag=rngSlash,tag=givenSlash] as @a[x=0,tag=Late,scores={crusadekit=2}] run function items:missile/normal/giveslash
execute if entity @s[tag=rngThun,tag=givenBolt] as @a[x=0,tag=Late,scores={crusadekit=2}] run function items:missile/lightning/givethun
execute if entity @s[tag=!givenBroad,tag=!givenGemi,tag=!givenHur,tag=!givenSlash,tag=!givenBolt] run function rr_crusade:items/givefirstarcher

#Mage
execute if entity @s[tag=rngAnt,tag=givenAnt] as @a[x=0,tag=Late,scores={crusadekit=3}] run function items:missile/normal/giveant
execute if entity @s[tag=rngCata,tag=givenCata] as @a[x=0,tag=Late,scores={crusadekit=3}] run function items:missile/normal/givecata
execute if entity @s[tag=rngLift,tag=givenLift] as @a[x=0,tag=Late,scores={crusadekit=3}] run function items:missile/normal/givelift
execute if entity @s[tag=rngNull,tag=givenNull] as @a[x=0,tag=Late,scores={crusadekit=3}] run function items:missile/normal/givenull
execute if entity @s[tag=rngToma,tag=givenToma] as @a[x=0,tag=Late,scores={crusadekit=3}] run function items:missile/normal/givetoma
execute if entity @s[tag=!givenAnt,tag=!givenCata,tag=!givenLift,tag=!givenNull,tag=!givenToma] run function rr_crusade:items/givefirstmage

tag @a[x=0] remove Late