## Gives first item to players who join late
tag @a[x=0,tag=JoinBlue] add Late
tag @a[x=0,tag=JoinYellow] add Late

#Knight
execute if predicate game:item_pool/missile/ant if entity @s[tag=givenAux] as @a[x=0,tag=Late,predicate=rr_crusade:kit/knight] run function items:missile/heavy/giveaux
execute if predicate game:item_pool/missile/auxiliary if entity @s[tag=givenBlade] as @a[x=0,tag=Late,predicate=rr_crusade:kit/knight] run function items:missile/normal/giveblade
execute if predicate game:item_pool/missile/gemini if entity @s[tag=givenGemi] as @a[x=0,tag=Late,predicate=rr_crusade:kit/knight] run function items:missile/normal/givegemi
execute if predicate game:item_pool/missile/juggerbuster if entity @s[tag=givenJbust] as @a[x=0,tag=Late,predicate=rr_crusade:kit/knight] run function items:missile/heavy/givejbuster
execute if predicate game:item_pool/missile/warhead if entity @s[tag=givenWar] as @a[x=0,tag=Late,predicate=rr_crusade:kit/knight] run function items:missile/heavy/givewar
execute if entity @s[tag=!givenAux,tag=!givenBlade,tag=!givenGemi,tag=!givenJbust,tag=!givenWar] run function rr_crusade:items/givefirstknight

#Archer
execute if predicate game:item_pool/missile/broadsword if entity @s[tag=givenBroad] as @a[x=0,tag=Late,predicate=rr_crusade:kit/archer] run function items:missile/special/givebroad
execute if predicate game:item_pool/missile/citadel if entity @s[tag=givenCita] as @a[x=0,tag=Late,predicate=rr_crusade:kit/archer] run function items:missile/normal/givecitadel
execute if predicate game:item_pool/missile/hurricane if entity @s[tag=givenHur] as @a[x=0,tag=Late,predicate=rr_crusade:kit/archer] run function items:missile/lightning/givehur
execute if predicate game:item_pool/missile/slasher if entity @s[tag=givenSlash] as @a[x=0,tag=Late,predicate=rr_crusade:kit/archer] run function items:missile/normal/giveslash
execute if predicate game:item_pool/missile/thunderbolt if entity @s[tag=givenBolt] as @a[x=0,tag=Late,predicate=rr_crusade:kit/archer] run function items:missile/lightning/givethun
execute if entity @s[tag=!givenBroad,tag=!givenCita,tag=!givenHur,tag=!givenSlash,tag=!givenBolt] run function rr_crusade:items/givefirstarcher

#Mage
execute if predicate game:item_pool/missile/ant if entity @s[tag=givenAnt] as @a[x=0,tag=Late,predicate=rr_crusade:kit/mage] run function items:missile/normal/giveant
execute if predicate game:item_pool/missile/catapult if entity @s[tag=givenCata] as @a[x=0,tag=Late,predicate=rr_crusade:kit/mage] run function items:missile/normal/givecata
execute if predicate game:item_pool/missile/lifter if entity @s[tag=givenLift] as @a[x=0,tag=Late,predicate=rr_crusade:kit/mage] run function items:missile/normal/givelift
execute if predicate game:item_pool/missile/chronullifier if entity @s[tag=givenNull] as @a[x=0,tag=Late,predicate=rr_crusade:kit/mage] run function items:missile/normal/givenull
execute if predicate game:item_pool/missile/tomatwo if entity @s[tag=givenToma] as @a[x=0,tag=Late,predicate=rr_crusade:kit/mage] run function items:missile/normal/givetoma
execute if entity @s[tag=!givenAnt,tag=!givenCata,tag=!givenLift,tag=!givenNull,tag=!givenToma] run function rr_crusade:items/givefirstmage

tag @a[x=0] remove Late