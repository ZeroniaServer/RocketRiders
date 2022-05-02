## Gives first item to players who join late
tag @a[tag=JoinBlue] add Late
tag @a[tag=JoinYellow] add Late
execute if entity @s[tag=rngAnt,tag=givenAnt] as @a[tag=Late] run function items:missile/normal/giveant
execute if entity @s[tag=rngAux,tag=givenAux] as @a[tag=Late] run function items:missile/heavy/giveaux
execute if entity @s[tag=rngBlade,tag=givenBlade] as @a[tag=Late] run function items:missile/normal/giveblade
execute if entity @s[tag=rngBroad,tag=givenBroad] as @a[tag=Late] run function items:missile/special/givebroad
execute if entity @s[tag=rngBull,tag=givenBull] as @a[tag=Late] run function items:missile/special/givebull
execute if entity @s[tag=rngCata,tag=givenCata] as @a[tag=Late] run function items:missile/normal/givecata
execute if entity @s[tag=rngCitadel,tag=givenCita] as @a[tag=Late] run function items:missile/normal/givecitadel
execute if entity @s[tag=rngDuplex,tag=givenDuplex] as @a[tag=Late] run function items:missile/special/giveduplex
execute if entity @s[tag=rngEguard,tag=givenGuard] as @a[tag=Late] run function items:missile/normal/giveeguard
execute if entity @s[tag=rngGemi,tag=givenGemi] as @a[tag=Late] run function items:missile/normal/givegemi
execute if entity @s[tag=rngHur,tag=givenHur] as @a[tag=Late] run function items:missile/lightning/givehur
execute if entity @s[tag=rngHyper,tag=givenHyper] as @a[tag=Late] run function items:missile/special/givehyper
execute if entity @s[tag=rngJbuster,tag=givenJbust] as @a[tag=Late] run function items:missile/heavy/givejbuster
execute if entity @s[tag=rngLift,tag=givenLift] as @a[tag=Late] run function items:missile/normal/givelift
execute if entity @s[tag=rngNull,tag=givenNull] as @a[tag=Late] run function items:missile/normal/givenull
execute if entity @s[tag=rngRift,tag=givenRift] as @a[tag=Late] run function items:missile/heavy/giverift
execute if entity @s[tag=rngSlash,tag=givenSlash] as @a[tag=Late] run function items:missile/normal/giveslash
execute if entity @s[tag=rngThun,tag=givenBolt] as @a[tag=Late] run function items:missile/lightning/givethun
execute if entity @s[tag=rngToma,tag=givenToma] as @a[tag=Late] run function items:missile/normal/givetoma
execute if entity @s[tag=rngWar,tag=givenWar] as @a[tag=Late] run function items:missile/heavy/givewar
tag @a remove Late