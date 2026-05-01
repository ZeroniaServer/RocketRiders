## Gives first item to players who join late
tag @a[x=0,tag=JoinBlue] add Late
tag @a[x=0,tag=JoinYellow] add Late
execute if predicate game:item_pool/missile/ant if entity @s[tag=givenAnt] as @a[x=0,tag=Late] run function items:give/missile/ant
execute if predicate game:item_pool/missile/auxiliary if entity @s[tag=givenAux] as @a[x=0,tag=Late] run function items:give/missile/auxiliary
execute if predicate game:item_pool/missile/blade if entity @s[tag=givenBlade] as @a[x=0,tag=Late] run function items:give/missile/blade
execute if predicate game:item_pool/missile/broadsword if entity @s[tag=givenBroad] as @a[x=0,tag=Late] run function items:give/missile/broadsword
execute if predicate game:item_pool/missile/bullet if entity @s[tag=givenBull] as @a[x=0,tag=Late] run function items:give/missile/bullet
execute if predicate game:item_pool/missile/catapult if entity @s[tag=givenCata] as @a[x=0,tag=Late] run function items:give/missile/catapult
execute if predicate game:item_pool/missile/citadel if entity @s[tag=givenCita] as @a[x=0,tag=Late] run function items:give/missile/citadel
execute if predicate game:item_pool/missile/duplex if entity @s[tag=givenDuplex] as @a[x=0,tag=Late] run function items:give/missile/duplex
execute if predicate game:item_pool/missile/elder_guardian if entity @s[tag=givenGuard] as @a[x=0,tag=Late] run function items:give/missile/elder_guardian
execute if predicate game:item_pool/missile/gemini if entity @s[tag=givenGemi] as @a[x=0,tag=Late] run function items:give/missile/gemini
execute if predicate game:item_pool/missile/hurricane if entity @s[tag=givenHur] as @a[x=0,tag=Late] run function items:give/missile/hurricane
execute if predicate game:item_pool/missile/hypersonic if entity @s[tag=givenHyper] as @a[x=0,tag=Late] run function items:give/missile/hypersonic
execute if predicate game:item_pool/missile/juggerbuster if entity @s[tag=givenJbust] as @a[x=0,tag=Late] run function items:give/missile/juggerbuster
execute if predicate game:item_pool/missile/lifter if entity @s[tag=givenLift] as @a[x=0,tag=Late] run function items:give/missile/lifter
execute if predicate game:item_pool/missile/chronullifier if entity @s[tag=givenNull] as @a[x=0,tag=Late] run function items:give/missile/chronullifier
execute if predicate game:item_pool/missile/rifter if entity @s[tag=givenRift] as @a[x=0,tag=Late] run function items:give/missile/rifter
execute if predicate game:item_pool/missile/slasher if entity @s[tag=givenSlash] as @a[x=0,tag=Late] run function items:give/missile/slasher
execute if predicate game:item_pool/missile/thunderbolt if entity @s[tag=givenBolt] as @a[x=0,tag=Late] run function items:give/missile/thunderbolt
execute if predicate game:item_pool/missile/tomatwo if entity @s[tag=givenToma] as @a[x=0,tag=Late] run function items:give/missile/tomatwo
execute if predicate game:item_pool/missile/warhead if entity @s[tag=givenWar] as @a[x=0,tag=Late] run function items:give/missile/warhead
tag @a[x=0] remove Late