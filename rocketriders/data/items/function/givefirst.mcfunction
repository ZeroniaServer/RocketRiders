## Gives first item to players who join late
tag @a[x=0,tag=JoinBlue] add Late
tag @a[x=0,tag=JoinYellow] add Late
execute if predicate game:item_pool/missile/ant if entity @s[tag=givenAnt] as @a[x=0,tag=Late] run function items:item/missile/giveant
execute if predicate game:item_pool/missile/auxiliary if entity @s[tag=givenAux] as @a[x=0,tag=Late] run function items:item/missile/giveaux
execute if predicate game:item_pool/missile/blade if entity @s[tag=givenBlade] as @a[x=0,tag=Late] run function items:item/missile/giveblade
execute if predicate game:item_pool/missile/broadsword if entity @s[tag=givenBroad] as @a[x=0,tag=Late] run function items:item/missile/givebroad
execute if predicate game:item_pool/missile/bullet if entity @s[tag=givenBull] as @a[x=0,tag=Late] run function items:item/missile/givebull
execute if predicate game:item_pool/missile/catapult if entity @s[tag=givenCata] as @a[x=0,tag=Late] run function items:item/missile/givecata
execute if predicate game:item_pool/missile/citadel if entity @s[tag=givenCita] as @a[x=0,tag=Late] run function items:item/missile/givecitadel
execute if predicate game:item_pool/missile/duplex if entity @s[tag=givenDuplex] as @a[x=0,tag=Late] run function items:item/missile/giveduplex
execute if predicate game:item_pool/missile/elder_guardian if entity @s[tag=givenGuard] as @a[x=0,tag=Late] run function items:item/missile/giveeguard
execute if predicate game:item_pool/missile/gemini if entity @s[tag=givenGemi] as @a[x=0,tag=Late] run function items:item/missile/givegemi
execute if predicate game:item_pool/missile/hurricane if entity @s[tag=givenHur] as @a[x=0,tag=Late] run function items:item/missile/givehur
execute if predicate game:item_pool/missile/hypersonic if entity @s[tag=givenHyper] as @a[x=0,tag=Late] run function items:item/missile/givehyper
execute if predicate game:item_pool/missile/juggerbuster if entity @s[tag=givenJbust] as @a[x=0,tag=Late] run function items:item/missile/givejbuster
execute if predicate game:item_pool/missile/lifter if entity @s[tag=givenLift] as @a[x=0,tag=Late] run function items:item/missile/givelift
execute if predicate game:item_pool/missile/chronullifier if entity @s[tag=givenNull] as @a[x=0,tag=Late] run function items:item/missile/givenull
execute if predicate game:item_pool/missile/rifter if entity @s[tag=givenRift] as @a[x=0,tag=Late] run function items:item/missile/giverift
execute if predicate game:item_pool/missile/slasher if entity @s[tag=givenSlash] as @a[x=0,tag=Late] run function items:item/missile/giveslash
execute if predicate game:item_pool/missile/thunderbolt if entity @s[tag=givenBolt] as @a[x=0,tag=Late] run function items:item/missile/givethun
execute if predicate game:item_pool/missile/tomatwo if entity @s[tag=givenToma] as @a[x=0,tag=Late] run function items:item/missile/givetoma
execute if predicate game:item_pool/missile/warhead if entity @s[tag=givenWar] as @a[x=0,tag=Late] run function items:item/missile/givewar
tag @a[x=0] remove Late