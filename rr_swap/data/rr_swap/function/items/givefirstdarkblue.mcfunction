## Gives first item to players who join late
#dark
execute if predicate game:item_pool/missile/bullet if entity @s[tag=givenBull] as @a[x=0,predicate=custom:team/blue,tag=JoinBlue] run function items:give/missile/bullet
execute if predicate game:item_pool/missile/duplex if entity @s[tag=givenDuplex] as @a[x=0,predicate=custom:team/blue,tag=JoinBlue] run function items:give/missile/duplex
execute if predicate game:item_pool/missile/auxiliary if entity @s[tag=givenAux] as @a[x=0,predicate=custom:team/blue,tag=JoinBlue] run function items:give/missile/auxiliary
execute if predicate game:item_pool/missile/warhead if entity @s[tag=givenWar] as @a[x=0,predicate=custom:team/blue,tag=JoinBlue] run function items:give/missile/warhead

#light
execute if predicate game:item_pool/missile/hypersonic if entity @s[tag=givenHyper] as @a[x=0,predicate=custom:team/yellow,tag=JoinYellow] run function items:give/missile/hypersonic
execute if predicate game:item_pool/missile/broadsword if entity @s[tag=givenBroad] as @a[x=0,predicate=custom:team/yellow,tag=JoinYellow] run function items:give/missile/broadsword
execute if predicate game:item_pool/missile/hurricane if entity @s[tag=givenHur] as @a[x=0,predicate=custom:team/yellow,tag=JoinYellow] run function items:give/missile/hurricane
execute if predicate game:item_pool/missile/thunderbolt if entity @s[tag=givenBolt] as @a[x=0,predicate=custom:team/yellow,tag=JoinYellow] run function items:give/missile/thunderbolt
