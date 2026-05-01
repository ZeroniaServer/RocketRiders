## Gives first item to players who join late
tag @a[x=0,tag=JoinBlue] add Late
tag @a[x=0,tag=JoinYellow] add Late

#Knight
execute if predicate game:item_pool/missile/ant if entity @s[tag=givenAux] as @a[x=0,tag=Late,predicate=rr_crusade:kit/knight] run function items:give/missile/auxiliary
execute if predicate game:item_pool/missile/auxiliary if entity @s[tag=givenBlade] as @a[x=0,tag=Late,predicate=rr_crusade:kit/knight] run function items:give/missile/blade
execute if predicate game:item_pool/missile/gemini if entity @s[tag=givenGemi] as @a[x=0,tag=Late,predicate=rr_crusade:kit/knight] run function items:give/missile/gemini
execute if predicate game:item_pool/missile/juggerbuster if entity @s[tag=givenJbust] as @a[x=0,tag=Late,predicate=rr_crusade:kit/knight] run function items:give/missile/juggerbuster
execute if predicate game:item_pool/missile/warhead if entity @s[tag=givenWar] as @a[x=0,tag=Late,predicate=rr_crusade:kit/knight] run function items:give/missile/warhead
execute if entity @s[tag=!givenAux,tag=!givenBlade,tag=!givenGemi,tag=!givenJbust,tag=!givenWar] run function rr_crusade:items/givefirstknight

#Archer
execute if predicate game:item_pool/missile/broadsword if entity @s[tag=givenBroad] as @a[x=0,tag=Late,predicate=rr_crusade:kit/archer] run function items:give/missile/broadsword
execute if predicate game:item_pool/missile/citadel if entity @s[tag=givenCita] as @a[x=0,tag=Late,predicate=rr_crusade:kit/archer] run function items:give/missile/citadel
execute if predicate game:item_pool/missile/hurricane if entity @s[tag=givenHur] as @a[x=0,tag=Late,predicate=rr_crusade:kit/archer] run function items:give/missile/hurricane
execute if predicate game:item_pool/missile/slasher if entity @s[tag=givenSlash] as @a[x=0,tag=Late,predicate=rr_crusade:kit/archer] run function items:give/missile/slasher
execute if predicate game:item_pool/missile/thunderbolt if entity @s[tag=givenBolt] as @a[x=0,tag=Late,predicate=rr_crusade:kit/archer] run function items:give/missile/thunderbolt
execute if entity @s[tag=!givenBroad,tag=!givenCita,tag=!givenHur,tag=!givenSlash,tag=!givenBolt] run function rr_crusade:items/givefirstarcher

#Mage
execute if predicate game:item_pool/missile/ant if entity @s[tag=givenAnt] as @a[x=0,tag=Late,predicate=rr_crusade:kit/mage] run function items:give/missile/ant
execute if predicate game:item_pool/missile/catapult if entity @s[tag=givenCata] as @a[x=0,tag=Late,predicate=rr_crusade:kit/mage] run function items:give/missile/catapult
execute if predicate game:item_pool/missile/lifter if entity @s[tag=givenLift] as @a[x=0,tag=Late,predicate=rr_crusade:kit/mage] run function items:give/missile/lifter
execute if predicate game:item_pool/missile/chronullifier if entity @s[tag=givenNull] as @a[x=0,tag=Late,predicate=rr_crusade:kit/mage] run function items:give/missile/chronullifier
execute if predicate game:item_pool/missile/tomatwo if entity @s[tag=givenToma] as @a[x=0,tag=Late,predicate=rr_crusade:kit/mage] run function items:give/missile/tomatwo
execute if entity @s[tag=!givenAnt,tag=!givenCata,tag=!givenLift,tag=!givenNull,tag=!givenToma] run function rr_crusade:items/givefirstmage

tag @a[x=0] remove Late