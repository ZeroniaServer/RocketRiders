## Gives first item to players who join late
#dark
execute if entity @s[tag=rngBull,tag=givenBull] as @a[predicate=custom:indimension,team=Yellow,tag=JoinYellow] run function items:missile/special/givebull
execute if entity @s[tag=rngDuplex,tag=givenDuplex] as @a[predicate=custom:indimension,team=Yellow,tag=JoinYellow] run function items:missile/special/giveduplex
execute if entity @s[tag=rngAux,tag=givenAux] as @a[predicate=custom:indimension,team=Yellow,tag=JoinYellow] run function items:missile/heavy/giveaux
execute if entity @s[tag=rngWar,tag=givenWar] as @a[predicate=custom:indimension,team=Yellow,tag=JoinYellow] run function items:missile/heavy/givewar

#light
execute if entity @s[tag=rngHyper,tag=givenHyper] as @a[predicate=custom:indimension,team=Blue,tag=JoinBlue] run function items:missile/special/givehyper
execute if entity @s[tag=rngBroad,tag=givenBroad] as @a[predicate=custom:indimension,team=Blue,tag=JoinBlue] run function items:missile/special/givebroad
execute if entity @s[tag=rngHur,tag=givenHur] as @a[predicate=custom:indimension,team=Blue,tag=JoinBlue] run function items:missile/lightning/givehur
execute if entity @s[tag=rngThun,tag=givenBolt] as @a[predicate=custom:indimension,team=Blue,tag=JoinBlue] run function items:missile/lightning/givethun