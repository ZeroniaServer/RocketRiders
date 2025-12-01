## Gives first item to players who join late
tag @a[x=0,tag=JoinBlue] add Late
tag @a[x=0,tag=JoinYellow] add Late
execute if predicate game:item_pool/missile/ant if entity @s[tag=givenAnt] as @a[x=0,tag=Late] run function items:missile/normal/giveant
execute if predicate game:item_pool/missile/auxiliary if entity @s[tag=givenAux] as @a[x=0,tag=Late] run function items:missile/heavy/giveaux
execute if predicate game:item_pool/missile/blade if entity @s[tag=givenBlade] as @a[x=0,tag=Late] run function items:missile/normal/giveblade
execute if predicate game:item_pool/missile/broadsword if entity @s[tag=givenBroad] as @a[x=0,tag=Late] run function items:missile/special/givebroad
execute if predicate game:item_pool/missile/bullet if entity @s[tag=givenBull] as @a[x=0,tag=Late] run function items:missile/special/givebull
execute if predicate game:item_pool/missile/catapult if entity @s[tag=givenCata] as @a[x=0,tag=Late] run function items:missile/normal/givecata
execute if predicate game:item_pool/missile/citadel if entity @s[tag=givenCita] as @a[x=0,tag=Late] run function items:missile/normal/givecitadel
execute if predicate game:item_pool/missile/duplex if entity @s[tag=givenDuplex] as @a[x=0,tag=Late] run function items:missile/special/giveduplex
execute if predicate game:item_pool/missile/elder_guardian if entity @s[tag=givenGuard] as @a[x=0,tag=Late] run function items:missile/normal/giveeguard
execute if predicate game:item_pool/missile/gemini if entity @s[tag=givenGemi] as @a[x=0,tag=Late] run function items:missile/normal/givegemi
execute if predicate game:item_pool/missile/hurricane if entity @s[tag=givenHur] as @a[x=0,tag=Late] run function items:missile/lightning/givehur
execute if predicate game:item_pool/missile/hypersonic if entity @s[tag=givenHyper] as @a[x=0,tag=Late] run function items:missile/special/givehyper
execute if predicate game:item_pool/missile/juggerbuster if entity @s[tag=givenJbust] as @a[x=0,tag=Late] run function items:missile/heavy/givejbuster
execute if predicate game:item_pool/missile/lifter if entity @s[tag=givenLift] as @a[x=0,tag=Late] run function items:missile/normal/givelift
execute if predicate game:item_pool/missile/chronullifier if entity @s[tag=givenNull] as @a[x=0,tag=Late] run function items:missile/normal/givenull
execute if predicate game:item_pool/missile/rifter if entity @s[tag=givenRift] as @a[x=0,tag=Late] run function items:missile/heavy/giverift
execute if predicate game:item_pool/missile/slasher if entity @s[tag=givenSlash] as @a[x=0,tag=Late] run function items:missile/normal/giveslash
execute if predicate game:item_pool/missile/thunderbolt if entity @s[tag=givenBolt] as @a[x=0,tag=Late] run function items:missile/lightning/givethun
execute if predicate game:item_pool/missile/tomatwo if entity @s[tag=givenToma] as @a[x=0,tag=Late] run function items:missile/normal/givetoma
execute if predicate game:item_pool/missile/warhead if entity @s[tag=givenWar] as @a[x=0,tag=Late] run function items:missile/heavy/givewar
tag @a[x=0] remove Late